# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.4

* Database initialization
`rake db:migrate`

* How to run the test suite
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
