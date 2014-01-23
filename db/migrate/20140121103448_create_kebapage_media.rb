class CreateKebapageMedia < ActiveRecord::Migration
  def change
    create_table :kebapage_media do |t|
      t.attachment :attachment
    end
  end
end
