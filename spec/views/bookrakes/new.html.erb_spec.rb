require 'rails_helper'

RSpec.describe "bookrakes/new", type: :view do
  before(:each) do
    assign(:bookrake, Bookrake.new(
      db: "",
      Book: "MyString"
    ))
  end

  it "renders new bookrake form" do
    render

    assert_select "form[action=?][method=?]", bookrakes_path, "post" do

      assert_select "input[name=?]", "bookrake[db]"

      assert_select "input[name=?]", "bookrake[Book]"
    end
  end
end
