class MusicImporter
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end

  def files
    names = Dir.entries(@path)
    return names.select{|x| x.match(/.*3/) != nil}
  end

  def import
    files.each do |file_data|
      Song.create_from_filename(file_data)
    end
  end 

end