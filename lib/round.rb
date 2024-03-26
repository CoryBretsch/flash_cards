class Round
    attr_reader :deck,
                :turns,
                :number_correct,
                :total_cards,


    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = 0
        @total_cards = deck.cards.count
        @number_correct = 0
        @percent_correct = percent_correct
    end

    def current_card
        deck.cards[@current_card]
    end
    
    def take_turn(guess)
        Turn.new(guess, current_card)
        @number_correct += 1 if guess.correct?
        @current_card += 1
    end

    def number_correct_by_category(cat)
        cards_in_category(cat)
    end
end