require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

# Make sure that when adding a student to a classroom it also sets the classroom for the student.
# Make sure that when setting the classroom for a student it also adds it to the classrooms' students.

puts 'Creating a new student: '

rustam = Student.new('Rustam', 25, true, 'React')
puts rustam.classroom

puts 'Creating a new classroom: '

classroom = Classroom.new('Ruby')
classroom.add_student(rustam)
puts classroom.students.first.name

puts 'Creating a new person: '
rustam = Person.new('Rustam', 25)
puts rustam.name
puts rustam.age
puts rustam.parent_permission

# Create the many-to-many (also has-many-through) relationship between
# Person and Book using the intermediate class Rental.
# The following should be implemented:
# Create the has-many side of Book and Rental (a book has many rentals).
# Create the belongs-to side of Rental and Book (a rental belongs to a book).
# Create the has-many side of Person and Rental (a person has many rentals).
# Create the belongs-to side of Rental and Person (a rental belongs to a person).
# Modify the constructor of Rental so Book and Person are set in it.

puts '----------------------------'
puts 'Creating a new person: '
puts '----------------------------'
fried = Person.new('Fried', 25)
joseph = Person.new('Joseph', 25)
miles = Person.new('Miles', 25)
puts fried.name

# Create a new books (title and author).
puts '--------------------'
puts 'Creating new books: '
puts '--------------------'
book1 = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
book2 = Book.new('The Catcher in the Rye', 'J. D. Salinger')
book3 = Book.new('The Grapes of Wrath', 'John Steinbeck')
puts book1.author

# # Create a new rental for each person and book.
puts '--------------------------------------------'
puts 'Create a new rental for each person and book: '
puts '--------------------------------------------'
rental1 = Rental.new(fried, book1, '01/01/2015')
rental2 = Rental.new(joseph, book2, '01/01/2015')
rental3 = Rental.new(miles, book3, '04/01/2015')
puts rental2.person.name
puts rental1.book.title
puts rental3.date

puts book1.rentals.count
puts book2.rentals.count
puts book3.rentals.count

puts fried.rentals.count
puts joseph.rentals.count
puts miles.rentals.count
