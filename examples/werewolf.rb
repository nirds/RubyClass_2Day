require './monster.rb'

class Werewolf < Monster

  def initialize attrs = {}
    attrs[:nocturnal] = true if  attrs[:nocturnal].nil?
    attrs[:legs] ||= 4
    attrs[:name] ||= "Werewolf"

    super attrs[:nocturnal], attrs[:legs], attrs[:name], attrs[:vulnerabilities], attrs[:dangers]
  end

end