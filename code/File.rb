class ParseFile

  def open_file
    File.open("test1.txt", "r") do |infile|
      while (top = infile.gets)
        middle=infile.gets
        bottom=infile.gets
        blank_line=infile.gets
        parse_entry(top,middle,bottom)
      end
    end
  end
  
  def parse_entry(top,middle,bottom)
    i=0
    while i<top.size-1
      print get_char(top[i,3],middle[i,3],bottom[i,3])
      i+=3
    end
    print"\n"
  end
  
  def get_char(top,middle,bottom)
    if top==" _ " && middle="| |" && bottom="|_|"
      return 0
    elsif top=="   " && middle=="  |" && bottom=="  |"
      return 1
    elsif top==" _ " && middle==" _|" && bottom=="|_ "
      return 2
    elsif top==" _ " && middle==" _|" && bottom==" _|"
      return 3
    elsif top=="   " && middle=="|_|" && bottom=="  |"
      return 4
    elsif top==" _ " && middle=="|_ " && bottom==" _|"
      return 5
    elsif top==" _ " && middle=="|_ " && bottom=="|_|"
      return 6
    elsif top==" _ " && middle=="  |" && bottom=="  |"
      return 7
    elsif top==" _ " && middle=="|_|" && bottom=="|_|"
      return 8
    elsif top==" _ " && middle=="|_|" && bottom==" _|"
      return 9
    end
  end
end
ParseFile.new().open_file