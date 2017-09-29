# api-jwt
An demo Rails 5 app, which implements jwt based authentication using knock gem.

### Ruby version
ruby 2.4

### Database initialization
`rake db:migrate`

### How to run the test suite
start server

```
bundle install
rake db:migrate
rails server
```

create user in console

```
rails c
User.create(email: "test@example.com", password: "123321")

```

authenticate and create token

```
curl -X POST  -H "Content-Type: application/json" -d '{"auth": {"email": "test@example.com", "password": "123321"}}' http://localhost:3000/user_token
{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MDY3NjQwMTgsInN1YiI6Mn0.09ASd5bHaeko6Ey4PAym0AIOVqlCkDieIg6ZFpwIuWw"}

```

access the resources use token

```
curl -X GET  -H "Authorization:Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MDY3NjQyNzQsInN1YiI6Mn0.kpWEUwYhKdX4rsXMQ82sKcBdVpSALnoBV646ow9CzGA" http://localhost:3000/students

```

### resources

- https://github.com/progrium/ruby-jwt
- https://github.com/plataformatec/devise/wiki/How-To:-Simple-Token-Authentication-Example
- https://jwt.io/
