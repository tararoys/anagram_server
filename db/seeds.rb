
File.readlines("#{APP_ROOT}/db/words.txt").each do |line|
  Word.create(:word => line)
end
