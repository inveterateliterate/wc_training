module Overcommit::Hook::PreCommit
  class EnsureRailsHelper < Base
    def run
      errors = []

      # rubocop:disable Style/Style/IfUnlessModifier
      applicable_files.each do |file|
        if File.read(file) !~ /^require 'rails_helper'/
          errors << "#{file}: missing `require 'rails_helper'`"
        end
      end

      return :fail, errors.join("\n") if errors.any?

      :pass
    end
  end
end
