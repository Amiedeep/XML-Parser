require 'xmlsimple'
require './XML_par.rb'
class XMLDifferenceList
  first_file = File.readlines(ARGV[0].chomp)
  second_file = File.readlines(ARGV[1].chomp)

  require'pry';binding.pry

  hash1=XmlSimple.xml_in(first_file.join)
  hash2=XmlSimple.xml_in(second_file.join)

  obj=XMLPar.new
  require'pry';binding.pry
  obj.find_xml_diff(hash1,hash2)

end