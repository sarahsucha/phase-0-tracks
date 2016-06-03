# Zoo Data Structure

zoo = {
  aquarium: { # start aquarium
    label: "Aquarium",
    animals:
      { # start animals
        "Angelfish" => {quantity: 10, size: "12 - 18 in", predators: ["Sharks", "Large Fish"], nutrition: ["Algae", "Sponges", "Invertebrates"]},
        "Bonnethead Shark" => {quantity: 2, size:"4 - 5 ft", nutrition: ["Crustaciens", "Bivalves", "Octopi", "Small fish"]}
      }, # end animals
    cleaningDates: { # start cleaning
      monday: true, tuesday: false, wednesday: true, thursday: false, friday: false, saturday: true, sunday: false
      }, # end cleaning
    staff: ["Sue", "Murphy", "Carolina", "Peter"]
  },# end aquarium
  aviary: { #start aviary
    label: "Aviary",
    animals:
      { # start animals
        "Cattle Egret" => {quantity: 8, size: "19 - 20 in", wingspan: 27.4, Migrate?: true, nutrition: ["Larvae", "Grass Grubs", "Insects", "Frogs", "Crickets", "Grasshoppers", "Moths"]},
        "Kiwi" => {quantity: 3, size: "about the size of a Chicken", Migrate?: false, nutrition: ["Earthworms", "Spiders", "Larvae", "Beetles", "Cicadas", "Seeds"]},
        "Rainbow Lorikeet" => {quantity: 500, size: "11 in", nutrition: ["Nectar", "Blossoms", "Fruit", "Seeds"]}
      }, # end animals
    cleaningDates: { # start cleaning
      monday: false, tuesday: true, wednesday: false, thursday: true, friday: false, saturday: false, sunday: false
    }, # end cleaning
    staff: ["Lori", "Prudence", "Harold", "Egor"]
  }, # end aviary
  asia: { # start Asia
    label: "Asia",
    animals: { # start animals
      "Red Panda" => {quantity: 50, size: "20 - 25 inches with 11 - 19 inch tail", life_expectancy_years: 10.7, nutrition: ["Bamboo Shoots and Leaves", "Berries", "Succulents", "Roots", "Eggs", "Small Vertebrates"]},
      "Amur Tiger" => {quantity: 1, size: "8 - 10 feet", predators: "humans", nutrition: ["Deer", "Antelope", "Buffalo", "Wild Boar"]}
    }, # end animals
    cleaningDates: { # start cleaning
      monday: true, tuesday: false, wednesday: false, thursday: true, friday: false, saturday: false, sunday: true
    }, # end cleaning
    staff: ["Ted", "Barker", "Allison", "Inez", "Houda"]
  } # end Asia
}# end zoo

#Print some nested data:

#Print that sponges is one of the foods Angelfish eat
p "Angelfish eat #{zoo[:aquarium][:animals]["Angelfish"][:nutrition][1]}"

#Identify the class of the Aquarium's Monday cleaning date values
p zoo[:aquarium][:cleaningDates][:monday].class

#Convert float of wingspan of the Cattle Egret to an integer
p zoo[:aviary][:animals]["Cattle Egret"][:wingspan]
p zoo[:aviary][:animals]["Cattle Egret"][:wingspan].to_i

#Reverse the names of the aviary staff array
p zoo[:aviary][:staff].reverse!

#Delete last item (Small Vertebrates) from Red Panda diet
p zoo[:asia][:animals]["Red Panda"][:nutrition].pop
p zoo[:asia][:animals]["Red Panda"][:nutrition]
