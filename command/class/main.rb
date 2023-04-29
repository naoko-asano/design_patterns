require_relative "./pikachu"
require_relative "./commands/thunderbolt_command"
require_relative "./commands/quick_attack_command"
require_relative "./commands/tail_whip_command"
require_relative "./continuous_command"

# 単体のコマンドを実行
pikachu = Pikachu.new
thunderbolt_command = ThunderboltCommand.new
quick_attack_command = QuickAttackCommand.new
tail_whip_command = TailWhipCommand.new

pikachu.attack(thunderbolt_command)
pikachu.attack(quick_attack_command)
pikachu.attack(tail_whip_command )

## 連続したコマンド
continuous_command = ContinuousCommand.new
continuous_command.add_command(thunderbolt_command)
continuous_command.add_command(quick_attack_command)
continuous_command.add_command(tail_whip_command)
pikachu.attack(continuous_command)
