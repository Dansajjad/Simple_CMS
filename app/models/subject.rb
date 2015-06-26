class Subject < ActiveRecord::Base

has_many :pages

	# validates :subject, presence => { :message => "***Subject can't be blank***" }
 	# validates_presence_of :subject
end
