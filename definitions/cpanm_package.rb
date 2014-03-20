define :cpanm_package, :sudo => true, :packages => [] do
  if 0 == params[:packages].size
    log "no package to install" do
        message "no package to install"
        level :info
    end
    return
  end
  command_string = "#{node['cpanm']['install_path']}/cpanm #{params[:packages].join(" ")}"
  if params[:sudo]
    command_string = command_string + " --sudo"
  end
  # execute cpanm install command
  execute command_string 
end
