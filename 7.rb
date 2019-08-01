class Product
  attr_accessor :name, :tallas
  def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
  end
end

products_list = []

data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

nuevo_catalogo = []

File.open('nuevo_catalogo', 'w')

products_list.each do |product|
  product.tallas.pop
  File.write('nuevo_catalogo.txt', "#{product.name}, #{product.tallas.join(', ')}\n", mode: 'a')

end
# puts products_list
