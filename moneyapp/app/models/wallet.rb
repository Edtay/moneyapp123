class Wallet < ActiveRecord::Base
	  validates :name,  :presence => true
      validates :value, :presence => true
      validates :reason, :presence => true  
      validates :decp, :presence => true           
end
