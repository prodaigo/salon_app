class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ベリーショート' },
    { id: 3, name: 'ショート' },
    { id: 4, name: 'ボブ' },
    { id: 5, name: 'ミディアム' },
    { id: 6, name: 'セミロング' },
    { id: 7, name: 'ロング' },
    { id: 8, name: 'スーパーロング' },
    { id: 9, name: 'ビジネス' },
    { id: 10, name: '大人' }
  ]

  include ActiveHash::Associations
  has_many :hair_styles
end