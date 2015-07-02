
require './XML_par.rb'
class XMLDifference
  # require 'equivalent-xml'
  require 'xmlsimple'
  first_file = File.readlines(ARGV[0].chomp)
  second_file = File.readlines(ARGV[1].chomp)

  hash1=XmlSimple.xml_in(first_file.join)
  hash2=XmlSimple.xml_in(second_file.join)

  obj=XMLPar.new
  obj.find_xml_diff(hash1,hash2)




  # puts EquivalentXml.equivalent?(first_file, second_file, opts = { :element_order => false, :normalize_whitespace => true })
end


