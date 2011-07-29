class Account
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :short_name, :type => String
  field :website, :type => String
  validates :name, :presence => true
  validates :short_name, :presence => true
end
