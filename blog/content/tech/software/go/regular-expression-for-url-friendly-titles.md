---
title: "Regular Expression for URL-Friendly Titles"
date: 2020-04-18T19:36:22.504Z
# weight: 1
aliases:
  - "/article/regular-expression-for-url-friendly-titles"
  - "/a/5e9b56b6"
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
description: "This is a Go code snippet that will convert a string from regular grammatical syntax to a length-limited-url-form."
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

The following Go code snippet will convert a string from this:

```
Wow! This message's getting some _good_ publicity!
```

To this:

```
wow-this-messages-getting-some-good
```

The function itself:

```go
import (
    "math"
    "regexp"
    "strings"
)

// Converts a string to a lowercase, hyphen-separated string of max length 36
func getTitleURLFromString(title string) (output string) {
    // first, strip out any special characters
    re := regexp.MustCompile(`(?m)[^\d^A-Z^a-z^\-^\s]`)
    substitution := ""
    output = re.ReplaceAllString(title, substitution)

    // set to lowercase
    output = strings.ToLower(output)

    // next, replace all whitespace characters with dashes
    re = regexp.MustCompile(`(?m)[\s]`)
    substitution = "-"
    output = re.ReplaceAllString(output, substitution)

    // replace "clumps" of 2 or more hyphens with 1 hyphen
    re = regexp.MustCompile(`(?m)-{2,}`)
    substitution = "-"
    output = re.ReplaceAllString(output, substitution)

    // result is only up to 36 characters (or the whole thing if less than 36)
    output = output[:int(math.Min(float64(len(output)), 36))]

    // remove trailing hyphens from the final output
    re = regexp.MustCompile(`(?m)-*$`)
    substitution = ""
    output = re.ReplaceAllString(output, substitution)

    return output
}
```

<details>
    <summary><i>(Click to Expand)</i> Unit Tests</summary>

```go
package main

import (
    "testing"

    "github.com/stretchr/testify/assert"
)

func TestGetTitleURLFromString(t *testing.T) {
    tests := []struct {
        input    string
        expected string
    }{
        {
            "'''@@)(*F)(*)(*#)(@)(*@#$%&)(@#*$",
            "f",
        },
        {
            "ugly text here!!!??",
            "ugly-text-here",
        },
        {
            "hyphenated-but - still-good!",
            "hyphenated-but-still-good",
        },
        {
            "hyphen at the end should go away and this should be 36 characters)(SD&*-",
            "hyphen-at-the-end-should-go-away-and",
        },
        {
            "Wow! This message's getting some _good_ publicity!",
            "wow-this-messages-getting-some-good",
        },
    }

    for _, test := range tests {
        actual := getTitleURLFromString(test.input)
        assert.Equal(t, test.expected, actual)
    }
}
```
</details>

[Go Playground Link](https://play.golang.org/p/EcNw8lr0Z6s)

Additionally, [regex101.com](https://regex101.com) is a great resource for interactively testing regular expressions, and it includes a Golang (plus other languages) source code generator to make this process easy.
