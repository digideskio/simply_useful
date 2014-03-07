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

    def bundler_run(cmd, env = nil)
      opts = {orig_cmd: cmd}
      run("bundle exec #{cmd}", env, opts)
    end
  end
end
