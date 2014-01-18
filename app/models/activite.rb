class Activite < ActiveRecord::Base

 geocoded_by :adresse
 after_validation :geocode
 
end
