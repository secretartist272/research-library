class Subject < ApplicationRecord
    validates :genre, uniqueness: true, presence: true
    validates :subject, presence: true
    belongs_to :user
    belongs_to :research

end
