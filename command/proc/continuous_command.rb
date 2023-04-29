class ContinuousCommand
  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  def remove_command(command)
    @commands.delete(command)
  end

  def execute
    @commands.each { |command| command.execute }
  end
end
