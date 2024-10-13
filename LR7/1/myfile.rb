# frozen_string_literal: true

# this class is dealing with a file
class MyFile
  def self.reverse(from_file, to_file)
    from_file.readlines.each { |str| to_file.write(str.chomp.reverse, "\n") }
  end
end
