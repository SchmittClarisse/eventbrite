class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances
    belongs_to :admin, class_name: "User", foreign_key: "user_id"

    validates :start_date, :title, :description, :price, :location, :duration, presence: true
    validates :title, length: { minimum: 5, maximum: 140 }
    validates :description, length: { minimum: 20, maximum: 1000 }
    validates :price, length: { minimum: 1, maximum: 1000 }
    validate :start_date_cannot_be_in_the_past
    validate :duration_positive_and_multiple_of_five
end