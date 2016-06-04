class RegistrationForMailingList < ActiveRecord::Base

validates :full_name, :presence => true
validates :email, :presence => true, :uniqueness => true
validates :class_of, :presence => true


end
