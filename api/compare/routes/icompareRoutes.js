// Import the express module
const express = require('express')

// import knex
const knex = require('knex')(require('../knexfile.js').development)

// Create an instance of an Express Router
const Router = express.Router()

const fetchProducts = require('../middleware/fetchProducts')

// Define routes for the views
Router.route('/home').get(fetchProducts, (req, res) => res.render('index'))
Router.route('/products').get(fetchProducts, (req, res) =>
  res.render('products')
)
Router.route('/compare').get(fetchProducts, (req, res) => res.render('compare'))
Router.route('/about').get((req, res) => res.render('about'))
Router.route('/contact').get((req, res) => res.render('contact'))
Router.route('/single-product/:productId').get(fetchProducts, (req, res) => {
  const productId = req.params.productId
  // Fetch product information
  getProductDetails(productId)
    .then(productDetails => {
      res.render('single-product', {
        productDetails,
      })
    })
    .catch(error => {
      console.error('Error fetching product details:', error)
      res.status(500).send('Server Error')
    })
})
Router.route('/search').get((req, res) => {
  const query = req.query.q
  knex('products as p')
    .select(
      'p.product_id',
      'p.product_name',
      'pr.price',
      'p.image',
      's.site_name',
      's.site_url'
    )
    .join('prices as pr', 'p.product_id', 'pr.product_id')
    .join('sites as s', 'pr.site_id', 's.site_id')
    .where('product_name', 'like', `%${query}%`)
    .then(results => {
      res.render('search-results', { products: results })
    })
    .catch(err => {
      res.status(500).json({ message: 'Error searching products', error: err })
    })
})

const getProductDetails = (productId) => {
  return knex('products as p')
    .select('p.product_id', 'p.product_name', 'p.image', 'pr.price', 's.site_name', 's.site_url')
    .join('prices as pr', 'p.product_id', 'pr.product_id')
    .join('sites as s', 'pr.site_id', 's.site_id')
    .where('p.product_id', productId)
    .then(productDetails => {
      return productDetails; // This will be an array of product details objects
    })
    .catch(error => {
      console.error('Error fetching product details:', error);
      throw error;
    });
};


// Export the Router instance to be used in other parts of the application
module.exports = Router
