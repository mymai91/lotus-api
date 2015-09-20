require 'lotus/entity'

class User
  include Lotus::Entity
  attributes :name, :phone_number, :email, :pin, :auth_token
end
