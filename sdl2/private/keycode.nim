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

##  keycode.nim
##  ===========
##
##  Defines constants which identify keyboard keys and modifiers.






const
  K_SCANCODE_MASK* = (1 shl 30)

template scancodeToKeycode*(x: untyped): cint =
  (cint(x) or K_SCANCODE_MASK)

type
  Keycode* {.size: sizeof(cint).} = enum ##  \
    ##  The SDL virtual key representation.
    ##
    ##  Values of this type are used to represent keyboard keys using the
    ##  current layout of the keyboard.  These values include Unicode values
    ##  representing  the unmodified character that would be generated by
    ##  pressing the key, or an K_* constant for those keys that do not
    ##  generate characters.
    ##
    ##  A special exception is the number keys at the top of the keyboard which
    ##  always map to K_0...K_9, regardless of layout.
    K_UNKNOWN = 0
    K_BACKSPACE = ord '\x08'
    K_TAB = ord '\x09'
    K_RETURN = ord '\x0D'
    K_ESCAPE = ord '\x1B'
    K_SPACE = ord ' '
    K_EXCLAIM = ord '!'
    K_QUOTEDBL = ord '\"'
    K_HASH = ord '#'
    K_DOLLAR = ord '$'
    K_PERCENT = ord '%'
    K_AMPERSAND = ord '&'
    K_QUOTE = ord '\''
    K_LEFTPAREN = ord '('
    K_RIGHTPAREN = ord ')'
    K_ASTERISK = ord '*'
    K_PLUS = ord '+'
    K_COMMA = ord ','
    K_MINUS = ord '-'
    K_PERIOD = ord '.'
    K_SLASH = ord '/'
    K_0 = ord '0'
    K_1 = ord '1'
    K_2 = ord '2'
    K_3 = ord '3'
    K_4 = ord '4'
    K_5 = ord '5'
    K_6 = ord '6'
    K_7 = ord '7'
    K_8 = ord '8'
    K_9 = ord '9'
    K_COLON = ord ':'
    K_SEMICOLON = ord ';'
    K_LESS = ord '<'
    K_EQUALS = ord '='
    K_GREATER = ord '>'
    K_QUESTION = ord '?'
    K_AT = ord '@'
    #
    #       Skip uppercase letters
    #
    K_LEFTBRACKET = ord '['
    K_BACKSLASH = ord '\\'
    K_RIGHTBRACKET = ord ']'
    K_CARET = ord '^'
    K_UNDERSCORE = ord '_'
    K_BACKQUOTE = ord '`'
    K_a = ord 'a'
    K_b = ord 'b'
    K_c = ord 'c'
    K_d = ord 'd'
    K_e = ord 'e'
    K_f = ord 'f'
    K_g = ord 'g'
    K_h = ord 'h'
    K_i = ord 'i'
    K_j = ord 'j'
    K_k = ord 'k'
    K_l = ord 'l'
    K_m = ord 'm'
    K_n = ord 'n'
    K_o = ord 'o'
    K_p = ord 'p'
    K_q = ord 'q'
    K_r = ord 'r'
    K_s = ord 's'
    K_t = ord 't'
    K_u = ord 'u'
    K_v = ord 'v'
    K_w = ord 'w'
    K_x = ord 'x'
    K_y = ord 'y'
    K_z = ord 'z'
    K_DELETE = 127
    K_CAPSLOCK = scancodeToKeycode(SCANCODE_CAPSLOCK)
    K_F1 = scancodeToKeycode(SCANCODE_F1)
    K_F2 = scancodeToKeycode(SCANCODE_F2)
    K_F3 = scancodeToKeycode(SCANCODE_F3)
    K_F4 = scancodeToKeycode(SCANCODE_F4)
    K_F5 = scancodeToKeycode(SCANCODE_F5)
    K_F6 = scancodeToKeycode(SCANCODE_F6)
    K_F7 = scancodeToKeycode(SCANCODE_F7)
    K_F8 = scancodeToKeycode(SCANCODE_F8)
    K_F9 = scancodeToKeycode(SCANCODE_F9)
    K_F10 = scancodeToKeycode(SCANCODE_F10)
    K_F11 = scancodeToKeycode(SCANCODE_F11)
    K_F12 = scancodeToKeycode(SCANCODE_F12)
    K_PRINTSCREEN = scancodeToKeycode(SCANCODE_PRINTSCREEN)
    K_SCROLLLOCK = scancodeToKeycode(SCANCODE_SCROLLLOCK)
    K_PAUSE = scancodeToKeycode(SCANCODE_PAUSE)
    K_INSERT = scancodeToKeycode(SCANCODE_INSERT)
    K_HOME = scancodeToKeycode(SCANCODE_HOME)
    K_PAGEUP = scancodeToKeycode(SCANCODE_PAGEUP)
    #K_DELETE = scancodeToKeycode(SCANCODE_DELETE)
    K_END = scancodeToKeycode(SCANCODE_END)
    K_PAGEDOWN = scancodeToKeycode(SCANCODE_PAGEDOWN)
    K_RIGHT = scancodeToKeycode(SCANCODE_RIGHT)
    K_LEFT = scancodeToKeycode(SCANCODE_LEFT)
    K_DOWN = scancodeToKeycode(SCANCODE_DOWN)
    K_UP = scancodeToKeycode(SCANCODE_UP)
    K_NUMLOCKCLEAR = scancodeToKeycode(SCANCODE_NUMLOCKCLEAR)
    K_KP_DIVIDE = scancodeToKeycode(SCANCODE_KP_DIVIDE)
    K_KP_MULTIPLY = scancodeToKeycode(SCANCODE_KP_MULTIPLY)
    K_KP_MINUS = scancodeToKeycode(SCANCODE_KP_MINUS)
    K_KP_PLUS = scancodeToKeycode(SCANCODE_KP_PLUS)
    K_KP_ENTER = scancodeToKeycode(SCANCODE_KP_ENTER)
    K_KP_1 = scancodeToKeycode(SCANCODE_KP_1)
    K_KP_2 = scancodeToKeycode(SCANCODE_KP_2)
    K_KP_3 = scancodeToKeycode(SCANCODE_KP_3)
    K_KP_4 = scancodeToKeycode(SCANCODE_KP_4)
    K_KP_5 = scancodeToKeycode(SCANCODE_KP_5)
    K_KP_6 = scancodeToKeycode(SCANCODE_KP_6)
    K_KP_7 = scancodeToKeycode(SCANCODE_KP_7)
    K_KP_8 = scancodeToKeycode(SCANCODE_KP_8)
    K_KP_9 = scancodeToKeycode(SCANCODE_KP_9)
    K_KP_0 = scancodeToKeycode(SCANCODE_KP_0)
    K_KP_PERIOD = scancodeToKeycode(SCANCODE_KP_PERIOD)
    K_APPLICATION = scancodeToKeycode(SCANCODE_APPLICATION)
    K_POWER = scancodeToKeycode(SCANCODE_POWER)
    K_KP_EQUALS = scancodeToKeycode(SCANCODE_KP_EQUALS)
    K_F13 = scancodeToKeycode(SCANCODE_F13)
    K_F14 = scancodeToKeycode(SCANCODE_F14)
    K_F15 = scancodeToKeycode(SCANCODE_F15)
    K_F16 = scancodeToKeycode(SCANCODE_F16)
    K_F17 = scancodeToKeycode(SCANCODE_F17)
    K_F18 = scancodeToKeycode(SCANCODE_F18)
    K_F19 = scancodeToKeycode(SCANCODE_F19)
    K_F20 = scancodeToKeycode(SCANCODE_F20)
    K_F21 = scancodeToKeycode(SCANCODE_F21)
    K_F22 = scancodeToKeycode(SCANCODE_F22)
    K_F23 = scancodeToKeycode(SCANCODE_F23)
    K_F24 = scancodeToKeycode(SCANCODE_F24)
    K_EXECUTE = scancodeToKeycode(SCANCODE_EXECUTE)
    K_HELP = scancodeToKeycode(SCANCODE_HELP)
    K_MENU = scancodeToKeycode(SCANCODE_MENU)
    K_SELECT = scancodeToKeycode(SCANCODE_SELECT)
    K_STOP = scancodeToKeycode(SCANCODE_STOP)
    K_AGAIN = scancodeToKeycode(SCANCODE_AGAIN)
    K_UNDO = scancodeToKeycode(SCANCODE_UNDO)
    K_CUT = scancodeToKeycode(SCANCODE_CUT)
    K_COPY = scancodeToKeycode(SCANCODE_COPY)
    K_PASTE = scancodeToKeycode(SCANCODE_PASTE)
    K_FIND = scancodeToKeycode(SCANCODE_FIND)
    K_MUTE = scancodeToKeycode(SCANCODE_MUTE)
    K_VOLUMEUP = scancodeToKeycode(SCANCODE_VOLUMEUP)
    K_VOLUMEDOWN = scancodeToKeycode(SCANCODE_VOLUMEDOWN)
    K_KP_COMMA = scancodeToKeycode(SCANCODE_KP_COMMA)
    K_KP_EQUALSAS400 = scancodeToKeycode(SCANCODE_KP_EQUALSAS400)
    K_ALTERASE = scancodeToKeycode(SCANCODE_ALTERASE)
    K_SYSREQ = scancodeToKeycode(SCANCODE_SYSREQ)
    K_CANCEL = scancodeToKeycode(SCANCODE_CANCEL)
    K_CLEAR = scancodeToKeycode(SCANCODE_CLEAR)
    K_PRIOR = scancodeToKeycode(SCANCODE_PRIOR)
    K_RETURN2 = scancodeToKeycode(SCANCODE_RETURN2)
    K_SEPARATOR = scancodeToKeycode(SCANCODE_SEPARATOR)
    K_OUT = scancodeToKeycode(SCANCODE_OUT)
    K_OPER = scancodeToKeycode(SCANCODE_OPER)
    K_CLEARAGAIN = scancodeToKeycode(SCANCODE_CLEARAGAIN)
    K_CRSEL = scancodeToKeycode(SCANCODE_CRSEL)
    K_EXSEL = scancodeToKeycode(SCANCODE_EXSEL)
    K_KP_00 = scancodeToKeycode(SCANCODE_KP_00)
    K_KP_000 = scancodeToKeycode(SCANCODE_KP_000)
    K_THOUSANDSSEPARATOR = scancodeToKeycode(SCANCODE_THOUSANDSSEPARATOR)
    K_DECIMALSEPARATOR = scancodeToKeycode(SCANCODE_DECIMALSEPARATOR)
    K_CURRENCYUNIT = scancodeToKeycode(SCANCODE_CURRENCYUNIT)
    K_CURRENCYSUBUNIT = scancodeToKeycode(SCANCODE_CURRENCYSUBUNIT)
    K_KP_LEFTPAREN = scancodeToKeycode(SCANCODE_KP_LEFTPAREN)
    K_KP_RIGHTPAREN = scancodeToKeycode(SCANCODE_KP_RIGHTPAREN)
    K_KP_LEFTBRACE = scancodeToKeycode(SCANCODE_KP_LEFTBRACE)
    K_KP_RIGHTBRACE = scancodeToKeycode(SCANCODE_KP_RIGHTBRACE)
    K_KP_TAB = scancodeToKeycode(SCANCODE_KP_TAB)
    K_KP_BACKSPACE = scancodeToKeycode(SCANCODE_KP_BACKSPACE)
    K_KP_A = scancodeToKeycode(SCANCODE_KP_A)
    K_KP_B = scancodeToKeycode(SCANCODE_KP_B)
    K_KP_C = scancodeToKeycode(SCANCODE_KP_C)
    K_KP_D = scancodeToKeycode(SCANCODE_KP_D)
    K_KP_E = scancodeToKeycode(SCANCODE_KP_E)
    K_KP_F = scancodeToKeycode(SCANCODE_KP_F)
    K_KP_XOR = scancodeToKeycode(SCANCODE_KP_XOR)
    K_KP_POWER = scancodeToKeycode(SCANCODE_KP_POWER)
    K_KP_PERCENT = scancodeToKeycode(SCANCODE_KP_PERCENT)
    K_KP_LESS = scancodeToKeycode(SCANCODE_KP_LESS)
    K_KP_GREATER = scancodeToKeycode(SCANCODE_KP_GREATER)
    K_KP_AMPERSAND = scancodeToKeycode(SCANCODE_KP_AMPERSAND)
    K_KP_DBLAMPERSAND = scancodeToKeycode(SCANCODE_KP_DBLAMPERSAND)
    K_KP_VERTICALBAR = scancodeToKeycode(SCANCODE_KP_VERTICALBAR)
    K_KP_DBLVERTICALBAR = scancodeToKeycode(SCANCODE_KP_DBLVERTICALBAR)
    K_KP_COLON = scancodeToKeycode(SCANCODE_KP_COLON)
    K_KP_HASH = scancodeToKeycode(SCANCODE_KP_HASH)
    K_KP_SPACE = scancodeToKeycode(SCANCODE_KP_SPACE)
    K_KP_AT = scancodeToKeycode(SCANCODE_KP_AT)
    K_KP_EXCLAM = scancodeToKeycode(SCANCODE_KP_EXCLAM)
    K_KP_MEMSTORE = scancodeToKeycode(SCANCODE_KP_MEMSTORE)
    K_KP_MEMRECALL = scancodeToKeycode(SCANCODE_KP_MEMRECALL)
    K_KP_MEMCLEAR = scancodeToKeycode(SCANCODE_KP_MEMCLEAR)
    K_KP_MEMADD = scancodeToKeycode(SCANCODE_KP_MEMADD)
    K_KP_MEMSUBTRACT = scancodeToKeycode(SCANCODE_KP_MEMSUBTRACT)
    K_KP_MEMMULTIPLY = scancodeToKeycode(SCANCODE_KP_MEMMULTIPLY)
    K_KP_MEMDIVIDE = scancodeToKeycode(SCANCODE_KP_MEMDIVIDE)
    K_KP_PLUSMINUS = scancodeToKeycode(SCANCODE_KP_PLUSMINUS)
    K_KP_CLEAR = scancodeToKeycode(SCANCODE_KP_CLEAR)
    K_KP_CLEARENTRY = scancodeToKeycode(SCANCODE_KP_CLEARENTRY)
    K_KP_BINARY = scancodeToKeycode(SCANCODE_KP_BINARY)
    K_KP_OCTAL = scancodeToKeycode(SCANCODE_KP_OCTAL)
    K_KP_DECIMAL = scancodeToKeycode(SCANCODE_KP_DECIMAL)
    K_KP_HEXADECIMAL = scancodeToKeycode(SCANCODE_KP_HEXADECIMAL)
    K_LCTRL = scancodeToKeycode(SCANCODE_LCTRL)
    K_LSHIFT = scancodeToKeycode(SCANCODE_LSHIFT)
    K_LALT = scancodeToKeycode(SCANCODE_LALT)
    K_LGUI = scancodeToKeycode(SCANCODE_LGUI)
    K_RCTRL = scancodeToKeycode(SCANCODE_RCTRL)
    K_RSHIFT = scancodeToKeycode(SCANCODE_RSHIFT)
    K_RALT = scancodeToKeycode(SCANCODE_RALT)
    K_RGUI = scancodeToKeycode(SCANCODE_RGUI)
    K_MODE = scancodeToKeycode(SCANCODE_MODE)
    K_AUDIONEXT = scancodeToKeycode(SCANCODE_AUDIONEXT)
    K_AUDIOPREV = scancodeToKeycode(SCANCODE_AUDIOPREV)
    K_AUDIOSTOP = scancodeToKeycode(SCANCODE_AUDIOSTOP)
    K_AUDIOPLAY = scancodeToKeycode(SCANCODE_AUDIOPLAY)
    K_AUDIOMUTE = scancodeToKeycode(SCANCODE_AUDIOMUTE)
    K_MEDIASELECT = scancodeToKeycode(SCANCODE_MEDIASELECT)
    K_WWW = scancodeToKeycode(SCANCODE_WWW)
    K_MAIL = scancodeToKeycode(SCANCODE_MAIL)
    K_CALCULATOR = scancodeToKeycode(SCANCODE_CALCULATOR)
    K_COMPUTER = scancodeToKeycode(SCANCODE_COMPUTER)
    K_AC_SEARCH = scancodeToKeycode(SCANCODE_AC_SEARCH)
    K_AC_HOME = scancodeToKeycode(SCANCODE_AC_HOME)
    K_AC_BACK = scancodeToKeycode(SCANCODE_AC_BACK)
    K_AC_FORWARD = scancodeToKeycode(SCANCODE_AC_FORWARD)
    K_AC_STOP = scancodeToKeycode(SCANCODE_AC_STOP)
    K_AC_REFRESH = scancodeToKeycode(SCANCODE_AC_REFRESH)
    K_AC_BOOKMARKS = scancodeToKeycode(SCANCODE_AC_BOOKMARKS)
    K_BRIGHTNESSDOWN = scancodeToKeycode(SCANCODE_BRIGHTNESSDOWN)
    K_BRIGHTNESSUP = scancodeToKeycode(SCANCODE_BRIGHTNESSUP)
    K_DISPLAYSWITCH = scancodeToKeycode(SCANCODE_DISPLAYSWITCH)
    K_KBDILLUMTOGGLE = scancodeToKeycode(SCANCODE_KBDILLUMTOGGLE)
    K_KBDILLUMDOWN = scancodeToKeycode(SCANCODE_KBDILLUMDOWN)
    K_KBDILLUMUP = scancodeToKeycode(SCANCODE_KBDILLUMUP)
    K_EJECT = scancodeToKeycode(SCANCODE_EJECT)
    K_SLEEP = scancodeToKeycode(SCANCODE_SLEEP)
    K_APP1 = scancodeToKeycode(SCANCODE_APP1)
    K_APP2 = scancodeToKeycode(SCANCODE_APP2)
    K_AUDIOREWIND = scancodeToKeycode(SCANCODE_AUDIOREWIND)
    K_AUDIOFASTFORWARD = scancodeToKeycode(SCANCODE_AUDIOFASTFORWARD)

