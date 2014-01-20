class CreateKebapagePhotos < ActiveRecord::Migration
  def change
    create_table :kebapage_photos do |t|
      t.attachment :photo
      t.references :static_page, index: true

      t.timestamps
    end
  end
end
