require "git_brd/version"
require 'git'

module GitBrd
  class BranchExecutioner
  	def initialize(regex_str)
  		@regex 	= /#{regex_str}/
  		@git 		= Git.open(Dir.pwd)
  	end

  	def matching_branches
  		@matching_branches ||= @git.branches.local.select{ |branch| branch.name =~ @regex }
  	end

  	def delete_matching_branches!
  		matching_branches.each &:delete
  	end
  end
end