# Optimizar el código implementando el operador splat al momento de instanciar los
# productos
# Generar un método que permita calcular el promedio de precio por producto.
class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end

  def average_price
    sum = @large.to_i + @medium.to_i + @small.to_i + @xsmall.to_i
    average = sum.to_f / 4.0
  end
end

  products_list = []
  data = []

  File.open('catalogo.txt', 'r') { |file| data = file.readlines}
    data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
  end

puts "Promedio #{products_list[0].name}: es $ #{products_list[0].average_price}"
puts "Promedio #{products_list[1].name}: es $ #{products_list[1].average_price}"
puts "Promedio #{products_list[2].name}: es $ #{products_list[2].average_price}"
puts "Promedio #{products_list[3].name}: es $ #{products_list[3].average_price}"
puts "Promedio #{products_list[4].name}: es $ #{products_list[4].average_price}"
