class WelcomeController < ApplicationController
	layout "welcome"

	def Index
		render "index"
	end

	def ShowAction
		 render "showaction"
		#redirect_to welcome_path
	end

	def ShowLayouts
		render "showlayouts"
	end

	def ShowRouting
		render "showrouting"
	end

end
