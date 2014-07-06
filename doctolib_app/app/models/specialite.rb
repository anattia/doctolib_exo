class Specialite
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  include Mongoid::Search 
  

  
  field :name_specialite, type: String


  search_in  :name_specialite

  has_many :professionnel



end
