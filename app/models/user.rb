require 'bcrypt'
class User < ApplicationRecord
  include BCrypt
  has_secure_password

  def auth(password)
    if self.password_digest == Password.create(password)
      return true
    else
      return false
      #code
    end
  end
end
