module Guard

  # The runner defines is responsable to run all methods defined on each guards.
  #
  class Runner
  
    def depraction_warning
      
    end
    
    def run_on_changes(modified, added, removed)
      
    end
    
    def run_with_scopes(task, scopes)
      
    end
    
    def run(task)
      
    end
    
    # # Trigger `run_on_change` on all Guards currently enabled.
    # #
    # def run_on_change(files)
    #   run do
    #     run_on_guards do |guard|
    #       run_on_change_task(files, guard)
    #     end
    #   end
    # end
    # 
    # # Run a block where the listener and the interactor is
    # # blocked.
    # #
    # # @yield the block to run
    # #
    # def run
    #   UI.clear if options[:clear]
    # 
    #   lock.synchronize do
    #     begin
    #       interactor.stop if interactor
    #       yield
    #     rescue Interrupt
    #     end
    # 
    #     interactor.start if interactor
    #   end
    # end
    # 
    # # Loop through all groups and run the given task for each Guard.
    # #
    # # Stop the task run for the all Guards within a group if one Guard
    # # throws `:task_has_failed`.
    # #
    # # @param [Hash] scopes an hash with a guard or a group scope
    # # @yield the task to run
    # #
    # def run_on_guards(scopes = {})
    #   if scope_guard = scopes[:guard]
    #     yield(scope_guard)
    #   else
    #     groups = scopes[:group] ? [scopes[:group]] : @groups
    #     groups.each do |group|
    #       catch :task_has_failed do
    #         guards(:group => group.name).each do |guard|
    #           yield(guard)
    #         end
    #       end
    #     end
    #   end
    # end
    # 
    # # Run the `:run_on_change` task. When the option `:watch_all_modifications` is set,
    # # the task is split to run changed paths on {Guard::Guard#run_on_change}, whereas
    # # deleted paths run on {Guard::Guard#run_on_deletion}.
    # #
    # # @param [Array<String>] files the list of files to pass to the task
    # # @param [Guard::Guard] guard the guard to run
    # # @raise [:task_has_failed] when task has failed
    # #
    # def run_on_change_task(files, guard)
    #   paths = Watcher.match_files(guard, files)
    #   changes = changed_paths(paths)
    #   deletions = deleted_paths(paths)
    # 
    #   unless changes.empty?
    #     UI.debug "#{ guard.class.name }#run_on_change with #{ changes.inspect }"
    #     run_supervised_task(guard, :run_on_change, changes)
    #   end
    # 
    #   unless deletions.empty?
    #     UI.debug "#{ guard.class.name }#run_on_deletion with #{ deletions.inspect }"
    #     run_supervised_task(guard, :run_on_deletion, deletions)
    #   end
    # end
    # 
    # # Detects the paths that have changed.
    # #
    # # Deleted paths are prefixed by an exclamation point.
    # # @see Guard::Listener#modified_files
    # #
    # # @param [Array<String>] paths the watched paths
    # # @return [Array<String>] the changed paths
    # #
    # def changed_paths(paths)
    #   paths.select { |f| !f.respond_to?(:start_with?) || !f.start_with?('!') }
    # end
    # 
    # # Detects the paths that have been deleted.
    # #
    # # Deleted paths are prefixed by an exclamation point.
    # # @see Guard::Listener#modified_files
    # #
    # # @param [Array<String>] paths the watched paths
    # # @return [Array<String>] the deleted paths
    # #
    # def deleted_paths(paths)
    #   paths.select { |f| f.respond_to?(:start_with?) && f.start_with?('!') }.map { |f| f.slice(1..-1) }
    # end
    # 
    # # Run a Guard task, but remove the Guard when his work leads to a system failure.
    # #
    # # When the Group has `:halt_on_fail` disabled, we've to catch `:task_has_failed`
    # # here in order to avoid an uncaught throw error.
    # #
    # # @param [Guard::Guard] guard the Guard to execute
    # # @param [Symbol] task the task to run
    # # @param [Array] args the arguments for the task
    # # @raise [:task_has_failed] when task has failed
    # #
    # def run_supervised_task(guard, task, *args)
    #   catch guard_symbol(guard) do
    #     guard.hook("#{ task }_begin", *args)
    #     result = guard.send(task, *args)
    #     guard.hook("#{ task }_end", result)
    # 
    #     result
    #   end
    # 
    # rescue Exception => ex
    #   UI.error("#{ guard.class.name } failed to achieve its <#{ task.to_s }>, exception was:" +
    #            "\n#{ ex.class }: #{ ex.message }\n#{ ex.backtrace.join("\n") }")
    # 
    #   guards.delete guard
    #   UI.info("\n#{ guard.class.name } has just been fired")
    # 
    #   ex
    # end
    
  end
  
end