---
title: "Firefox Containers Helper Extension v0.0.14 Released"
date: 2021-03-18T00:00:00.000Z
# weight: 1
# aliases:
#   - "/article/"
#   - "/a/5ea30a4e"
tags:
  - software
  - tech
  - firefox
  - update
  - extension
  - addon
  - containers helper
categories:
  - Software
# series: [ "Coding" ] # doesn't seem to work
author: "Charles M. Knox"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: true
draft: false
hidemeta: false
comments: true
description: "Firefox Containers Helper v0.0.14 is out now, as of 3/17/2021."
disableHLJS: false # to disable highlightjs
disableShare: false
searchHidden: false
cover:
    # image: "images/docker.jpg" # image path/url
    # alt: "Docker logo" # alt text
    # caption: "<text>" # display caption under cover
    relative: true # when using page bundles set this to true
    hidden: false # only hide on current single page
---

{{< rawhtml >}}
<img align="right" src="https://github.com/charles-m-knox/firefox-containers-helper/raw/main/src/icons/icon_cube.png">
{{< /rawhtml >}}

Firefox Containers Helper v0.0.14 is out now, as of 3/17/2021 - previously v0.0.10, released back in November 2020, a few awesome features have been added!

## Check out the extension

[View the extension here!](https://addons.mozilla.org/en-US/firefox/addon/containers-helper/) You can also view the [source code here on GitHub](https://github.com/charles-m-knox/firefox-containers-helper).

![v0.0.14 Main popup](https://raw.githubusercontent.com/charles-m-knox/firefox-containers-helper/main/readme-assets/v0.0.11/multi_selection.png)

## Thank you to the community

What makes this release of Firefox Containers Helper special is that it has received some awesome community engagement! I really never thought that it would gain enough attention or usage from people around the world for people to create [GitHub issues](https://github.com/charles-m-knox/firefox-containers-helper/issues), [pull requests](https://github.com/charles-m-knox/firefox-containers-helper/pulls), and become [supporters](https://charlesmknox.com/supporters/)

## New features added

* **Dark and Light mode** - [Bootstrap dark mode](https://github.com/vinorodrigues/bootstrap-dark) which respects your system theme preference
  * Note: On my Ubuntu system, changing Firefox's theme wasn't enough, I had to change my entire theme from a dark theme to a light theme to switch the preference
* **Select Mode** - Allows you to precisely select only a couple results from the list by first enabling the mode and then pressing `Ctrl+Click`, or multiple by pressing `Ctrl+Shift+Click`
* **Configurable Keyboard Shortcut** - Allows you to change the keyboard shortcut for showing the extension popup window, which is by default `Alt+Shift+D`. This fixes [#4](https://github.com/charles-m-knox/firefox-containers-helper/issues/4)
* **Container Quick-Add** - Allows you to quickly add a new container based on what you have typed into the filter text box. Defaults to a circle icon and the toolbar color

## Multi-selection mode live example

{{< rawhtml >}}

<video controls width="100%">
    <source src="/firefox-containers-helper-v0.0.14/v0.0.11.webm"
            type="video/mp4">
    Sorry, your browser doesn't support embedded videos.
</video>

{{< /rawhtml >}}

## Keyboard shortcuts are now configurable

Here's a screenshot of the new options page for the keyboard shortcut configuration:

![Keyboard shortcuts configuration](https://addons.cdn.mozilla.net/user-media/previews/full/253/253761.png)

## Changes straight from the changelog

### v0.0.12-v0.0.14

* fix [#11](https://github.com/charles-m-knox/firefox-containers-helper/issues/11), the indexing for multi-select was using the total number of containers instead of the filtered number of containers 😰
* re-add "+" button for containers since it's actually fine
* added stern warning to the readme about NEVER disabling or deleting all of your container extensions in Firefox, or else they'll get completely reset

### v0.0.11

* dark mode and light mode added in [#8](https://github.com/charles-m-knox/firefox-containers-helper/pull/8)
  * Thanks to https://github.com/KerfuffleV2 for this contribution!
* configurable keyboard shortcut added (see [#4](https://github.com/charles-m-knox/firefox-containers-helper/issues/4))
* adds *Select Mode*, as requested by the project's [first supporter](https://charlesmknox.com/supporters/#bob-haines)!
  * resolves [#6](https://github.com/charles-m-knox/firefox-containers-helper/issues/6)
* fix [#9](https://github.com/charles-m-knox/firefox-containers-helper/issues/9)... no longer drops all casing to lowercase when using "replace in name" mode, sorry about that!
* "replace in name" used to be case-insensitive, but I believe it's better to have case-sensitive replacing
  * Please file an issue and talk with me if you disagree or believe there should be a better approach! Thank you! 🙂
* added a small "Donate" link to my personal site with my personal avatar, I appreciate your support everyone 🙂
* added a simple "+" button to quickly add a new container based on the user's current input, this was requested [here](https://www.reddit.com/r/firefox/comments/m0fvwy/the_multiaccount_containers_addon_is_awesome_but/gq8wqig?utm_source=share&utm_medium=web2x&context=3)

## Final note

I hope you enjoy the extension! It's been steadily growing in popularity and I am happy to see people using it.
