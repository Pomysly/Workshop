class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_one :pedigree, dependent: :destroy


  validates_presence_of :title

   def average_rating
   	if self.reviews.size > 0
   		self.reviews.average(:rating) 
   	else
        "no ratings yet"
    end
   end
end
