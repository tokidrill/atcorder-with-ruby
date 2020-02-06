str = gets.chomp
needles = ['dream', 'dreamer', 'erase', 'eraser']

rstr = str.reverse
rneedles = needles.map(&:reverse)

while rstr.length > 0 do
  can = false
  rneedles.each do |needle|
    if rstr.start_with?(needle)
      can = true
      rstr = rstr.sub(needle, '')
    end
  end
  break if can == false
end

puts rstr.empty? ? 'YES' : 'NO'