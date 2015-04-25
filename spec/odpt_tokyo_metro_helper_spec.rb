require 'spec_helper'
require 'deployer'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = "0.1.7"

describe OdptTokyoMetroHelper do
  it "has a version number \'#{ version }\'" do
    expect( ::OdptTokyoMetroHelper::VERSION ).to eq( version )
    expect( ::Deployer.version_check( ::OdptTokyoMetroHelper::VERSION , spec_filename ) ).to eq( true )
  end
end