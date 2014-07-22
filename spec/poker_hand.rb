require('rspec')
require('poker_hand')


describe('allergies') do
  it("gives a user a score based on what allergies they have") do
    allergies(72).should(eq(["pollen", "strawberries"]))
  end
end
