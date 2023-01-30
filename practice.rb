# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

Ben_Transaction1 = blockchain[0]["amount"]
Ben_Transaction2 = blockchain[2]["amount"]
Ben_Transaction3 = blockchain[5]["amount"]
Ben_Transaction4 = blockchain[6]["amount"]
Bens_Balance = Ben_Transaction1 - Ben_Transaction2 - Ben_Transaction3 + Ben_Transaction4

Brians_Transaction1 = blockchain[1]["amount"]
Brians_Transaction2 = blockchain[3]["amount"]
Brians_Balance = Brians_Transaction1 - Brians_Transaction2

Evans_Transaction1 = blockchain[2]["amount"]
Evans_Transaction2 = blockchain[4]["amount"]
Evans_Transaction3 = blockchain[7]["amount"]
Evans_Balance = Evans_Transaction1 - Evans_Transaction2 + Evans_Transaction3

Anthonys_Transaction1 = blockchain[3]["amount"]
Anthonys_Transaction2 = blockchain[4]["amount"]
Anthonys_Transaction3 = blockchain[5]["amount"]
Anthonys_Transaction4 = blockchain[6]["amount"]
Anthonys_Transaction5 = blockchain[7]["amount"]
Anthonys_Balance = Anthonys_Transaction1 + Anthonys_Transaction2 + Anthonys_Transaction3 - Anthonys_Transaction4 - Anthonys_Transaction5

puts "Ben's KelloggCoin Balance is " + Bens_Balance.to_s
puts "Brian's KelloggCoin Balance is " + Brians_Balance.to_s
puts "Evan's KelloggCoin Balance is " + Evans_Balance.to_s
puts "Anthony's KelloggCoin Balance is " + Anthonys_Balance.to_s