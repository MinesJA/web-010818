require "pry"
require_relative "models/user"
require_relative "models/tweet"

u = User.new("coffee_dad")
u.tweet("i coffee")
u.tweet("you coffee")
u.tweet("we coffee")

u2 = User.new("coffee_mom")
u2.tweet("coffee is great")
u2.tweet("we coffee")

# 
# users.each |user_hash|
#   user_hash
# end
#
# users.each |user_object|
#   user_object.get_tweets
# end


Pry.start
