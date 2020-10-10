class MagicTheGatherigCard < ApplicationRecord
    has_many :favorite_cards

    def self.default_order
        order('id ASC')
    end

    def self.group_order
        order('group_id ASC')
    end

    def self.name_order
        order('name ASC')
    end
end
