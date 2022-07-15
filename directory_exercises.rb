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
     puts "To finish, just hit the return twice"
   
     students = []
   
     name = gets.chomp
   
     while !name.empty? do
       students << {name: name, cohort: :november, }
       puts "Now we have #{students.count} students"
   
       name = gets.chomp 
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
        puts "#{i + 1}. #{names[i][:name]} - cohort: (#{names[i][:cohort]})".center(40, "-")
        i +=1
      end
    end
   
   def print_footer(names)
     puts "Overall, we have #{names.count} great students"
   end
   students = input_students
   print_header()
   print(students)
   print_footer(students)