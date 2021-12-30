module Overcommit::Hook::PreCommit
  class RunFasterer < Base
    def run
      result = `fasterer`
      num_offenses = result.split[3].to_i
      puts result
      puts num_offenses
      num_offenses.zero? ? :pass : [:fail, result.join("\n")]
    end
  end
end
