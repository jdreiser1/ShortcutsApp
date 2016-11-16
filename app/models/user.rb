class User < ApplicationRecord
  has_many :favorites
  has_many :hotkeys, through: :favorites
  def get_sorted_favorites
    @sort_favorites = {}
    programs = []
    self.favorites.each do |favorite|
      if !(programs.include?(favorite.hotkey.program))
        programs << favorite.hotkey.program
      end
    end
    user = self
    programs.each do |program|
      hotkeys = []
      user.favorites.each do |favorite|
        if program.name == favorite.hotkey.program.name
          hotkeys << favorite.hotkey
        end
      end
      @sort_favorites[program] = hotkeys
    end
    @sort_favorites
  end
end
