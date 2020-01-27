# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin1 = Admin.new(:email => 'admin@admin', :password => '123456')
admin1.save



genres = Genre.create([{title: "gâteau"}, 
    {title: "glace"}, {title: "crème caramel"}, 
    {title: "granité"}, {title: "sorbet"},
    {title: "gelée"}, {title: "tarte"},
    {title: "millefeuille"}, {title: "chou à la crème"},
    {title: "éclair"}, {title: "crêpe"},
    {title: "biscuit"}, {title: "soufflé"},
    {title: "macaron"}, {title: "guimauve"},
    {title: "chocolat"}, {title: "bonbon"},
    {title: "madeleine"},{title: "beignet"}])

