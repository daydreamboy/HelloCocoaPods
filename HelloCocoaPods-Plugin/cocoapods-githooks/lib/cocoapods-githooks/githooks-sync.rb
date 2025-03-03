require 'cocoapods'
require 'fileutils'
require 'colored2'

module CocoapodsGitHooks
  class GitHooksSync
    def sync
      Pod::UI.puts "[GitHooks]Synchronizing git hooks"
      
      if !File.directory?(".git")
        #Pod::UI.puts "Git repository not found"
        puts "[GitHooks]Git repository not found".red
        return
      end

      if !File.directory?(".git-hooks")
        #Pod::UI.puts ".git-hooks folder not found, nothing to sync"
        puts "[GitHooks].git-hooks folder not found, nothing to sync".red
        return
      end

      if Dir['.git-hooks/*'].empty?
        #Pod::UI.puts ".git-hooks folder is empty, nothing to sync"
        puts "[GitHooks].git-hooks folder is empty, nothing to sync".red
        return
      end

      if !File.directory?(".git/hooks")
        FileUtils.mkdir ".git/hooks"
      end

      FileUtils.cp_r(".git-hooks/.", ".git/hooks/")
      path = ".git/hooks/"

      Dir.open(path).each do |p|
        filename = File.basename(p, File.extname(p))
        if File.extname(p) == ".sh"
          FileUtils.mv("#{path}/#{p}", "#{path}/#{filename}")
        end
        FileUtils.chmod("+x", "#{path}/#{filename}")
      end
      #Pod::UI.puts "[GitHooks]Git hooks synchronized"
      puts "[GitHooks]Git hooks synchronized".green
    end
  end
end