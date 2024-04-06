require 'jwt'

class JWTWrapper
  def self.encode(payload)
    JWT.encode(payload, ENV['JWT_SECRET_KEY'], 'HS256')
  end
end
