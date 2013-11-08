
name "Aqueducts"
maintainer "CHANGE ME"
homepage "CHANGEME.com"

replaces        "Aqueducts"
install_path    "/opt/Aqueducts"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

# Aqueducts dependencies/components
dependency "libyaml"
dependency "ruby"
dependency "fluentd"
dependency "kafka-rb"
dependency "fluent-plugin-kafka"
dependency "zookeeper"
dependency "consistent-hashing"

# version manifest file
dependency "version-manifest"

exclude "\.git*"
exclude "bundler\/git"
