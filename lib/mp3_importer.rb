require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    #Dir["#{path}/*"]
    #Dir.glob("*spec/*fix*/*/*")
    #Dir.glob("#{path}/*")
    #Dir.entries(path) includes subdirectories
    #Dir.entries(path).select {|f| !File.directory? f} removes ['.', '..']
    Dir.children(path)
  end
  
  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
end