class Research < ApplicationRecord
    has_many :users, through: :subject
    has_many :subjects, through: :user

    validators :title, presence: true, uniquesness: true
    validators :description, presence: true, length: {255..30,000}

end
