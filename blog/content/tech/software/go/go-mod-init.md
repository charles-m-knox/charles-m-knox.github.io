---
title: "go mod init Not Working"
date: 2020-04-17T13:30:00.000Z
# weight: 1
# aliases: ["/first"]
tags:
  - coding
  - software
  - tech
  - go
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
description: "Sometimes, the `go mod init` doesn't work. This article might help."
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

_Disclaimer: I'm using Go version 1.12.7 for this. It may not work for earlier versions of Go._

If you've ever tried to get into Go, one of the first things you've probably struggled with is simply creating a Go module. Go [likes to nag you about `$GOPATH`](https://github.com/golang/go/wiki/GOPATH), and as someone that is not a native Gopher, I don't want to deal with it.

Ever run into this error when running `go mod init`? I certainly have.

```bash
$ go mod init
```

```
go: cannot determine module path for source directory /some/path/... (outside GOPATH, no import comments)
```

In order to get past this, you can simply run this:

```bash
$ go mod init `pwd`
```

```
go: creating new go.mod: module /some/path/...
```

Credit goes to [joshuamkite on GitHub here](https://github.com/golang/go/issues/27951#issuecomment-482993268).

{{< cc-ad >}}
