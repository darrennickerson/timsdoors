class AdminController < ApplicationController

  before_action :authenticate_user! && :is_admin?
  def home
  end



   

   
end
