const express = require('express')
const { getAllAuthors, getAuthorById } = require('./controllers/authors')
const { getAllGenres, getGenreById } = require('./controllers/genres')
const { getAllNovels, getNovelById } = require('./controllers/Novels')

const app = express()
const PORT = 1400

app.get('/authors', getAllAuthors)

app.get('/authors/:id', getAuthorById)

app.get('/genres', getAllGenres)

app.get('/genres/:id', getGenreById)

app.get('/Novels', getAllNovels)

app.get('/Novels/:id', getNovelById)

app.all('*', (req, res) => {
  return res.status(404).send('404 PAGE NOT FOUND')
})

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`) // eslint-disable-line no-console
})
