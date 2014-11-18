def measure(num=1)
  start_time = Time.now
  num.times do
  	yield
  end
  (Time.now - start_time) / num
end

p measure(5){puts "hi"}