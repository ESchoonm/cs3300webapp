class Book < ApplicationRecord
    validates_presence_of :title, :description, :author
end
