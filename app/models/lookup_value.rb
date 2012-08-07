class LookupValue < ActiveRecord::Base
  attr_accessible :lookup_key_id, :value, :matcher

  belongs_to :lookup_key

  def to_label
    lookup_key.to_label + " [" + matcher + "]"
  end
end
