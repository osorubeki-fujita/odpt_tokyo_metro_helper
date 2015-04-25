module OdptTokyoMetroHelper::StringExt

  def process_specific_letter
    str = super
    str.process_kouji
  end

  protected

  # 「麹」を機種依存文字「麴」に変換するメソッド
  # @return [String]
  def process_kouji
    gsub( ::OdptTokyoMetroHelper::RegexpLibrary.kojimachi , "麴町" )
  end

end