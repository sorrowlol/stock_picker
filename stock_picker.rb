stock = [17,3,6,9,15,8,6,1,10]
stocks_new = [17,3,6,9,15,8,6,1,10]
best_profit = 0
days = []

stock.length.times do |day|
  stocks_new.reduce do |acc, val|
    acc = stocks_new[0]
    profit = val - acc
    if profit > best_profit
      best_profit = profit
      days = [stock.index(acc), stock.index(val)]
    end
  end
  stocks_new.shift
end
  
puts "The best profit possible is #{best_profit} and the best days are #{days}" 
