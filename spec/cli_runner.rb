# Breaks IntelliJ code completion.
#$:.unshift(File.dirname(__FILE__) + '/../lib')

require '../lib/simply_useful/cli'

include SimplyUseful::Cli

run('ls')
