class ContactCustom < ApplicationRecord
  belongs_to :contact
  belongs_to :custom

  accepts_nested_attributes_for :custom
end
