const models = require('../models')

const getAllAuthors = async (req, res) => {
  const authors = await models.Authors.findAll()

  return res.send(authors)
}

const getAuthorByIdOrName = async (req, res) => {
  const { identifier } = req.params

  const author = await models.Authors.findOne({
    where: {
      [models.Sequelize.Op.or]: [
        { id: identifier },
        { nameLast: { [models.Sequelize.Op.like]: `%${identifier}%` } },
      ]
    },
    include: [{
      model: models.Novels,
      include: [{ model: models.Genres }]
    }]
  })

  return author
    ? res.send(author) : res.sendStatus(404)
}

module.exports = { getAllAuthors, getAuthorByIdOrName }

