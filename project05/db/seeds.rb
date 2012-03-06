# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

article_attributes =[
	{ :title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.' },
	{ :title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.'},
	{:title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.' },
	{:title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.' },
	{:title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.'},
	{:title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.' },
	{:title => 'Man this article is sweet',
	:author_id => '1',
		:body =>
	'This article about articles is probably the sweetest article youll ever read. 
	Articles have a very article quality about them that youll find extremly articly.
	An article article is something that every article should have. Article.' }
	]
	
	article_attributes.each do |attribute|
		Article.create!(attribute)
	end
	
	author_attributes = [ {:name => 'Bark Rezington'}]
	
	author_attributes.each do |attribute|
		Author.create!(attribute)
	end
