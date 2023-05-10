class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  include DeviseTokenAuth::Concerns::User
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end