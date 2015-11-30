class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :videourl
end
