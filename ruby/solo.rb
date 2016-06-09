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
#copywrite the book using the publishing date
  #print out a copyright notice
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

  attr_reader :sales, :customers, :total_profit_in_czk

  def initialize(props)
    @title = "A Rabbit's Guide to #{props[:place]}"
    @publishing_date = props[:publishing_date]
    @ISBN = props[:isbn]
    @printing_cost_in_czk = props[:printing_cost]
    @sales = {}
    @customers = []
    @total_profit_in_czk = 0
  end

  def pretty_print
    puts "Book Title: #{@title}"
    puts "Published: #{@publishing_date}"
    puts "ISBN: #{@ISBN}"
    puts "copyright Sara Mihalik and Sarah Sucha"
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

  def profits_per_author
    @total_profit_in_czk / 2
  end

end

#DRIVER CODE
rabbit_guides = []
rabbit_guides << RabbitGuide.new({place: "Venice", publishing_date: 2013, isbn: 12344566, printing_cost: 125, extra_variable: "hi!"}) #testing to make sure extra variable doesn't mess up data structure

rabbit_guides[0].pretty_print
rabbit_guides[0].sell_book("April", 10, 200)
rabbit_guides[0].sell_book("John", 1, 340)
rabbit_guides[0].sell_book("Angela",2, 340)

p rabbit_guides[0].sales
p rabbit_guides[0].customers
p rabbit_guides[0].total_profit_in_czk
p rabbit_guides[0].profits_per_author
