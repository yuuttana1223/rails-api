# https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server

# RAMを消費
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
# CPUを消費
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)
threads threads_count, threads_count
# ワーカープロセスの起動時間が短縮
preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3001
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  ActiveRecord::Base.establish_connection
end