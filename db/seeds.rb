# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Program.destroy_all
Hotkey.destroy_all

atom = Program.create(name: "Atom")
spectacle = Program.create(name: "Spectacle")
chrome = Program.create(name: "Chrome")

#Atom hotkeys
Hotkey.create(keystrokes: "Shift-Cmd-P", program: atom, description: "Opens & closes the command palette")
Hotkey.create(keystrokes: "Ctrl-Shift-l", program: atom, description: "Selects the language the file is in" )
Hotkey.create(keystrokes: "Cmd-,", program: atom, description: "Hides Atom application")
Hotkey.create(keystrokes: "Cmd-M", program: atom, description: "Minimizes Atom application")
Hotkey.create(keystrokes: "Cmd-P", program: atom, description: "Opens the Fuzzy Finder palette in which you can search and open files")
Hotkey.create(keystrokes: "Cmd-B", program: atom, description: "Browse tabs within the window")
Hotkey.create(keystrokes: "Ctrl-Shift-M", program: atom, description: "Selects the language the file is in")
Hotkey.create(keystrokes: "Ctrl-Shift-M", program: atom, description: "Previews the file in the Markdown format")
Hotkey.create(keystrokes: "Cmd-.", program: atom, description: "Shows what keybindings the pressed key combination resolves to" )
Hotkey.create(keystrokes: "Cmd-k or Cmd-B", program: atom, description: "Toggles Atom's file Tree View")
Hotkey.create(keystrokes: "Ctrl-alt-Cmd-l", program: atom, description: "Reloads the Editor")
Hotkey.create(keystrokes: "Ctrl-Shift-o", program: atom, description: "Opens up a HTTP or HTTPS link")
Hotkey.create(keystrokes: "alt-Cmd-i", program: atom, description: "Opens up the Chrome Developer Tools/Console")
Hotkey.create(keystrokes: "alt-Shift-S", program: atom, description: "Shows the snippets available to Atom")
Hotkey.create(keystrokes: "cmd-n", program: atom, description: "Opens an empty file in a new tab")
Hotkey.create(keystrokes: "Shift-cmd-n", program: atom, description: "Opens a new editor window")
Hotkey.create(keystrokes: "cmd-o", program: atom, description: "Shows the Open File dialog, which lets you select a file to open in the editor")
Hotkey.create(keystrokes: "cmd-shift-o", program: atom, description: "Shows the Open Folder dialog, which lets you select a folder to add to the editor's Tree View")
Hotkey.create(keystrokes: "cmd-S", program: atom, description: "Saves the currently active file")
Hotkey.create(keystrokes: "shift-cmd-S", program: atom, description: "Saves the currently active file under a different name")
Hotkey.create(keystrokes: "alt-cmd-S", program: atom, description: "Saves all changed files")
Hotkey.create(keystrokes: "cmd-w", program: atom, description: "Closes the currently active tab")
Hotkey.create(keystrokes: "Shift-cmd-w", program: atom, description: "Closes the currently active editor window")
Hotkey.create(keystrokes: "Shift-cmd-d", program: atom, description: "Duplicates the line of the current cursor position and creates a new line under it with the same contents")
Hotkey.create(keystrokes: "ctrl-shift-k", program: atom, description: "Deletes the current line")
Hotkey.create(keystrokes: "ctrl-cmd-up", program: atom, description: "Moves the contents of the current cursor position up one line. If there is a line above with content, the current lines content will swap with the one above it.")
Hotkey.create(keystrokes: "cmd-f", program: atom, description: "Opens up the Find/Replace panel")
Hotkey.create(keystrokes: "cmd-g", program: atom, description: "Toggles forward through the results of the current buffer in the file while the Find/Replace panel is active")
Hotkey.create(keystrokes: "Shift-cmd-g", program: atom, description: "Toggles backward through the results of the current buffer in the file while the Find/Replace panel is active")
Hotkey.create(keystrokes: "Shift-cmd-f", program: atom, description: "Opens the Find in Project Panel")
Hotkey.create(keystrokes: "ctrl-g", program: atom, description: "Opens the Go To Line panel")
Hotkey.create(keystrokes: "ctrl-M", program: atom, description: "The cursor goes to the matching top bracket that the cursor is ecapsulated in")
Hotkey.create(keystrokes: "cmd-l", program: atom, description: "Selects the entire line the cursor's current position is in")
Hotkey.create(keystrokes: "cmd-/", program: atom, description: "Toggles the selected text into a comment of the current grammar")
Hotkey.create(keystrokes: "ctrl-shift-up/down", program: atom, description: "Allows to select multiple rows, where the same edit will be applied")

