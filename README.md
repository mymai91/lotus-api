# lotus-api Product APIs
Use lotus framework create api for Start Flight

# Yah!!! Start

## Create app
```ruby
lotus new start-flight --database=postgres && cd start-flight && bundle
```

![screen shot 2015-09-20 at 9 28 23 pm](https://cloud.githubusercontent.com/assets/6791942/9981151/9547cc18-5fde-11e5-8964-a49e8198500e.png)

## Migration Database

### Step 1 Create User table

```ruby
lotus g migration create_users
```

![screen shot 2015-09-20 at 9 40 49 pm](https://cloud.githubusercontent.com/assets/6791942/9981202/5dbca3fc-5fe0-11e5-9554-0181cd1bed8e.png)

### Step 2 Create database

```ruby
lotus db create
```

### Step 3 Migration database

```
lotus db migrate
```

## Model

### Step 1 Define entity

*Define User entity:*

At terminal:

`touch apps/lib/start-flight/entities/user.rb`

open it and define user entity:

```ruby
require 'lotus/entity'

class User
  include Lotus::Entity
  attributes :name, :phone_number, :email, :pin, :auth_token
end
```

### Step 2 Define repository

*Define User repository:*

At terminal:

`touch apps/lib/start-flight/repositories/user.rb`

open it and define user entity:

```ruby
require 'lotus/repository'

class UserRepository
  include Lotus::Repository
end
```

### Step 3 Mapping data

At termial:

`cd lib/config/mapping.rb`

User entity has records:
  * id
  * name
  * phone_number
  * email
  * pin
  * auth_token
  * created_at
  * updated_at
```
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
```

## Generate API

```ruby
lotus g app api
```
