# This is an example software definition for a Ruby project.
#
# Lots of software definitions for popular open source software
# already exist in `opscode-omnibus`:
#
#  https://github.com/opscode/omnibus-software/tree/master/config/software
#
name "kafka-rb"
version "59eeb12dfb70f2aec2519d098b3941766920e147"

dependency "ruby"
dependency "rubygems"

relative_path "#{name}"

source :git => "git://github.com/ops-baidu/#{name}.git"

build do
  gem "build #{name}.gemspec"
  gem "install -l #{source_dir}/#{name}/#{name}-*.gem"
  command "rm -rf #{source_dir}/#{name}"
end
