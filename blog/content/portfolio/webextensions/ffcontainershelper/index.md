---
title: "Firefox Browser Addon Web Extension: Containers Helper"
date: 2021-03-07T00:00:00Z
# weight: 1
# aliases: ["/portfolio/page"]
tags:
  - portfolio
categories:
  - Portfolio
author: "Charles M. Knox"
showToc: true
TocOpen: true
draft: false
hidemeta: false
comments: true
description: "A 5-star-rated browser extension for Firefox that augments the official multi-account containers addon by adding bulk container interaction and management."
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

{{< cc-head >}}

{{< rawhtml >}}
<img align="right" src="https://github.com/charles-m-knox/firefox-containers-helper/raw/main/src/icons/icon_cube.png">
{{< /rawhtml >}}

## Check out the extension

[View the extension here!](https://addons.mozilla.org/en-US/firefox/addon/containers-helper/) You can also view the [source code here on GitHub](https://github.com/charles-m-knox/firefox-containers-helper).

![v0.0.10 Main popup](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_main_v0.0.10.png)

The rest of this article is a writeup on the extension itself - enjoy!

## Preface

Before talking about my addon directly, first I wanted to explain the context behind why it was created in the first place.

As a privacy enthusiast, I often find myself configuring my browser to match my needs. With Firefox, the [multi-account containers extension](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/) provides a unique feature that separates Firefox from the rest of the browsers - the ability to separate cookies and browsing contexts on a per-tab basis.

[![Firefox Multi-account containers addon screenshot from Mozilla addon store](https://addons.cdn.mozilla.net/user-media/previews/full/196/196941.png?modified=1543520771)](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)

{{< rawhtml >}}
<small><i>Image source: Mozilla addon store</i></small>
{{< /rawhtml >}}

The multi-account containers addon is amazing! It allows you to willfully separate the different facets of your identity:

* A `financial` container for all of your finances
* An `amazon` container for all things related to Amazon only
* A `facebook` container for all things related to Facebook only (although, [there is an official extension from Mozilla for this exact purpose](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/))
* A `work` container for all things related to work only
* A `reddit` container for all things [Reddit](https://reddit.com)
* A `hackernews` container for all things [HackerNews](https://news.ycombinator.com)

etc. - you hopefully can see the pattern now.

## Gaps

Unfortunately, one of the gaps of the multi-account containers extension is that its interface was intended for people with only a few containers - if you're like me and you have well over 100 containers, the UI becomes very cumbersome, because it lacks features like:

* filtering for a container
* modifying multiple containers at once, according to filter criteria
* deleting multiple containers at once
* opening multiple containers at once, with configurable URLs

So, I went ahead and wrote an extension that could do all of these things, with a few extra added features. Read on!

The rest of this blog post is a few select snippets of the actual [GitHub README.md](https://github.com/charles-m-knox/firefox-containers-helper/blob/main/README.md) for the addon, which has some extra bits of info not covered here.

## Quick note

The extension is certainly not dead, but I have not updated the extension since November 2020, primarily because:

* For all intents and purposes, it has stabilized
* It has all the features I need so far
* It has a small userbase, and no one has asked for more features (yet!)
* The features that I currently want to add to it are smaller than other projects I would rather work on

With all that being said - please, voice your opinions, open an issue/PR, or [leave me a tip](https://charlesmknox.com/about) and a note about what you want out of the addon! I'm happy to pursue continued development work if people want me to.

## Features

* **Container search capability** - filters your containers as you type.
  * Press `enter` to open the first result in the list (or the only result, if just one result remains).
  * Simultaneously press `ctrl` and either `click` or `enter` to open the result(s) in a pinned state.
  * Combine above shortcuts with `shift` to open all filtered containers at once.
* **Set a Default URL for containers** - Any time you use this extension to open a tab, you can configure the tab to open a specific URL by default.
  * The URL settings are stored as part of the extension itself, and are independent of the Multi-Account Containers addon. It will not affect any existing settings, and will not change the behavior of which URLs are opened in which containers by default.
  * Similar to above, press `shift` to bulk-set-default URLs for the current query.
* **Sticky Popup** - If you want, you can check this box to keep the extension open while you click on different results (to open many containers) for your search. This mode feels very powerful to use.
* **Set Name/Icon/Color mode** - Allows you to quickly set one or more containers' icon, color, or name quickly.
* **Find and Replace mode** - Allows you to perform a find and replace on container names or default URLs.
* **Duplication mode** - Allows you to duplicate one or more containers returned by a search query.
  * Note: Duplication mode currently does not copy the default open-in-URL capability for multi-account containers, but it does duplicate default URLs defined for containers within this extension. (This extension currently does not have the capability to access information about default open-in-URLs for containers, which is stored in the extension settings for the multi-account containers extension storage in your browser's settings)
* **Deletion mode** - When checked, you can click on a container to delete it. This method of deletion is a bit quicker than the multi-account containers extension. You will be prompted for deletion more than once.
  * **Caution: This can delete all of your containers if you're not careful.**
  * Similar to above, press `shift` to bulk-delete containers returned by a query.
* **Keyboard shortcut** to open the popup window is `alt+shift+D`. It will immediately focus the search box, so you can quickly filter for a container, press enter, and go.

## Examples and Screenshots

This section contains some recordings and walkthroughs of use cases for this extension. Hopefully, it helps clarify ways to leverage this extension as best as possible for readers.

If any of this is confusing, remember the basics:

* Press `shift` and click/enter to act on ALL results (bulk open tab/delete container/set URL action)
* Press `ctrl` and click/enter a result to open as pinned tab(s)

### v0.0.10 Examples

In v0.0.10, the features introduced were:

* **Name Replace mode** - Replaces a string in every matched container name
* **URL Replace mode** - Replaces a string in every matched container URL
* **Set Color mode** - Updates the color of all matched containers
* **Set Icon mode** - Updates the icon of all matched containers

*See [`CHANGELOG.md`](https://github.com/charles-m-knox/firefox-containers-helper/blob/main/CHANGELOG.md) for more changes.*

#### v0.0.10 Live Example

In this example of the v0.0.10 release, the following actions are taken on all of the containers:

* `Open as Tab(s)` mode is used to open all of the containers shown.
* `Set Default URL` mode is used to set the URL for all containers shown.
* `Set Name` mode is used to set the name for all containers shown.
* `Set Color` mode is used to set the container's icon's color for all containers shown.
* `Set Icon` mode is used to set the container's icon for all containers shown.
* `Replace in Name` mode is used to replace a string found in all containers' name.
* `Replace in URL` mode is used to replace a string found in the containers' URL.
* `Duplicate` mode is used to duplicate all containers shown.
* `Delete` mode is used to delete all containers shown.

![v0.0.10 usage example](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/example_v0.0.10.gif)

#### v0.0.10 Screenshots

Here's how the extension looks when you click on it:

![v0.0.10 Main popup](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_main_v0.0.10.png)

All available modes in v0.0.10:

![v0.0.10 All modes](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_mode_list_v0.0.10.png)

Setting default container URLs by pressing the shift key and enter or clicking a container result, in v0.0.10:

![v0.0.10 Set default URL for multiple containers](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_mode_url_v0.0.10.png)

Default URLs applied in v0.0.10:

![v0.0.10 Main popup](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_main_urls_set_v0.0.10.png)

Changing the name of multiple containers at once in v0.0.10:

![v0.0.10 Set name for multiple containers](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_mode_set_name_v0.0.10.png)

Using find and replace in container URLs in v0.0.10 - this screen is preceded by two prompts (one for the "find" string, the other for the "replace" string):

![v0.0.10 Find and replace in container URLs](https://github.com/charles-m-knox/firefox-containers-helper/raw/main/readme-assets/v0.0.10/screenshot_mode_replace_url_v0.0.10.png)

## Tips

*Make sure to read all of the features before perusing the tips to get the most out of the extension.*

### Container naming convention suggestions

It may be worth considering using certain naming conventions for your containers to help perform bulk actions, such as:

```
finance-bankA
finance-bankB
*email-gmail
*email-protonmail
email-tutanota
dev-github-personal
dev-github-work
dev-gitlab-personal
dev-gitlab-work
social-reddit-personal
social-reddit-public
social-reddit-work
*chat-discord-personal
chat-discord-work
*chat-slack-work
chat-slack-personal
media-streaming-netflix
media-streaming-plex
media-streaming-hulu
*media-streaming-spotify
google-personal
google-work
duckduckgo-ddg
```

The containers starting with `*` could be considered as permanently pinned tabs, so you can do a quick search for `*` and press `ctrl+shift+enter` to get the results. Note that sometimes URL's can have a `*` character, so you may want to experiment with what character works best for quickly filtering your preferred pinned tabs.

## FAQ

* When duplicating an existing container, does it also duplicate cookies and other session information?
  * No, it creates a fresh container with only the same basic metadata as the original container, such as color/name/icon.

## Warnings

This container management extension is dangerously powerful. If you're not careful, you can delete all of your containers by turning on "Delete Mode", pressing `shift+enter`, and pressing "OK" to the prompts. At this time, the extension doesn't support undoing operations or rolling back commands. You've been warned!

## Future Features

Open to suggestions.

* **Ctrl+Click to select individual results** instead of it just opening pinned tabs as it does now. Ideal behavior would be something like using ctrl to select individual results from the list, and then using a checkbox to open as pinned (or something similar to that).
* **Sorting** - Sort results according to criteria
* **Container Import/Export** - This will be a bit tricky though, since this extension doesn't have control over url-to-container associations made in the multi-account containers extension.
* **Saved searches** - Saving the results and possibly binding to a keystroke might be useful.
* **Favorite/Tagged containers** - Adding a "star" capability to certain tabs so that you can filter them easier. For now, a workaround is using the naming conventions suggested in the [tips](#tips) section.
* **Bulk regular expression actions** - Actions on containers from search results according to regular expressions might be useful.
* **Metrics** - Track simple interaction data (locally only, privacy is important) so you can look back on your interactions with containers.
* **Accessibility** Need to conform to accessibility standards.

## Community

If you have suggestions, please feel free to voice them on GitHub. Thank you for using my extension and reading this far!

## Attributions

The addon comes packaged with Bootstrap, and includes a distribution of it in its source code. See the license [here](https://github.com/twbs/bootstrap/blob/main/LICENSE).

{{< cc-ad >}}
