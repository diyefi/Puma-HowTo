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
require 'bluecloth'

class BuildDocs
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
  def read_order
    # placeholder, will read actual config file later
    { 'spin1' => [ 'links', 'intro', 'index' ] }[@proj_name]

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
  def write_html( content )
    File.open( @dst_path, 'w' ) do |f|
      f.write( content )
    end
  end
  def generate_html
    md_src = []
    read_order.each do |md_name|
      error("Missing reference: #{md_name}") unless @src.has_key?( md_name )
      md_src.push( @src[md_name] )
    end
    html = BlueCloth.new( md_src.join("\n\n") ).to_html
    write_html( html_tmpl.gsub( '__HTML__', html ) )
  end
  def initialize( src_path, dst_path )
    error("Missing source path: #{src_path}") unless File.exist?( src_path )
    unless File.exist?( dst_path )
      puts
      puts 'Destination path missing, creating:'
      puts dst_path
      puts
      Dir.mkdir( dst_path )
    end
    @src_path = src_path
    @proj_name = File.split( src_path )[1]
    @dst_path = File.expand_path( @proj_name+'.html', dst_path )
    @src  = {}
    puts
    puts 'Reading Markdown from:'
    puts @src_path
    puts
    read_markdown
    puts
    puts 'Writing html into:'
    puts @dst_path
    puts
    generate_html
  end
end

self_path = File.split( File.expand_path( __FILE__ ) ).first
src_path = File.expand_path( 'spin1', self_path )
dst_path = File.expand_path( 'html', self_path )
puts
puts 'Initializing FreeEMS Documentation Build'
puts
BuildDocs.new( src_path, dst_path )
puts
puts 'FreeEMS Documentation Build completed without errors.'
puts