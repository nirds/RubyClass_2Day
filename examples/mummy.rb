require_relative 'monster'
class Mummy < Monster

  def initialize options={}
    options[:nocturnal] = true if options[:nocturnal].nil?
    options[:legs] ||= 2

    super options[:nocturnal], options[:legs], options[:name], options[:vulnerabilities], options[:dangers]
  end

  def test_whisper mummy
    mummy.whisper_creepily
  end

  def test_noc_set mummy
    mummy.set_nocturnal_to_false
  end

end