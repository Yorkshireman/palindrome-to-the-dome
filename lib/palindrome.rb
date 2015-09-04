class PalindromeToTheDome

  def self.call(filename)

    palindromic_counter = 0


    lines_array = []
    File.readlines(filename).each do |line|
      lines_array << line
    end

    lines_array.each do |line|
      line = line.gsub(/\p{^Alnum}/, '').upcase

      palindromic_counter += 1 if (line == line.reverse)
    end
    palindromic_counter

  end

end
