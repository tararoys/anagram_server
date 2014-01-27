get '/:word' do
  # Look in app/views/index.erb
  test_word = params[:word]
  @anagrams = []

  Word.all.each do |word|
    check_word = word.word
    if test_word.chomp.downcase.split("").sort.join == check_word.chomp.downcase.split("").sort.join
      @anagrams << word
    end
  end

  puts @anagrams.inspect

 "show a list of anagrams for #{params[:word]}"
 erb :index
end



