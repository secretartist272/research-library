class Subject < ApplicationRecord
    #validations
    validates :field_of_Study, uniqueness: true, presence: true
    

    #belongs to
    belongs_to :user
    belongs_to :research

end
