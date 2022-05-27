class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '店長' },
    { id: 3, name: 'ディレクター' },
    { id: 4, name: 'トップスタイリスト' },
    { id: 5, name: 'スタイリスト' },
    { id: 6, name: 'アシスタント' }
  ]

  include ActiveHash::Associations
  has_many :staffs
end
