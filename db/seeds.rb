# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create!(product_type: "I型",price: 15000)
Product.create!(product_type: "II型",price: 18000)
School.create!(school_name: "hoge山市立第一中学校", shool_grade: 2)
School.create!(school_name: "hoge山南中学校", shool_grade: 2)
School.create!(school_name: "hoge山高校", shool_grade: 3)
