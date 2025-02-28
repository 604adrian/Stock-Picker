def stock_picker(days)
  options = []
  days.each_with_index do |day1, idx1|
    days.each_with_index do |day2, idx2|
      if (idx1 < idx2)
        options.push([day1, day2, day2-day1])
      end
    end
  end

  options2 = []
  options.each { |option| options2.push(option[2]) }

  find_them = []
  options.each do |arr|
    if arr[2] == options2.max
      days.each_with_index { |day, idx| find_them.push(idx) if day == arr[0] }
      days.each_with_index { |day, idx| find_them.push(idx) if day == arr[1] }
    end
  end

  find_them
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #[1,4]
