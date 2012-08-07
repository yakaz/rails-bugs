class CreateLookupValues < ActiveRecord::Migration
  def change
    create_table :lookup_values do |t|
      t.string :value
      t.string :matcher
      t.references :lookup_key

      t.timestamps
    end
    add_index :lookup_values, :lookup_key_id
  end
end
