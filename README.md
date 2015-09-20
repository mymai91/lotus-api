# lotus-api Product APIs
Use lotus framework create api for Start Flight

# Yah!!! Start

## Step 1 Create app

```ruby
lotus new start-flight --database=postgres && cd start-flight && bundle
```

![screen shot 2015-09-20 at 9 28 23 pm](https://cloud.githubusercontent.com/assets/6791942/9981151/9547cc18-5fde-11e5-8964-a49e8198500e.png)

## Step 2 Generater api - web api

```ruby
lotus g migration create_users
```

![screen shot 2015-09-20 at 9 40 49 pm](https://cloud.githubusercontent.com/assets/6791942/9981202/5dbca3fc-5fe0-11e5-9554-0181cd1bed8e.png)

## Step 3 Create database

```ruby
lotus db create
```

## Step 4 Migration database

```
lotus db migrate
```
