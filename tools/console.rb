require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("tinder", "tim", "tinder.com")
s2 = Startup.new("something", "joe", "some.com")

v1 = VentureCapitalist.new("John", 1000000004)
v2 = VentureCapitalist.new("blake", 90000004)
v3 = VentureCapitalist.new("Jordy", 1176000004)
# VentureCapitalist.tres_commas_club
fr1 = FundingRound.new(s1,v2,"Angel", 1888888)
fr2 = FundingRound.new(s2,v1,"Seed", 777777)
fr3 = FundingRound.new(s1,v3,"Pre-Seed", 61111)
fr3 = FundingRound.new(s1,v3,"Seed", 5555)
fr3 = FundingRound.new(s1,v3,"Angel", 666666)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line