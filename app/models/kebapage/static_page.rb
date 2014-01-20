require 'friendly_id'

module Kebapage
  class StaticPage < ActiveRecord::Base
    has_many :photos
    validates :title, :content, presence: true
    extend FriendlyId
    friendly_id :title, use: [:slugged, :history]

    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end
  end
end
