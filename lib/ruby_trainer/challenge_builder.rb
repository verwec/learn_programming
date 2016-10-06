module RubyTrainer
  class ChallengeBuilder
    def self.all
      challenges = []

      challenges << RubyTrainer::Challenge.build do
        help 'For your first bit of Ruby, try typing some math, like: 2+6'
        success_message 'Success!'
        error_message 'Try again'
        test { |res| res == 8 }
      end

      challenges << RubyTrainer::Challenge.build do
        help 'Type your first name in quotes, like this: "Jimmy"'
        success_message 'Success'
        error_message 'Try again'
        test { |res| res.is_a?(String) && res.length > 0 }
      end

      challenges << RubyTrainer::Challenge.build do
        help 'Type: "Jimmy".reverse", using your own name where the string goes.'
        success_message 'Success'
        error_message 'Try again'
        test { |res| res.is_a?(String) && res.length > 0 }
      end

      challenges << RubyTrainer::Challenge.build do
        help 'Try typing "Jimmy".length using your name'
        success_message 'Success'
        error_message 'Try again'
        test { |res| res.is_a?(Fixnum) && res > 0 }
      end

      challenges << RubyTrainer::Challenge.build do
        help 'Let\'s get crazy now, and multiply your name by 5. Follow the following format: "Jimmy" * 5'
        success_message 'Success'
        error_message 'Try again'
        test { |res| res.is_a?(String) && res.length > 0 }
      end

      challenges
    end
  end
end
