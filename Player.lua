local Player = {}

function Player:new()
    local obj = {
        Speed = 50,
        JumpPower = 5000,
        isJumping = false,
        collider = world:newRectangleCollider(350, 100, 80, 80)
    }

    -- Define the collision class "Player" before setting it for the collider
    world:addCollisionClass('Player')
    
    obj.collider:setCollisionClass('Player')
   
    
    obj.collider:setFixedRotation(true) -- To prevent rotation due to physics

    setmetatable(obj, self)
    self.__index = self
    return obj
end

return Player