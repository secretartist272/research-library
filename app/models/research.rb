class Research < ApplicationRecord
    has_many :users, through: :subject
    has_many :subjects, through: :user

    #validators :title, presence: true, uniqueness: true
    #validators :description, presence: true

end
