class DietSerializer < ActiveModel::Serializer
  attributes :id, :type, :eligible_room_service, :eligible_accuchecks

end
