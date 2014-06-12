class Worker
  def self.work t = 1
    results = yield
    t -= 1
    while t > 0
      t -= 1
      results = yield
    end
    return results
    (1...t).inject(yield){yield}
  end
end