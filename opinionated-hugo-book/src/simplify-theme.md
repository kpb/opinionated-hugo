# Simplify Theme

The default theme we created with `$ hugo new theme ...` has a lot of interesting features that you could use as the
base of a theme, but we are going to simplify things in order to focus on our basic functionality.

The first thing we want to remove is the content included with the theme. Our content will be located under the
`opinionated-blog/content/` directory. Go ahead and delete all of the content in the `themes/opinionated-theme/content/`
directory.

```bash
$ rm -rf themes/opinionated-theme/content/
```

Let's also delete our templates, since we are going to create them from scratch. One way is using the `find` command.

```bash
find themes/opinionated-theme/layouts/ -name *.html -exec rm {} +
```
Next up, we'll create the outer shell, or _chrome_ of our simple site.
