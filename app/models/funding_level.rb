class FundingLevel < ActiveRecord::Base
  belongs_to :project
  has_many :pledges, dependent: :nullify

  #validates [:project,:reward_name,:amount, presence:true]

  validates :project, presence: true
  validates :reward_name, presence: true, length: { 
  	minimum: 2, 
	too_short: "must have at least %{count} words" 
  }
  validates :amount, presence: true, numericality: { 
  	only_integer: true, 
  	greater_than_or_equal_to: 0 
  }

end
