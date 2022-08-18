class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :comment
  validates :movie_id, presence: true
  validates :list_id
end
