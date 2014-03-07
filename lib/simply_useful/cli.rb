# CLI utilities

module SimplyUseful
  module Cli
    def run(cmd, env = nil, opts = {})
      args = []
      args << env unless env.nil?
      args << cmd

      puts("Running #{opts[:orig_cmd] || cmd}...")
      system(*args)
    end

  end
end
