module Kebapage
  class Medium < ActiveRecord::Base
    has_attached_file :attachment
  end
end
