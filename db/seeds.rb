# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create!(title: 'Ruby book',
								
                description: %{Enhanced Tiles customize a Firefox 
									user’s new tab page, making it unique to that user. 
                	Firefox will display Tiles based on a user’s browsing history, 
                  and the experience is easy to customize and organize with a simple, 
                  drag-and-drop interface.},

								price: 49.95)
