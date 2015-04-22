module OdptTokyoMetroHelper::StringExt

  def process_specific_letter
    str = super
    str.process_kouji
  end

  private

  def process_kouji
    gsub( ::OdptTokyoMetroHelper::RegexpLibrary.kojimachi , "麴町" )
  end

end