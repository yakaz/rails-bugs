class CreateLookupKeys < ActiveRecord::Migration
  def change
    create_table :lookup_keys do |t|
      t.string :key
      t.string :default_value
      t.references :puppetclass

      t.timestamps
    end
    add_index :lookup_keys, :puppetclass_id
  end
end
