class AddAttributeNameToMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    add_column :magic_the_gatherig_cards, :normal_low_price, :decimal
    add_column :magic_the_gatherig_cards, :normal_mid_price, :decimal
    add_column :magic_the_gatherig_cards, :normal_high_price, :decimal
    add_column :magic_the_gatherig_cards, :normal_market_price, :decimal
    add_column :magic_the_gatherig_cards, :foil_low_price, :decimal
    add_column :magic_the_gatherig_cards, :foil_mid_price, :decimal
    add_column :magic_the_gatherig_cards, :foil_high_price, :decimal
    add_column :magic_the_gatherig_cards, :foil_market_price, :decimal
  end
end
