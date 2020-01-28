trush = gets
arr = gets.chomp.split(' ').map(&:to_i)

i = 0
while arr.all?(&:even?) do
  i = i.succ
  arr = arr.map{|n| n / 2}
end

p i