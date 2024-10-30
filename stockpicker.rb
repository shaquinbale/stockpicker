require 'pry-byebug'

def stock_picker(prices)
  best_days = [0, 0]
  max_profit = 0

  # Loop through each day to find the best buy day
  prices.each_with_index do |buy_price, buy_day|
    # Check every day after the current day to find the best sel day
    prices[buy_day+1..-1].each_with_index do |sell_price, index|
      profit = sell_price - buy_price
      sell_day = buy_day + 1 + index
      
      # If a better pair of days is found, update best_days
      if profit > max_profit
        best_days = [buy_day, sell_day]
        max_profit = profit
      end
    end
  end
  best_days
end