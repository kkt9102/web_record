class Bulletin < ActiveRecord::Base
  has_many :boards, dependent: :destroy
end
