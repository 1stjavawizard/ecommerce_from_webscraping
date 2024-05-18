# Node.js API for Price Comparison Website

## Overview
This Node.js API is designed to support a price comparison website that allows users to compare prices of products like iPhones across different online shopping platforms such as eBay, AliExpress, and Amazon. The API provides endpoints for searching products, fetching product details, and retrieving the best prices from various sites.

## Features
- **Search Products**: Users can search for products by name, and the API will return a list of matching products along with their prices and image URLs.
- **Product Details**: Clicking on a product card will take the user to a detailed single product page with more information.
- **Best Prices**: The API retrieves the best prices for each product from the available sites.

## Getting Started
To get started with this API, clone the repository and install the dependencies:

```bash
git clone https://github.com/your-username/price-comparison-api.git
cd price-comparison-api
npm install
```

## Configuration
Create a `.env` file in the root directory and add your database configuration:

```env
DB_HOST=localhost
DB_USER=root
DB_PASS=password
DB_NAME=compare_db
```

## Running the API
To start the server, run:

```bash
npm start
```

The API will be available at `http://localhost:3000`.

## Endpoints

### Search Products
- **URL**: `/search`
- **Method**: `GET`
- **URL Params**: `productName=[string]`
- **Success Response**: A list of products matching the search query.

### Get Product Details
- **URL**: `/product/:productId`
- **Method**: `GET`
- **URL Params**: `productId=[integer]`
- **Success Response**: Detailed information about the product.

### Get Best Prices
- **URL**: `/best-prices/:productName`
- **Method**: `GET`
- **URL Params**: `productName=[string]`
- **Success Response**: The best prices for the product from different sites.

## Technologies Used
- **Node.js**: Runtime environment for executing JavaScript on the server.
- **Express.js**: Web application framework for Node.js.
- **Knex.js**: SQL query builder for JavaScript.
- **MySQL**: Relational database management system.

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.

---

For more information or to report issues, please visit the [GitHub repository].

Happy shopping and happy coding!