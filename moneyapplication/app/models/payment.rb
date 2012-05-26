class Payment < ActiveRecord::Base
  attr_accessible :decim, :name, :reason, :value
end
