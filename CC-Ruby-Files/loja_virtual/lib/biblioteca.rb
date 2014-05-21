# encoding: utf-8

class Biblioteca
  
  include Enumerable
  
  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
  end
  
  def adiciona(midia)
    salva midia do
      @midias << midia
    end
  end
  
  def midias_por_categoria(categoria)
    midias.select do |midia|
      midia.categoria == categoria if midia.respond_to? :categoria
    end
  end
  
  def midias
    @midias ||= @banco_de_arquivos.carrega
  end
  
  # método each que possibilita que os outros métodos do módulo
  # Enumerable funcioname em uma instancia de biblioteca
  def each
    livros.each { |livro| yield livro}
  end
  
  private 
  
  def salva(midia)
    @banco_de_dados.salva midia
    yield
  end
end
