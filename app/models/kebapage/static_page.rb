require 'friendly_id'

module Kebapage
  class StaticPage < ActiveRecord::Base
    validates :title, :content, presence: true
    extend FriendlyId
    friendly_id :title, use: :slugged
  end
end
