require 'cocoapods-githooks/githooks-sync'

module Pod
  class Command
    # This is an example of a cocoapods plugin adding a top-level subcommand
    # to the 'pod' command.
    #
    # You can also create subcommands of existing or new commands. Say you
    # wanted to add a subcommand to `list` to show newly deprecated pods,
    # (e.g. `pod list deprecated`), there are a few things that would need
    # to change.
    #
    # - move this file to `lib/pod/command/list/deprecated.rb` and update
    #   the class to exist in the the Pod::Command::List namespace
    # - change this class to extend from `List` instead of `Command`. This
    #   tells the plugin system that it is a subcommand of `list`.
    # - edit `lib/cocoapods_plugins.rb` to require this file
    #
    # @todo Create a PR to add your plugin to CocoaPods/cocoapods.org
    #       in the `plugins.json` file, once your plugin is released.
    #
    class Githooks < Command
      self.summary = <<-SUMMARY
        Syncs hooks between team members
      SUMMARY

      self.description = <<-DESC
        CocoaPods plugins that syncs git-hooks placed in .git-hooks directory between team members
      DESC

      self.arguments = []

      def initialize(argv)
        #@name = argv.shift_argument
        super
      end

      def validate!
        super
        #help! 'A Pod name is required.' unless @name
      end

      def run
        Pod::UI.puts "[GitHooks]running command: pod githooks"
        CocoapodsGitHooks::GitHooksSync.new.sync()
      end
    end
  end
end
