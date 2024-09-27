main()
{
  Book book1=Book('Pather Panchali','Bibhutibhushan Bandyopadhyay',1929, 699);
  Book book2=Book('Gitanjali','Rabindranath Tagore',1910, 351);
  Book book3=Book('Agni-Bina', 'Kazi Nazrul Islam',1922, 543);

  book1.read(56);
  book2.read(243);
  book3.read(78);

  print('\nTotal number of books: ${Book.totalbook}\n\n');


  printBookInfo(book1);
  printBookInfo(book2);
  printBookInfo(book3);

}
class Book
{
  String title;
  String author;
  int  publicationYear;
  int  pagesRead;
  static int totalbook=0;
  Book(this.title,this.author,this.publicationYear,this.pagesRead)
  {
    totalbook++;
  }
  read(int pages)
  {
    pagesRead=pagesRead+pages;
  }
  getPagesRead()
  {
    return pagesRead;
  }
  getTitle()
  {
    return title;

  }
  getAuthor()
  {
    return author;
  }
  getPublicationYear()
  {
    return publicationYear;
  }
  getBookAge()
  {
    int current_year=DateTime.now().year;
;
    return current_year-publicationYear;
  }
}
printBookInfo(Book book) {

  print('Title            : ${book.getTitle()}');
  print('Author           : ${book.getAuthor()}');
  print('Publication Year : ${book.getPublicationYear()}');
  print('Pages Read       : ${book.getPagesRead()} pages');
  print('Book Age         : ${book.getBookAge()} years\n');

}
