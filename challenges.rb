# students array


students = [
	{:name => "Mario Gintili", :cohort => :February, :age => 23},
	{:name => "Mikhail Dubov", :cohort => :February, :age => 24},
	{:name => "Karolis Noreika", :cohort => :February, :age => 25},
	{:name => "Michael Sidon", :cohort => :February, :age => 26},
 	{:name => "Charles De Barros", :cohort => :February, :age => 23},
 	{:name => "Ruslan Vikhor", :cohort => :February, :age => 33},
 	{:name => "Toby Retallick", :cohort => :February, :age => 34},
 	{:name => "Mark Mekhaiel", :cohort => :February, :age => 35},
 	{:name => "Sarah Young", :cohort => :February, :age => 36},
 	{:name => "Hannah Wight", :cohort => :February, :age => 37},
 	{:name => "Khushkaran Singh", :cohort => :February, :age => 45},
 	{:name => "Rick Brunstedt", :cohort => :February, :age => 34},
 	{:name => "Manjit Singh", :cohort => :February, :age => 34},
 	{:name => "Alex Gaudiosi", :cohort => :February, :age => 56},
 	{:name => "Ross Hepburn", :cohort => :February, :age => 34},
 	{:name => "Natascia Marchese", :cohort => :February, :age => 36},
 	{:name => "Tiffanie Chia", :cohort => :February, :age => 32},
 	{:name => "Matthew Thomas", :cohort => :February, :age => 21},
 	{:name => "Freddy McGroarty", :cohort => :February, :age => 6},
 	{:name => "Tyler Rollins", :cohort => :February, :age => 7},
 	{:name => "Richard Curteis", :cohort => :February, :age => 2},
 	{:name => "Anna Yanova", :cohort => :February, :age => 67},
 	{:name => "Andrew Cumine", :cohort => :February, :age => 78},
]



def input_students
	puts "Please enter the name of the students."
	puts "To finish, hit return twice."
	students = []
	name = gets.chomp
	while !name.empty? do 
		students << {:name => name, :cohort => :February}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	students
end

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print(students)
	
	students.each_with_index do |student|
		puts "#{students.index(student) + 1}. #{student[:name]}, #{student[:age]} years old, #{student[:cohort]} cohort)" 
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

#students = input_students
print_header
print(students)
print_footer(students)


