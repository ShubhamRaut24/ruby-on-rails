require_relative 'Crud'
# require 'Crud'

users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

  new_hash_users = Crud.create_secure_users(users)
  puts new_hash_users

  puts Crud.authenticate_user("jack","password2",new_hash_users)