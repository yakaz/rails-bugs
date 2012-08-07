class LookupKey < ActiveRecord::Base
  attr_accessible :puppetclass_id, :default_value, :key, :lookup_values_attributes

  belongs_to :puppetclass
  has_many :lookup_values
  accepts_nested_attributes_for :lookup_values, :allow_destroy => true

  def to_label
    puppetclass.try(:name) + " :: " + key
  end
end
