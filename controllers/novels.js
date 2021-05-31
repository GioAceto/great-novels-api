
const models = require('../models')

const getAllNovels = async (req, res) => {
  const novels = await models.Novels.findAll({
    include: [{ model: models.Authors }, { model: models.Genres }]
  })

  return res.send(novels)
}

const getNovelByIdOrTitle = async (req, res) => {
  const { identifier } = req.params

  const novel = await models.Novels.findOne({
    where: {
      [models.Sequelize.Op.or]: [
        { id: identifier },
        { title: { [models.Sequelize.Op.like]: `%${identifier}%` } },
      ]
    },
    include: [{ model: models.Authors }, { model: models.Genres }]
  })

  return novel
    ? res.send(novel) : res.sendStatus(404)
}

module.exports = { getAllNovels, getNovelByIdOrTitle }
