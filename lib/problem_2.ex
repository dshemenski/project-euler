defmodule Problem_2 do
	defmodule Naive do
		require Integer

		def solution(limit) do
			solution(1,2,0,limit)
		end
		
		def solution(curr, next, sum, limit) when next >= limit do
			sum
		end

		def solution(curr, next, sum, limit) when Integer.even?(next) do
			solution(next, curr+next, sum+next, limit)
		end

		def solution(curr, next, sum, limit) do
			solution(next, curr+next, sum, limit)
		end
	end
end
