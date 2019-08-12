class ContactController < ApplicationController
	def index
  	@interface = rand(2000)
  	@user = User.all
  end
end
