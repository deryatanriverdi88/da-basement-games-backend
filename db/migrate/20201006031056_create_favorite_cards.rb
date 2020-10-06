class CreateFavoriteCards < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_cards do |t|
      t.string "name"
      t.string "img_url"
      t.integer "category_id"
      t.integer "product_id"
      t.integer "group_id"
      t.string "rarity"
      t.string "sub_type"
      t.string "color"
      t.string "text"
      t.boolean "foil"
      t.string "group_name"
      t.decimal "normal_low_price"
      t.decimal "normal_mid_price"
      t.decimal "normal_high_price"
      t.decimal "normal_market_price"
      t.decimal "foil_low_price"
      t.decimal "foil_mid_price"
      t.decimal "foil_high_price"
      t.decimal "foil_market_price"
      t.integer "amount"
      t.integer "user_id"
      t.timestamps
    end
  end
end
