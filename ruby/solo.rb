#PSEUDOCODE
#create a CLASS for Rabbit Guides books
#define book title
#define book suggested retail
#define book publishing date
#define book ISBN number
#define book printing cost
#copywrite the book using the publishing date
  #print out a copyright notice
#make it possible for someone to buy the book
  #get the name of the customer
  #get how many they want to buy
  #get source from where bought book
#calculate profits for each book sold
  #money from book sold - base cost / 2

#create list of ISBN numbers
#create list of sale channels and price per channel

#BUSINESS LOGIC

class RabbitGuide

  def initialize(place, publishing_date, isbn, printing_cost)
    @title = "A Rabbit's Guide to #{place}"
    @publishing_date = publishing_date
    @ISBN = isbn
    @printing_cost = printing_cost
    @customer_list={}
    @total_profit = 0
  end

  def copyright()
    p "copyright #{@publishing_date} Sara Mihalik and Sarah Sucha"
  end

  def sell_book(customer, number_sold, sale_price)
    @customer_list[sale_price] = {customer => number_sold}#TODO keep adding people into customer list KEY is sale price, can equal as many HASH KEY/VALUE pairs as needed
    p @customer_list
    profit_per_book = sale_price - @printing_cost
    @total_profit += profit_per_book * number_sold
    p @total_profit
  end

end

#DRIVER CODE
rabbit_guides = []
rabbit_guides << RabbitGuide.new("Venice", 2013, 12344566, 125)
p rabbit_guides

rabbit_guides[0].copyright()
rabbit_guides[0].sell_book("April", 10, 200)
rabbit_guides[0].sell_book("John", 1, 340)
rabbit_guides[0].sell_book("Angela",2, 340)
