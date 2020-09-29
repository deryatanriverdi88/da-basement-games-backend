class RemoveSetTypeFromMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :magic_the_gatherig_cards, :set_type, :string
  end
end
