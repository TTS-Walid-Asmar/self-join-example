class User < ActiveRecord::Base
  has_many :games

  has_many :opponents, through: :games

  has_many :others, class_name: "Game", foreign_key: "opponent_id"

  has_many :friends, through: :others, source: :user
end
