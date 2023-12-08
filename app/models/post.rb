class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 200 }
end
