# context "Login" do
#     scenario "should sign up" do
#       visit root_path
#       click_link 'Sign up'
#       within("form") do
#         fill_in "Email", with: "testing@test.com"
#         fill_in "Password", with: "123456"
#         fill_in "Password confirmation", with: "123456"
#         click_button "Sign up"
#       end
#       expect(page).to have_content("Welcome! You have signed up successfully.")
#     end


#     scenario "should log in" do
#       user = FactoryBot.create(:user)
#       login_as(user)
#       visit root_path
#       expect(page).to have_content("Logged in")
#     end
#   end

require "rails_helper"

RSpec.feature "Books", type: :feature do
    context "Update book" do
      let(:book) { Book.create(title: "Test title", description: "Test content") }
      before(:each) do
        visit edit_project_path(book)
      end
 
 
      scenario "should be successful" do
        within("form") do
          fill_in "Description", with: "New description content"
        end
        click_button "Update Book"
        expect(page).to have_content("Book was successfully updated")
      end
 
 
      scenario "should fail" do
        within("form") do
          fill_in "Description", with: ""
        end
        click_button "Update Book"
        expect(page).to have_content("Description can't be blank")
      end

      scenario "should fail" do
        within("form") do
          fill_in "Title", with: ""
        end
        click_button "Update Book"
        expect(page).to have_content("Title can't be blank")
      end
    end

    context "Create book" do
        before(:each) do
          visit new_project_path()
        end
  
        #senario given the project is successfully created
        scenario "should be successful" do
          within("form") do
            fill_in "Title", with: "title1"
            fill_in "Description", with: "content description"
          end
          click_button "Create Book"
          expect(page).to have_content("Book was successfully created.")
        end
  
        #senario given that the title can't be blank
        scenario "should fail" do
          within("form") do
            fill_in "Title", with: ""
            fill_in "Description", with: "content description"
          end
          click_button "Create Book"
          expect(page).to have_content("Title can't be blank")
        end
  
        #senario given that the description can't be blank
        scenario "should fail" do
          within("form") do
            fill_in "Title", with: "title1"
          end
          click_button "Create Book"
          expect(page).to have_content("Description can't be blank")
        end
  
      end
  
end

