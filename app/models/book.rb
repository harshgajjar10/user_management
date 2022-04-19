class Book < ApplicationRecord
  ##Favourite book
  acts_as_favoritable

  ##Association
  has_many :books_categories, dependent: :destroy
  has_many :category, through: :books_categories
  belongs_to :author

  ##Search records
  def self.search(book)
    if book
     where("name LIKE ?", "%#{book}%")
    else
      all
    end
  end
end
