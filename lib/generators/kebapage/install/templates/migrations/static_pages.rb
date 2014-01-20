class CreateKebapageStaticPages < ActiveRecord::Migration
  def change
    create_table :kebapage_static_pages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
