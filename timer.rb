class Timer

  def self.time_code
    start_time = Time.now
    yield if block_given?
    Time.now - start_time
  end

end