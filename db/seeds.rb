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
# Hotkey.create(name: "F3", function: "Exits Application", program: spectacle)
