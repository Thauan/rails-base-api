class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, :recoverable, :rememberable,
         :validatable, jwt_revocation_strategy: JwtDenylist
end
