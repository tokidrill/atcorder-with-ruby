n, k = gets.split(' ').map(&:to_i)
h = gets.split(' ').map(&:to_i).sort

if n <= k
  output = 0
else
  sum = h[0...(n-k)].inject(:+)
  output = sum
end

p output
