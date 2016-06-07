class Santa

  def initialize()
    p "Initializing Santa instance..."
  end

  def speak()
    puts "Ho Ho Ho! Happy Holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a great #{cookie}!"
  end

end

Eric = Santa.new

Eric.speak
Eric.eat_milk_and_cookies("Snickerdoodle")
