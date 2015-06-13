module EventWizard
  class Attendees < Prospero::Form
    collection :attendees do
      property :email_address, virtual: true
    end
  end
end
