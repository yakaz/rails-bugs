class Host < ActiveRecord::Base
  attr_accessible :name, :puppetclasses, :puppetclass_ids, :lookup_values_attributes
  has_and_belongs_to_many :puppetclasses, :join_table => 'host_classes'

  has_many :lookup_values, :dependent => :destroy,
    :finder_sql => Proc.new { |host| %Q{ SELECT * FROM `lookup_values` WHERE `lookup_values`.`matcher` = 'hostname=#{name}' } }
  accepts_nested_attributes_for :lookup_values, :allow_destroy => true

  def to_label
    name
  end
end
