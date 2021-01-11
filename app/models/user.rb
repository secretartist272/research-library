class User < ApplicationRecord
    has_secure_password
    
    #validations
    validates :name, presence: true
    validates :email, presence: true, format: /@/ 
    validates :age, presence: true
    validates :password, presence: true, uniqueness: { case_sensitive: true }, length: {in: => 6..20}

    #has_many and belongs_to
    has_many :research, through: :research_subjects
    has_many :research_subjects
end
