require "rails_helper"

describe "Book Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating book" do
      book = Book.new(description: "Content of the description", author:"test")
      expect(book.valid?).to eq(false)
    end
    it "should not be able to save project when title missing" do
      book = Book.new(description: "Some description content goes here", author:"test")
      expect(book.save).to eq(false)
    end
    it "ensures the author is present when creating book" do
      book = Book.new(description: "Content of the description", title:"test")
      expect(book.valid?).to eq(false)
    end
    it "should not be able to save project when author missing" do
      book = Book.new(description: "Content of the description", title:"test")
      expect(book.save).to eq(false)
    end
    it "ensures the description is present when creating book" do
      book = Book.new(title: "New title", author:"test")
      expect(book.valid?).to eq(false)
    end
    it "should not be able to save project when description missing" do
      book = Book.new(title: "New title", author:"test")
      expect(book.save).to eq(false)
    end
    it "should be able to save project when have description, title and author" do
      book = Book.new(title: "Title", description: "Content of the description", author:"testAuthor")
      expect(book.save).to eq(true)
    end
  end
end

describe "Project Attribute Requirements on Edit", :type => :model do
  context "Edit project" do  
    before (:each) do
      @book = Book.create(title: "Title", description: "Content of the description", author:"Test author")
 
      end
    it "ensures the title is present when editing project" do
      @book.update(:title => "New Title")
      expect(@book.title == "New Title")
    end
    it "ensures the description is present when editing project" do
      @book.update(:description => "New description")
      expect(@book.description == "New description")
    end
    it "ensures the author is present when editing project" do
      @book.update(:author => "New author")
      expect(@book.description == "New description")
    end
  end
end