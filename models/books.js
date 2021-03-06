const Books = (connection, Sequelize, Authors) => {
  return connection.define('books', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    title: { type: Sequelize.STRING, allowNull: false },
    authorId: { type: Sequelize.INTEGER, references: { model: Authors, key: 'id' } },
  })
}

module.exports = Books