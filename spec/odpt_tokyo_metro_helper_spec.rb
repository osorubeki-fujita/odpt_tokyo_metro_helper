require 'spec_helper'
require 'deplo'

spec_filename = ::File.expand_path( ::File.dirname( __FILE__ ) )
version = ::File.open( "#{ ::File.dirname( __FILE__ ) }/../.current_version" , "r:utf-8" ).read.chomp

describe OdptTokyoMetroHelper do
  it "has a version number \'#{ version }\'" do
    expect( ::Deplo.version_check( ::OdptTokyoMetroHelper::VERSION , spec_filename ) ).to eq( true )
  end
end

describe String do

  it "is converted by method \'process_machine_dependent_character\'" do
    expect( "麴町".process_machine_dependent_character ).to eq( "麹町" )
    expect( "池袋".process_machine_dependent_character ).to eq( "池袋" )
    expect( "渋谷".process_machine_dependent_character ).to eq( "渋谷" )
    expect( "明治神宮前〈原宿〉".process_machine_dependent_character ).to eq( "明治神宮前〈原宿〉" )
    expect( "押上〈スカイツリー前〉".process_machine_dependent_character ).to eq( "押上〈スカイツリー前〉" )
  end

  it "is converted by method \'revive_machine_dependent_character\'" do
    expect( "麹町".revive_machine_dependent_character ).to eq( "麴町" )
    expect( "池袋".revive_machine_dependent_character ).to eq( "池袋" )
    expect( "渋谷".revive_machine_dependent_character ).to eq( "渋谷" )
    expect( "明治神宮前〈原宿〉".revive_machine_dependent_character ).to eq( "明治神宮前〈原宿〉" )
    expect( "押上〈スカイツリー前〉".revive_machine_dependent_character ).to eq( "押上〈スカイツリー前〉" )
  end

end
