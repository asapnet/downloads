class Download < ActiveRecord::Base
  
  belongs_to :document
  
  validates_acceptance_of :license_agreement, :accept => true
  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message => "is invalid"
  
end
