class Book < ApplicationRecord
    validates :bookname, :author, :quantity, presence: true
end
