class Project < ActiveRecord::Base
  has_many :funding_levels, dependent: :nullify
  
  validates :name, length: { 
    minimum: 2, 
    too_short: "must have at least %{count} words" 
  }, presence: true
  validates :description, presence: true
end
