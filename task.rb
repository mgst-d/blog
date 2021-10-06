f = File.open "text.txt", "r"
h = {}

f.each_line do |s|
  a = s.split(/\s|\n|\.|,|\-| /)
  a.each do |a1|
    #if h.keys.include? a1
      h[a1] = h[a1].to_i + 1 if a1 != ''
    #else
    #  h[a1] = 1
    #end
  end
end

i = 0
h.each do |k, v|
   i = v if v > i
end
while i > 0 do
  h.each do |k, v|
    puts "#{v} #{k}-->" if v == i
  end
  i = i - 1
end
#puts i
f.close
