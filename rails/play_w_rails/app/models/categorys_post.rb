class CategorysPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :category

  def self.or(other)
    if present?
      self
    else
      other
    end
  end
end
