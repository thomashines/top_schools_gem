class TopSchools::CLI
  # attr_accessor :all, :descriptions

  def call
    @all = TopSchools::School.schools
    @descriptions = TopSchools::School.descriptions
    list_schools
    menu
  end

  def list_schools
    puts ""
    puts "Top Online Code Schools"
    puts ""
    puts @all
    menu
  end

  def menu
    puts ""
    puts "Enter the number of the school you'd like to explore. Type 'list' to relist the schools, or type 'exit' to quit."
    input = gets.strip
    if input.to_i > 0 && input.to_i < 13
      puts ""
      puts @all[input.to_i - 1]
      puts @descriptions[input.to_i - 1]
      menu
    elsif input == "list"
      list_schools
    elsif input == "exit"
      goodbye
    else
      puts ""
      puts "Incorrect input. Try again."
      sleep(1)
      list_schools
    end
  end

  def goodbye
    puts ""
    puts "Goodbye!"
    exit
  end

end
