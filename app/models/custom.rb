class Custom < ApplicationRecord
  belongs_to :user
  has_many :contact_customs

  enum kind: [:texto, :areaTexto, :comboBox]
end
