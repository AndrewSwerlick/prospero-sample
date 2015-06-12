module EventWizard
  include Prospero::Wizard

  configuration do
    step :create
    step :schedule
    step :attendees
  end


end
