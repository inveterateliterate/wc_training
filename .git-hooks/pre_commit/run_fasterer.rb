module Overcommit::Hook::PreCommit
  class RunFasterer < Base
    def run
      result = `bundle exec fasterer`
      num_offenses_str = result.split[-3]
      # red (fail): "\e[0;31;49m[num here]"
      # green(pass): "\e[0;32;49m[0]"
      num_offenses_str.include?("\e[0;32;49m") ? :pass : [:fail, result]
    end
  end
end
