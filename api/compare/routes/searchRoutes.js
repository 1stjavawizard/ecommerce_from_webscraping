// Import the express module
const express = require('express')


// Create an instance of an Express Router
const Router = express.Router()

// Import the Search function from the searchControllers module
const { search } = require('../controllers/searchController')

// Define a route for the search endpoint
Router.route('/').get(search)

// Export the Router instance to be used in other parts of the application
module.exports = Router
