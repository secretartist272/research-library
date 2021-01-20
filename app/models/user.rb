class User < ApplicationRecord
    has_secure_password
    
    #validations
    validates :name, presence: true
    validates :email, presence: true, format: /@/ 
    validates :age, presence: true
    #validates :password, presence: true, uniqueness: { case_sensitive: true }, length: {in: 6..20}

    #has_many and belongs_to
    has_many :research, through: :subjects
    has_many :subjects

    #method
    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.name = auth.info.name
          user.age = auth.info.age
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
    end
end
