const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const knex = require('knex')(require('./knexfile.js').development)
require('dotenv').config()

const app = express()
app.use(cors())
// Add the json middleware to allow the server parse the data
app.use(express.json())

// static files
app.use(express.static('public'))
// view engine
app.set('view engine', 'ejs')

// Import API Routes0
const searchRoutes = require('./routes/searchRoutes')
const productRoutes = require('./routes/productRoutes')
// Import knex middleware
const icompareRoutes = require('./routes/icompareRoutes')

// Using routes as middleware with prefix
app.use('/api/products', productRoutes)
app.use('/api/search', searchRoutes)
app.use('/icompare', icompareRoutes)

const port = process.env.PORT || 3000
app.listen(port, () => {
  console.log(`Server running on port ${port}`)
})
