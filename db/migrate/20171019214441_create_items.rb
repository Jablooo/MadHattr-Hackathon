class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :type
      t.string :name
      t.string :description
      t.string :image_data
      t.string :condition
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
