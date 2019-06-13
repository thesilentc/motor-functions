class User < ApplicationRecord

    
has_secure_password


has_many :hosts
has_many :hats, through: :hosts


def user
end

end
