module RubyTrainer
  module Shell

    attr_writer :challenges

    def next_challenge
      @challenge_counter += 1
      if current_challenge
        puts current_challenge.help
      end
    end

    def before_loop
      super
      @challenge_counter = -1
      next_challenge
    end

    def loop_once
      super
      user_input = @error_raised ? @error : @result
      test_succeeded = repl_self.instance_exec(user_input, &current_challenge.test)
      if test_succeeded
        puts current_challenge.success_message if test_succeeded
        next_challenge
      else
        puts current_challenge.error_message
      end
    end

    def current_challenge
      challenges[@challenge_counter]
    end

    def repl_self
      eval('self', @binding)
    end

    def after_loop
      super
    end

    def challenges
      @challenges ||= []
    end
  end
end
