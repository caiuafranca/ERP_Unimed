class CentralsController < ApplicationController
	def index
		list_sistemas
		list_user
	end

#Modulo de sistemas
	def cad_sistemas
	end

	def list_sistemas
		@sistemas = Sistem.all
	end

#Modulo de Usuarios
	def list_user
		@users = User.all
	end

	def cad_user
	end

end
