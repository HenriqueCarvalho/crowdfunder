class FundingLevel < ActiveRecord::Base
  belongs_to :project
  validates :project, presence: true
  validates :reward_name, length: { 
  	minimum: 2, 
	too_short: "must have at least %{count} words" 
  }, presence: true
  validates :amount, numericality: { 
  	only_integer: true, 
  	greater_than: 0 
  }, presence: true
end
