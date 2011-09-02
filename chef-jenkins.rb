current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "adam"
client_key               "/Users/adam/src/sandbox/opscode/environments/opscode-org/chef-repo/.chef/adam.pem"
chef_server_url          "https://api.opscode.com/organizations/opscode"
cache_type               'BasicFile'
cache_options( :path => "/tmp/.chef/checksums" )
cookbook_path            ["#{current_dir}/cookbooks"]
jenkins({
  :repo_dir => current_dir,
  :repo_url => 'git@github.com:adamhjk/jenkins-test-repo',
  :git_user => "Jenkins CI",
  :git_email => "adam+jenkins@opscode.com",
  :env_to => "development",
  :branch => "master"
})
