defmodule Problem_4 do
	def is_palindrome?(n) do
		n == reverse(n)
	end

	def reverse(n) when n > 0 do
		reverse(n,0)
	end

	def reverse(n, r) when n > 0 do
		reverse(div(n,10), (10*r) + rem(n,10))
	end

	def reverse(_, r) do
		r
	end

	def largest_palindrome(start..finish) do
		largest_palindrome(start, start..finish, 0)
	end
	
	def largest_palindrome(n, start..finish, largest) when n >= finish do
		new_largest = largest_palindrome(n, start, finish, largest)
		largest_palindrome(n-1, start..finish, new_largest)
	end

	def largest_palindrome(_, _, largest) do
		largest
	end

	def largest_palindrome(n, m, finish, largest) when m >= n and n*m >= largest do
		if is_palindrome?(n*m) do
			next_largest = n*m
		else
			next_largest = largest
		end
		largest_palindrome(n, m-1, finish, next_largest)
	end

	def largest_palindrome(n, m, start..finish, largest) when m <= finish do
		largest_palindrome(n, m+1, start..finish, largest)
	end

	def largest_palindrome(_, _, _, largest) do
		largest
	end

end
