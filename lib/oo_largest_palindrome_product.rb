class LargestPalindromeProduct 
    attr_accessor :answer, :input_1, :input_2

    def initialize
        @answer = palindrome_product 
        @input_1 = 0
        @input_2 = 0
    end
    
    def is_palindrome?(input)
        input.to_s == input.to_s.reverse 
    end

    def palindrome_product 
        max = 0 

        (100...999).each do |first|
            (100...999).each do |second|
                product = first * second 
                if is_palindrome?(product) && product > max 
                    self.input_1, self.input_2 = first, second 
                    max = product 
                end
            end
        end
        max 
    end

end