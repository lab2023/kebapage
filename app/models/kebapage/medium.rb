module Kebapage
  class Medium < ActiveRecord::Base
    has_attached_file :attachment,
                      :styles => { large: '640x480#', thumb: '320x240#' },
                      :url => '/system/kebapage/foto_:id.:extension',
                      :path => ':rails_root/public:url'

    validates_attachment_size :attachment, :less_than => 0..512.kilobytes
    validates_attachment_content_type :attachment, :content_type => %w(image/jpeg image/jpg image/png application/pdf)

    Paperclip.interpolates :uniq_file_name do |attachment, style|
      attachment.instance.uniq_file_name
    end

    def uniq_file_name
      Digest::SHA1.hexdigest(id.to_s)
    end
  end
end
