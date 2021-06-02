const models = require('../models')

const getAllGenres = async (req, res) => {
  const genres = await models.Genres.findAll()

  return res.send(genres)
}

const getGenreById = async (req, res) => {
  const { id } = req.params

  const genre = await models.Genres.findOne({
    where: { id },
    include: [{
      model: models.Novels,
      include: [{ model: models.Authors }]
    }]
  })

  return genre
    ? res.send(genre) : res.sendStatus(404)
}

module.exports = { getAllGenres, getGenreById }
