class Carta
  attr_reader :pinta, :numero
  def initialize
    pintas = %i[corazon pica diamente trebol]
    @pinta = pintas[rand(3)]
    @numero = rand(1..13)
  end
end

def menu
  puts '¿Que desea hacer? (jugar, mostrar, salir)'
  gets.chomp.downcase
end

seleccion = '0'
while seleccion != 'salir'
  seleccion = menu
  case seleccion
  when 'jugar'
    cartas = []
    5.times { cartas << Carta.new }
  when 'mostrar'
    cartas.each { |carta| puts "Tienes un #{carta.numero} de #{carta.pinta}" }
  when 'salir'
    break
  else
    puts 'Opción inválida.'
  end
end
