class Calc < ActiveRecord::Base
  attr_accessible :aastad, :aktsia_nimi, :hind, :kogus, :protsent
  
  validates :aastad, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0,:less_than_or_equal_to => 100}
  validates :aktsia_nimi, :presence => true, :length => {:minimum => 1}
  validates :hind, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 10000000}
  validates :kogus, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 , :less_than_or_equal_to => 100000000}
  validates :protsent, :presence => true, :numericality => { :less_than_or_equal_to => 100, :greater_than_or_equal_to => 0 }
  
  def arvuta
    puts "jei"
  end
end
