n, a, b = gets.split.map(&:to_i)
sum = 0
(1..n).each do | num |
  # HACK: 数値→文字列→数値 みたいにしてるのキモイし多分ここのせいで遅い.
  sum += num if num.to_s.chars.map(&:to_i).inject(&:+).between?(a, b)
end
p sum