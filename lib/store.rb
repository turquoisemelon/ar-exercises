class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true }

  validate :mens_or_womens_apparel

  def mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add("Stores must carry at least one of the men's or women's apparel")
    end
  end

end
