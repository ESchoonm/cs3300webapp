require 'rails_helper'

RSpec.describe "bookrakes/show", type: :view do
  before(:each) do
    @bookrake = assign(:bookrake, Bookrake.create!(
      db: "",
      Book: "Book"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Book/)
  end
end
