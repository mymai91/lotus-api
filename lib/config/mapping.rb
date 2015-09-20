collection :users do
  entity User
  repository UserRepository

  attribute :id, Integer
  attribute :name, String
  attribute :phone_number, String
  attribute :email, String
  attribute :pin, String
  attribute :auth_token, String
  attribute :created_at, DateTime
  attribute :updated_at, DateTime
end
