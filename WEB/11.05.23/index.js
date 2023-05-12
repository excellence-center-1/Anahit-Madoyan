let books = [{
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
    name: "Harper Lee",
    pages: 336
    }, {
    title: "The Great Gatsby", 
    author: "F. Scott Fitzgerald", 
    name: "F. Scott Fitzgerald",
    pages: 180
    }, {
    title: "1984", 
    author: "George Orwell", 
    name: "George Orwell', books",
    pages: 328
    }, {
    title: "The Catcher in the Rye", 
    author: "J.D. Salinger",
    name: "J.D. Salinger'",
    pages: 224
    }, {
    title: "Brave New World", 
    author: "Aldous Huxley",
    name: "Aldous Huxley",
    pages: 288
}];

// EX2 //

for (i=0; i<books.length; i++){
    console.log(books[i].title);
};


// EX3 //

// let sum = 0;
// for (i=0; i<books.length; i++){
//     sum += books[i].pages;
// }
// console.log("Total number of pages: " + sum);

// EX4 //

// let max_pages = 0;
// let title_page = null;
// for (i = 0; i < books.length; i++){
//   if (books[i].pages > max_pages){
//     title_page = books[i].title;
//     max_pages = books[i].pages;
//   }
// };
// console.log("The book with the most pages is " + "'" + title_page + "'"  + " with "  + max_pages + " pages.");

// EX5 //

// let shortest_title = null;
// for (i = 0; i < books.length; i++){
//   if (shortest_title === null || books[i].title.length < shortest_title.length){
//       shortest_title = books[i].title;
//   }
// };
// console.log("The book with the shortest title is " + "'" + shortest_title + "'.");

// EX6//

// let books_author = [];
// for (i=0; i<books.length; i++){
//     books_author.push(books[i].author);
// };
// console.log(books_author);

// EX7 //

// let book_authors = [];
// for (let i=0; i< books.length; i++){
//     let author_index = book_authors.findIndex(author => author.name === books[i].author);
//     if(author_index === -1){
//         book_authors.push({name: books[i].author, books:
//         [books[i].title]});
//     }else{
//       book_authors[author_index].books.push(books[i].title); 
//     } 
// }
// console.log(book_authors);

