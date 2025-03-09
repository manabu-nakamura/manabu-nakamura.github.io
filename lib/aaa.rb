# frozen_string_literal: true

module Jekyll
  class UpcaseConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.md$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
#      content.gsub!(/<blockquote>(.*?)<\/blockquote>/m, '<pre>\1</pre>')
      content.gsub!(/<blockquote>\s*<p>(.*?)<\/p>\s*<\/blockquote>/m, '<pre>\1</pre>')
      content
    end
  end
end
