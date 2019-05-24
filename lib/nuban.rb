require "nuban/version"
require "nuban/core.rb"

module Nigerian
  class Nuban
    def self.generate_nuban(bankcode, serial)
      Core.decode(bankcode, serial)
    end
  end
end
