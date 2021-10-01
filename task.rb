f = File.open "text.txt", "r"
h = {}

f.each_line do |s|
  a = s.split(/\s|\n|\.|,|\-/)
  a.each do |a1|
    #if h.keys.include? a1
      h[a1] = h[a1].to_i + 1
    #else
    #  h[a1] = 1
    #end
  end
end
h.each do |k, v|
  print "#{v} #{k}-->"
end

f.close
