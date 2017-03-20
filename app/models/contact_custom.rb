class ContactCustom < ApplicationRecord
  belongs_to :contact, required: false
  belongs_to :custom

  accepts_nested_attributes_for :custom
end
