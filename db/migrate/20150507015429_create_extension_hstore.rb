class CreateExtensionHstore < ActiveRecord::Migration
  def change
    create_table :extension_hstores do |t|
      enable_extension "hstore"
    end
  end
end
