models = {
  "Katy Lee" => {
    height: 170,
    age: 25,
    experence: true,
    agency_name: ["LOOK", "TOP"]
  },
  "Sacha Badame" => {
    height: 175,
    age: 27,
    experience: false,
    agency_name: []
  },
  "Richard Lyons" => {
    height: 190,
    age:22,
    experience: false,
    agency_name: ["NYLO"]
  }
}

p models["Katy Lee"][:agency_name].reverse
p models["Sacha Badame"][:age]
models["Richard Lyons"][:experience] = true 
p models["Richard Lyons"]
models["Sacha Badame"][:agency_name].push("Scout")
p models["Sacha Badame"][:agency_name]
p models["Katy Lee"][:agency_name][0].downcase