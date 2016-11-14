class Hotkey < ApplicationRecord
  belongs_to :program
  has_many :favorites
  has_many :users, through: :favorites
end
