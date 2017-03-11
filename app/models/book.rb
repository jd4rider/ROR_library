class Book < ApplicationRecord
	belongs_to :subject, required: false
  validates_presence_of :title
  validates_numericality_of :price, :message=>"Error Message"
end
