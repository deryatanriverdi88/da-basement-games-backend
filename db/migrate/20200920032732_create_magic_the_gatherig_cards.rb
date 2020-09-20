class CreateMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    create_table :magic_the_gatherig_cards do |t|
      t.string :name
      t.string :img_url
      t.string :price
      t.string :cmc
      t.string :collector_number
      t.string :color
      t.boolean :foil
      t.string :artist
      t.string :lang
      t.string :mana_cost
      t.string :rarity
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
