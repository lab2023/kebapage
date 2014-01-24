module Kebapage
  class StaticPage < ActiveRecord::Base
    validates :title, :content, presence: true

    def to_param
      "#{id} #{title}".parameterize
    end
  end
end
