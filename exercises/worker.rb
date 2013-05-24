class Worker
  def self.work(n=1)
    results = 0
    n.times{ results = yield }
    results
  end
end