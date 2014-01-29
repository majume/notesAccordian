class Patient < ActiveRecord::Base
	has_many :pnotes, dependent: :destroy
end
