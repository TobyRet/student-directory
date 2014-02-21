# students array


students = [
	{:name => "Mario Gintili", :cohort => :February},
	{:name => "Mikhail Dubov", :cohort => :February},
	{:name => "Karolis Noreika", :cohort => :February},
	{:name => "Michael Sidon", :cohort => :February},
 	{:name => "Charles De Barros", :cohort => :February},
 	{:name => "Ruslan Vikhor", :cohort => :February},
 	{:name => "Toby Retallick", :cohort => :February},
 	{:name => "Mark Mekhaiel", :cohort => :February},
 	{:name => "Sarah Young", :cohort => :February},
 	{:name => "Hannah Wight", :cohort => :February},
 	{:name => "Khushkaran Singh", :cohort => :February},
 	{:name => "Rick Brunstedt", :cohort => :February},
 	{:name => "Manjit Singh", :cohort => :February},
 	{:name => "Alex Gaudiosi", :cohort => :February},
 	{:name => "Ross Hepburn", :cohort => :February},
 	{:name => "Natascia Marchese", :cohort => :February},
 	{:name => "Tiffanie Chia", :cohort => :February},
 	{:name => "Matthew Thomas", :cohort => :February},
 	{:name => "Freddy McGroarty", :cohort => :February},
 	{:name => "Tyler Rollins", :cohort => :February},
 	{:name => "Richard Curteis", :cohort => :February},
 	{:name => "Anna Yanova", :cohort => :February},
 	{:name => "Andrew Cumine", :cohort => :February}
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

# filtering names by first letter using chars method
#def print_list(students)
#	students.each_with_index do |student|
#		# name begins with a
#		if student[:name].chars.first.downcase == 'm'
#			puts "#{students.index(student) + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
#		end
#	end
#end

# filtering names by first letter using slice method

def print_list(students)
	students.each_with_index do |student|
		# name begins with a
		if student[:name].chars.slice(0) == 'M'
			puts "#{students.index(student) + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
		end
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

#students = input_students
print_header
print_list(students)
print_footer(students)


