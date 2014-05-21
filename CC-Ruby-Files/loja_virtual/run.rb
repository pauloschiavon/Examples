# encoding: utf-8

require File.expand_path("lib/loja_virtual")


#mundo_j = Revista.new "Mundo J", 10.9
#mundo_j.save

mundo_j = Revista.find 3
p mundo_j.valor