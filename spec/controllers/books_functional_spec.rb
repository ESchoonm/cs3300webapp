require "rails_helper"

RSpec.describe BooksController, :type => :controller do
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show" do
            let!(:book) { Book.create(title: "Test title", description: "Test description", author: "test author") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end


    end
end
