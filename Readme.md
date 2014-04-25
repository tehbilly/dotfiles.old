My Dotfiles
===========

Nothing really spectactular going on here. Just a simple dotfiles bootstrap and
management system inspired by [cowboy's](https://github.com/cowboy/dotfiles).

Future Items
------------

While this does a great job at managing the basics, there are a few things I do
want out of my dotfile management system that I can't seem to find.

* Environment-specific includes
    - ~/.dotfiles/env/(ruby,python,etc)
    - Source/include/run things if that environment is available
* OS-specific includes
    - Darwin, Cygwin, Linux (and what flavor)
    - How best to determine this? Requires some thought!
* List of desirable packages that are missing
    - Perhaps attempt to install them via OS-specific methods?
    - Otherwise... list what's not available
