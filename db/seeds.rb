Category.destroy_all
Product.destroy_all

Category.create!(name: 't-shirts')
Category.create!(name: 'socks')

5.times do |index|
	Product.create!(
		name: Faker::Commerce.product_name,
		description: Faker::Lorem.paragraph, 
		price: Faker::Commerce.price, 
		category_id: Category.all.sample.id
		)
end


p "Created #{Product.count} products and #{Category.count} categories"