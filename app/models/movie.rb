class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: bookmarks

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true

  # callbacks
  # before_destroy :check_for_bookmarkedness
  # def check_for_bookmarkedness
  #   status = true
  #   if self.bookmarks.count > 0
  #     self.errors[:deletion_status] = 'Cannot delete movies that are currently bookmarked.'
  #     status = false
  #   else
  #     self.errors[:deletion_status] = 'OK.'
  #   end
  #   status
  # end
end
