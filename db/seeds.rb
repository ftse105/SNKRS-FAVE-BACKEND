# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Shoe.destroy_all
Favorite.destroy_all

user1 = User.create(username: "Frankie", password: "123", bio: "Hi")
user2 = User.create(username: "John", password: "123", bio: "I am a User")

shoe1 = Shoe.create(name: "adidas Yeezy Boost 350 V2 Black (Non-Reflective)", description: "You can never have too much heat, so cop the adidas Yeezy Boost 350 V2 Black. This Yeezy Boost 350 V2 comes with a black upper, black midsole, and a black sole. These sneakers released in June 2019 and retailed for $220.", brand: "Adidas", image_url: "https://stockx-360.imgix.net/adidas-Yeezy-Boost-350-V2-Black/Images/adidas-Yeezy-Boost-350-V2-Black/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1559748037&w=1300", release_year: 2019, price: 450)

shoe2 = Shoe.create(name: "Air Max 90 OFF-WHITE Black", description: "It’s officially 2019 and Virgil is back applying pressure on the sneaker world with the release of the Air Max 90 Off-White Black. This AM 90 is sporting a black upper, white Nike “Swoosh”, black midsole, and a black sole.", brand: "Nike", image_url: "https://stockx-360.imgix.net/Nike-Air-Max-90-Off-White-Black/Images/Nike-Air-Max-90-Off-White-Black/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1546964152&w=1300", release_year: 2019, price: 550)

shoe3 = Shoe.create(name: "Jordan 1 Retro High Travis Scott", description: "Grab a pack of coffee beans to match the Jordan 1 Retro High Travis Scott. This AJ1 comes with a brown upper plus white accents, black Nike Swoosh, sail midsole, and a brown sole.", brand: "Jordan", image_url: "https://stockx-360.imgix.net/Air-Jordan-1-Retro-High-Travis-Scott/Images/Air-Jordan-1-Retro-High-Travis-Scott/Lv2/img01.jpg?auto=format,compress&q=90&updated_at=1550180948&w=1300", release_year: 2019, price: 1200)
