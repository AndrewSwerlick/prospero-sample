module EventWizard
  class Schedule < Prospero::Form
    property :date, virtual: true
    property :start, virtual: true
    property :end, virtual: true
    property :location

  end
end
