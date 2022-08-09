require_relative 'produto'
require_relative 'mercado'


product = Product.new
product.name  = 'Teclado'
product.price = 175

Mercado.new(product.name, product.price).comprar