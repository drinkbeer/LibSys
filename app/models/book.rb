class Book < ActiveRecord::Base
  validates :isbn, :presence => true, numericality: true, uniqueness: true
  validates :title, :presence => true
  validates :author, :presence => true
  validates :description, :presence => true
  #validates :status, :presence => true
end
