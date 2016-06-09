#PSEUDOCODE
#create a CLASS for Rabbit Guides books
#define book title
#define book suggested retail
#define book publishing date
#define book ISBN number
#define book printing cost
#create a customer list
#copywrite the book using the publishing date
  #print out a copyright notice
#make it possible for someone to buy the book
  #get the name of the customer
  #get how many they want to buy
  #add them to the customer list with the number bought according to price
    #IF the price doesn't exist, create a new category in the customer list
    #ELSE add customer to existing price category
#calculate profits for each book sold
  #money from book sold - base cost / 2

#create list of ISBN numbers
#create list of sale channels and price per channel

#BUSINESS LOGIC

class RabbitGuide

  def initialize(props)
    @title = "A Rabbit's Guide to #{props[:place]}"
    @publishing_date = props[:publishing_date]
    @ISBN = props[:isbn]
    @printing_cost_in_czk = props[:printing_cost]
    @customer_list={}
    @total_profit_in_czk = 0
  end

  def copyright()
    p "copyright #{@publishing_date} Sara Mihalik and Sarah Sucha"
  end

  def sell_book(customer, number_sold, sale_price)
    puts @customer_list.has_key?(sale_price)
    if @customer_list.has_key?(sale_price) == true
      @customer_list[sale_price] << {customer => number_sold}
    else
      @customer_list[sale_price] = [{customer => number_sold}]
    end
    p @customer_list
    profit_per_book = sale_price - @printing_cost_in_czk
    @total_profit_in_czk += profit_per_book * number_sold
    p @total_profit_in_czk
  end

end

#DRIVER CODE
rabbit_guides = []
rabbit_guides << RabbitGuide.new({place: "Venice", publishing_date: 2013, isbn: 12344566, printing_cost: 125, extra_variable: "hi!"})
p rabbit_guides

rabbit_guides[0].copyright()
rabbit_guides[0].sell_book("April", 10, 200)
rabbit_guides[0].sell_book("John", 1, 340)
rabbit_guides[0].sell_book("Angela",2, 340)
