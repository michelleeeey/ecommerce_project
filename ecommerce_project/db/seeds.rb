# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Product.delete_all
# Product.create! id: 100, product_name: 'Banana', price: 0.49, active: true, category_id: 1, description: 'TEST_DESCRIPTION', stock_quantity: 99
# Product.create! id: 200, product_name: 'Apple', price: 0.29, active: true, category_id: 1, description: 'TEST_DESCRIPTION', stock_quantity: 99
# Product.create! id: 300, product_name: 'Carton of Strawberries', price: 1.99, active: true, category_id: 1, description: 'TEST_DESCRIPTION', stock_quantity: 99

OrderStatus.delete_all
OrderStatus.create! id: 1, name: 'In Progress'
OrderStatus.create! id: 2, name: 'Placed'
OrderStatus.create! id: 3, name: 'Shipped'
OrderStatus.create! id: 4, name: 'Cancelled'
