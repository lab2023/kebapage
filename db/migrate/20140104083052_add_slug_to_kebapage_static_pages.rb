class AddSlugToKebapageStaticPages < ActiveRecord::Migration
  def change
    add_column :kebapage_static_pages, :slug, :string
    add_index :kebapage_static_pages, :slug
  end
end
