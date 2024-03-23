#require "./lib/card.rb"

class Turn
    attr_reader :guess,
                :card

    def initialize(guess, card)
        @guess = guess
        @card = card
        #@flag = nil
    end
        
    def correct?
        if @card.answer == @guess
            @flag = true
        else
            @flag = false
        end
    end

    def feedback
        if @flag == true
            "Correct!"
        else
            "Incorrect."
        end
    end
end