require_relative 'monster'
class Mummy < Monster

  def initialize options = {}
    options[:nocturnal] ||= false
    options[:legs] ||= 2
    options[:name] ||= "King Tut"
    options[:dangers] ||= [:bites]
    options[:vulnerabilities] ||= [:fire, :decapitation]

    super(options[:nocturnal], options[:legs],options[:name],  options[:vulnerabilities], options[:dangers])
  end
end