class UsersController < ApplicationController
  attr_accessor :name, :email

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      flash[:success] = "Регистрация прошла успешно"
      redirect_to @user
      # Handle a successful save.
    else
      #название вьюхи
      #render '/static_pages/about'
      #render 'test'
      render 'new'
    end
  end

  private


  #получаем только разрешенные параметры
  #или ставим в модель attr_accessible name, email, password,password_confirmation
  def users_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
