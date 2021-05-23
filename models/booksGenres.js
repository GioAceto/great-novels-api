const BooksGenres = (connection, Sequelize, Genres, Books) => {
  return connection.define('booksGenres', {
    genreId: { type: Sequelize.INTEGER, references: { model: Genres, key: 'id' } },
    bookId: { type: Sequelize.INTEGER, references: { model: Books, key: 'id' } },
  })
}

module.exports = BooksGenres
