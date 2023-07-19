

function love.load()
   camera = require "hump-master/camera"
   cam = camera()
   wf = require "windfield-master/windfield"
   world = wf.newWorld(0,9.81*64,true)
   local Player = require "Player"
   movement = require "Movement"
   ground = world:newRectangleCollider(100,400,600,100)
   ground:setType("Static")
   player = Player:new()
   -- This function is called once at the beginning of the game
   -- Add any initialization code here
end

function love.update(dt)
   
   world:update(dt)
   movement.Movement(player)
   Jump()
  cam:lookAt(player.collider:getPosition())
end
   -- This function is called every frame
   -- Add code to update game logic here

function love.draw()
   cam:attach()
      world:draw()
   cam:detach()
   -- This function is called every frame after love.update
   -- Add code to draw game objects here
end


function Jump()
   if love.keyboard.isDown("space") then
         player.collider:applyLinearImpulse(0,player.JumpPower*-1)
   end
end