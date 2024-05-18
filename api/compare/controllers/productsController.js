

const getProducts = (req, res) => {
  if (res.locals.products) {
    res.json(res.locals.products)
  } else {
    res.status(500).json({message: 'Error fetching products', error: err})
  }
}

module.exports = { getProducts }
