class CreateContactCustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_customs do |t|
      t.text :value
      t.references :contact, foreign_key: true
      t.references :custom, foreign_key: true

      t.timestamps
    end
  end
end
