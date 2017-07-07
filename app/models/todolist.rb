class Todolist < ApplicationRecord

    validates :item, presence: true

end
