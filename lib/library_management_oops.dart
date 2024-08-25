void main() {
  Book book1 = Book('1984', 'George Orwell', '1231231132', true);
  Book book2 = Book('Got', 'Harper Lee', '567765', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listOfBook();

  Member member1 = Member('ASM FAHIM', '123123');
  Member member2 = Member('Kazi Tuhin', '321321');

  library.loanBook(book1, member1);
  library.loanBook(book2, member2);

  library.listOfBook();
  library.listLoanedBook();

}

class Member {
  String name;
  String memberId;

  Member(this.name, this.memberId);
}

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  //Library(this.books, this.loans);

  void addBook(Book book) {
    books.add(book);

    print('=============== books added =============');
    print('$books\n');

  }

  void listOfBook() {
    print('------- List of all books -----------');

    for(var book in books){
      print('Title : ${book.title}, author : ${book.author}, available : ${book.isAvailable}\n');
    }

  }

  void listLoanedBook() {
    print('------- List of loaned books -----------');

    for(var loan in loans){
      print('Name : ${loan.book.title}, author : ${loan.book.author}, available : ${loan.book.isAvailable}\n');
    }

  }

  void loanBook(Book book, Member member) {
    if(book.isAvailable == true) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print('Sorry ${book.title} is unavailable now');
    }
  }

}
