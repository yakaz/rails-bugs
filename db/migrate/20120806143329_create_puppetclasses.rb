class CreatePuppetclasses < ActiveRecord::Migration
  def change
    create_table :puppetclasses do |t|
      t.string :name

      t.timestamps
    end
  end
end
