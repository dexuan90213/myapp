class Article < ApplicationRecord
  acts_as_paranoid

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
