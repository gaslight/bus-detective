class RouteSerializer < ApplicationSerializer
  attributes :id, :short_name, :long_name, :color, :text_color
  has_one :agency
end

