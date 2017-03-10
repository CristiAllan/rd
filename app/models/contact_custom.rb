class ContactCustom < ApplicationRecord
  belongs_to :contact
  belongs_to :custom
  has_many :contact_customs
end
