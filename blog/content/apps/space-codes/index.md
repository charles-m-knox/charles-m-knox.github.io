---
title: "Space Codes"
date: 2021-03-29T00:00:00Z
# weight: 1
# aliases: ["/portfolio/page"]
tags:
  - apps
  - spacecodes
  - portfolio
categories:
  - Apps
  - Portfolio
author: "Charles M. Knox"
showToc: true
TocOpen: true
draft: false
hidemeta: false
comments: true
description: "This page contains information about the Space Codes app."
disableHLJS: false # to disable highlightjs
disableShare: false
searchHidden: false
cover:
    # image: "images/sc-charlesmknox-blog_sleeping-article_short.jpg" # image path/url
    # alt: "A screenshot of the portfolio project." # alt text
    # caption: "The blog itself." # display caption under cover
    relative: true # when using page bundles set this to true
    hidden: false # only hide on current single page
---

{{< rawhtml >}}
<img align="right" src="images/icon.png" style="max-width: 25%;" width="128" height="128">
{{< /rawhtml >}}

Space Codes is an app that plays custom, curated focus music to help you focus. It's a simple app that has a few hours of songs I wrote myself, specifically to help people tune out the noise of every day life and fill their minds with simple, moving sounds.

Space Codes is under review in the app store right now, as of 3/30/2021 - I'll post the link here soon.

<!-- [View it on the App Store here](https://apps.apple.com/us/app/septaday/id1559559473). -->

## 👨‍🚀 About me

I am an app developer and electronic musician. You can listen to my music by visiting [aperspection.com](https://aperspection.com), and you can see my [apps here](/apps/). I write other software too, you can see some [portfolio items here](/categories/portfolio/), my [GitHub profile here](https://github.com/charles-m-knox), and [my resume here](https://resume.charlesmknox.com/).

## 🎵 The music

Currently, Space Codes has three songs, 1 hour each. The songs are repetitive with slight variations over time, with varying synths and sound effects coming in and out of focus.

I do plan on pushing the music to Spotify, Apple Music, and other major stores. This will be happening at some point in the near future.

## 👍️ No streaming - the music comes with the app

I worked hard to ensure that the app comes bundled with all of the music when you download it from the app store - so, if you have the app, you will **never** have to worry about downloading the songs or streaming them.

## ⚙️ App info

I worked hard to ensure that the app has a fairly seamless flow - my hope is that there are no bugs or usability issues with the app, but there are always things that may not work correctly. This section contains more information specific to the app.

### ✋ Data privacy

This app does not push any data **anywhere**, period. The only time data from this app can leave your phone is if you manually [export the data](#exporting-data) elsewhere. I do not collect (or want to deal with collecting) any of your data.

### ⬆️ Exporting data

To export your data as an `sqlite` file, you can go to About -> (scroll down) -> Export all data. It will allow you to share the database to any sharing target you want. Use this to backup your data or export it to another device.

### ⬇️ Importing data

Data must be imported to the device and accessible via the native file browser. Using the document picker, find a proper `sqlite` database to import, and once the import is performed, you will have to restart the app. **If you do not restart the app, things will not work correctly and you may have to re-import.**

### ⚠️ Known issues

* **Strange audio behavior** - The Space Codes app currently does not behave like a typical music-playing app such as Spotify or Apple Music, in that it does not set the "Now Playing" album art/info/metadata.
  * Instead, audio is played as if it were a "sound effect", which leads to some unexpected user experience issues. I am sorry for this.
  * This is because it does not appear to be supported yet in Expo, which is the SDK I use to rapidly develop apps for iOS/Web/Android. I am looking into solutions for this.
  * It is not something the Expo team is currently looking into supporting. https://github.com/expo/expo/issues/11151
* **Space Time Counter** - The Space Time counter lags behind the amount of actual seconds played. I'm also working on a fix for this. Your time in space is important; I want it to be measured accurately too 🙂

### ☁️ Roadmap

This app is meant to be simple with a lean feature set. I want to implement a few extra features in the future:

* **More songs** - I wanted to get the app out into the wild before adding more songs. All songs are offline.

### ⌨️ Source code

The source code for this app is publicly viewable on my GitHub page, [here](https://github.com/charles-m-knox/space-codes).
