class SubstringFinder
  def initialize(string, substring)
    @string = string
    @substring = substring
  end

  def find_substring
    found = false  # used as a flag 
    
    for i in 0..(@string.length - @substring.length)
      match = true  # Assume a match is found initially

      # Check each character of the substring
      for j in 0...@substring.length
        if @string[i + j] != @substring[j]
          match = false  # Set false if there's a mismatch
          break  # Exit the inner loop on mismatch
        end
      end

      # If a match is found
      if match
        puts "Substring is found at index number: #{i+1}" # +1 add to give exact position .
        found = true  #  found
        break  # Exit the outer loop
      end
    end

    # Final check to notify if not found
    if !found
      puts "Substring is not found."
    end
  end
end

# Input
puts "Enter the string:"
string = gets.chomp

puts "Enter the substring to find in the given string:"
substring = gets.chomp

# Output and method call
finder = SubstringFinder.new(string, substring)
finder.find_substring
