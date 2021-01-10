class User < ApplicationRecord
    has_secure_password
    
    validates :name, presence: true
    validates :email, presence: true 
    validates :age, presence: true
    validates :password_digest, presence: true, length: {in: 6..15}
end
