class Program < ApplicationRecord
  has_many :hotkeys, dependent: :destroy
end
