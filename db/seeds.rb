User.destroy_all
Location.destroy_all
Concert.destroy_all
Performer.destroy_all

users = User.create([
  {
  	name: "Vanessa Vengco",
    email: "vengco@gmail.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
  	name: "Jane Papa",
    email: "jane@papa.com",
    password: "12345",
    password_confirmation: "12345"
  },
  {
  	name: "Tim Baby",
    email: "timmy@baby.com",
    password: "12345",
    password_confirmation: "12345"
  }
])

locations = Location.create([
  {
    name: "Hollywood Bowl",
    lat_lng: "34.02869, -118.46549"
  },
  {
    name: "El Rey",
    lat_lng: "34.03922, -118.46343"
  },
  {
    name: "Whiskey A Go Go",
    lat_lng: "34.039, -118.48523"
  },
  {
    name: "Walt Disney Concert Hall",
    lat_lng: "34.02421, -118.4176"
  },
  {
    name: "Echoplex",
    lat_lng: "34.04633, -118.48583"
  },
  {
    name: "STAPLES Center",
    lat_lng: "34.04413, -118.41356"
  },
  {
    name: "Troubadour",
    lat_lng: "34.06894, -118.44343"
  },
  {
    name: "The Smell",
    lat_lng: "34.05074, -118.39271"
  },
  {
    name: "Greek Theatre",
    lat_lng: "34.02599, -118.4024"
  },
  {
    name: "House of Blues",
    lat_lng: "34.04213, -118.38369"
  }
])

concerts = Concert.create([
  {
    name: "The Beatles",
    location: locations[0],
    occurs_at: Time.now + 1.day,
    duration: 240,
    cover_charge: 5000
  },
  {
    name: "The Rolling Stones",
    location: locations[1],
    occurs_at: Time.now + 1.week,
    duration: 180,
    cover_charge: 4500
  },
  {
    name: "The Beach Boys",
    location: locations[2],
    occurs_at: Time.now + 1.week,
    duration: 60,
    cover_charge: 4700
  },
  {
    name: "Nirvana",
    location: locations[3],
    occurs_at: Time.now + 1.week,
    duration: 120,
    cover_charge: 1000
  },
  {
    name: "Jay-Z",
    location: locations[5],
    occurs_at: Time.now + 1.week,
    duration: 210,
    cover_charge: 6500
  }
])

performers = Performer.create([
  {
    name: "The Beatles"
  },
  {
    name: "The Rolling Stones"
  },
  {
    name: "The Beach Boys"
  },
  {
    name: "Nirvana"
  },
  {
    name: "Kraftwerk"
  },
  {
    name: "DJ Shadow"
  },
  {
    name: "Beyoncé"
  },
  {
    name: "Jay-Z"
  },
  {
    name: "Bruno Mars"
  },
  {
    name: "Talib Kweli"
  }
])

time_slots = TimeSlot.create([
  {
    concert: concerts[0],
    performer: performers[1],
    occurs_at: Time.now + 1.day
  },
  {
    concert: concerts[0],
    performer: performers[0],
    occurs_at: Time.now + 1.day + 2.hours
  },
  {
    concert: concerts[1],
    performer: performers[0],
    occurs_at: Time.now + 1.week + 2.hours
  },
  {
    concert: concerts[1],
    performer: performers[1],
    occurs_at: Time.now + 1.week + 2.hours
  },
  {
    concert: concerts[2],
    performer: performers[2],
    occurs_at: Time.now + 1.week + 3.hours
  },
  {
    concert: concerts[2],
    performer: performers[8],
    occurs_at: Time.now + 1.week + 1.hours
  }
])