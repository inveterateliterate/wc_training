module Overcommit::Hook::PreCommit
  class RunDatabaseConsistency < Base
    def run
      errors = `bundle exec database_consistency`
      errors.empty? ? :pass : [:fail, errors.join("\n")]
    end
  end
end
