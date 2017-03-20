class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_customs
  has_many :customs, through: :contact_customs
  
  accepts_nested_attributes_for :contact_customs

  validates :name, :email, presence: true

end
