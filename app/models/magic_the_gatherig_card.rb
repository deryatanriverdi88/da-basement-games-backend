class MagicTheGatherigCard < ApplicationRecord
    def self.default_order
        order('id ASC')
    end

    def self.group_order
        order('group_id ASC')
    end
end
