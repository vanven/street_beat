User.destroy_all

User.create([
  {
  	name: "Vanessa Vengco",
    email: "vengco@gmail.com",
    password: "12345"
  },
  {
  	name: "Jane Papa",
    email: "jane@papa.com",
    password: "12345"
  },
  {
  	name: "Tim Baby",
    email: "timmy@baby.com",
    password: "12345"
  }
])