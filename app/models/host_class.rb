class HostClass < ActiveRecord::Base
  belongs_to :host
  belongs_to :puppetclass
  # attr_accessible :title, :body
end
