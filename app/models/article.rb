class Article < ActiveRecord::Base
  belongs_to :category

  require :title, :content

  scope :alphabetical, -> { order('title') }
  scope :active, -> { where(active: true) }
end
