class Custom < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  has_many :contact_customs
  has_many :contacts, through: :contact_customs

end
