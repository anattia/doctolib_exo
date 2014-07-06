class Professionnel
  include Mongoid::Document
  include Mongoid::Timestamps::Short
  include Mongoid::Search 
  

  field :first_name, type: String
  field :last_name, type: String
  field :adresse, type: String
  field :city, type: String
  field :country, type: String
  field :specialite, type: String

  field :first_name
  validates_presence_of :first_name , :specialite
  validates_uniqueness_of :first_name

  search_in  :first_name, :specialite , :city, :last_name, :adresse, :country

  #belongs_to :specialite



end
