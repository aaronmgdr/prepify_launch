namespace :prepify do
  desc "Upgrading user to teacher"
  task :promote => :environment do
    user = User.find_by(email: ENV["TARGET_USER"])
    user.admin = true
    ap "#{user.username} has been promoted." if user.save
  end

  task :demote => :environment do
    user = User.find_by(email: ENV["TARGET_USER"])
    user.admin = true
    ap "#{user.username} has been demoted." if user.save
  end

end
