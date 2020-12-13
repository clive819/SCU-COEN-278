# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contents = [
    [
        "Apple M1 Chip Macbook Air",
        "Apple M1 chip with 8‑core CPU, 7‑core GPU, 16‑core Neural Engine, 8GB unified memory, 256GB SSD storage, Retina display with True Tone, Magic Keyboard, Touch ID, Force Touch trackpad, Two Thunderbolt / USB 4 ports",
        "air.jpeg",
        "999.00"
    ], [
        "Apple M1 Chip Macbook Pro",
        "Apple M1 chip with 8-core CPU, 8-core GPU, 16-core Neural Engine, 8GB unified memory, 256GB SSD storage, 13-inch Retina display with True Tone, Magic Keyboard, Touch Bar and Touch ID, Force Touch trackpad, Two Thunderbolt / USB 4 ports",
        "pro.jpeg",
        "1299.00"
    ], [
        "Apple M1 Chip Mac mini",
        "Apple M1 chip with 8-core CPU, 8-core GPU, 16-core Neural Engine, 8GB unified memory, 256GB SSD storage, Gigabit Ethernet",
        "mini.jpeg",
        "699.00"
    ]
]

contents.each do |name, description, image, price|
    Product.create(
        name: name,
        description: description,
        image: image,
        price: price
    )
end