#Spectacle Hotkeys
Hotkey.create(keystrokes: "option-command-left", program: spectacle, description: "Moves entire window to left half of the screen")
Hotkey.create(keystrokes: "option-command-right", program: spectacle, description: "Moves entire window to right half of the screen")
Hotkey.create(keystrokes: "option-command-up", program: spectacle, description: "Moves entire window to upper half of the screen")
Hotkey.create(keystrokes: "option-command-down", program: spectacle, description: "Moves entire window to lower half of the screen")
Hotkey.create(keystrokes: "control-command-left", program: spectacle, description: "Moves entire window to upper left quarter of the screen")
Hotkey.create(keystrokes: "control-Shift-command-left", program: spectacle, description: "Moves entire window to lower left quarter of the screen")
Hotkey.create(keystrokes: "control-command-right", program: spectacle, description: "Moves entire window to upper right quarter of the screen")
Hotkey.create(keystrokes: "control-Shift-command-right", program: spectacle, description: "Moves entire window to lower right quarter of the screen")

#Chrome hotkeys
Hotkey.create(keystrokes: "alt-home", program: chrome, description: "Open your homepage")
Hotkey.create(keystrokes: "alt-tab", program: chrome, description: "Toggle between browser windows")
Hotkey.create(keystrokes: "alt-left", program: chrome, description: "Back a page")
Hotkey.create(keystrokes: "alt-right", program: chrome, description: "Forward a page")
Hotkey.create(keystrokes: "f11", program: chrome, description: "Display the current website in full-screen mode. Pressing F11 again will exit this mode")
Hotkey.create(keystrokes: "esc", program: chrome, description: "Stop page or download from loading")
Hotkey.create(keystrokes: "control-(- or +)", program: chrome, description: "Zoom in or out of a page '-' will decrease and '+' will increase. Ctrl + 0 will reset back to default")
Hotkey.create(keystrokes: "control-(1 thru 8)", program: chrome, description: "Pressing Ctrl and any number 1 through 8 wil move to the corresponding tab in your tab bar")
Hotkey.create(keystrokes: "control-9", program: chrome, description: "Switch to last tab")
Hotkey.create(keystrokes: "control-0", program: chrome, description: "Reset browser zoom to default")
Hotkey.create(keystrokes: "control-enter", program: chrome, description: "Quickly complete an address. For example, type computerhope in the address bar and press CTRL + ENTER to get http://www.computerhope.com")
Hotkey.create(keystrokes: "control-Shift-del", program: chrome, description: "Open the Clear Data window to quickly clear private data")
Hotkey.create(keystrokes: "control-Shift-B", program: chrome, description: "Toggle the bookmarks bar between hidden and shown")
Hotkey.create(keystrokes: "control-a", program: chrome, description: "Select everything on a page")
Hotkey.create(keystrokes: "control-d", program: chrome, description: "Add a bookmark for the page currently opened")
Hotkey.create(keystrokes: "control-f", program: chrome, description: "Open the find bar to search text on the current page")
Hotkey.create(keystrokes: "control-o", program: chrome, description: "Open a file in the browser")
Hotkey.create(keystrokes: "control-shift-o", program: chrome, description: "Open the Bookmark manager")
Hotkey.create(keystrokes: "control-h", program: chrome, description: "Open history in a new tab")
Hotkey.create(keystrokes: "control-j", program: chrome, description: "Display the downloads window")
Hotkey.create(keystrokes: "control-k or control-e", program: chrome, description: "Perform a Google search")
Hotkey.create(keystrokes: "control-l", program: chrome, description: "Move the cursor to the browser address bar and highlight everything in it")
Hotkey.create(keystrokes: "control-n", program: chrome, description: "Open new browser window.")
Hotkey.create(keystrokes: "control-shift-n", program: chrome, description: "Open a new window in incognito mode")
Hotkey.create(keystrokes: "control-r or f5", program: chrome, description: "Refresh the current page or frame.")
Hotkey.create(keystrokes: "control-S", program: chrome, description: "Saves the current page")
Hotkey.create(keystrokes: "control-t", program: chrome, description: "Opens a new tab")
Hotkey.create(keystrokes: "control-u", program: chrome, description: "View a web page's source code")
Hotkey.create(keystrokes: "control-w", program: chrome, description: "Closes the currently selected tab")
Hotkey.create(keystrokes: "control-Shift-w", program: chrome, description: "Closes the currently selected window")
Hotkey.create(keystrokes: "control-Shift-t", program: chrome, description: "Reopens the last tab you've closed (up to 10)")
Hotkey.create(keystrokes: "control-tab", program: chrome, description: "Moves through each of the open tabs")
Hotkey.create(keystrokes: "control-left_click", program: chrome, description: "Open the link in a new tab in the background")
Hotkey.create(keystrokes: "control-Shift-left_click", program: chrome, description: "Open the link in a new tab and switch to the new tab")
Hotkey.create(keystrokes: "Spacebar", program: chrome, description: "Moves down a page at a time")
Hotkey.create(keystrokes: "Shift-Spacebar", program: chrome, description: "Moves up a page at a time")
Hotkey.create(keystrokes: "Control-Alt-Down", program: chrome, description: "Go to top of page")
Hotkey.create(keystrokes: "Control-Alt-Up", program: chrome, description: "Go to bottom of page")
Hotkey.create(keystrokes: "Alt-Down", program: chrome, description: "Display all previous text entered in a text box and available options on a drop-down menu.")
