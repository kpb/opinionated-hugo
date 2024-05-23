# Create New Blog and Theme

Generate a skeleton site:

```bash
$ hugo new site opinionated-blog
$ cd opinionated-blog
```

The generated file tree should look like:

```bash
$ tree
  .
  ├── archetypes
  │   └── default.md
  ├── assets
  ├── content
  ├── data
  ├── hugo.toml
  ├── i18n
  ├── layouts
  ├── static
  └── themes
```
You _could_ place all your templates in the `layout` directory, but I think it's better to generate a new theme in the
_theme_ directory. It keeps the content and the style separate and you could then version the theme in it's on Git repo.

```bash
$ hugo new theme opinionated-theme
```

Hugo will generate a new theme that looks like:

```bash
themes
    └── opinionated-theme
        ├── archetypes
        │   └── default.md
        ├── assets
        │   ├── css
        │   │   └── main.css
        │   └── js
        │       └── main.js
        ├── content
        │   ├── _index.md
        │   └── posts
        │       ├── _index.md
        │       ├── post-1.md
        │       ├── post-2.md
        │       └── post-3
        │           ├── bryce-canyon.jpg
        │           └── index.md
        ├── data
        ├── hugo.toml
        ├── i18n
        ├── layouts
        │   ├── _default
        │   │   ├── baseof.html
        │   │   ├── home.html
        │   │   ├── list.html
        │   │   └── single.html
        │   └── partials
        │       ├── footer.html
        │       ├── head
        │       │   ├── css.html
        │       │   └── js.html
        │       ├── header.html
        │       ├── head.html
        │       ├── menu.html
        │       └── terms.html
        ├── LICENSE
        ├── README.md
        ├── static
        │   └── favicon.ico
        └── theme.toml
```

Open up _hugo.toml_ in your favorite editor. Change the title and and add the theme we created to the configuration:

```toml
title = 'Opinionated Blog'
theme = 'opinionated-theme'
```
