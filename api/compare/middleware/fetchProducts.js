
const knex = require('knex')(require('../knexfile.js').development)

// check current user
const fetchProducts = (req, res, next) => {
  knex('products as p')
    .select('p.product_id', 'p.product_name','pr.price', 'p.image')
    .join('prices as pr', 'p.product_id', 'pr.product_id')
    .join('sites as s', 'p.product_id', 's.site_id')
    .orderBy('p.product_name','asc')
    .then(products => {
      res.locals.products = products
      next()
    })
    .catch(err => {
      req.body = { message: 'Error fetching products', error: err }
      console.log(err.message)
      next()
    })
}

module.exports = fetchProducts
