class UsersController < Clearance::ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = user_from_params
    @user.save
    if @user.save
      redirect_to @user
    else
      render '/'
    end
  end

  private
  def user_from_params
    user_params = params[:user] || Hash.new
    name = user_params.delete(:name)
    username = user_params.delete(:username)
    email = user_params.delete(:email)
    password = user_params.delete(:password)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.name = name
      user.username = username
      user.email = email
      user.password = password
    end
  end
end
