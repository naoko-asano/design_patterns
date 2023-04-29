require_relative "./pikachu"

# 単体のコマンドを実行
pikachu = Pikachu.new

pikachu.attack { puts "サンダーボルト!100のダメージを与える!" }
pikachu.attack { puts "電光石火!80のダメージを与える!!" }
pikachu.attack { puts "しっぽをふる!10のダメージを与える!" }

## 連続したコマンド
# continuous_command = ContinuousCommand.new
# continuous_command.add_command(thunderbolt_command)
# continuous_command.add_command(quick_attack_command)
# continuous_command.add_command(tail_whip_command)
# pikachu.attack(continuous_command)
