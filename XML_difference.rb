
# include XMLPar
require './XML_par.rb'
# require './XML_par.rb'
class XMLDifference
  require 'nori'
  # require '../XML_par'
  # require 'activesupport'
  # require 'active_support'
  # require 'active_support/core_ext/hash/conversions'
  # require 'nokogiri'
  require 'nokogiri/diff'
  require 'equivalent-xml'
  require 'xmlsimple'
  # puts ARGV[0]
  first_file = File.readlines(ARGV[0].chomp)
  # first_file = File.readlines('/Users/amandeepsingh/Downloads/BUILDERG3_3612 MP_9RC00001-9RC00002.xml'.chomp)
  # second_file = File.readlines("/Users/amandeepsingh/Downloads/BUILDER_OLGA_3612 MP_9RC00001-9RC00002.xml".chomp)
  second_file = File.readlines(ARGV[1].chomp)

  # a=Nokogiri::XML.parse(first_file.join.strip)
  # a=Nokogiri::XML.parse(ARGV[0])
  a=Nokogiri::XML(ARGV[0])
  # a=Nokogiri::HTML(first_file.join.strip)
  # b=Nokogiri::XML.parse(second_file.join.strip)
  # b=Nokogiri::XML.parse(ARGV[1])
  b=Nokogiri::XML(ARGV[1])

  # first_file.gsub("\n","")
  # second_file.gsub("\n","")
  # first_file.map!{ |element| element.gsub('[\n| |\t]', '') }
  # second_file.map!{ |element| element.gsub('[\n| |\t]', '') }
  # b=Nokogiri::HTML(second_file.join.strip)
  # XmlSimple.xml_in(first_file.join)

  # Nokogiri::XML::DocumentFragment.parse(first_file.join.strip)
  # diff1 = first_file-second_file
  # diff2 = second_file-first_file


  # diffe=Array.new
  #
  # # require'pry';binding.pry
  # first_file.each_index do |index|
  #   (diffe= diffe+first_file[index..first_file.length+1]) and break if second_file.empty?
  #   if i = second_file.index(first_file.at(index))
  #     second_file.delete_at(i)
  #   else
  #     diffe.push(first_file.at(index))
  #   end
  # end
  # diffe= diffe+second_file



  hash1=XmlSimple.xml_in(first_file.join)
  hash2=XmlSimple.xml_in(second_file.join)

  obj=XMLPar.new
  # require'pry';binding.pry
  # obj.find_xml_diff(first_file,second_file)
  # require'pry';binding.pry
  obj.find_xml_diff(hash1,hash2)




  # .join.gsub(/[^\x00-\x7F]/,''
  # diff = Array.new
  # diff << first_file-second_file
  #diff << second_file-first_file
  #diff1.shift
  #diff2.shift
  # xml_parser= Nori.new
  # puts xml_parser.parse(first_file.join) == xml_parser.parse(second_file.join)
  puts EquivalentXml.equivalent?(first_file, second_file, opts = { :element_order => false, :normalize_whitespace => true })
  #if(diff1==diff2)
   # puts 'Both files are equal'
  #else
    #puts diff1+diff2
  #end
end

# class XMLPar

  # def find_xml_diff(hash1, hash2)
  #   hash1.keys.each do |key|
  #     if !hash2[key].nil? && hash1[key] == hash2[key]
  #       find_xml_diff(hash1[key],hash2[key])
  #     else
  #       puts hash1[key]
  #     end
  #   end
  # end
# end

