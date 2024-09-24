# Color palette (adjusted)
declare-option str black 'rgb:000000'      # Pure black
declare-option str white 'rgb:FFFFFF'      # Pure white
declare-option str gray 'rgb:A0A0A0'       # Mid-tone gray
declare-option str light_gray 'rgb:D0D0D0'  # Lighter gray
declare-option str dark_gray 'rgb:505050'   # Dark gray
declare-option str dimgray 'rgb:303030'     # Dim gray
declare-option str red 'rgb:BF616A' # A nice muted red


declare-option str background %opt{black}
declare-option str dimmed_background %opt{dimgray}
declare-option str foreground %opt{white}

# For Code
set-face global value "%opt{light_gray}"
set-face global type "%opt{gray}"
set-face global variable "%opt{gray}"
set-face global module "%opt{gray}"
set-face global function "%opt{light_gray}"
set-face global string "%opt{gray}"
set-face global keyword "%opt{light_gray}"
set-face global operator "%opt{gray}"
set-face global attribute "%opt{gray}"
set-face global comment "%opt{dark_gray}+i"
set-face global documentation "%opt{dimgray}+i"
set-face global meta "%opt{light_gray}"
set-face global builtin "%opt{white}+b"

# For Markup
set-face global title "%opt{gray}"
set-face global header "%opt{light_gray}"
set-face global mono "%opt{gray}"
set-face global block "%opt{gray}"
set-face global link "%opt{gray}"
set-face global bullet "%opt{gray}"
set-face global list "%opt{light_gray}"

# Builtin faces
set-face global Default "%opt{white},%opt{black}"
set-face global PrimarySelection "%opt{white},%opt{gray}+fg"
set-face global SecondarySelection "%opt{black},%opt{gray}+fg"
set-face global PrimaryCursor "%opt{black},%opt{white}+fg"
set-face global SecondaryCursor "%opt{black},%opt{white}+fg"
set-face global PrimaryCursorEol "%opt{black},%opt{light_gray}+fg"
set-face global SecondaryCursorEol "%opt{black},%opt{light_gray}+fg"
set-face global LineNumbers "%opt{white},%opt{black}"
set-face global LineNumberCursor "%opt{white},%opt{black}+b"
set-face global MenuForeground "%opt{white},%opt{gray}"
set-face global MenuBackground "%opt{black},%opt{gray}"
set-face global MenuInfo "%opt{gray}"
set-face global Information "%opt{black},%opt{gray}"
set-face global Error "%opt{black},%opt{red}" # Adjust red if needed
set-face global DiagnosticError "%opt{black},%opt{red}"
set-face global DiagnosticWarning "%opt{light_gray},%opt{gray}"
set-face global StatusLine "%opt{gray},%opt{black}"
set-face global StatusLineMode "%opt{light_gray},%opt{black}"
set-face global StatusLineInfo "%opt{gray},%opt{black}"
set-face global StatusLineValue "%opt{gray},%opt{black}"
set-face global StatusCursor "%opt{black},%opt{gray}"
set-face global Prompt "%opt{black},%opt{white}"
set-face global MatchingChar "%opt{white},%opt{black}+b"
set-face global Whitespace "%opt{dimgray},%opt{black}+fd"
set-face global BufferPadding "%opt{gray},%opt{black}"

