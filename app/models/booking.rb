class Booking < ApplicationRecord
    belongs_to :flight 
    has_many :passengers
    accepts_nested_attributes_for :passengers, reject_if: :reject_passengers

    def reject_passengers(attributes)
        attributes['name'].blank? || attributes['email'].blank?
    end
end
