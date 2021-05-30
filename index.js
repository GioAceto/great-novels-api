const express = require('express')
const { getAllAuthors, getAuthorById } = require('./controllers/authors')
const { getAllGenres, getGenreById } = require('./controllers/genres')
const { getAllBooks, getBookById } = require('./controllers/books')

const app = express()
const PORT = 1400

app.get('/authors', getAllAuthors)

app.get('/authors/:id', getAuthorById)

app.get('/genres', getAllGenres)

app.get('/genres/:id', getGenreById)

app.get('/books', getAllBooks)

app.get('/books/:id', getBookById)

app.all('*', (req, res) => {
  return res.status(404).send('404 PAGE NOT FOUND')
})

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`) // eslint-disable-line no-console
})
