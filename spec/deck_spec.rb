require "./lib/card.rb"
require "./lib/turn.rb"
require "./lib/deck.rb"

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Deck do
    it 'exists' do
        deck = Deck.new(@cards)
        
        expect(deck).to be_instance_of(Deck)
    end

    it "can count cards" do
        deck = Deck.new([1, 2, 3])

        expect(deck.count).to be(3)
    end

    it "can group cards by category" do
        deck = Deck.new([card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)])

        expect(deck.cards_in_category(:STEM)).to be([])
    end

end

