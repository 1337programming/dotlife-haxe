# DotLyfe

### A thrilling social game

## Setup

The first things we need to do is install all of the components we need to work with HaxeFlixel. These are:

* Haxe
* Lime
* OpenFL
* HaxeFlixel
* IDE
* Debug Player

There is a more verbose explanation on installing many of these things here, but I’ll walk you through it quickly. If anything goes wrong, check there for more information.

1. Goto http://haxe.org/download and download the Automatic Installer for your platform (Windows, Mac, or Linux). Run it to install Haxe.

2. Next, open up a Command Prompt. In windows, you can go to Start>Run and type "cmd" and hit Enter.

3. At the Command Prompt, enter the following commands (one at a time):
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
5. Install a debug player, or just target to flash and drop into chrome.

## Why Haxe?
Haxe is a cross-compiler language that is lightweight, flexible, and able to support all browsers/devices/OS. It is able to compile down your project to either c++, php, neko, javaScript, HTML5, flash, and more.

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
* 
Some targets are not available from every host platform. For example, iOS is only available when using a Mac.

#### WARNING!
``` python
Json objects contain large amounts of violent and sexual content and should not be viewed by children.

Viewer Discretion is Advised
```
