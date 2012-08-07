class Puppetclass < ActiveRecord::Base
  attr_accessible :name, :lookup_keys_attributes

  has_and_belongs_to_many :hosts, :join_table => 'host_classes'
  has_many :lookup_keys
  accepts_nested_attributes_for :lookup_keys, :allow_destroy => true

  def to_label
    name
  end
end
