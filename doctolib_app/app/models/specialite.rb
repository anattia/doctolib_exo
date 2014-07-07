class Specialite
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :name, type: String
  field :slug, type: String

  
  has_many :specialite

  validates :name, presence: true, uniqueness: true

  before_create :generate_slug

  def self.find_by_slug slug
    where(slug: slug).first
  end

  private

  def generate_slug
    self.slug = self.name.parameterize
  end

  scope :alpha, -> { order(name: :asc) }
end
