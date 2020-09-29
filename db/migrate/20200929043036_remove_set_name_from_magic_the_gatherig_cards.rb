class RemoveSetNameFromMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :magic_the_gatherig_cards, :set_name, :string
  end
end
