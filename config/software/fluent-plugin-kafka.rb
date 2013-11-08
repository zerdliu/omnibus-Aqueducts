# This is an example software definition for a Ruby project.
#
# Lots of software definitions for popular open source software
# already exist in `opscode-omnibus`:
#
#  https://github.com/opscode/omnibus-software/tree/master/config/software
#
name "fluent-plugin-kafka"
version "0.0.1"

dependency "rubygems"
dependency "fluentd"

relative_path "#{name}"

build do
  command "git clone https://github.com/ops-baidu/#{name}.git"
  command "cd /var/cache/omnibus/src/#{name}"
  gem "build #{name}.gemspec"
  gem "install -l #{name}*.gemspec"
end
