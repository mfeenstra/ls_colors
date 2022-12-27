#!/usr/bin/env ruby

File.read('./ls_colors.sh').gsub("LS_COLORS='", '').tr("'",'').split(':').map { |e| (e.tr("'",'') =~ /^(.+)=(.+)$/) ? (print `echo -e "\033[#{$2}m #{$1}\033[00m"`.chomp; print " \t";) : (puts 'N/A') }
