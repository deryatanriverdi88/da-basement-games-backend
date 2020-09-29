class RemoveTypeLineFromMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :magic_the_gatherig_cards, :type_line, :string
  end
end
