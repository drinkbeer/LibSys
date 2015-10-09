class SuggestBook < ActiveRecord::Base
  validates :isbn, :presence => true
  validates :title, :presence => true
  validates :author, :presence => true
  validates :description, :presence => true
end
