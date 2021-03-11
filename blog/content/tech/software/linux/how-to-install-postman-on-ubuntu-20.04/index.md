---
title: "How to Install Postman on Ubuntu 20.04"
date: 2020-04-24T15:48:51.888Z
# weight: 1
aliases:
  - "/article/how-to-install-postman-on-ubuntu-2004"
  - "/a/5ea30a63"
tags:
  - coding
  - software
  - tech
  - ubuntu
  - postman
  - apt
  - install
  - guide
  - howto
  - tutorial
  - linux
categories:
  - Software
# series: [ "Coding" ] # doesn't seem to work
author: "Charles M. Knox"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "A guide on how to install Postman on Ubuntu 20.04. May be outdated."
disableHLJS: false # to disable highlightjs
disableShare: false
searchHidden: false
cover:
    image: "images/postman.jpg" # image path/url
    alt: "Postman in action." # alt text
    caption: "Postman" # display caption under cover
    relative: true # when using page bundles set this to true
    hidden: false # only hide on current single page
---

{{< cc-head >}}

Installing Postman with Canonical's [Snap](https://snapcraft.io/) does not typically work well for me, so I prefer installing it natively. Here are the instructions for doing this on Ubuntu 20.04.

## Installation

First, download the latest release:

```bash
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
```

Extract the underlying archive to `/opt`:

```bash
sudo tar -xzvf postman.tar.gz -C /opt
```

Create a symbolic link (shortcut) from the extracted Postman binary to `/usr/bin/Postman` so that it gets added to your `$PATH` and you can easily run it by typing the command `postman`:

```bash
sudo ln -s /opt/Postman/Postman /usr/bin/postman
```

## Add a desktop shortcut with Postman icon

Last but not least, to create an application entry so that Postman shows up in your list of applications, create a `postman.desktop` file using this command:

```bash
cat > ~/.local/share/applications/postman.desktop << EOF
[Desktop Entry]
Categories=Development;
Encoding=UTF-8
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Name=Postman
Terminal=false
Type=Application
EOF
```

> Learning note: The above command uses the [here document](https://en.wikipedia.org/wiki/Here_document) syntax to push the contents between the first `EOF` and second `EOF` to the file `/home/$USER/.local/share/applications/postman.desktop`.

Here's how it will look:

![Postman in Activities search](images/postman.jpg)

Don't forget to clean up the downloaded `postman.tar.gz` file:

```bash
rm postman.tar.gz
```

## Done!

That's it! Check your Ubuntu _Activities_ menu (top left corner) to verify that Postman shows up. The first time I opened the Activities menu, it did not show the entry, so I opened it one more time and it showed up the second time. I'll assume it just hadn't built an index of all available applications on the first try.

{{< cc-ad >}}
