---
title: "Every Outbound Link Leaks Privacy"
date: 2020-04-17T22:41:02.572Z
# weight: 1
aliases:
  - "/article/your-website-links-should-always-include-this-tag"
  - "/a/5e9a307e"
tags:
  - coding
  - software
  - tech
  - webdev
  - web
  - development
  - angular
  - react
  - privacy
  - leak
  - security
categories:
  - Software
# series: [ "Coding" ] # doesn't seem to work
author: "Charles M. Knox"
# author: ["Me", "You"] # multiple authors
showToc: false
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "Contains security and privacy advice on how to properly use outbound links in your web-facing code."
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

The title is a bit of an exaggeration, but it's partly true if you don't use the correct properties in your HTML elements.

In HTML, you should be using `rel="noopener noreferrer"` along with `target="_blank"` in your `<a>` tags - if not, you run major security risks. This GitHub Pages site shows you how: https://apal21.github.io/target-blank/

Many linters will catch this if it's not set, so make sure that you're using a linter when you write your code.

