require 'spec_helper'

describe "boarding_cards/show" do
  before(:each) do
    @boarding_card = assign(:boarding_card, stub_model(BoardingCard))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
