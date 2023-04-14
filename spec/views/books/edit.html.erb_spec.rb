require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      author: "MyString",
      description: "MyText",
      genre: "MyString",
      string: "MyString",
      book_in_series: "MyString",
      integer: "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[genre]"

      assert_select "input[name=?]", "book[string]"

      assert_select "input[name=?]", "book[book_in_series]"

      assert_select "input[name=?]", "book[integer]"
    end
  end
end
