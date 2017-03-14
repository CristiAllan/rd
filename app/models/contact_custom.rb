class ContactCustom < ApplicationRecord
  has_one :contact
  has_one :custom
end
