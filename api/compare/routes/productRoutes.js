// Import the express module
const express = require('express')

// Create an instance of an Express Router
const Router = express.Router()

const fetchProducts = require('../middleware/fetchProducts')

// Import the getProducts function from the productsControllers module
const { getProducts } = require('../controllers/productsController')

// Define a route for the search endpoint
Router.route('/').get(fetchProducts, getProducts)

// Export the Router instance to be used in other parts of the application
module.exports = Router
