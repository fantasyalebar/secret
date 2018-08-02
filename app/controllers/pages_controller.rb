class PagesController < ApplicationController
  def home
  	@users = User.all
  end

  def secret_page
  end 
end
