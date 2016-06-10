#PSEUDOCODE
#create a CLASS for Rabbit Guides books
#define book title
#define book suggested retail
#define book publishing date
#define book ISBN number
#define book printing cost
#create a sales list
#create a customer list
#create a tally for total profits (in CZK)
#be able to see book data including copyright
  #print out title, year, isbn and copyright notice
#make it possible for someone to buy the book
  #get the name of the customer
  #get how many they want to buy
  #get the price that sold to customer (since it can be different for different customers)
  #add sale information to the sales list
    #IF the price category doesn't exist, create a new category in the sales list
    #ELSE add sales to existing price category
  #add customers to the customer list
  #add sale profits to total profits
#calculate profits for each author
  #total profits (minus any printing costs) / 2
#TODO make more complex data structure for customers so it will be possible to add data to customers

#TODO create list of ISBN numbers
#TODO create list of sale channels and price per channel

#BUSINESS LOGIC

class RabbitGuide

  attr_reader :sales, :total_profit_in_czk, :place

  attr_accessor :isbn, :customers

  def initialize(props)
    @title = "A Rabbit's Guide to #{props[:place]}"
    @place = props[:place]
    @publishing_date = props[:publishing_date]
    @isbn = props[:isbn]
    @printing_cost_in_czk = props[:printing_cost]
    @sales = {}
    @customers = []
    @total_profit_in_czk = 0
  end

  def pretty_print
    puts "-----------------------------"
    puts "Book Title: #{@title}"
    puts "Published: #{@publishing_date}"
    puts "ISBN: #{@isbn}"
    puts "copyright Sara Mihalik and Sarah Sucha"
    puts "-----------------------------"
  end

  def sell_book(customer, number_sold, sale_price)
    if @sales.has_key?(sale_price) == true
      @sales[sale_price] << {customer => number_sold}
    else
      @sales[sale_price] = [{customer => number_sold}]
    end
    case
    when @customers.include?(customer) == false
      @customers << customer
    end
    profit_per_book = sale_price - @printing_cost_in_czk
    @total_profit_in_czk += (profit_per_book * number_sold)
  end

  def pretty_sales_prints
    puts "-----------------------------"
    puts "For #{@title}"
    "-----------------------------"
    puts "Your Customers:"
    @customers.each {|customer| puts "      #{customer}"}
    puts "Your total profit = #{@total_profit_in_czk} CZK"
  end

  def profits_per_author
    @total_profit_in_czk / 2
  end

end

#DRIVER CODE
#rabbit_guides = []
# rabbit_guides << RabbitGuide.new({place: "Venice", publishing_date: 2013, isbn: 12344566, printing_cost: 125, extra_variable: "hi!"}) #testing to make sure extra variable doesn't mess up data structure
#
# rabbit_guides[0].pretty_print
# rabbit_guides[0].sell_book("April", 10, 200)
# rabbit_guides[0].sell_book("John", 1, 340)
# rabbit_guides[0].sell_book("Angela",2, 340)
#
# p rabbit_guides[0].sales
# p rabbit_guides[0].customers
# p rabbit_guides[0].total_profit_in_czk
# p rabbit_guides[0].profits_per_author
# rabbit_guides[0].isbn = 987654321
# rabbit_guides[0].pretty_print
# p rabbit_guides[0].customers << "Jerry"


#USER INTERFACE PSEUDOCODE
#ask user if would like to add a book to Rabbit Guides
  #IF they say yes, allow them to add a book (and add as many books as they want)
  #ELSE ask them if they would like to add a sale

#USER INTERFACE
$rabbit_guides = []

def request_add_book()
  puts "Would you like to add a new Rabbit Guides book? (y/n)"
  input_if_add_book = gets.chomp
  if input_if_add_book == "y"
      add_book()
  else
    see_books()
  end
end

def see_books()
  puts "Do you want to see the books you've added? (y/n)"
  want_see_books = gets.chomp
  if want_see_books == "y"
    $rabbit_guides.each_index do |book_index|
      $rabbit_guides[book_index].pretty_print
    end
  else
    puts "Thank You for Publishing with Rabbit Guides!"
  end
end

def add_book()
    puts "What place have you written about?"
    input_place = gets.chomp
    # break if input_place == "done"
    puts "What is the publishing date?"
    input_publishing_date = gets.chomp
    puts "What is your books ISBN number?"
    input_isbn = gets.chomp
    puts "How much did each unit of your book cost to print (in CZK)"
    input_printing_cost = gets.chomp.to_i
    $rabbit_guides << RabbitGuide.new({place: input_place, publishing_date: input_publishing_date, isbn: input_isbn, printing_cost: input_printing_cost})
    request_add_book()
end

# rabbit_guides.each_index do |book_index|
#   rabbit_guides[book_index].pretty_print
# end

request_add_book()

def request_add_sale()
  puts "Would you like to add a sale? (y/n)"
  input_if_add_sale = gets.chomp
  if input_if_add_sale == "y"
    add_sale()
  else
    puts "Would you like to see information about your sales? (y/n)"
    want_see_sales = gets.chomp
    if want_see_sales == "y"
      $rabbit_guides.each_index do |book_index|
        $rabbit_guides[book_index].pretty_sales_prints
      end
    else
    puts "Have a Nice Day!"
    end #end IF statement for see sales
  end #end IF statement for add sale
end #end request_add_sale method

#TOFIX - not able to add sale - figure out how to compare if the input_place is equal to the @place of one of the class instances. Otherwise, it should inform the user that the book does not exist.
# def add_sale()
#   puts "Which book did you sell? A Rabbit's Guide to ____"
#   input_place = gets.chomp
#   i = 0
#   if while i < $rabbit_guides.length
#     $rabbit_guides[i].place == input_place
#     # any of the rabbit_guides.place calls are equal to the user input
#   # book_index = 0
#   # if $rabbit_guides.each { |book_index| $rabbit_guides[book_index].place == input_place }
#       puts "Name of customer sold book to:"
#       input_customer = gets.chomp
#       puts "How many books did they buy?"
#       input_num_books_sold = gets.chomp.to_i
#       puts "How much per book did they pay?"
#       input_sale_price = gets.chomp.to_i
#       $rabbit_guides[i].sell_book(input_customer, input_num_books_sold, input_sale_price)
#       break
#     end
#   else
#       puts "Oops! That book doesn't seem to exist yet!"
#       request_add_book()
#   #   end #end IF statement for book existing in array
#   end
#   request_add_sale()
# end #end add_sale method
#
# request_add_sale()
#create method to see how much money made puts "Would you like to see how much money you've made? (y/n)"
