# require 'rails_helper'

# RSpec.describe "books/index", type: :view do
#   before(:each) do
#     assign(:books, [
#       Book.create!(
#         title: "Title",
#         author: "Author",
#         description: "MyText",
#         genre: "Genre",
#         # string: "String",
#         book_in_series: "Book In Series",
#         # integer: "Integer"
#       ),
#       Book.create!(
#         title: "Title",
#         author: "Author",
#         description: "MyText",
#         genre: "Genre",
#         # string: "String",
#         book_in_series: "Book In Series",
#         # integer: "Integer"
#       )
#     ])
#   end

#   it "renders a list of books" do
#     render
#     assert_select "tr>td", text: "Title".to_s, count: 2
#     assert_select "tr>td", text: "Author".to_s, count: 2
#     assert_select "tr>td", text: "MyText".to_s, count: 2
#     assert_select "tr>td", text: "Genre".to_s, count: 2
#     # assert_select "tr>td", text: "String".to_s, count: 2
#     assert_select "tr>td", text: "Book In Series".to_s, count: 2
#     # assert_select "tr>td", text: "Integer".to_s, count: 2
#   end
# end
