class Santa

  attr_reader :fav_name, :phrase, :fav_cookie

  attr_accessor :fav_location

  def initialize(name, place, years, cookie, phrase)
    p "Initializing Santa instance..."
    # define Santa attibutes - I am not going to use gender, ethnicity and age because none of this data is meaningful to me, I love each Santa equally, regardless of their gender, ethincity or age. I feel that by asking each Santa for this data I may instill a feeling of stereotype threat and I want to avoid that. Instead, I am going to ask questions that I feel are more relevant to their Santa identity:
    # favorite Santa nickname
    # place in the world likes to deliver gifts in the most
    # reindeer_ranking - poor Blitzen!
    # number of years participated in SantaCon, or years experience (defaults to zero)
    @fav_name = name
    @fav_location = place
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @years_experience = years
    @fav_cookie = cookie
    @phrase = phrase
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a great #{cookie}!"
  end

  def speak(phrase)
    puts @phrase
  end

  #add methods that make data available ouside of the class ("getter method")
  def add_experience
    @years_experience += 1
  end

  def get_mad_at(reindeer_name)
  	#find reindeer, remove from list and then add to end of list (push)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking = @reindeer_ranking.push(reindeer_name)
  end

  # def name
  # @fav_name
  # end
  #
  # def location
  #   @fav_location
  # end
  #
  # def cookie
  #   @fav_cookie
  # end
  #
  # def phrase
  #   @phrase
  # end

  # add methods to make data editable outside of the class ("setter method")

  # def fav_location(new_place)
  # @fav_location = new_place
  # end

end

santas = []

#driver code to test Santa class for release 0
# santas << Santa.new("Caribbean Santa", "St. Martin")
# santas << Santa.new("Svaty Mikulas", "Prague")
# santas << Santa.new("Pere Noel", "Toronto")
# santas << Santa.new("Papa Noel", "Mexico City")
# santas << Santa.new("Santa Claus", "San Francisco")
# santas << Santa.new("Sir Santa", "N/A")
#
# p santas.length
#
# santas.each do |santa|
#   santa.speak
# end

santa_names = [
    "Carribean Santa",
    "Svaty Mikulas",
    "Pere Noel",
    "Papa Noel",
    "Santa Claus",
    "Sir Santa",
    "Djed Mraz",
    "Weihnachtsmann",
    "Father Christmas",
    "Swiety Mikola",
    "Ded Moroz",
    "Pai Natal",
    "Father Frost",
    "Agios Vassilios",
    "Julemanden",
    "Mos Craciun",
    "Sinnterklaas"
    ]

delivery_places = [
    "Afghanistan",
		"Albania",
		"Algeria",
		"Andorra",
		"Angola",
		"Antigua and Barbuda",
		"Argentina",
		"Armenia",
		"Australia",
		"Austria",
		"Azerbaijan",
		"Bahamas",
		"Bahrain",
		"Bangladesh",
		"Barbados",
		"Belarus",
		"Belgium",
		"Belize",
		"Benin",
		"Bhutan",
		"Bolivia",
		"Bosnia and Herzegovina",
		"Botswana",
		"Brazil",
		"Brunei",
		"Bulgaria",
		"Burkina Faso",
		"Burundi",
		"Cambodia",
		"Cameroon",
		"Canada",
		"Cape Verde",
		"Central African Republic",
		"Chad",
		"Chile",
		"China",
		"Colombi",
		"Comoros",
		"Congo (Brazzaville)",
		"Congo",
		"Costa Rica",
		"Cote d'Ivoire",
		"Croatia",
		"Cuba",
		"Cyprus",
		"Czech Republic",
		"Denmark",
		"Djibouti",
		"Dominica",
		"Dominican Republic",
		"East Timor (Timor Timur)",
		"Ecuador",
		"Egypt",
		"El Salvador",
		"Equatorial Guinea",
		"Eritrea",
		"Estonia",
		"Ethiopia",
		"Fiji",
		"Finland",
		"France",
		"Gabon",
		"Gambia, The",
		"Georgia",
		"Germany",
		"Ghana",
		"Greece",
		"Grenada",
		"Guatemala",
		"Guinea",
		"Guinea-Bissau",
		"Guyana",
		"Haiti",
		"Honduras",
		"Hungary",
		"Iceland",
		"India",
		"Indonesia",
		"Iran",
		"Iraq",
		"Ireland",
		"Israel",
		"Italy",
		"Jamaica",
		"Japan",
		"Jordan",
		"Kazakhstan",
		"Kenya",
		"Kiribati",
		"Korea, North",
		"Korea, South",
		"Kuwait",
		"Kyrgyzstan",
		"Laos",
		"Latvia",
		"Lebanon",
		"Lesotho",
		"Liberia",
		"Libya",
		"Liechtenstein",
		"Lithuania",
		"Luxembourg",
		"Macedonia",
		"Madagascar",
		"Malawi",
		"Malaysia",
		"Maldives",
		"Mali",
		"Malta",
		"Marshall Islands",
		"Mauritania",
		"Mauritius",
		"Mexico",
		"Micronesia",
		"Moldova",
		"Monaco",
		"Mongolia",
		"Morocco",
		"Mozambique",
		"Myanmar",
		"Namibia",
		"Nauru",
		"Nepal",
		"Netherlands",
		"New Zealand",
		"Nicaragua",
		"Niger",
		"Nigeria",
		"Norway",
		"Oman",
		"Pakistan",
		"Palau",
		"Panama",
		"Papua New Guinea",
		"Paraguay",
		"Peru",
		"Philippines",
		"Poland",
		"Portugal",
		"Qatar",
		"Romania",
		"Russia",
		"Rwanda",
		"Saint Kitts and Nevis",
		"Saint Lucia",
		"Saint Vincent",
		"Samoa",
		"San Marino",
		"Sao Tome and Principe",
		"Saudi Arabia",
		"Senegal",
		"Serbia and Montenegro",
		"Seychelles",
		"Sierra Leone",
		"Singapore",
		"Slovakia",
		"Slovenia",
		"Solomon Islands",
		"Somalia",
		"South Africa",
		"Spain",
		"Sri Lanka",
		"Sudan",
		"Suriname",
		"Swaziland",
		"Sweden",
		"Switzerland",
		"Syria",
		"Taiwan",
		"Tajikistan",
		"Tanzania",
		"Thailand",
		"Togo",
		"Tonga",
		"Trinidad and Tobago",
		"Tunisia",
		"Turkey",
		"Turkmenistan",
		"Tuvalu",
		"Uganda",
		"Ukraine",
		"United Arab Emirates",
		"United Kingdom",
		"United States",
		"Uruguay",
		"Uzbekistan",
		"Vanuatu",
		"Vatican City",
		"Venezuela",
		"Vietnam",
		"Yemen",
		"Zambia",
		"Zimbabwe"
     ]

