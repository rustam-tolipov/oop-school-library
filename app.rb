require './student'
require './teacher'
require './rental'
require './book'
require 'json'
class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def choose_option(input)
    case input
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    else
      invalid_option
    end
  end

  def list_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end

  def list_people
    @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id} Age: #{person.age}" }
  end

  def create_person
    print 'Do you want to create a student(1) or a teacher(2)? [Input the number]:'
    input = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    case input
    when 1
      create_student(age, name)
    when 2
      create_teacher(age, name)
    end
    puts 'Person created successfully!'
  end

  def create_student(age, name)
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.upcase == 'Y'
    @people << Student.new(name, age, parent_permission)
  end

  def create_teacher(age, name)
    print 'Specialization: '
    specialization = gets.chomp
    @people << Teacher.new(name, age, specialization)
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Book created successfully!'
    @books << Book.new(title, author)
  end

  def create_rental
    puts 'Select a book from the folowing list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
    book_index = gets.chomp.to_i
    puts 'Select a person from the folowing list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp
    puts 'Rental created successfully!'
    @rentals << Rental.new(date, @books[book_index], @people[person_index])
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
  end

  def save_files
    File.open('books.json', 'w') { |file| file.write(@books.to_json) }
    File.open('people.json', 'w') { |file| file.write(@people.to_json) }
    File.open('rentals.json', 'w') { |file| file.write(@rentals.to_json) }
  end

  # rubocop:disable Style/GuardClause
  def open_files
    if File.exist?('books.json')
      JSON.parse(File.read('books.json')).map do |book|
        load_book(book)
      end
    end
    if File.exist?('people.json')
      JSON.parse(File.read('people.json')).map do |person|
        load_person(person)
      end
    end
    if File.exist?('rentals.json')
      JSON.parse(File.read('rentals.json')).map do |rental|
        load_rental(rental)
      end
    end
  end

  # rubocop:enable Style/GuardClause
  def load_book(book)
    book_object = create_book_object(book)
    @books << book_object
  end

  def load_person(person)
    person_object = create_person_based_on_type(person)
    @people << person_object
  end

  def load_rental(rental)
    book = rental['book']
    book_object = create_book_object(book)
    person = rental['person']
    person_object = create_person_based_on_type(person)
    date = rental['date']
    rental_object = Rental.new(date, book_object, person_object)
    @rentals << rental_object
  end

  def create_book_object(book)
    Book.new(book['title'], book['author'])
  end

  def create_person_based_on_type(person)
    if person['json_class'] == 'Teacher'
      create_teacher_object(person)
    else
      create_student_object(person)
    end
  end

  def create_teacher_object(person)
    teacher_object = Teacher.new(person['age'], person['name'], person['specialization'])
    teacher_object.id = person['id'].to_i
    teacher_object
  end

  def create_student_object(person)
    student_object = Student.new(person['age'], person['name'], person['parent_permission'])
    student_object.id = person['id'].to_i
    student_object
  end

  def invalid_option
    puts 'Invalid option!'
  end
end
