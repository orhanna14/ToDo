class SessionsController < ApplicationController

def new
 #Add something about when a user signs in, they can access and create
 #their todos
end

def create
  sign_in_as params[:session][:email]
  redirect_to root_path
end


end