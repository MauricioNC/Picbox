module ImagesHelper
  def get_img_secure_identifier
    str_arr = [*'a'..'z', *'A'..'Z', *'0'..'9'].shuffle.join
    ini_index_substr = Random.rand(0..(str_arr.length-10))
    end_index_sub = ini_index_substr+10
    str_arr[ini_index_substr..end_index_sub]
  end
end
