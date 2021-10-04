
1.upto 100 do |i|
print i
if (i/3*3 == i) && (i/5*5 == i)
		puts ' FizzBuzz'
	elsif i/3*3 == i
		puts ' Fizz'
	elsif i/5*5 == i
		puts ' Buzz'
	else
		puts ''
end
end
