#The player context here is the one who got hit
damage @s 1000 minecraft:generic

#Return the sword to the murderer's hand instantly
execute as @a[team=murderer] run function mm:throw_sword/give_throwable

#Remove the flying sword and hitbox
kill @e[tag=thrown_sword,limit=1,sort=nearest]
kill @e[tag=thrown_sword_hitbox,limit=1,sort=nearest]