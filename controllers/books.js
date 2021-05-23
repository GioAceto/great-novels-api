
const models = require('../models')

const getAllBooks = async (req, res) => {
  const books = await models.Books.findAll({
    include: [{ model: models.Authors }, { model: models.Genres }]
  })

  return res.send(books)
}

const getBookById = async (req, res) => {

}

module.exports = { getAllBooks, getBookById }
