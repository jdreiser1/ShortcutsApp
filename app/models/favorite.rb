class Favorite < ApplicationRecord
  belongs.to :user
  belongs.to :hotkey
end
