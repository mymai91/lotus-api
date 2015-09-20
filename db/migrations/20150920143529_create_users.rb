Lotus::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :name, String, null: false, size: 128, unique: true
      column :phone_number, String, null: false, unique: true
      column :email, String, null: false
      column :pin, String, size: 4
      column :auth_token, String, null: false

      column :created_at, DateTime
      column :updated_at, DateTime
    end
  end
end
