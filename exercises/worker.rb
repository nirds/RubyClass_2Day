class Worker
  def self.work(n=1)
    result = yield 
    (n-1).times do 
      result = yield 
    end
    result
  end
end