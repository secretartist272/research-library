class Research < ApplicationRecord
    has_many :users, through: :subject
    has_many :subjects, through: :user

    validations :title, presence: true, uniquesness: true
    validations :description, presence: true, length: {255..30,000}

end
