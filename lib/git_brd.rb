require "git_brd/version"
require 'logger'
require 'git'

module GitBrd
  class BranchExecutioner
  	def initialize(regex_str)
  		@regex 	= /"#{regex_str}"/
  		@git 		= Git.open(Dir.pwd, :log => ::Logger.new(STDOUT))
  	end

  	def matching_branches
  		@git.branches.local
  	end
  end
end