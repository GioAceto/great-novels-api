const models = require('../models')

const getAllAuthors = async (req, res) => {
  const authors = await models.Authors.findAll()

  return res.send(authors)
}

const getAuthorByIdOrName = async (req, res) => {
  const { id } = req.params

  const author = await models.Authors.findOne({
    where: { id },
    include: [{
      model: models.Novels,
      include: [{ model: models.Genres }]
    }]
  })

  return author
    ? res.send(author) : res.sendStatus(404)
}

module.exports = { getAllAuthors, getAuthorByIdOrName }

