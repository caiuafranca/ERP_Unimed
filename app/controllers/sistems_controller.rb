class SistemsController < ApplicationController
	def index
		@sistems = Sistem.all
	end
end
