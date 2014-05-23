defmodule Problem_3 do
	def solution(n) do
		solution(1,2,n)
	end

	def solution(last, _, 1) do
		last
	end

	def solution(_, curr, n) when rem(n, curr) == 0 do
		solution(curr, curr+1, divide_out(curr, div(n, curr)))
	end

	def solution(last, curr, n) do
		solution(last, curr+1, n)
	end

	def divide_out(curr, n) when rem(n, curr) == 0 do
		divide_out(curr, div(n, curr))
	end

	def divide_out(_, n) do
		n
	end
end
