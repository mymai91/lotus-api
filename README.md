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
lotus generate migration create_users
```

![screen shot 2015-09-20 at 9 40 49 pm](https://cloud.githubusercontent.com/assets/6791942/9981202/5dbca3fc-5fe0-11e5-9554-0181cd1bed8e.png)

## Step 3 Create database

```ruby
lotus db create
```

## Step 3 Generater api - web api

```ruby
lotus g app api
```

![screen shot 2015-09-20 at 3 19 56 pm](https://cloud.githubusercontent.com/assets/6791942/9979837/298d409e-5fab-11e5-84f7-dd27ed267b92.png)

## Step 3 Migration create users table

```ruby
lotus g migration create_users
```

![screen shot 2015-09-20 at 4 18 52 pm](https://cloud.githubusercontent.com/assets/6791942/9980023/52880bf2-5fb3-11e5-88ae-a9de60a65138.png
