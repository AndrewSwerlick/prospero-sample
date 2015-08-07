require 'reform/form/coercion'
require 'tod'

module EventWizard
  class Schedule < Prospero::Form
    include Coercion

    property :date, virtual: true, type: DateTime
    property :start, virtual: true
    property :event_end, virtual: true
    property :location

    def save
      sync
      super do |f|
        @model.when = start.on date
        @model.duration = Tod::Shift.new(start, event_end).duration
      end
    end

    def start=(value)
      super Tod::TimeOfDay.parse value
    end

    def end=(value)
      super Tod::TimeOfDay.parse value
    end

  end
end
