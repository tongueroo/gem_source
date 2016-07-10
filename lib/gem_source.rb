require "gem_source/version"
require 'yaml'

module GemSource
  def self.gem(name, options={})
    base = case settings['where']
      when 'local'
        path = File.join(settings['path'], name)
        {path: path}
      when 'github'
        {github: name}
      else
        {}
      end
    base.merge(options)
  end

  @@settings = nil
  def self.settings
    path = "#{ENV['HOME']}/.gem_source.yml"
    @@settings ||= YAML.load(IO.read(path))
  rescue
    {
      'settings': nil
    }
  end
end
