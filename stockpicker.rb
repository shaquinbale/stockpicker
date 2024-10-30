require 'pry-byebug'

def stock_picker(days)
  best_days = [0, 0]
  max_profit = 0

  days.each_with_index do |buy_price, buy_day|
    days[buy_day+1..-1].each_with_index do |sell_price, index|
      profit = sell_price - buy_price
      sell_day = buy_day + 1 + index
      if profit > max_profit
        best_days = [buy_day, sell_day]
        max_profit = profit
      end
    end
  end
  best_days
end