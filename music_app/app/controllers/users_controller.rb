class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if @user.save!
            login(@user)
            redirect_to bands_url
        else
            render :new
        end
    end

    def new
        render :new
    end

    def show
        @users = User.all
        render :show
    end

    private
    def user_params
        params.require(:user).permit(:email, :password)
    end
end 