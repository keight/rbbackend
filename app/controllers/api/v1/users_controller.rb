class Api::V1::UsersController < Api::V1::ApplicationController

	def show
		@user = User.last
	end
end