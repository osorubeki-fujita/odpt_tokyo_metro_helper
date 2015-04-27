module OdptTokyoMetroHelper::StringExt

  def process_machine_dependent_character
    super().process_kouji
  end

  def revive_machine_dependent_character
    super().revive_kouji
  end

  protected

  # 環境依存文字「麴」を「麹」に変換するメソッド
  # @return [String]
  def process_kouji
    gsub( ::OdptTokyoMetroHelper::RegexpLibrary.kojimachi , "麹町" )
  end

  def revive_kouji
    gsub( ::OdptTokyoMetroHelper::RegexpLibrary.kojimachi , "麴町" )
  end

end