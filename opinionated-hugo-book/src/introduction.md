# Introduction

[Hugo][hugo] is a fast, open-source [static web site generator][static-site-generator]. While it's very flexible and has
a lot of documentation, it isn't always easy to figure out how create a simple site. This simple step-by-step guide
leads you through installing [Hugo][hugo] and creating a blog oriented site with most of the basic features for
publishing your content.

This guide is [opinionated][opinionated] and prioritizes certain features and functionality and while ignoring others. The
features I think are most important for a simple, blog-oriented web site are:

- Homepage which includes content summaries
- Paginated navigation
- Page tags with automatically generated tag index pages
- RSS/Atom feed
- Theme in its own directory separate from content

This guide will show you how to incrementally build all of this functionality with [Hugo][hugo] and provide a companion
repository with working source code.

I won't be covering fancy styles or typography, but you'll be able to apply whatever styling you want to the simple
templates we build. You will need to know how to use your favorite text editor and how to get around on the command
line.

<!-- ref links -->
[hugo]: https://gohugo.io/ "Hugo home page"
[opinionated]: https://basecamp.com/gettingreal/04.6-make-opinionated-software "Make Opinionated Software"
[static-site-generator]: https://www.cloudflare.com/learning/performance/static-site-generator/
