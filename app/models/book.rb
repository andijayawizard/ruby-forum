class Book < ApplicationRecord
  validates :title, presence: { message: 'judul harus diisi' }
  validates :description, presence: { message: 'deskripsi harus diisi' }, length: { minimum: 4, message: 'minimal 4 karakter'}
  validates :price, presence: { message: 'harga harus diisi' }, numericality: {only_integer: true}
  validates :page, presence: { message: 'halaman harus diisi' }, numericality: { only_integer: true, greater_than_or_equal_to: 10, message: 'jumlah halaman harus >=10'}
  validates :year, presence: { message: 'tahun harus diisi' }, numericality: {only_integer: true, greater_than_or_equal_to: 1900, message: 'tahun berupa 4 digit angka'}
end
