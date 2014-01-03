module Kebapage
  class StaticPage < ActiveRecord::Base
    validates :title, :content, presence: true
  end
end
