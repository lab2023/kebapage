module Kebapage
  class Photo < ActiveRecord::Base
    belongs_to :static_page
    has_attached_file :photo
  end
end
