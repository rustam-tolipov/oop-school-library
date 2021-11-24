require './book'

module Books
  def list_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    puts
    main
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Book created successfully!'
    gets
    @books << Book.new(title, author)
    main
  end
end
