const express = require('express')

const app = express()
const PORT = 1400

app.all('*', (req, res) => {
  return res.status(404).send('working')
})

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`) // eslint-disable-line no-console
})