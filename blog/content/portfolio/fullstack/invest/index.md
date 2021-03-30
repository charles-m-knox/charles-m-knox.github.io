---
title: "Investing tools: jsinvest and goinvest"
date: 2021-03-11T00:00:00Z
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
description: "Portfolio item: jsinvest and goinvest - a web UI and Go program to help keep balance in your portfolio on a regular basis."
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

[jsinvest](https://jsinvest.charlesmknox.com) and [goinvest](https://github.com/charles-m-knox/goinvest) are two utilities I wrote that do the same thing: Help you balance your financial portfolio according to allocations that you can customize.

## About the project

This was written as a coding project, but also to serve a practical purpose to my every day life. I want to be able to spend, say, $1000 on a spread of financial ETFs/stocks - for example, 50% large-cap, 50% small-cap, etc. - and I want to spread each of those allocations evenly across a few different ETFs/stocks within those categories, such as SCHD and SCHG for large-cap, and maybe just SCHA for small-cap.

This requires access to financial API data, or a spreadsheet that has hooks into financial APIs. Since I do not use Google Docs or Microsoft Office (currently), I decided to write my own software to meet the need.

## jsinvest

You can see [jsinvest here](https://jsinvest.charlesmknox.com).

jsinvest was written in React. It is a static webpage, hosted on GitHub pages, behind a Cloudflare proxy.

Visit the page, take a few minutes to understand what it's trying to do. It will click - but a necessary prerequisite is that you probably will need to understand different market caps and ETFs.

### Technical discussion

From a technical point of view, jsinvest is a bit unique, in that it's not *just* a single-page webapp - it also leverages an AWS Lambda function that I wrote that proxies requests to the Yahoo Finance API. Because Yahoo Finance's API's return CORS headers that only allow a specific domain (and not `*`, which would allow all domains), browsers (by design) will not perform API requests if the endpoints do not allow the current domain or all domains.

So, to get around this, my AWS Lambda function just proxies requests to the Yahoo Finance API. If you're using a utility other than the browser to make a request (such as `curl` or any HTTP request library in code), CORS rules are not part of the equation.

The source code is written mainly in TypeScript, and leverages React Bootstrap for its styling and interactivity.

## goinvest

[goinvest](https://github.com/charles-m-knox/goinvest) is the Go-based version of jsinvest. Instead of using a UI, it simply uses a yml file for configuration, and outputs everything to CSV. It was the prototype of jsinvest.

### Technical discussion

Goinvest is much more simple than jsinvest, mainly because there's no UI to deal with. Instead, we can rely on a simple yaml input for configuration, and the output is a basic CSV.

### Example config

See here: https://github.com/charles-m-knox/goinvest/blob/main/res/example.config.yml

```yml
---

outputFilename: "./output/investments-example.csv"

portfolios:
  - name: Retirement
    symbols:
      - symbol: SCHA
        type: small
      - symbol: SCHB
        type: broad
      - symbol: SCHD
        type: large
      - symbol: SCHF
        type: international
      - symbol: SCHG
        type: large
      - symbol: SCHX
        type: large
    allocations:
      fixed: 5.0
      small: 10.0
      medium: 10.0
      large: 10.0
      international: 10.0
      broad: 10.0
      cash: 2.0
      stock: 0.0
      crypto: 0.0
  - name: Hodl
    symbols:
      - symbol: GME
        type: stock
    allocations:
      cash: 2.0
      stock: 98.0

balances:
  - name: Stonks
    balance: 1000000
    portfolio: Hodl
  - name: 401k
    balance: 500000.00
    portfolio: Retirement
  - name: HSA
    balance: 50000.00
    portfolio: Retirement
```

Disclaimer: I do not recommend the above investments because I am not a financial advisor. This is just an example.
## Source code

View the source code for jsinvest [here on GitHub](https://github.com/charles-m-knox/jsinvest).

View the source code for goinvest [here on GitHub](https://github.com/charles-m-knox/goinvest).

## Final note

Thanks for reading!
