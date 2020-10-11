class CreateFavoriteCards < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_cards do |t|
      t.integer "magic_the_gatherig_card_id"
      t.integer "amount"
      t.boolean "foil"
      t.boolean 'normal'
      t.integer "user_id"
      t.timestamps
    end
  end
end
