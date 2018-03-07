class GuitarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :string_brand, :string_guage, :last_string_change, :last_setup, :setup_notes
end
