# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

Article.create(title: 'Man this article is sweet',
author: 'Alyse Haynes',
body: %{
	This article about articles is probably the sweetest article you'll ever read. 
	Articles have a very article quality about them that you'll find extremly articly.
	An article article is something that every article should have. Article.
	})
	
