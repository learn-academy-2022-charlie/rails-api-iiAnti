class Animal < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :latin_name
    validates_presence_of :kingdom
    
end
