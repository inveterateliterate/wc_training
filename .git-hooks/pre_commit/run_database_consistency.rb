module Overcommit::Hook::PreCommit
  class RunDatabaseConsistency < Base
    def run
      command = `bundle exec database_consistency`
      result = execute(command)
      result.empty? ? :pass : [:fail, result]
    end
  end
end
