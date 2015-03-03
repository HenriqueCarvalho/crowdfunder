class Pledge < ActiveRecord::Base
  belongs_to :funding_level
  validates :funding_level, :name, :email, presence: true
  validates :amount, numericality: { 
  	only_integer: true, 
  	greater_than: 0 
  }, presence: true
end
