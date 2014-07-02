require 'thor'
require 'Playground'

module Playground
  class Cli < Thor
    desc 'generate [input.markdown] [output.playground]', 'Generate a playground'
    def generate(input, output)
      Generator.new.generate(input, output)
    end
  end
end
