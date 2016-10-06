module RubyTrainer
  class ChallengeBuilder
    def self.all
      challenges = []

      challenges << RubyTrainer::Challenge.build do
        help 'Enter 1 + 1'
        success_message 'Das hast du gut gemacht'
        test { |result| result == 2}
      end

      challenges
    end
  end
end
