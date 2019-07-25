#
#  Simple DirectMedia Layer
#  Copyright (C) 1997-2019 Sam Lantinga <slouken@libsdl.org>
#
#  This software is provided 'as-is', without any express or implied
#  warranty.  In no event will the authors be held liable for any damages
#  arising from the use of this software.
#
#  Permission is granted to anyone to use this software for any purpose,
#  including commercial applications, and to alter it and redistribute it
#  freely, subject to the following restrictions:
#
#  1. The origin of this software must not be misrepresented; you must not
#     claim that you wrote the original software. If you use this software
#     in a product, an acknowledgment in the product documentation would be
#     appreciated but is not required.
#  2. Altered source versions must be plainly marked as such, and must not be
#     misrepresented as being the original software.
#  3. This notice may not be removed or altered from any source distribution.
#

##  filesystem.nim
##  ==============
##
##  Include file for filesystem SDL API procedures.

proc getBasePath*(): cstring {.
    cdecl, importc: "SDL_GetBasePath", dynlib: SDL2_LIB.}
  ##  Get the path where the application resides.
  ##
  ##  Get the "base path". This is the directory where the application was run
  ##  from, which is probably the installation directory, and may or may not
  ##  be the process's current working directory.
  ##
  ##  This returns an absolute path in UTF-8 encoding, and is guaranteed to
  ##  end with a path separator ('\\' on Windows, '/' most other places).
  ##
  ##  The pointer returned by this procedure is owned by you. Please call
  ##  ``free()`` on the pointer when you are done with it, or it will be a
  ##  memory leak. This is not necessarily a fast call, though, so you should
  ##  call this once near startup and save the string if you need it.
  ##
  ##  Some platforms can't determine the application's path, and on other
  ##  platforms, this might be meaningless. In such cases, this procedure will
  ##  return `nil`.
  ##
  ##  ``Return`` string of base dir in UTF-8 encoding, or `nil` on error.
  ##
  ##  See also:
  ##
  ##  ``getPrefPath()``

proc getPrefPath*(org: cstring; app: cstring): cstring {.
    cdecl, importc: "SDL_GetPrefPath", dynlib: SDL2_LIB.}
  ##  Get the user-and-app-specific path where files can be written.
  ##
  ##  Get the "pref dir". This is meant to be where users can write personal
  ##  files (preferences and save games, etc) that are specific to your
  ##  application. This directory is unique per user, per application.
  ##
  ##  This procedure will decide the appropriate location in the native
  ##  filesystem, create the directory if necessary, and return a string of the
  ##  absolute path to the directory in UTF-8 encoding.
  ##
  ##  On Windows, the string might look like:
  ##  "C:\\Users\\bob\\AppData\\Roaming\\My Company\\My Program Name\\"
  ##
  ##  On Linux, the string might look like:
  ##  "/home/bob/.local/share/My Program Name/"
  ##
  ##  On Mac OS X, the string might look like:
  ##  "/Users/bob/Library/Application Support/My Program Name/"
  ##
  ##  (etc.)
  ##
  ##  You specify the name of your organization (if it's not a real
  ##  organization, your name or an Internet domain you own might do) and the
  ##  name of your application. These should be untranslated proper names.
  ##
  ##  Both the org and app strings may become part of a directory name, so
  ##  please follow these rules:
  ##  * Try to use the same org string (including case-sensitivity) for
  ##    all your applications that use this procedure.
  ##  * Always use a unique app string for each one, and make sure it never
  ##    changes for an app once you've decided on it.
  ##  * Unicode characters are legal, as long as it's UTF-8 encoded, but...
  ##  * ...only use letters, numbers, and spaces. Avoid punctuation like
  ##    "Game Name 2: Bad Guy's Revenge!" ... "Game Name 2" is sufficient.
  ##
  ##  This returns an absolute path in UTF-8 encoding, and is guaranteed to
  ##  end with a path separator ('\\' on Windows, '/' most other places).
  ##
  ##  The pointer returned by this procedure is owned by you. Please call
  ##  ``free()`` on the pointer when you are done with it, or it will be a
  ##  memory leak. This is not necessarily a fast call, though, so you should
  ##  call this once near startup and save the string if you need it.
  ##
  ##  You should assume the path returned by this procedure is the only safe
  ##  place to write files (and that ``getBasePath()``, while it might be
  ##  writable, or even the parent of the returned path, aren't where you
  ##  should be writing things).
  ##
  ##  Some platforms can't determine the pref path, and on other
  ##  platforms, this might be meaningless. In such cases, this procedure will
  ##  return `nil`.
  ##
  ##  ``org`` The name of your organization.
  ##
  ##  ``app`` The name of your application.
  ##
  ##  ``Return`` UTF-8 string of user dir in platform-dependent notation.
  ##  `nil` if there's a problem (creating directory failed, etc).
  ##
  ##  See also:
  ##
  ##  ``getBasePath()``
