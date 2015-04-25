# -*- coding: utf-8 -*-

require 'spec_helper'
require 'deployer'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = "0.1.8"

describe OdptTokyoMetroHelper do
  it "has a version number \'#{ version }\'" do
    expect( ::OdptTokyoMetroHelper::VERSION ).to eq( version )
    expect( ::Deployer.version_check( ::OdptTokyoMetroHelper::VERSION , spec_filename ) ).to eq( true )
  end

  it "has a method \#process_specific_letter" do
    expect( "池袋".process_specific_letter ).to eq( "池袋" )
    expect( "麹町".process_specific_letter ).to eq( "麴町" )
  end

end