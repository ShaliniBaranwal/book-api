# Ruby on Rails API for Book Stock Management with postgres

This is an API built to manage books.
Book information can be added, modified and deleted at will.

Requests to perform activities mentioned above:

* **GET** request at `/book` for list of all books.
* **POST** request at `/book` with details of the book for adding a new book.
* **PUT** request at `/book/{id_of_book}` with updated details of the book for updating a certain book.
* **DELETE** request at `/book/{id_of_book}` to delete a book.

* **GET** request at `/bookname` with name of the book to search will return the available book.
* **GET** request at `/byauthor` with name of the author to search will return the available book.