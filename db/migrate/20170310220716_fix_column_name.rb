class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :customs, :kind, :kind_id
  end
end
