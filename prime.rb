# Add  code here!
def makeFloats(integers) # Take in an array [of integers]
  # Create an empty array to store output
  floats = []
  # Iterate over each value in old array
  integers.each do |integer|
    # Convert integer to float and push to new array
    floats.push(integer.to_f)
  end
  # Return completed array
  floats
end

def checkFactors(integer) # Take in an integer
  # Create an array of [float] factors up to (but not including) integer
  factors = makeFloats((2...integer).to_a)
  # Iterate over array checking each value
  factors.each do |factor|
    # If quotient is in range, return false
    if factors.include?(integer/factor)
      return false
    end
  end
  # If not in range, return true
  true
end

# Prime
def prime?(integer)
  # Check if integer is 1
  integer == 1 ? false :
  # Check if integer is less than 4
  integer < 4 ? true :
  # Check if other factors exist
  checkFactors(integer)
end
