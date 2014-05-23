defmodule Problem_1 do
	def sum_divisible_by(n, less_than) do
		p = div(less_than, n)
		n * div((p * (p+1)), 2)
	end
end
