class Category < ApplicationRecord
  has_many :products, class_name: "Category", foreign_key: "parent_id"
  has_many :categories, class_name: "Category", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Category"
end
