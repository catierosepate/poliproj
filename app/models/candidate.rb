class Candidate < ActiveRecord::Base
  has_many :goals
  has_many :bios
end
