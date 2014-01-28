class UsersController < ApplicationController
def show
    @user = User.find(params[:id])
end

def index
    end

def new
    @user = User.new()
    redirect_to 'links#index'
end

def create
    @user=User.new(params[:user])
    if @user.save
        flash[:success] = "Welcome to Ritly!"
        # sign_in @user
        redirect_to '/signin'
    else
        render :new
    end
end

	def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
	end
end
