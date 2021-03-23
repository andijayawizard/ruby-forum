# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = Book.create([
  {
    title: 'ruby 2.7.1',
    description: 'belajar ruby dari dasar',
    price: '98000',
    page: '120',
  },
  {
    title: 'node js',
    description: 'belajar node js dari dasar',
    price: '99000',
    page: '130',
  },
])
students = Student.create([
  {
    name: 'eman',
    phone: '90908',
    email: 'eman@gmail.com',
    address: 'jl jalan ke kota kembang',
  },
  {
    name: 'fahmi',
    phone: '23234',
    email: 'fahmi@gmail.com',
    address: 'bekasi timur',
  },
  {
    name: 'charlie',
    phone: '1234',
    email: 'charlie@gmail.com',
    address: 'jl merak no 20',
  },
  {
    name: 'deden',
    phone: '1234',
    email: 'deden@gmail.com',
    address: 'bandung',
  },
  {
    name: 'ginanjar',
    phone: '1234',
    email: 'ginanjar@gmail.com',
    address: 'bekasi timur',
  },
  {
    name: 'hardi hamzah',
    phone: '4554',
    email: 'hardi.hamzah@gmail.com',
    address: 'depok jawa barat',
  },
  {
    name: 'iwan satria',
    phone: '9090',
    email: 'iwan.satria@yahoo.com',
    address: 'cimone, tangerang',
  },
  {
    name: 'jaja',
    phone: '1234',
    email: 'jaja@gmail.com',
    address: 'jakarta barat',
  },
])