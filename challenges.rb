# students array

=begin
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
=end


def input_students
	students = []
	
	# Retreive user input
	puts "Please enter the name of the student."
	name = gets.chomp
	puts "Please enter the cohort for #{name}"
	cohort = gets.chomp

	# Set default values if user input is nil
	name = "Name unknown." if name.empty?
	cohort = "Cohort unknown." if name.empty?

	# Loop adds student information to students array
	while !name.empty? && !cohort.empty? do 
		students << {:name => name, :cohort => cohort}
		puts "You have added #{name} to the #{cohort} cohort."
		puts "Now we have #{students.length} students."
		
		# add more students
		puts "----------------------------------------------"
		puts "Would you like to add another student? Type 'yes' or 'no'."
		response = gets.chomp
		puts "----------------------------------------------"
		if response == 'yes'.downcase
			puts "Please enter the name of the student."
			name = gets.chomp
			puts "Please enter the cohort for #{name}"
			cohort = gets.chomp
		else response == 'no'.downcase
			break
		end
	end
	students
end

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print(students)	
	students.each_with_index do |student|
		puts "#{students.index(student) + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
	end
end

# list students by cohort
def print_cohort(students)
	cl = students.map {|student| student[:cohort]}
	
	cl.uniq.each do |cohort|
		puts "\n" + cohort.upcase
		students.each do |student|
			puts student[:name] if student[:cohort] == cohort	
		end
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

students = input_students
#print_header
#print(students)
print_cohort(students)
#print_footer(students)


