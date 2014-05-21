def plural(palavra)
  "#{palavra}s"
end

puts plural("caneta")
puts plural("carro")

# insere o método plural dentro da classe String
# recurso conhecido como classes abertas
class String
  def plural 
    "#{self}s"
  end
end

puts ""
puts "caneta".plural
puts "carro".plural

# qual a diferença?
nome    = "Paulo"
$nome   = "Paulo"
_nome   = "Paulo"

# comentario em bloco
=begin
  idade = 27
  ano = 2013
=end

# apenas para melhorar a visualizacao do código
# apesar de ser um número inteiro utiliza a classe Bignum devido o seu tamanho
puts ""
habitantes_da_terra = 7_000_000_000
puts habitantes_da_terra.class #fixnum ou bignum?

peso = 90.8
puts peso.class # float

puts ""
nome =  "Joana d'Arc"
boas_vindas = "Seja bem-vinda(o) " + nome
puts boas_vindas

# com interpolação
# nao é possível com string de aspas simples
boas_vindas = "Seja bem-vinda(o) #{nome}"
puts boas_vindas

puts ""
puts 'mensagem'
puts "#{sleep 1}mensagem"


puts ""
idade = 28
nome = "Paulo"

if (idade > 18)
  puts nome
end

puts nome if idade > 18 # melhor!

nome = nil
puts "Seja bem vindo #{nome}" unless nome.nil? # melhor que if not
puts "Seja bem vindo #{nome}" unless nome # variaveis quando possuem o valor nil assumem automaticamente o valor true ou false

for numero in (1..100)
  #puts "#{numero}, "
end

numero = 0
while numero <= 100
  #puts "#{numero},"
  numero += 1
end


numero = 0
until numero = 100
  #puts "#{numero},"
  numero += 1
end


string_especial_usando_aspas_simples  = 'Isso é "normal" e \'util\' no mundo Ruby'
string_especial_usando_aspas_duplas   = "Isso é \"normal\" e 'util' no mundo Ruby"

puts string_especial_usando_aspas_simples 
puts string_especial_usando_aspas_duplas  

string_especial = %{Isso é "normal" e 'util' no mundo Ruby}
puts string_especial

string_especial = %[Isso é "normal" e 'util' no mundo Ruby]
puts string_especial

string_especial = %?Isso é "normal" e 'util' no mundo Ruby?
puts string_especial

string_especial = %~Isso é "normal" e 'util' no mundo Ruby~
puts string_especial

string_especial = %{Isso é "normal" e \{util no mundo Ruby} # importante
puts string_especial

string_especial = %{Isso é "normal" e {util} no mundo Ruby 
e a partir de agora veremos a 'todo' momento}
puts string_especial # com quebra de linha na declaração
