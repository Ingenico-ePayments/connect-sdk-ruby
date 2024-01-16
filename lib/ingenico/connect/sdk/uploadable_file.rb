module Ingenico
  module Connect
    module SDK
      # A file that can be uploaded
      #
      # The allowed forms of content are defined by the Connection implementation
      # The default implementation supports file paths and IO objects.
      #
      # @attr_reader [String] file_name       The name of the file.
      # @attr_reader [String, IO] content     The file's content.
      # @attr_reader [String] content_type    The file's content type.
      # @attr_reader [Integer] content_length The file's content length, or -1 if not known.
      class UploadableFile

        def initialize(file_name, content, content_type, content_length = -1)
          raise ArgumentError.new("file_name is required") if file_name.nil? or !file_name.strip
          raise ArgumentError.new("content is required") if content.nil?
          raise ArgumentError.new("content_type is required") if content_type.nil? or !content_type.strip

          @file_name = file_name
          @content = content
          @content_type = content_type
          @content_length = [content_length, -1].max
        end

        attr_reader :file_name
        attr_reader :content
        attr_reader :content_type
        attr_reader :content_length
      end
    end
  end
end
