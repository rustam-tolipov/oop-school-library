require './app'

@choose_option = {
  1 => 'List books',
  2 => 'List people',
  3 => 'Create person',
  4 => 'Create book',
  5 => 'Create rental',
  6 => 'List rentals for a given person id',
  7 => 'Exit'
}

def school_drawing
  puts "
=======
require './person'
require './student'
require './teacher'
require './classroom'
require './rental'

  \\\_/
--(_)--   .
  / \\\    /_\\
         |Q|
  .-----' '-----.                                  __
 /____[SCHOOL]___\\                                ()))
  | [] .-.-. [] |                                (((())
..|____|_|_|____|..................................)(... ldb"

  puts
end

def main
  puts 'Welcome to School Library App!'
  school_drawing
  @app = App.new
  print_options
end

def print_options
  puts 'Please choose an option by entering a number:'
  @choose_option.each do |key, value|
    puts "#{key} - #{value}"
  end
  input = gets.chomp.to_i

  if input == 7
    quit
  else
    @app.choose_option(input)
    print_options
  end
end

def quit
  puts 'Thank you for using this App!'
  exit
end

main
