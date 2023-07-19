require "windfield-master/windfield"
local Movement = {}

function Movement.Movement(player)
    local moveSpeed = player.Speed
    local playerx,playery = player.collider:getLinearVelocity()
    if love.keyboard.isDown("a") and playerx > -300 then
       player.collider:applyLinearImpulse(-moveSpeed,0)
    end
    if love.keyboard.isDown("d") and playery < 300 then
       player.collider:applyLinearImpulse(moveSpeed,0)
    end
    
 end
 return Movement