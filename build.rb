#!/usr/bin/env ruby
#
# Copyright 2011 Juha-Jarmo Heinonen <o@sorsacode.com>
# 
# This file is part of FreeEMS Documentation
# 
# FreeEMS Documentation is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your option)
# any later version.
# 
# FreeEMS Documentation is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public License along with
# FreeEMS Documentation. If not, see http://www.gnu.org/licenses/.
#

require 'rubygems'
begin
  require 'peg_markdown'
  MarkdownHandler = PEGMarkdown
rescue LoadError
  # warn "Unable to load rpeg-markdown, trying rdiscount instead.."
  begin
    require 'rdiscount'
    MarkdownHandler = RDiscount
  rescue LoadError
    # warn "Unable to load rdiscount, trying bluecloth instead.."
    gem 'bluecloth', '>= 2.1'
    require 'bluecloth'
    MarkdownHandler = BlueCloth
  end
end

require 'yaml'

class BuildDoc
  def error( text )
    puts
    puts "ERROR: #{text}"
    puts
    exit
  end
  def html_tmpl
    tmpl_path = File.expand_path( 'template.html', @src_path )
    error("Missing template: #{tmpl_path}") unless File.exist?( tmpl_path )
    File.read( tmpl_path )
  end
  def read_config
    config_path = File.expand_path( 'config.yaml', @src_path )
    @config = YAML.load_file( config_path )
  end
  def md_order
    @config['order']
  end
  def read_css
    css_path = File.expand_path( 'template.css', @src_path )
    @css = File.read( css_path )
  end
  def read_markdown
    Dir.entries( @src_path ).each do |md_file|
      next if md_file.start_with?('.')
      md_path = File.expand_path( md_file, @src_path )
      next unless File.file?( md_path )
      md_ext = File.extname( md_path )
      next unless ['.md','.markdown'].include?( md_ext )
      md_name = File.basename( md_path, md_ext )
      md_src = File.read( md_path )
      @src[md_name] = md_src
    end
  end
  def write_html
    File.open( @dst_path, 'w' ) do |f|
      f.write( @html )
    end
  end
  def build_img_box( width, height, src, title, md_src )
    html = MarkdownHandler.new( md_src ).to_html
    f_width = 440
    if width > f_width
      f_height = ((height/width.to_f)*f_width).round
      img_src = %{<img src="#{src}" width=#{f_width} height=#{f_height} title="#{title}" alt="#{title}">}
    else
      f_height = height
      img_src = %{<img src="#{src}" width=#{width} height=#{height} title="#{title}" alt="#{title}">}
    end
    outp = %{
<div class=imagebox style="min-height:#{f_height+20}px">
  <a class=pict href="#{src}">
    #{img_src}
    <div class=pict_title>#{title}</div>
  </a>
  <div class=text>
#{html}
  </div>
</div>
}
  end
  def init_re
    @img_box_re = /\/-- ([0-9]+)x([0-9]+) (.*?) \"(.*?)\"(.*?)--\//m
  end
  def extra_md
    @md_src.gsub!(@img_box_re) { build_img_box( $1.to_i, $2.to_i, $3, $4, $5 ) }
  end
  def process_template
    extra_md
    html_body = MarkdownHandler.new( @md_src ).to_html
    @html = html_tmpl.gsub(
      '__TITLE__', @title
    ).gsub(
      '__HTML__',  html_body
    ).gsub(
      '__CSS__', @css
    )
  end
  def set_title
    if @config.has_key?('title')
      @title = @config['title']
    else
      @title = @proj_name.capitalize
    end
  end
  def generate_html
    md_src = []
    md_order.each do |md_name|
      error("Missing reference: #{md_name}") unless @src.has_key?( md_name )
      md_src.push( %{<hr id="#{md_name}">})
      md_src.push( @src[md_name] )
    end
    @md_src = md_src.join("\n\n")
    set_title
    read_css
    process_template
    write_html
  end
  def initialize( src_path, dst_path )
    init_re
    error("Missing source path: #{src_path}") unless File.exist?( src_path )
    unless File.exist?( dst_path )
      Dir.mkdir( dst_path )
    end
    @src_path = src_path
    @proj_name = File.split( src_path )[1]
    @dst_path = File.expand_path( 'index.html', dst_path )
    read_config
    @src  = {}
    read_markdown
    generate_html
  end
end
class BuildDocs
  def initialize( base_path )
    dst_path = File.expand_path( 'html', base_path )
    doc_path = File.expand_path( 'doc', base_path )
    Dir.entries( doc_path ).each do |proj_name|
      next if proj_name.start_with?('.')
      src_path = File.expand_path( proj_name, doc_path )
      next unless File.directory?( src_path )
      build_dst = File.expand_path( proj_name, dst_path )
      unless File.directory?( build_dst )
        puts "no such destination: #{build_dst}"
        next
      end
      puts proj_name
      BuildDoc.new( src_path, build_dst )
    end
  end
end
BuildDocs.new( File.split( File.expand_path( __FILE__ ) ).first )
