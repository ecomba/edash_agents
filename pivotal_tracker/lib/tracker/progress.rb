module Edash::Agents::Pivotal::Tracker
  class Progress
    attr_reader :state

    include Api

    def initialize(xml)
      @state = from(xml).extract_element('//stories//story//current_state')
    end
  end
end
