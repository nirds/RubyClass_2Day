class Worker
  def self.work(n=1)
    result = ""
    n.times{result = yield}
    result
  end
end