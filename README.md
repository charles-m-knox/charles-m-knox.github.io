# Hugo

https://gohugo.io/getting-started/quick-start/

Generate a new site named `blog`:

```bash
hugo new site blog
cd blog
```

Make a new post:

```bash
hugo new --kind post-health health/why-sleep-matters-now-more-than-ever.md
```

Build and serve:

```bash
hugo serve -D -v
```

Just build (for distributing):

```bash
hugo -D -v
```

Output will be contained in `blog/public`.

# Theme

https://github.com/adityatelange/hugo-PaperMod/wiki/Installation

```bash
git clone https://github.com/adityatelange/hugo-PaperMod.git ./blog/themes/PaperMod
```

Alternatively, use a submodule:

```bash
git submodule add https://github.com/adityatelange/hugo-PaperMod.git ./blog/themes/PaperMod --depth=1
git submodule update --init --recursive
```

