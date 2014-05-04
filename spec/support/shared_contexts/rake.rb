# allows us to test rake tasks
# add include_context "rake" inside of your describe block
# the describe string should be the name of your rake task

# i.e. if we want to test rake my_rake_task:do_stuff
# our describe block should look like:
#
# describe "my_rake_task:do_stuff" do
#   include_context "rake"
#   ...
#
# to run the rake task
# rake_task.invoke
#
# Got code from: http://robots.thoughtbot.com/test-rake-tasks-like-a-boss

require "rake"

shared_context "rake" do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "lib/tasks/#{task_name.split(":").first}" }
  let(:rake_task) { rake[task_name] }

  def loaded_files_excluding_current_rake_file
    $".reject { |file| file == Rails.root.join("#{task_path}.rake").to_s }
  end

  before do
    Rake.application = rake
    Rake.application.rake_require(task_path, [Rails.root.to_s], loaded_files_excluding_current_rake_file)

    Rake::Task.define_task(:environment)
  end
end
