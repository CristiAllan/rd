class CreateCustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :customs do |t|
      t.string :name
      t.integer :kind
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
