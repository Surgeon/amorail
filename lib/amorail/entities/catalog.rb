require 'amorail/entities/leadable'

module Amorail
  # AmoCRM contact entity
  class Catalog < Amorail::Entity
    include Leadable
    amo_names 'catalogs'

    amo_field :name

    validates :name, presence: true

    # Clear company cache
    def reload
      @company = nil
      super
    end
    
  end
end
