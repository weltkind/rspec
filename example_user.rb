class User
  #Атрибуты, к ним автоматически создадутся аксессоры
  attr_accessor :name, :email

  #конструктор
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end