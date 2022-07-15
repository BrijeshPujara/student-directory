@students = [] # empty array - instance variable, accessible throughout methods using @

def print_menu # menu asking for user input
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def interactive_menu # loop with menu method asking for selection
  loop do
    print_menu()
    process(gets.chomp)
  end
end

def process(selection) # case selection from user input which will initiate the method attached
  case selection
    when "1"
      input_students()
    when "2"
      show_students()
    when "3"
      save_students()
    when "4"
      load_students()
    when "9"
      exit
    else 
      puts "I don't know what you mean, try again"
  end
end

def input_students # allows users to add names/cohort to student array
  puts "Please enter the names of the students"
    name = gets.chomp
    name = "N/A" if name.empty? # default value if the name is empty

  puts "Please enter the cohort month"
    cohort = gets.chomp
    cohort.to_sym # convert user input to symbol

  puts "To finish, just hit the return twice"
   
    while !name.empty? do
      cohort = "N/A" if cohort.empty?  # default value if the cohort is empty
      @students << {name: name, cohort: cohort, }
      puts "Now we have #{@students.count} students"
   
      name = gets.chomp 
      cohort = gets.chomp
    end
end

def show_students()
  print_header()
  print_students_list()
  print_footer()
end
   
   
def print_header
    puts "The students of Villains Academy"
    puts "----------------".center(27) 
end
   
def print_students_list()
  @students.each_with_index do |student, i|
    puts "#{i + 1}. #{student[:name]} - cohort: (#{student[:cohort]})".center(25, "-")
  end
end
   
def print_footer()
    puts "Overall, we have #{@students.count} great students"
end

interactive_menu()


