require 'rails_helper'

RSpec.describe "bookrakes/edit", type: :view do
  before(:each) do
    @bookrake = assign(:bookrake, Bookrake.create!(
      db: "",
      Book: "MyString"
    ))
  end

  it "renders the edit bookrake form" do
    render

    assert_select "form[action=?][method=?]", bookrake_path(@bookrake), "post" do

      assert_select "input[name=?]", "bookrake[db]"

      assert_select "input[name=?]", "bookrake[Book]"
    end
  end
end
