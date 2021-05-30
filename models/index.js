const Sequelize = require('sequelize')
const AuthorsModel = require('./authors')
const GenresModel = require('./genres')
const BooksModel = require('./books')
const BooksGenresModel = require('./booksGenres')

const connection = new Sequelize('novels', 'reader', 'Read3r123', {
  host: 'localhost', dialect: 'mysql'
})

const Authors = AuthorsModel(connection, Sequelize)
const Genres = GenresModel(connection, Sequelize)
const Books = BooksModel(connection, Sequelize, Authors)
const BooksGenres = BooksGenresModel(connection, Sequelize, Genres, Books)

Books.belongsTo(Authors)
Authors.hasMany(Books)

Genres.belongsToMany(Books, { through: BooksGenres })
Books.belongsToMany(Genres, { through: BooksGenres })

module.exports = {
  Authors,
  Genres,
  Books,
  BooksGenres,
}
