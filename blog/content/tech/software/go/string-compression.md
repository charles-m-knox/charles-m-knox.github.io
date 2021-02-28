---
title: "String Compression in Go"
date: 2020-04-18T19:36:22.504Z
# weight: 1
aliases:
  - "/article/compress-and-decompress-a-string-in-golang"
  - "/a/5e99afd0"
tags:
  - coding
  - software
  - tech
  - go
  - reference code
  - snippet
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
description: "This is a Go code snippet that will compress and decompress a string."
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

Here's how to compress and decompress a string in Golang using the `gzip` library.

```go
package main

import (
    "compress/gzip"
    "fmt"
    "bytes"
    "io/ioutil"
)

// Credit where credit is due!
// https://stackoverflow.com/a/19267224
func compressString(str string) (string, error) {
    var b bytes.Buffer
    gz := gzip.NewWriter(&b)
    if _, err := gz.Write([]byte(str)); err != nil {
        fmt.Println(fmt.Sprintf("Compress string failure %v", err))
        return "", err
    }
    if err := gz.Close(); err != nil {
        fmt.Println(fmt.Sprintf("Compress string closure failure %v", err))
        return "", err
    }
    return string(b.Bytes()), nil
}

func decompressString(str string) (string, error) {
    gr, err := gzip.NewReader(bytes.NewBuffer([]byte(str)))
    defer gr.Close()
    data, err := ioutil.ReadAll(gr)
    if err != nil {
        return "", err
    }
    return string(data), nil
}
```

[Go Playground Link](https://play.golang.org/p/Y8FTW59ozIq)
