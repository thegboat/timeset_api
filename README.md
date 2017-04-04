
POST localhost:3000/users

{
  "user" : {
    "name" : "Grady Griffin",
    "username" : "thegboat",
    "password" : "password"
  }
}


POST localhost:3000/tokens

{
"username" : "thegboat",
"password" : "password"
}

Authorization: Bearer {token}

POST localhost:3000/users/1/posts

{"post" :{
"content" : "first post"
}
}
