# encoding: utf-8

require File.expand_path("lib/loja_virtual")


# r = Revista.find 3
# r = r.destroy

windows = DVD.new "Windows 7 for Dummies", 98.9, :sistemas_operacionais
p windows.valor_por_extenso
p windows.methods
# => noventa e oito reais e noventa centavos