type
  Keymod* {.size: sizeof(cint).} = enum ##  \
    ##  Enumeration of valid key mods (possibly OR'd together).
    KMOD_NONE = 0x00000000,
    KMOD_LSHIFT = 0x00000001,
    KMOD_RSHIFT = 0x00000002,
    KMOD_SHIFT = KMOD_LSHIFT.cint or KMOD_RSHIFT.cint,
    KMOD_LCTRL = 0x00000040,
    KMOD_RCTRL = 0x00000080,
    KMOD_CTRL  = KMOD_LCTRL.cint or KMOD_RCTRL.cint,
    KMOD_LALT = 0x00000100,
    KMOD_RALT = 0x00000200,
    KMOD_ALT   = KMOD_LALT.cint or KMOD_RALT.cint,
    KMOD_LGUI = 0x00000400,
    KMOD_RGUI = 0x00000800,
    KMOD_GUI   = KMOD_LGUI.cint or KMOD_RGUI.cint,
    KMOD_NUM = 0x00001000,
    KMOD_CAPS = 0x00002000,
    KMOD_MODE = 0x00004000,
    KMOD_RESERVED = 0x00008000

template `or`*(a, b: Keymod): Keymod =
  a.cint or b.cint

template `and`*(a, b: Keymod): bool =
  (a.cint and b.cint) > 0
