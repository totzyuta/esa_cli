require 'esa_cli'
require 'thor'
require 'esa'

module EsaCli
  class Client < Thor
    desc "GET teams", "show belonging teams"
    def teams
      client = Esa::Client.new(access_token: ENV["ESA_ACCESS_TOKEN"])
      p client.teams
    end
  end
end
