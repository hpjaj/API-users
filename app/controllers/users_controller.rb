class UsersController < ApplicationController

  respond_to :html, :json

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
        format.json { render json: @user.to_json, status: :created }
        format.html { redirect_to @user }
      end
    else
      respond_to do |format|
        format.json { render json: @user.errors.full_messages }
        format.html do
          flash[:error] = @user.errors.full_messages
          render :new
        end
      end
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :social_security_number)
  end
  
end
