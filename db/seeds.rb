# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Category.create(name: '土木工程', description: '土木工程')
Category.create(name: '建筑工程', description: '建筑工程')
Category.create(name: '市政公用', description: '市政公用')
Category.create(name: '机电工程', description: '机电工程')
Category.create(name: '公路工程', description: '公路工程')
Category.create(name: '水利水电', description: '水利水电')
Category.create(name: '矿业工程', description: '矿业工程')

Post.delete_all
Post.create(title: '第一篇帖子',
	description: %{<p>
		第一篇帖子.
		},
	category_id: Category.first.id
	)
Post.create(title: '第一篇帖子',
	description: %{<p>
		第一篇帖子.
		},
	category_id: Category.first.id
	)