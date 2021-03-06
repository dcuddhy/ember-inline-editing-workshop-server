require 'pp'
class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body

  has_one :user, except: [:comments, :posts]
  has_many :comments, except: [:post]
end
