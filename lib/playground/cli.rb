require 'thor'
require 'Playground'

module Playground
  class Cli < Thor
    desc 'generate <input.markdown> <output.playground>', 'Generate a playground'
    def generate(input, output)
      Generator.new.generate(input, output)
    end

    desc 'new [output.playground]', 'Generate an empty playground and open it in Xcode'
    option :ios
    def new(path=nil)
      platform = options[:ios] ? "iphonesimulator" : "macosx"
      Generator.new.generate_empty(path, platform)
    end
  end
end
