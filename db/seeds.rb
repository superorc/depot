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

Product.create!(title: 'Shameless',
								description: 'Чем красивее история, тем быстрее она становится легендой.
									Многие мифы сложены настолько стройно и хорошо, что даже не тянет
									проверять их правдоподобность: хочется лишь поскорее поделиться ими со всеми.
									Именно потому, что кто-то в свое время отлично сочинял такие захватывающие истории,
									Питер и оброс множеством легенд и заблуждений. Докопаемся до истины?',
								price: 120.50)

Product.create!(title: 'Naruto',
								description: 'манга Масаси Кисимото в жанре сёнэн и её аниме-экранизация.
									Главным её героем является Наруто Удзумаки, шумный и непоседливый ниндзя-подросток,
									который мечтает достичь всеобщего признания и стать Хокагэ — главой своего селения
									и сильнейшим ниндзя. Чтобы добиться уважения окружающих, ему предстоит пройти через
									тысячи препятствий: экзамены ниндзя, различные миссии и сражения.',
								price: 23.10)
