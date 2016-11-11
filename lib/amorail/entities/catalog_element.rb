# require 'amorail/entities/leadable'

module Amorail
  # AmoCRM catalog element entity
  class CatalogElement < Amorail::Entity
    # include Leadable
    amo_names 'catalog_elements'

    amo_field :name, :catalog_id, :custom_fields

    validates :name, presence: true

    # Clear company cache
    def reload
      @company = nil
      super
    end

  end
end
