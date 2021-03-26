---
title: "Go Regular Expression for Emails"
date: 2020-04-17T13:31:00.000Z
# weight: 1
aliases:
  - "/article/go-regular-expression-for-emails"
  - "/a/5e99af94"
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
description: "Contains Go code to help you validate an email address string with a regular expression."
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

It was a bit annoying, but the regular expression on [this site](https://emailregex.com/) _almost_ worked out of the box. I had to add in a few line breaks:

```golang
package main

import (
    "fmt"
    "regexp"
)

var emailRegEx = regexp.MustCompile(
    `^(?:[a-z0-9!#$%&'*+/=?^_`+
    "`"+
    `{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`+
    "`"+
    `{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])`)

func verifyEmail(email string) bool {
        if (emailRegEx.MatchString(email) == true) {
            return true
        }
        return false
    }

func main() {
    fmt.Println(verifyEmail("some.user@gmail.com"))
}

```

Go Playground link: [https://play.golang.org/p/Gq67bAJeK2r](https://play.golang.org/p/Gq67bAJeK2r)

