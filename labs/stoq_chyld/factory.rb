def create_user
  puts "User Name?"
  name = gets.chomp
  puts "Password?"
  password = gets.chomp
  puts "Cash?"
  cash = gets.chomp.to_f
  @users[name] = User.new(name, password, cash)
end

def choose_user
  puts "Choose a user from this list: #{@users.keys.to_sentence}?" 
  gets.chomp
end

def buy_stock(user)
  puts "Symbol?"
  symbol = gets.chomp.upcase
  puts "How many shares?"
  shares = gets.to_i
  user.purchase_stock(symbol, shares)
end

def show_dashboard(user)
  while true
    sleep 1
    puts `clear`
    user.stocks.each do |stock|
      stock.update_quote
      puts stock.symbol
      puts stock.quote
      puts stock.position
      puts "---------------------------\n\n\n" #/n = new line
    end
  end
end