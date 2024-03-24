require "./lib/card.rb"
require "./lib/turn.rb"

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Turn do
    it 'exists' do
        turn = Turn.new("Juneau", card = Card.new("What is the capital of Alaska?", "Juneau", :Geography))
        
        expect(turn).to be_instance_of(Turn)
    end

    it 'has a guess' do
        turn = Turn.new("Juneau", card = Card.new("What is the capital of Alaska?", "Juneau", :Geography))

        expect(turn.guess).to eq("Juneau")
    end

    it 'has a card' do
        turn = Turn.new("Juneau", card = Card.new("What is the capital of Alaska?", "Juneau", :Geography))
    
        expect(card).to be_instance_of(Card)
    end

    it "returns true" do
        turn = Turn.new("Juneau", card = Card.new("What is the capital of Alaska?", "Juneau", :Geography))

        expect(turn.correct?).to eq(true)

    end

    it "returns false" do
        turn = Turn.new("Saturn", card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM))

        expect(turn.correct?).to eq(false)
    end

    it "prints Correct!" do
        turn = Turn.new("Juneau", card = Card.new("What is the capital of Alaska?", "Juneau", :Geography))

        expect(turn.feedback).to eq("Correct!")
    end

    it "prints Incorrect." do
        turn = Turn.new("Saturn", card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM))

        expect(turn.feedback).to eq("Incorrect.")
    end

end