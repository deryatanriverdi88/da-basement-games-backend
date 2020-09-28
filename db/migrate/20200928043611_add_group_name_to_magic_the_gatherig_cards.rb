class AddGroupNameToMagicTheGatherigCards < ActiveRecord::Migration[6.0]
  def change
    add_column :magic_the_gatherig_cards, :group_name, :string
  end
end
