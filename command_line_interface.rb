class Command_line_interface

  def ask_name
    puts "What's your name?"
    name = gets.chomp
    puts "Welcome #{name}!"
  end
end
