Product.create([
    {
        name: 'iPhone X',
        brand: 'Apple',
        price: '$999.99',
        description: 'iPhone X is the latest addition to the iPhone line-up. It features a 5.8-inch Super Retina display, a new A12 Bionic chip, and a new 12MP camera. It is powered by a 2.84GHz dual-core Apple A12X chip with M12 motion coprocessor.'
    },
    {
        name: 'iPhone XS',
        brand: 'Apple',
        price: '$999.99',
        description: 'iPhone XS is the latest addition to the iPhone line-up. It features a 5.8-inch Super Retina display, a new A12 Bionic chip, and a new 12MP camera. It is powered by a 2.84GHz dual-core Apple A12X chip with M12 motion coprocessor.'
    },
    {
        name: 'iPhone XR',
        brand: 'Apple',
        price: '$999.99',
        description: 'iPhone XR is the latest addition to the iPhone line-up. It features a 5.8-inch Super Retina display, a new A12 Bionic chip, and a new 12MP camera. It is powered by a 2.84GHz dual-core Apple A12X chip with M12 motion coprocessor.'
    },
    {
        name: 'iPhone XS Max',
        brand: 'Apple',
        price: '$999.99',
        description: 'iPhone XS Max is the latest addition to the iPhone line-up. It features a 5.8-inch Super Retina display, a new A12 Bionic chip, and a new 12MP camera. It is powered by a 2.84GHz dual-core Apple A12X chip with M12 motion coprocessor.'
    },
])

Store.create([
    {
        name: 'iStore1',
        location: 'Canadá'
    },
    {
        name: 'iStore2',
        location: 'Lisbon'
    },
    {
        name: 'iStore3',
        location: 'USA'
    },
    {
        name: 'iStore4',
        location: 'UK'
    },
])

PaymentMethod.create([
    {
        type: 'CreditCard',
        name: 'Master Card',
    }, 
    {
        type: 'CreditCard',
        name: 'Visa',
    },
    {
        type: 'CreditCard',
        name: 'American Express',
    },
])

# Purchase.create([
#     {
#         store_id: 1,
#         product_id: 1,
#         payment_method_id: 1,
#         quantity: 1, 
#     },
#     {
#         store_id: 2,
#         product_id: 4,
#         payment_method_id: 2,
#         quantity: 2, 
#     },
#     {
#         store_id: 3,
#         product_id: 2,
#         payment_method_id: 3,
#         quantity: 3, 
#     },
# ])