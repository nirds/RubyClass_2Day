class Worker
  def self.work n = 1, &block
    n.times.inject(nil){ block.call }
  end
end