
# FreeEMS documentation repository

## Introduction

This is a repository for documenting FreeEMS.

The documentation is written in markdown syntax and can be converted to
many formats, including HTML and PDF (only HTML generated with the included
build script).

## Dependencies

The included build script is a Ruby script, which depends on BlueCloth.
To install this dependency, you'll need to install Ruby, RubyGems and run:
 sudo gem install bluecloth

## Building the documentation

To build the documentation, run the build script:
``ruby build.rb``
..or:
``./build.rb``

Doing that will build a HTML pages into the html directory.

## Contributing to the documentation

* Read the Markdown reference manual: http://daringfireball.net/projects/markdown/syntax
* Fork this project on github.
* Edit contents of "spin1" directory or create another directory with
  similar structure.
* Verify the output of build.rb is valid. Edit the .md files until it is!
* Commit and push your changes
  * Notify the original author with a pull request


## Contacting us

IRC: #freeems-dev on the FreeNode network.
Web: http://www.freeems.org/
