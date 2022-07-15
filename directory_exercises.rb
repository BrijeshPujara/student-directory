# all the students are put into an array
=begin
students = [
    {name:"Dr. Hannibal Lecter", cohort: :november},
    {name:"Darth Vader", cohort: :november},
    {name:"Nurse Ratched", cohort: :november},
    {name:"Michael Corleone", cohort: :november},
    {name:"Alex DeLarge", cohort: :november},
    {name:"The Wicked Witch of the West", cohort: :november},
    {name:"Terminator", cohort: :november},
    {name:"Freddy Krueger", cohort: :november},
    {name:"The Joker", cohort: :november},
    {name:"Joffrey Baratheon", cohort: :november},
    {name:"Norman Bates", cohort: :november}
   ]
=end
   # and then printed with array index
   def input_students
     puts "Please enter the names of the students"
     name = gets.chomp
     name = "N/A" if name.empty?

     puts "Please enter the cohort month"
     cohort = gets.chomp
     cohort.to_sym

     puts "To finish, just hit the return twice"
   
     students = []
   
     while !name.empty? do
       cohort = "N/A" if cohort.empty?
       students << {name: name, cohort: cohort, }
       puts "Now we have #{students.count} students"
   
       name = gets.chomp 
       cohort = gets.chomp
     end

   
     students
   end
   
   
   def print_header
     puts "The students of Villains Academy"
     puts "----------------".center(27)
   end
   
   def print(names)
    # names.each_with_index do |name, idx|
    #  if name[:name].length < 12 
    #   puts "#{idx + 1} - #{name[:name]} - cohort: (#{name[:cohort]})"
    #  end
    # end

    i = 0
      while i < names.length 
        puts "#{i + 1}. #{names[i][:name]} - cohort: (#{names[i][:cohort]})".center(25, "-")
        i +=1
      end
    end
   
   def print_footer(names)
     puts "Overall, we have #{names.count} great students"
   end

def interactive_menu
  students = []
  loop do 
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header()
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end 
end 

interactive_menu()