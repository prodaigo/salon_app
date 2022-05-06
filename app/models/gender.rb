class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'MENS' },
    { id: 3, name: 'LADIES' }
  ]

  include ActiveHash::Associations
  has_many :hair_styles
end