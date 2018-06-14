use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"{Y=)NGr0DB:U<n7zs{5sc1MY^hB,5^@>He,(IfBqD3QDj/}to&Ep^Y%G?,=&_/fD"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"uRr~~f{:H0h!pUR*`f!,8A2bZ1esyz_UQXV1A6m)Iu^KP[9dp9PEEH0a8FI9f@^6"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :gigatester do
  set version: current_version(:gigatester)
end

