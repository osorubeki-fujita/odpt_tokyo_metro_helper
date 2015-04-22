module OdptTokyoMetroHelper::RegexpLibrary

  class << self

    # 機種依存文字「麴」を処理するための正規表現
    # @note 機種依存文字によるエラーを避ける目的で、DB内に「麹町」として格納されている文字列を「麴町」に変換する。
    # @return [Regexp]
    def kojimachi
      /(?:麹|麴)町/
    end

  end

end