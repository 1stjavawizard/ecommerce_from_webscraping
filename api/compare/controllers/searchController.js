const knex = require('knex')(require('../knexfile.js').development)

const search = (req, res) => {
  const query = req.query.q
  knex
    .select('*')
    .from('products')
    .where('product_name', 'like', `%${query}%`)
    .then(products => {
      res.json(products)
    })
    .catch(err => {
      res.status(500).json({ message: 'Error searching products', error: err })
    })
}

module.exports = { search }
