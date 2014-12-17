class UsersController < ApplicationController

  respond_to :html, :json

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
        format.json { render json: @user.to_json, status: :created }
        format.html { redirect_to users_path }
      end
    else
      respond_to do |format|
        format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
        format.html do
          flash[:error] = @user.errors.full_messages
          render :new
        end
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      respond_to do |format|
        format.json { render json: @user.to_json, status: :no_content }
        format.html { redirect_to users_path }
      end
    else
      respond_to do |format|
        format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
        format.html do
          flash[:error] = @user.errors.full_messages
          render :edit
        end
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :social_security_number)
  end

end
