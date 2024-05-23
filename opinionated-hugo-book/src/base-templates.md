# Base Templates

We are going to create the outer shell of our website using what Hugo calls [Base Templates][hugo-base-templates],
blocks, and [Partials][hugo-partials].

Each page will have the following sections:

- __Header__. Contains the logo and title, and main navigation.
- __Navigation__. Links to different sections or pages.
- __Main Content__. The primary content of the page.
- __Footer__. Contains copyright, contact information, etc.

Using your favorite text editor, create the default base template at
`themes/opinionated-theme/layouts/_default/baseof.html`. This will be the shell for _all_ of our pages.

```html
<!doctype html>
<html lang="{{ .Site.LanguageCode }}">
  <head>
    <title>{{ block "title" }}{{ .Site.Title }}{{ end }}</title>
  </head>
  <body>
    
    <header>
      {{ partial "header.html" . }}
    </header>

    <nav>
      {{ partial "nav.html" . }}
    </nav>

    <main>
      {{ block "main" . }}

      {{ end }}
    </main>

    <footer>
      {{ partial "footer.html" . }}
    </footer>

  </body>
</html>
```

The `.Site.LanguageCode` variable will be replaced with the `languageCode` variable in the `hugo.toml` file.

The [Go Templates][go-template] that start with `partial` will be replaced with the content of
`themes/<THEME>/layouts/partials/<PARTIALNAME>.html`. The templates that starts with `block` will be filled in by other
templates that we will build later on. We'll build the three partials in the next chapter.

<!-- ref links -->
[go-template]: https://pkg.go.dev/text/template "Go Template"
[hugo-base-templates]: https://gohugo.io/templates/base/ "Hugo Base templates"
[hugo-partials]: https://gohugo.io/templates/partials/ "Hugo Partial templates"
