---
title: "Go 1.16 Deprecating ioutil"
date: 2021-02-16T13:00:00.000Z
# weight: 1
# aliases: ["/first"]
tags:
  - coding
  - software
  - tech
  - go
  - release notes
#   - python
#   - bash
#   - ubuntu
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
description: "A note about the recent Go 1.16 update: The familiar ioutil library is being marked as deprecated. Here's what you need to know."
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

Go 1.16 was released - [here are the release notes](https://golang.org/doc/go1.16).

The thing that caught my eye was that `io/ioutil` has been deprecated - here's what you need to know

> The io/ioutil package has turned out to be a poorly defined and hard to understand collection of things. All functionality provided by the package has been moved to other packages. The io/ioutil package remains and will continue to work as before, but we encourage new code to use the new definitions in the io and os packages. Here is a list of the new locations of the names exported by io/ioutil:

* `Discard` => `io.Discard`
* `NopCloser` => `io.NopCloser`
* `ReadAll` => `io.ReadAll`
* `ReadDir` => `os.ReadDir` (note: returns a slice of os.DirEntry rather than a slice of fs.FileInfo)
* `ReadFile` => `os.ReadFile`
* `TempDir` => `os.MkdirTemp`
* `TempFile` => `os.CreateTemp`
* `WriteFile` => `os.WriteFile`

{{< cc-ad >}}
