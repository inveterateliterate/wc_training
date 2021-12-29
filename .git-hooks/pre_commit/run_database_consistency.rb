module Overcommit::Hook::PreCommit
  class RunDatabaseConsistency < Base
    def run
      # errors = []

      errors = `bundle exec database_consistency`

      return :fail, errors.join("\n") unless errors.empty?

      :pass
    end
  end
end
