namespace :prepify do
  desc "Upgrading user to teacher"
  task :promote => :environment do
    user = User.find_by(email: ENV["USER_EMAIL"])
    user.admin = true
    ap "#{user.username} has been promoted." if user.save
  end

  task :demote => :environment do
    user = User.find_by(email: ENV["USER_EMAIL"])
    user.admin = false
    ap "#{user.username} has been demoted." if user.save
  end
end
