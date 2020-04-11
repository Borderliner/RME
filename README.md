
# RME: Ryan's Minimal Emacs

## Overview
RME is a set of configuration files for GNU Emacs, which aims to be minimal, beautiful, and fast. It's also very modular, so you can easily enable/disable the features you want. It is what you need to get you started with Emacs and building on top of it. RME doesn't turn Emacs into full-featured IDE, it just makes it a useful text editor with modern defaults and standards.


Going through the config files is highly recommended.

## Installation

```
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/Borderliner/RME ~/.emacs.d
```

This config uses `Ubuntu Mono` as its default font. Get it [here](https://fonts.google.com/specimen/Ubuntu+Mono).
In case you want to use your own font, edit the config files in these places:
* `early-init.el` for Emacs 27.0 and newer
* `conf/init-ui.el` for Emacs 26.3 and older

## Features

* Support for Emacs 27.0 and previous versions
* `early-init` and GC optimizations
* Modular and clean config files
* Many beautiful themes. Check out the bottom part of `conf/init-ui.el`.
* Sane editing defaults and bindings
* User-friendly and professional
* File tree panel

![RME Preview](https://img.techpowerup.org/200411/screenshot-from-2020-04-11-21-14-28.png)

## WIP

* Add optional support for third-party programming languages (disabled by default)
* Full documentation of config files, although it's not that bad in its current state
* Make it easier to change fonts
* Add optional git support (disabled by default)

## License

MIT

