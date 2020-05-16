# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
	{title: "トラブル知らずのシステム設計", body:"システム設計の要点を図解で説明してくれます"},
	{title: "たのしいRuby", body:"Rubyの入門におすすめです"},
].map{|row| Hashie::Mash.new(row) }.each do |data|
	user.create!(
		title: data.title,
		body: data.body,
		)
end