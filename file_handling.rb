# Naive implementation
# The technique of having files manage their own life cycle is so useful that the class File supplied
# with Ruby supports it directly. If File.open has an associated block, then that block will be
# invoked with a file object, and the file will be closed when the block terminates. This is
# interesting because it means that File.open has two different behaviors. When called with a
# block, it executes the block and closes the file. When called without a block, it just returns the
# file object.

class File 
  def self.open_and_process(*args)
    f = File.open(*args)
    yield f
    f.close() # close the file when block returns
  end
end

File.open_and_process("testfile", "r") do |file|
  while line = file.gets
    puts line
  end
end


# World class implementation
class File
  def self.my_open(*args)
    file = File.new(*args)
    return file unless block_given?
    result = yield file
    file.close()
    result
  end
end
