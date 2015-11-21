require 'esa_cli'
require 'thor'
require 'esa'

module EsaCli
  class Client < Thor
    desc "GET teams", "show belonging teams"
    def teams
      client = Esa::Client.new(access_token: ENV["ESA_ACCESS_TOKEN"])
      teams = client.teams.instance_variable_get(:@raw_body)["teams"]
      puts "TEAM      DESC"
      teams.each do |team|
        desc = "none" if team["description"].nil? || team["description"] == ""
        puts "#{team["name"]}    #{desc}"
      end
    end
  end
end
