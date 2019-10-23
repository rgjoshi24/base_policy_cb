# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'base_policy_cb'

# Where to find external cookbooks:
default_source :supermarket
default_source :chef_server, "https://api.chef.io/organizations/cchmc-workshop"

default_source :supermarket, "https://supermarket.chef.io" do |s|
  s.preferred_for "chef-client", "audit"
end

# run_list: chef-client will run these recipes in the order specified.
run_list 'base_policy_cb::default'

# Specify a custom source for a single cookbook:
cookbook 'base_policy_cb', path: '.'
