# encoding: utf-8

class Livro
  attr_accessor :preco
  attr_reader   :categoria
  attr_reader   :isbn
  
  def initialize(autor, isbn = "1", numero_de_paginas, preco, categoria)
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    @categoria = categoria
  end
  
  def preco
    @preco
  end
  
  def to_s
    "Autor: #{@autor}, Isbn: #{@isbn}, Páginas: #{@numero_de_paginas}, Categoria: #{@categoria}"
  end
  
  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end
end