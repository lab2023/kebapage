module Kebapage
  class Medium < ActiveRecord::Base
    has_attached_file :attachment,
                      :styles => Rails.configuration.kebapage.attachment_styles,
                      :url => Rails.configuration.kebapage.attachment_url,
                      :path => Rails.configuration.kebapage.attachment_path

    validates_attachment_size :attachment, :less_than => Rails.configuration.kebapage.attachment_max_size
    validates_attachment_content_type :attachment, :content_type => Rails.configuration.kebapage.attachment_content_type

    Paperclip.interpolates :uniq_file_name do |attachment, style|
      attachment.instance.uniq_file_name
    end

    def uniq_file_name
      Digest::SHA1.hexdigest(id.to_s)
    end
  end
end
