# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sistem.create(name: 'SISSISTEM', description: 'Sistema de Controle de Sistemas', 
	link: 'sistems_path')
Sistem.create(name: 'SISGEUSER', description: 'Sistema de Controle de Usuarios', 
	link: 'users_path')
Sistem.create(name: 'SISTASK', description: 'Sistema de Controle de Patrimonio', 
	link: 'tasks_path')