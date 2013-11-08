# This is an example software definition for a Ruby project.
#
# Lots of software definitions for popular open source software
# already exist in `opscode-omnibus`:
#
#  https://github.com/opscode/omnibus-software/tree/master/config/software
#
name "fluent-plugin-kafka"
version "ecff754de76253264eb42cd3826585712db8c80f"

dependency "rubygems"
dependency "fluentd"
dependency "kafka-rb"

source :git => "git://github.com/ops-baidu/#{name}.git"

relative_path "#{name}"

build do
  gem "build #{name}.gemspec"
  gem "install -l #{source_dir}/#{name}/#{name}-*.gem"
  command "rm -rf #{source_dir}/#{name}"
end
