require "odpt_tokyo_metro_helper/version"

require "active_support"
require "active_support/concern"
require "odpt_common"

require "odpt_tokyo_metro_helper/string_ext"
require "odpt_tokyo_metro_helper/regexp_library"

module OdptTokyoMetroHelper

  extend ::ActiveSupport::Concern

  included do

    [ :String ].each do | class_name |
      eval <<-INCLUDE
        ::#{ class_name }.class_eval do
          include ::OdptTokyoMetroHelper::#{ class_name }Ext
        end
      INCLUDE
    end

  end

end

include OdptTokyoMetroHelper