cookies = [
    "Spitzbuben",
    "Chocolate Chip Cookie",
    "Fudge",
    "Macaroon",
    "Gingerbread Cookie",
    "Snowball",
    "Snickerdoodle",
    "Peanut Butter Cookie",
    "Chocolate Drop",
    "Sand Dollar",
    "Pecan Sandy",
    "Thumbprint Cookie",
    "Shortbread Cookie",
    "Sugar Cookie",
    "Caramel Shortbread",
    "Butter Pecan Cookie",
    "Almond Biscuit",
    "Ameretti di Saronno",
    "Biscochito",
    "Berner Honiglebkuchen",
    "Florentine Biscuit",
    "Jodenkoek",
    "Lebkuchen"
    ]

phrases = [
    "Idah Saidan Wa Sanah Jadidah",
    "Tchestita Koleda or Tchestito Rojdestvo Hristovo",
    "Geseënde Kersfees en 'n gelukkige nuwe jaar",
    "Buone Feste Natalizie",
    "Fröhe Weihnachten und Schoenes Neues Jahr",
    "Mo'adim Lesimkha. Chena tova",
    "Sung Tan Chuk Ha",
    "Sreken Bozhik",
    "Feliz Natal e um Prospero Ano Novo",
    "Chuc mung nam moi va Giang Sing vui ve",
    "Maligayan Pasko!",
    "Mithag Crithagsigathmithags",
    "Zorionak eta Urte Berri On!",
    "Kala Christouyenna!",
    "Rõõmsaid Jõulupühi",
    "Vesele Vanoce a stastny Novy Rok",
    "Pace e salute",
    "Feliz Navidad",
    "Gledileg Jol"
    ]

# driver code to test iteration

# santa_names.length.times do |i|
#   santas << Santa.new(santa_names[i], delivery_places[i*10], cookies[i], phrases[i])
# end

# driver code to test getter and setter methods

# p santas.length
# p santas[1]
# p santas[1].add_experience
# p santas[1].get_mad_at("Dasher")
# p santas[1].fav_location = "Persia"
# p santas[1].fav_name
# p santas[1].fav_cookie
# p santas[1].phrase
# p santas[1]
# nil

# create lots of santas and write driver code to test
100.times do |i|
  santas << Santa.new(santa_names.sample, delivery_places.sample, rand(0...140), cookies.sample, phrases.sample)
end
p "Santa number 32's favorite Santa name is #{santas[32].fav_name}"
p "Santa number 59's favorite cookie is #{santas[59].fav_cookie}"
p "Santa number 3's favorite holiday phrase is #{santas[3].phrase}"
p santas[28]
santas[28].fav_location = "Mongolia"
santas[28].get_mad_at("Vixen")
p santas[28]
nil
