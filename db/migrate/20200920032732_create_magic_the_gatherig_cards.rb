class CreateMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    create_table :magic_the_gatherig_cards do |t|
      t.string :name
      t.string :img_url
      t.integer :category_id
      t.integer :product_id
      t.integer :group_id
      t.string :rarity
      t.string :sub_type
      t.string :price
      t.string :color
      t.string :text
      t.boolean :foil
      t.string :mana_cost
      t.boolean :reprint
      t.boolean :reserved
      t.string :set
      t.string :set_type
      t.string :set_name
      t.string :type_line

      t.timestamps
    end
  end
end
