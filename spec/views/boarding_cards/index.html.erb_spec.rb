require 'spec_helper'

describe "boarding_cards/index" do
  before(:each) do
    assign(:boarding_cards, [
      stub_model(BoardingCard),
      stub_model(BoardingCard)
    ])
  end

  it "renders a list of boarding_cards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
