# Opinionated Hugo: A Guide for the Rest of Us

[Hugo][hugo] is a fast, open-source, static web site generator. It's very flexible and has thorough documentation, but
it's not always easy to figure out how create a basic site. This simple step-by-step guide leads you through installing
[Hugo][hugo] and creating a blog oriented site with most of the basic features for publishing your content.

## Read the Book

You can read the latest version of [Opinionated Hugo][opinionated-hugo] at https://kpb.github.io/opinionated-hugo/.

## Building

This guide is written using [mdBook][mdbook] and the book source lives in the `opinionated-hugo-book` directory. You can
build the book with:

```bash
mdbook build opinionated-hugo-book/
```

And read the book by opening `opinionated-hugo-book/opiniated-hugo-book/index.html` in a browser.

You can also use [mdBook][mdbook] to serve up the book and open it in your default browser.

```bash
mdbook serve opinionated-hugo-book/ --open
```

### Docker

If you have Docker on your machine, the project has a dockerfile that lets you use mdBook commands without installing
mdBook.

Build the image.

```bash
docker build -t mdbook .
```

Serve the image using the mdBook image.

```bash
docker run --rm -v "$PWD"/opinionated-hugo-book:/home/mdbook/book -p 3000:3000 --init mdbook serve -n 0.0.0.0
```

<!-- ref links -->
[hugo]: https://gohugo.io/ "Hugo home page"
[mdbook]: https://rust-lang.github.io/mdBook/ "Introduction to mdBook"
[opinionated-hugo]: https://kpb.github.io/opinionated-hugo/ "Opinionated Hugo GH Pages"
