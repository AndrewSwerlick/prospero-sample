module EventWizard
  include Prospero::Wizard

  configuration do
    route_namespace :events

    step :create
    step :schedule
    step :attendees
  end
end
