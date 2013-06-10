# home controller
class HomeController < ApplicationController
	layout 'standard'
	def battle
		render :view => 'battle'
	end
end
