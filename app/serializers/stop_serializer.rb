class StopSerializer < ActiveModel::Serializer
  attributes :id, :name, :direction

  def stop_id
    object.remote_id
  end

  has_many :routes
end

