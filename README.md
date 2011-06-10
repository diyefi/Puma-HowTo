
# FreeEMS documentation repository

## Introduction

This is a repository for documenting FreeEMS.

The documentation is written in markdown syntax and can be converted to
many formats, including HTML and PDF (only HTML generated with the included
build script).

## Installation

The build script is written in [Ruby](http://www.ruby-lang.org/), so you'll need to have Ruby installed.

Some old versions of doesn't come with [RubyGems](http://rubygems.org/), so install that separately if you don't have a `gem` command available.

The script itself depends on one of these [Markdown](http://daringfireball.net/projects/markdown/syntax) libraries (in order of preference):

* `rpeg-markdown`
* `rdiscount`
* `bluecloth` (2.x and newer, not 1.0, which is broken)


To install the dependency, run:
    sudo gem install rpeg-markdown

If that fails (invalid build environment or such), try one of the others, like:
    sudo gem install rdiscount

You can even have all of them installed, if you want.


## Usage

To build the documentation, run the build script:
    ruby build.rb

..or:
    ./build.rb

Doing that will build a HTML pages into the html directory.

## Contributing

* Read the [Markdown reference manual](http://daringfireball.net/projects/markdown/syntax)
* Fork this project on [github](https://github.com/).
* Edit contents of the [doc/spin1]() directory or create another directory with
  similar structure.
* Ensure the output of `build.rb` is valid (it's built into the [html/]() -directory). Edit the .md files until it is!
* Commit and push your changes
  * Notify the original author with a pull request, if you use a fork.


## Contacting us

- IRC: `#freeems-dev` on the FreeNode network.
- Web: [http://freeems.org/]()
- Forum: [http://forum.diyefi.org]()
