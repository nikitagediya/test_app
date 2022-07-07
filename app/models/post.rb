class Post < ApplicationRecord
    validates_presence_of :title, :body, :category
    # attr_accessor :title, :body, :category_id, :author_id
    belongs_to :category
end
