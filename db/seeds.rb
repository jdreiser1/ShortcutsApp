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

Hotkey.create(task: "Open Command Palette", keystrokes: "shift-cmd-p", program: atom, description: "Opens & closes the command palette")
Hotkey.create(task: "Grammar Selector", keystrokes: "ctrl-shift-l", program: atom, description: "Selects the language the file is in" )
Hotkey.create(task: "Hide Application", keystrokes: "cmd-,", program: atom, description: "Hides Atom application")
Hotkey.create(task: "Minimize Application", keystrokes: "cmd-m", program: atom, description: "Minimizes Atom application")
Hotkey.create(task: "Open File (Fuzzy)", keystrokes: "cmd-p", program: atom, description: "Opens the Fuzzy Finder palette in which you can search and open files")
Hotkey.create(task: "Browse Open Files", keystrokes: "cmd-b", program: atom, description: "Browse tabs within the window")
Hotkey.create(task: "Grammar Selector	", keystrokes: "ctrl-shift-m", program: atom, description: "Selects the language the file is in")

Hotkey.create(task: "Markdown Preview", keystrokes: "ctrl-shift-m", program: atom, description: "Previews the file in the Markdown format")
Hotkey.create(task: "Key Binding Resolver", keystrokes: "cmd-", program: atom, description: "Shows what keybindings the pressed key combination resolves to" )
Hotkey.create(task: "Toggle Tree View", keystrokes: "cmd-k or cmd-b", program: atom, description: "Toggles Atom's file Tree View")
Hotkey.create(task: "Reload Atom", keystrokes: "ctrl-alt-cmd-l", program: atom, description: "Reloads the Editor")
Hotkey.create(task: "Open Link", keystrokes: "ctrl-shift-o", program: atom, description: "Opens up a HTTP or HTTPS link")
Hotkey.create(task: "Toggle Developer Tools", keystrokes: "alt-cmd-i", program: atom, description: "Opens up the Chrome Developer Tools/Console")
Hotkey.create(task: "Show Available Snippets", keystrokes: "alt-shift-s	", program: atom, description: "Shows the snippets available to Atom")

Hotkey.create(task: "New File", keystrokes: "cmd-n", program: atom, description: "Opens an empty file in a new tab")
Hotkey.create(task: "New Window", keystrokes: "shift-cmd-n", program: atom, description: "Opens a new editor window")
Hotkey.create(task: "Open", keystrokes: "cmd-o", program: atom, description: "Shows the Open File dialog, which lets you select a file to open in the editor")
Hotkey.create(task: "Open Folder", keystrokes: "cmd-shift-o", program: atom, description: "Shows the Open Folder dialog, which lets you select a folder to add to the editor's Tree View")
Hotkey.create(task: "Save", keystrokes: "cmd-s", program: atom, description: "Saves the currently active file")
Hotkey.create(task: "Save As", keystrokes: "shift-cmd-s", program: atom, description: "Saves the currently active file under a different name")
Hotkey.create(task: "Save All", keystrokes: "alt-cmd-s", program: atom, description: "Saves all changed files")
Hotkey.create(task: "Close Tab", keystrokes: "cmd-w", program: atom, description: "Closes the currently active tab")
Hotkey.create(task: "Close Window", keystrokes: "shift-cmd-w", program: atom, description: "Closes the currently active editor window")

Hotkey.create(task: "Duplicate Lines", keystrokes: "shift-cmd-d", program: atom, description: "Duplicates the line of the current cursor position and creates a new line under it with the same contents")
Hotkey.create(task: "Delete Line", keystrokes: "ctrl-shift-k", program: atom, description: "Deletes the current line")
Hotkey.create(task: "Move Line Up", keystrokes: "ctrl-cmd-up", program: atom, description: "Moves the contents of the current cursor position up one line. If there is a line above with content, the current lines content will swap with the one above it.")
Hotkey.create(task: "Find/Replace", keystrokes: "cmd-f", program: atom, description: "Opens up the Find/Replace panel")
Hotkey.create(task: "Find Next", keystrokes: "cmd-g", program: atom, description: "Toggles forward through the results of the current buffer in the file while the Find/Replace panel is active")
Hotkey.create(task: "Find Previous", keystrokes: "shift-cmd-g", program: atom, description: "Toggles backward through the results of the current buffer in the file while the Find/Replace panel is active")
Hotkey.create(task: "Find in Project", keystrokes: "shift-cmd-f", program: atom, description: "Opens the Find in Project Panel")
Hotkey.create(task: "Go To Line", keystrokes: "ctrl-g", program: atom, description: "Opens the Go To Line panel")
Hotkey.create(task: "Go To Matching Bracket", keystrokes: "ctrl-m", program: atom, description: "The cursor goes to the matching top bracket that the cursor is ecapsulated in")
Hotkey.create(task: "Select Line", keystrokes: "cmd-l", program: atom, description: "Selects the entire line the cursor's current position is in")
Hotkey.create(task: "Toggle Comment", keystrokes: "cmd-/", program: atom, description: "Toggles the selected text into a comment of the current grammar")
Hotkey.create(task: "Column Selection", keystrokes: "ctrl-shift-up/down", program: atom, description: "Allows to select multiple rows, where the same edit will be applied")



# Hotkey.create(name: "F3", function: "Exits Application", program: spectacle)
