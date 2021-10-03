# This function was generated by ArmorstandAnimator
scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/press/start
execute if score @s AsaMatrix matches 1 run function asa_animator:zinogre/anim/press/keyframes/0
execute if score @s AsaMatrix matches 1..8 run tp @s ^0 ^0.025 ^-0.05
execute if score @s AsaMatrix matches 9 run function asa_animator:zinogre/anim/press/keyframes/1
execute if score @s AsaMatrix matches 9..15 run tp @s ^0 ^0.02857143 ^-0.01428571
execute if score @s AsaMatrix matches 16 run function asa_animator:zinogre/anim/press/keyframes/2
execute if score @s AsaMatrix matches 16..20 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 21 run function asa_animator:zinogre/anim/press/keyframes/3
execute if score @s AsaMatrix matches 21..24 run tp @s ^0 ^0.075 ^0.625
execute if score @s AsaMatrix matches 25 run function asa_animator:zinogre/anim/press/keyframes/4
execute if score @s AsaMatrix matches 25..28 run tp @s ^0 ^-0.175 ^0.5
execute if score @s AsaMatrix matches 29 run function asa_animator:zinogre/anim/press/keyframes/5
execute if score @s AsaMatrix matches 29..32 run tp @s ^0 ^-0.05 ^0.25
execute if score @s AsaMatrix matches 33 run function asa_animator:zinogre/anim/press/keyframes/6
execute if score @s AsaMatrix matches 33..45 run tp @s ^0 ^0 ^0.07692308
execute if score @s AsaMatrix matches 46 run function asa_animator:zinogre/anim/press/keyframes/7
execute if score @s AsaMatrix matches 46..50 run tp @s ^0 ^0 ^0
execute if score @s AsaMatrix matches 51 run function asa_animator:zinogre/anim/press/keyframes/8
execute if score @s AsaMatrix matches 51..60 run tp @s ^0 ^0.02 ^-0.2
execute if score @s AsaMatrix matches 61.. run function asa_animator:zinogre/anim/press/end
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate
function asa_animator:zinogre/model

# 角度調整
execute if score @s AsaMatrix matches 1..20 run function asa_animator:zinogre/manager/rotate

# 攻撃
execute if score @s AsaMatrix matches 21 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.5
execute if score @s AsaMatrix matches 27 positioned ^ ^ ^2 unless entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/press/events/damage
execute if score @s AsaMatrix matches 27 positioned ^ ^ ^2 if entity @s[tag=IsThunder] run function asa_animator:zinogre/anim/press/events/damage_thunder
execute if score @s AsaMatrix matches 27 positioned ^ ^ ^2 run particle block grass ~ ~ ~ 1.5 0 1.5 0 20
