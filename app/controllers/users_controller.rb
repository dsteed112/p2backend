class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @Users, include: [:events]
    end
    
    def show
        @event = User.find(params[:id])
        render json: @user, include: [:events]
    end

end
