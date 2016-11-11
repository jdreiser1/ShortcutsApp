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

Hotkey.create(name: "F5", function: "Starts up", program: atom)
#
# Hotkey.create(name: "F3", function: "Exits Application", program: spectacle)
