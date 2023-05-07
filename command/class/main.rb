# client
class Button
  attr_accessor :command
  def initialize(command)
    @command = command
  end

  def on_click
    @command.execute if @command
  end
end

# command
class CreateCommand
  def execute
    puts "作成します"
  end
end

# command
class SaveCommand
  def execute
    puts "変更を保存します"
  end
end

# command
class EditCommand
  def execute
    puts "編集します"
  end
end

# command
class DeleteCommand
  def execute
    puts "削除します"
  end
end

button = Button.new(CreateCommand.new)
button.on_click
button.command = SaveCommand.new
button.on_click
