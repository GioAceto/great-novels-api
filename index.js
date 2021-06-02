const express = require('express')
const { getAllAuthors, getAuthorByIdOrName } = require('./controllers/authors')
const { getAllGenres, getGenreById } = require('./controllers/genres')
const { getAllNovels, getNovelByIdOrTitle } = require('./controllers/novels')

const app = express()
const PORT = 1337

app.get('/authors', getAllAuthors)

app.get('/authors/:identifier', getAuthorByIdOrName)

app.get('/genres', getAllGenres)

app.get('/genres/:id', getGenreById)

app.get('/novels', getAllNovels)

app.get('/novels/:identifier', getNovelByIdOrTitle)

app.all('*', (req, res) => {
  return res.status(404).send('404 PAGE NOT FOUND')
})

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`) // eslint-disable-line no-console
})
