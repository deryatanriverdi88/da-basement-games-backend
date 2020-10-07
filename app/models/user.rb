class User < ApplicationRecord
    has_many :favorite_cards, dependent: :destroy
    has_many :magic_the_gatherig_cards, through: :favorite_cards
    has_secure_password

    validates :email, uniqueness: true
end
