def todayIs(day)
  working_overtime = true

  if day == 'Saturday' or (day == 'Sunday' and not working_overtime)
    daytype = 'holiday'
    message = 'YAY!'
  else
    daytype = 'working day'
    message = 'Buuuuh'
  end
  return "#{daytype}, #{message}"
end

day1 = "Monday"
day2 = "Saturday"
puts "#{day1} is a #{todayIs(day1)}"
puts "#{day2} is a #{todayIs(day2)}"
