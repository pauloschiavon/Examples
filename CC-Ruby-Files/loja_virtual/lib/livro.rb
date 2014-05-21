# encoding: utf-8

class Livro
  attr_accessor :valor
  attr_reader   :titulo, :autor, :isbn, :categoria
  
  def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @valor = valor
    @categoria = categoria
  end
  
  # garante a unicidade quando adicionar este objeto a um Set
  def hash 
    @isbn.hash
  end
  
  def to_s
    "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
  end
  
  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end
end