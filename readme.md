# Examples

The age should return the user's current age, and the "next birthday" should return a date which is the user's next birthday. For example if the user's date of birth is 1st November 1985 then their age will be 35 and their next birthday will be 2021-11-01.

tests = [
​Date​.new(​1986​, ​1​, ​1​),
​Date​.new(​1988​, ​Date​.today.month, ​Date​.today.day),
​Date​.new(​1990​, ​12​, ​30​),
]

puts ​"​====== ages ======​"
tests.each ​do​ |date|
puts ​"#{​date​}​ => ​#{​User​.new(​"​Test​"​, date).age​}"
end
puts ​"​====== birthdays ======​"
tests.each ​do​ |date|
puts ​"#{​date​}​ => ​#{​User​.new(​"​Test​"​, date).next_birthday​}"
end
