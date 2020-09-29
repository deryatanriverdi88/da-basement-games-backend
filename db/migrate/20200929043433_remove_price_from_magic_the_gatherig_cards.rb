class RemovePriceFromMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :magic_the_gatherig_cards, :price, :string
  end
end
