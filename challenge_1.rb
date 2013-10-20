# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================
# Your code to define the method goes here.
# =========================================

def pmt rate, nper, pv

	pmt = 0.0
	numerator = 0.0
	denominator = 0.0

	numerator = pv * rate * (1 + rate) ** nper

	denominator = ((1 + rate) ** nper) - 1

	pmt = numerator / denominator

	return pmt.round(2)


end



puts "Enter the interest rate"
rate = gets.chomp.to_f

puts "Enter the number of payments"
nper = gets.chomp.to_f

puts "Enter the principal value of the loan"
pv = gets.chomp.to_f

puts "Your monthly payment will be $#{pmt(rate, nper, pv)}."
#puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."