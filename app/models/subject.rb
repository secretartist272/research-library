class Subject < ApplicationRecord
    validations :Genre, uniqueness: true, presence: true
    validations :subject, presence: true
    belongs_to :user
    belongs_to :research

end
