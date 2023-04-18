class Book < ApplicationRecord
    has_and_belongs_to_many :favorited_by_users, class_name: "User"
end
