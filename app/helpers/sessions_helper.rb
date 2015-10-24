module SessionsHelper


  #метод авторизации
  def sign_in(user)
    remember_token = User.new_remember_token

    #куки есть сразу
    cookies.permanent[:remember_token] = remember_token

    #обновляем токен в моделе после каждого входа
    user.update_attribute(:remember_token, User.encrypt(remember_token))

    #установка глобаильной переменной с сессией вов сех контроллерах
    self.current_user = user
  end

  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.encrypt(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end


  def signed_in?
    !current_user.nil?
  end

  #сеттер
  def current_user=(user)
    @current_user = user
  end

  #геттер
  def current_user
    remember_token = User.encrypt(cookies[:remember_token])

    #если нет в сессии, берем из браузера
    @current_user ||= User.find_by(remember_token: remember_token)
  end


end
