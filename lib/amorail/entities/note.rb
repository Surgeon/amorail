# require 'amorail/entities/leadable'

module Amorail
  # AmoCRM contact entity
  class Note < Amorail::Entity
    # include Leadable
    amo_names 'notes'

    amo_field :element_id, :element_type, :note_type, :text

    # validates :name, presence: true

    # Clear company cache
    # def reload
    #   @company = nil
    #   super
    # end

  end
end
