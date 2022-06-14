class Order < ApplicationRecord
    has_one :cart 
end
 #needs attribute of checked out boolean for the current or 
 #if checked out is true 

 #User has many orders secure password