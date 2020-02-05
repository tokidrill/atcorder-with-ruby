n = gets.to_i
arr = gets.split(' ').map(&:to_i).sort!.reverse!

sum_alice = 0
sum_bob   = 0

index = 0
begin
  sum_alice += arr[index]

  index += 1
  break if index == n

  sum_bob += arr[index]
  index += 1

end while n > index

p sum_alice - sum_bob