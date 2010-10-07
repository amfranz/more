class Less::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/more_tasks.rake'
  end
end
