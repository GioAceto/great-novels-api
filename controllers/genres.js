const models = require('../models')

const getAllGenres = async (req, res) => {
  const genres = await models.Genres.findAll()

  return res.send(genres)
}

const getGenreById = async (req, res) => {

}

module.exports = { getAllGenres, getGenreById }
