class VideoSerializer < ActiveModel::Serializer
  # attributes :id, :title, :thumbnail, :videourl
  attributes :id, :thumbnail, :videourl, :title, :category, :description

end
