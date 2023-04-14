require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "Title",
      author: "Author",
      description: "MyText",
      genre: "Genre",
      string: "String",
      book_in_series: "Book In Series",
      integer: "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/String/)
    expect(rendered).to match(/Book In Series/)
    expect(rendered).to match(/Integer/)
  end
end
