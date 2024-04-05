class SongPart < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Lead' },
    { id: 3, name: '1st' },
    { id: 4, name: '2ed' },
    { id: 5, name: '3rd' },
    { id: 6, name: 'Bass' },
    { id: 7, name: 'V.P.' },
]

include ActiveHash::Associations
has_many :parts

end