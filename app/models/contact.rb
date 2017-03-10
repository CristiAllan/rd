class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_customs
  
  accepts_nested_attributes_for :contact_customs


end
