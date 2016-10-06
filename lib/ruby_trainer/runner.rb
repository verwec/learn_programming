require 'rubygems'
require 'bundler/setup'
require 'ripl'

require 'ruby_trainer/commands'
require 'ruby_trainer/shell'
require 'ruby_trainer/challenge'
require 'ruby_trainer/challenge_builder'

Ripl::Shell.include RubyTrainer::Shell
Ripl::Commands.include RubyTrainer::Commands
Ripl.shell.challenges = RubyTrainer::ChallengeBuilder.all
Ripl.start
