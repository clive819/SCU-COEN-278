require 'dm-core'
require 'dm-migrations'


class User
  include DataMapper::Resource
  property :username, String, key: true, unique_index: true
  property :password, String, required: true
  property :totalWin, String, required: true
  property :totalLoss, String, required: true
end
