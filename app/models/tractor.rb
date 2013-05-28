class Tractor < ActiveRecord::Base
  attr_accessible :arrival, :bonus, :cost, :model, :serial, :stock, :year
  
  #def model
   #read_attribute(:model)
  #end
  
  #def year
   #read_attribute(:year).year
  #end
end
