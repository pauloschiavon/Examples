# encoding: utf-8

require File.expand_path("lib/loja_virtual")


biblioteca = Biblioteca.new

#biblioteca.adiciona Livro.new "TDD", "Mauricio Aniche", "123454", 247, 69.9, :testes
#biblioteca.adiciona Livro.new "Design Responsivo", "Tárcio Zemel", "45256", 189, 69.9, :web_design

#relatorio = Relatorio.new biblioteca
#p relatorio.titulos

puts "test load"
puts biblioteca.livros