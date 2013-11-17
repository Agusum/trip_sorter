require 'spec_helper'

describe "boarding_cards/new" do
  before(:each) do
    assign(:boarding_card, stub_model(BoardingCard).as_new_record)
  end

  it "renders new boarding_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boarding_cards_path, "post" do
    end
  end
end
