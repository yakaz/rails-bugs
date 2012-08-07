class CreateHostClasses < ActiveRecord::Migration
  def change
    create_table :host_classes do |t|
      t.references :host
      t.references :puppetclass
    end
    add_index :host_classes, :host_id
    add_index :host_classes, :puppetclass_id
  end
end
