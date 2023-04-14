require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        description: "MyText",
        genre: "Genre",
        book_in_series: 2
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        description: "MyText",
        genre: "Genre",
        book_in_series: 2
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Genre".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
