class Custom < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  has_many :contact_customs

end
