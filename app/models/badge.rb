# coding: utf-8
class Badge < ActiveRecord::Base
  belongs_to :badge_set

  attr_accessible :company, :name, :profession, :surname

  validates :badge_set, :existence => true 
  validates :name, :presence => true, :length => { :in => 2..30 } 
  validates :surname, :length => { :in => 2..30  }, :allow_blank => true 
  validates :company, :presence => true, :length => { :in => 3..30 } 
  validates :profession, :length => { :in => 3..30 }, :allow_blank => true 
end
