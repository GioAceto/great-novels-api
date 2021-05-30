
const models = require('../models')

const getAllBooks = async (req, res) => {
  const books = await models.Books.findAll({
    include: [{ model: models.Authors }, { model: models.Genres }]
  })

  return res.send(books)
}

const getBookById = async (req, res) => {
  const { id } = req.params

  const book = await models.Books.findOne({
    where: { id },
    include: [{ model: models.Authors }, { model: models.Genres }]
  })

  return book
    ? res.send(book) : res.sendStatus(404)
}

module.exports = { getAllBooks, getBookById }
