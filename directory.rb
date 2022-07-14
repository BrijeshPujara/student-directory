# all the students are put into an array
 students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"]

# and then printed with array index
puts "The students of Villains Academy"
puts "----------------"
students.each do |student|
    puts student
end
#finally, we pint the total number of students
print "Overall, we have #{students.count} great students"



