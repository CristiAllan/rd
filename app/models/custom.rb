class Custom < ApplicationRecord
  belongs_to :user
  belongs_to :kind
  has_many :contact_customs

  #enum kind: [text: 1, textarea: 2, comboBox: 3]
end
