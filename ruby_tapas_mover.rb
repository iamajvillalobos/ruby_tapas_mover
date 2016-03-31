# This class responsibility is to transfer all the video files
# in their designated directory

class RubyTapasMover

  NON_VIDEO_FILES_DIR = "non_video_files"
  VIDEO_FILES_DIR = "video_files" 

  def run
    Dir["#{VIDEO_FILES_DIR}/*.mp4"].each do |video_file|
      filename = File.basename(video_file)
      filename_abs = File.absolute_path(video_file)
      file_prefix = filename.split(" ")[0]
      file_prefix.delete!("_") if file_prefix.include?("_")
      prepare_transfer(filename, filename_abs, file_prefix)
    end
  end

  def prepare_transfer(filename, filename_abs, file_prefix)
    directories = Dir.glob("#{NON_VIDEO_FILES_DIR}/*").select { |f| File.directory? f }
    directories.each do |directory|
      foldername = directory.split("/")[1]
      folder_prefix = foldername.split("_")[0]
      transfer(filename, filename_abs, folder_prefix, file_prefix, directory)
    end
  end

  def transfer(filename, filename_abs, folder_prefix, file_prefix, directory)
    if folder_prefix == file_prefix
      FileUtils.mv filename_abs, "#{directory}/#{filename}"
      puts "Transfer #{filename}"
    end
  end
end

RubyTapasMover.new.run
