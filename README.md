# DotLyfe

### A thrilling social game

## Setup

You will need the following for this project:

* Haxe
* Lime
* OpenFL
* HaxeFlixel
* IDE
* Debug Player

1. Goto http://haxe.org/download and download the Automatic Installer for your platform (Windows, Mac, or Linux). Run it to install Haxe.

2. Install the following from the command line:
``` bash
haxelib install lime
haxelib run lime setup
lime install openfl
lime setup windows
lime setup android
haxelib install flixel
haxelib install flixel-tools
haxelib run flixel-tools setup
```
4. Install an IDE with Haxe support (FlashDevelop, Intellij, Visual-Studio-Code)
5. Install a debug player, or just target to flash and drop the swf file into chrome to see your work.

## Why Haxe?
Haxe is a cross-compiler language that is lightweight, flexible, and able to support all browsers/devices/OS. It is able to compile down source code either c++, php, neko, javaScript, HTML5, flash, and more distributions.

To learn more:
* http://old.haxe.org/doc/compiler
* http://haxe.org/use-cases/mobile/

## Engine
We are using the haxelfixel engine

Check it out: http://haxeflixel.com/

## Development

Develop and then build source code from the *root directory*:

`openfl build neko`

You can substitute "neko" for any OpenFL target, including:
* windows
* mac
* linux
* ios
* android
* blackberry
* tizen
* flash
* html5

Some targets are not available from every host platform. For example, iOS is only available when using a Mac.

#### WARNING!
``` python
Json objects contain large amounts of violent and sexual content and should not be viewed by children.

Viewer Discretion is Advised
```
