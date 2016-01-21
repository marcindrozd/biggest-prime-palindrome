def biggest_palindrome(limit)
  biggest_palindrome = 0

  (1..limit).each do |num|
    if is_palindrome?(num) && is_prime?(num)
      biggest_palindrome = num
    end
  end

  biggest_palindrome
end

def is_palindrome?(number)
  number.to_s.reverse.to_i === number
end

def is_prime?(number)
  return false if number == 1
  return true if number == 2
  return false if number.even?

  (3..number - 1).each do |n|
    return false if number % n == 0
  end
  
  return true
end

puts biggest_palindrome(10000)
