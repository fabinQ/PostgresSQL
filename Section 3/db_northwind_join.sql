SELECT products.product_id, products.product_name, products.category_id, categories.category_name, categories.category_id
FROM products
JOIN categories ON products.product_id = products.category_id