const express = require('express')
const app = express()

app.get('/health', (req, res) => {
  const x = 1 / 0
  // eslint-disable-next-line no-console
  console.log(x)
  res.send('ok')
})

app.get('/version', (req, res) => {
  res.send('2')
})

// Heroku dynamically sets a port
const PORT = process.env.PORT || 5000

app.use(express.static('dist'))

app.listen(PORT, () => {
  // eslint-disable-next-line no-console
  console.log('server started on port', PORT)
})
