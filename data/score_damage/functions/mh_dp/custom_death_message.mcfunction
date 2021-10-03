
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=D_ZinogreHand] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に叩きのめされた"}]
execute if entity @s[tag=D_ZinogreTackle] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に吹き飛ばされた"}]
execute if entity @s[tag=D_ZinogrePress] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に押しつぶされた"}]
execute if entity @s[tag=D_ZinogreShot] run tellraw @a [{"selector":"@s"},{"text": "は雷光弾に射抜かれた"}]
execute if entity @s[tag=D_ZinogreTail] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜の尻尾に吹き飛ばされた"}]

kill @s
execute if score #default_gamemode AsaMatrix matches 1.. run gamerule showDeathMessages true