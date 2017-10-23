# initial comment
class RenameTypeToStyle < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :type, :style
  end
end
