require './location_module.rb'

class Book
  include Location  

  @@library_count = 0

  def self.library_count
    @@library_count
  end

  attr_accessor :author

  def initialize(a='No Author')
    @@library_count += 1
    @author = a
  end

end