require 'spec_helper'

describe "boarding_cards/edit" do
  before(:each) do
    @boarding_card = assign(:boarding_card, stub_model(BoardingCard))
  end

  it "renders the edit boarding_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boarding_card_path(@boarding_card), "post" do
    end
  end
end
