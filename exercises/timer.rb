module Timer
  def run_code
    yield
    puts "hi"
  end
end