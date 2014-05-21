require File.expand_path("lib/loja_virtual")

# encoding: utf-8

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 70.5, :testes
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo

puts biblioteca.livros