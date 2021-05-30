'use strict';

module.exports = {
  up: async (queryInterface) => {

    await queryInterface.bulkInsert('authors', [
      { nameFirst: 'Bram', nameLast: 'Stoker' },
      { nameFirst: 'Oscar', nameLast: 'Wilde' },
      { nameFirst: 'Alice', nameLast: 'Walker' },
      { nameFirst: 'Leo', nameLast: 'Tolstoy' },
      { nameFirst: 'Charles', nameLast: 'Dickens' },
      { nameFirst: 'Arthur', nameLast: 'Miller' },
      { nameFirst: 'Alexandre', nameLast: 'Dumas' },
      { nameFirst: 'Arthur Conan', nameLast: 'Doyle' },
      { nameFirst: 'Robert Louis', nameLast: 'Stevenson' },
      { nameFirst: 'Fyodor', nameLast: 'Dostoyevsky' },
      { nameFirst: 'Agatha', nameLast: 'Christie' },
      { nameFirst: 'Ray', nameLast: 'Bradbury' },
      { nameFirst: 'George', nameLast: 'Orwell' },
      { nameFirst: 'H.G.', nameLast: 'Wells' },
      { nameFirst: 'Chinua', nameLast: 'Achebe' }
    ])

    await queryInterface.bulkInsert('genres', [
      { name: 'Adventure' },
      { name: 'African Literature' },
      { name: 'Crime' },
      { name: 'Drama' },
      { name: 'Dystopia' },
      { name: 'Fantasy' },
      { name: 'Fiction' },
      { name: 'French Literature' },
      { name: 'Gothic' },
      { name: 'Historical Fiction' },
      { name: 'Horror' },
      { name: 'Mystery' },
      { name: 'Plays' },
      { name: 'Russian Literature' },
      { name: 'Science Fiction' },
      { name: 'Thriller' },
      { name: 'Time Travel' },
      { name: 'War' }
    ])

  },

  down: async (queryInterface) => {

  }
}