const models = require('../models')

const getAllAuthors = async (req, res) => {
  const authors = await models.Authors.findAll()

  return res.send(authors)
}

const getAuthorById = async (req, res) => {

}

module.exports = { getAllAuthors, getAuthorById }
