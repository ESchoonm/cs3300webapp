require 'rails_helper'

RSpec.describe "bookrakes/index", type: :view do
  before(:each) do
    assign(:bookrakes, [
      Bookrake.create!(
        db: "",
        Book: "Book"
      ),
      Bookrake.create!(
        db: "",
        Book: "Book"
      )
    ])
  end

  it "renders a list of bookrakes" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Book".to_s, count: 2
  end
end
