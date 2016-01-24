require 'minitest/autorun'
require_relative 'palindrome'

class PalindromeTest < MiniTest::Unit::TestCase
  describe '#is_prime?' do
    it 'returns true if number is prime' do
      is_prime?(2).must_equal true
      is_prime?(101).must_equal true
    end

    it 'returns false if number is not prime' do
      is_prime?(0).must_equal false
      is_prime?(1).must_equal false
      is_prime?(80).must_equal false
    end
  end

  describe '#is_palindrome?' do
    it 'returns true if number reads the same forwards and backwards' do
      is_palindrome?(1).must_equal true
      is_palindrome?(101).must_equal true
      is_palindrome?(2222).must_equal true
      is_palindrome?(12321).must_equal true
    end

    it 'returns false if number does not read the same forwards and backwards' do
      is_palindrome?(12).must_equal false
      is_palindrome?(123).must_equal false
      is_palindrome?(123322).must_equal false
    end
  end

  describe '#biggest_prime_palindrome' do
    it 'returns the biggest prime palindrome up to a given limit' do
      biggest_prime_palindrome(2).must_equal 2
      biggest_prime_palindrome(11).must_equal 11
      biggest_prime_palindrome(107).must_equal 101
    end
  end
end