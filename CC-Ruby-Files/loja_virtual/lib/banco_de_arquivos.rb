# encoding: utf-8

require 'yaml'

class BancoDeArquivos
  def initialize
    @livro_path =  "base/livros.yml"
  end
  
  def salva(livro)
    File.open(@livro_path, "a") do |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ""
    end
  end
  
  def carrega 
    $/ = "\n\n"
    File.open(@livro_path, "r").map do |livro_serializado|
      YAML.load livro_serializado
    end
  end
end