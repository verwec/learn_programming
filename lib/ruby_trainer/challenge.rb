module RubyTrainer
  class Challenge

    def help
      "Bitte gib 1 + 1 ein"
    end

    def test
      Proc.new { |result| result == 2 }
    end

    def success_message
      "Sehr gut gemacht!"
    end

    def error_message
      "Bitte versuche es noch einmal"
    end
  end
end
