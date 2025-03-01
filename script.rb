require 'pry-byebug'

def stock_picker(days)
  options = []
  highest_earning = []
  days.each_with_index do |day1, idx1|
    days.each_with_index do |day2, idx2|
      if (idx1 < idx2)
        options.push([day2-day1, [idx1, idx2]])
        highest_earning.push(day2-day1)
      end
    end
  end

  options.to_h[highest_earning.max]
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #[1,4]
p stock_picker([2, 4, 1, 8, 3, 9, 2]) #[2,5]
p stock_picker([3, 1, 3, 1, 3]) #[1,2] or [3,4]
p stock_picker([14, 6, 1, 19, 15, 8, 6, 1, 20]) #[2,8] or [7,8]
