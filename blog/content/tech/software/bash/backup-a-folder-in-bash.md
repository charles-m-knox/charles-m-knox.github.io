---
title: "How to Backup a Directory/Folder in Bash"
date: 2020-04-17T22:10:20.600Z
# weight: 1
aliases:
  - "/article/backup-a-folder-in-bash"
  - "/a/5e9a294c"
tags:
  - coding
  - software
  - tech
  - bash
  - snippets
  - backup
  - cronjob
#   - go
#   - python
#   - ubuntu
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
description: "This post contains code that will enable you to automatically backup a directory and remove backups older than 3 weeks."
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

This post contains code that will enable you to automatically backup a directory and remove backups older than 3 weeks.

The following Bash script is a cronjob directory backup script that takes two arguments:

1. the folder to backup
2. the output directory

It will also automatically clean up any backups that are more than 3 weeks old.

See below.

## The backup script

```bash
#!/bin/bash -e

outputtargz=$(basename "${2}" .tar.gz)
tgtpath=$(dirname "${2}")

output="${tgtpath}/${outputtargz}__$(date +%m-%d-%y_%H-%M).tar.gz"

mkdir -p "${tgtpath}"
tar -czvf "${output}" "${1}"

# Clean up any old files (3 weeks or older)
find "${tgtpath}/*" -mtime +21 -type f -delete

echo "Backed up ${1} to ${output} successfully"
```

## Usage

It can be used like this:

```bash
./backup_script.sh /path/to/backup /target/location
```

{{< cc-ad >}}

## Cronjob: Automated backups

It can also be used as a cronjob. To edit your crontab, use the command:

```bash
crontab -e
```

You may need to run the `crontab -e` command with `sudo` if your backup source or target is not readable by the current user.

Here's an example cronjob that runs every 6 hours at 12am, 6am, 12pm, and 6pm:

```bash
# Install this as a cronjob:
SHELL=/bin/bash
0 0,6,12,18 * * * /path/to/this/backup_script.sh /home/my/folder1 /mnt/backups/folder1.tar.gz
```

## Final note

For help with crontab job intervals, use the handy website [crontab.guru](https://crontab.guru).

This can be used on Ubuntu, Linux Mint, Arch Linux, or any other Linux OS/environment that supports running bash and shell scripts natively.

{{< cc-ad >}}
