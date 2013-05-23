LIBRARY_NAME = "Seattle Library"

module Location
  attr_accessor :location

  def location=(loc=LIBRARY_NAME)
    @location = loc
  end
end