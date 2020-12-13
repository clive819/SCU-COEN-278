class Product < ApplicationRecord
    has_many :lineitems

    before_destroy :check

    validates :name, :description, :image, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :name, uniqueness: true
    validates :image,
        allow_blank: true,
        format: {
            with: %r{\.(gif|jpg|png|jpeg)\Z}i,
            message: 'must be GIF / JPG / PNG / JPEG images'
        }

    def check
        if self.lineitems.empty?
            return true
        else
            return false
        end
    end
end
