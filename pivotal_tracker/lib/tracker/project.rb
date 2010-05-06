module Edash::Agents::Pivotal::Tracker
  class Project
    attr_reader :name

    include Api

    def initialize(xml)
      @name = from(xml).extract_element('project/name')
    end
  end
end
