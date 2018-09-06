module Account
  class UsersController < ApplicationController
    before_action :check_login, only: [:show, :edit, :update]
    before_action :find_user, only: [:show, :edit, :update]
    before_action :correct_user, only: [:show, :edit, :update]

    def new
      @user = User.new
    end

    def create
      @user = User.new user_params
      if @user.save
        log_in @user
        flash[:success] = t ".account"
        redirect_to root_path
      else
        render :new
      end
    end

    def show; end

    def edit; end

    def update
      if @user.update_attributes user_params
        flash[:success] = t ".notice"
        redirect_to account_user_path @user
      else
        render :edit
      end
    end

    private

    def user_params
      params.require(:user).permit :name, :address, :email, :password,
        :password_confirmation
    end

    def correct_user
      redirect_to root_url unless current_user? @user
    end

    def find_user
      @user = User.find_by id: params[:id]
      return if @user
      flash[:danger] = t ".error"
      redirect_to root_path
    end
  end
end
