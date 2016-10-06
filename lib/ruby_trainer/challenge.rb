module RubyTrainer
  class Challenge

    def self.build(&block)
      new(&block)
    end

    def initialize(&block)
      instance_eval(&block) if block
    end

    def help(value=nil)
      return @help if @help
      @help = value
    end

    def test(&value)
      return @test if @test
      @test = value
    end

    def success_message(value=nil)
      return @success_message if @success_message
      @success_message = value
    end

    def error_message(value=nil)
      return @error_message if @error_message
      @error_message = value
    end
  end
end
