module Overcommit::Hook::PreCommit
  class RunFasterer < Base
    def run
      result = `bundle exec fasterer`
      num_offenses_str = result.split[-3]
      # red (fail): "\e[0;31;49m[num here]"
      # green(pass): "\e[32m0"
      num_offenses_str == "\e[32m0" ? :pass : [:fail, result]
    end
  end
end
