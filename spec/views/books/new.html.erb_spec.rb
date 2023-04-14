require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      title: "MyString",
      author: "MyString",
      description: "MyText",
      genre: "MyString",
      string: "MyString",
      book_in_series: "MyString",
      integer: "MyString"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[genre]"

      assert_select "input[name=?]", "book[string]"

      assert_select "input[name=?]", "book[book_in_series]"

      # assert_select "input[name=?]", "book[integer]"
    end
  end
end
