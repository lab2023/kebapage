module Kebapage
  class Medium < ActiveRecord::Base
    has_attached_file :attachment, use_timestamp: false

    validates_attachment_size :attachment, less_than: 5.megabytes
    validates_attachment_content_type :attachment, content_type: ['image/jpeg', 'image/png', 'application/pdf']
  end
end
