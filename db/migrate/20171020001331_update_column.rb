# initial comment
class UpdateColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :price, :decimal, precision: 6, scale: 2
  end
end
