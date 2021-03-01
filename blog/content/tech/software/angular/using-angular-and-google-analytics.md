---
title: "Using Angular and Google Analytics"
date: 2020-04-18T17:02:25.663Z
# weight: 1
aliases:
  - "/article/using-angular-and-google-analytics"
  - "/a/5e9b32a1"
tags:
  - coding
  - software
  - tech
  - angular
  - web development
  - frontend
  - ui
categories:
  - Software
# series: [ "Coding" ] # doesn't seem to work
author: "Charles M. Knox"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "My experience with getting Google Analytics to work with Angular."
disableHLJS: false # to disable highlightjs
disableShare: false
searchHidden: false
cover:
    # image: "<image path/url>" # image path/url
    # alt: "<alt text>" # alt text
    # caption: "<text>" # display caption under cover
    relative: true # when using page bundles set this to true
    hidden: true # only hide on current single page
---

{{< cc-head >}}

By default, Angular does not work very well with Google Analytics. It will only announce a page-view event when refreshing the page. This makes the router in Angular somewhat useless.

Luckily, there is an npm package called [`angular-gtag`](https://github.com/codediodeio/angular-gtag) that hooks into the root app component of your Angular project and sends views upon router navigation.

However, I found that the README had a few implicit steps that I needed to do some searching for. To save others time, I've compiled my steps into this article.

## Getting Started

Install and configure the package according to the [README.md](https://github.com/codediodeio/angular-gtag/blob/master/README.md) for `angular-gtag` on GitHub. Ensure that the steps you take match the steps outlined here as well as the ones on the README.

In `app.module.ts`, add the import at the top, and include it in the imports section:

```js
// ... other imports
import { GtagModule } from 'angular-gtag';

@NgModule({
    declarations: [
        AppComponent
        // other declarations
    ],
    imports: [
        BrowserModule,
        AppRoutingModule,
        HttpClientModule,
        GtagModule.forRoot({ trackingId: 'UA-100102030-1', trackPageviews: true })
        // other imports
    ],
    providers: [],
    bootstrap: [AppComponent]
})
export class AppModule { }
```

In `app.component.ts`, add the import at the top for `Gtag`, and add it to the constructor:

```js
import { Component } from '@angular/core';
import { DataService } from './data.service';
import { Gtag } from 'angular-gtag';

@Component({
    selector: 'app-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.scss'],
})
export class AppComponent {
    constructor(public data: DataService, gtag: Gtag) {
        this.data.getArticles();
        this.data.getArticleList();
        this.data.getCategories();
    }
    // ... other things
```

Finally, modify the script for Google Analytics to ignore running the site from localhost so that the package works properly locally - edit the `<head>` section of `index.html`:

```html
<script>
    var host = window.location.hostname; // add this
    if (host !== "localhost") { // add  this
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-100102030-1', { 'send_page_view': false }); // added the 'send_page_view' parameter as instructed by angular-gtag's readme
    } else { // add this
        function gtag() {} // add this
    } // add this
</script>
```

Credit for some of these methods goes to a few users in this [GitHub issue thread](https://github.com/codediodeio/angular-gtag/issues/5#issuecomment-529693638).

## Validate

Build your site and validate that it works using Google Analytics' realtime interface.

{{< cc-ad >}}
