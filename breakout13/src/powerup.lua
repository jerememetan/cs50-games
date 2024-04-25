Powerup = Class{}


function Powerup:init(skin)
    self.x = 0
    self.y = 0

    self.dy = 25
    self.width = 16
    self.height = 16
    self.skin = skin
    self.inPlay = false
end

function Powerup:update(dt)
    if self.inPlay then
      self.y = self.y + self.dy * dt
    end


    if self.y > VIRTUAL_HEIGHT - 16 and self.inPlay then
         gSounds['no-select']:play()
    self.inPlay = false
     end



end

function Powerup:collides(target)
    -- first, check to see if the left edge of either is farther to the right
    -- than the right edge of the other
    if self.x > target.x + target.width  or target.x > self.x + self.width then
        return false
    end

    -- then check to see if the bottom edge of either is higher than the top
    -- edge of the other
    if self.y > target.y + target.height or target.y > self.y + self.height then
        return false
    end 

    -- if the above aren't true, they're overlapping
    return true
end

function Powerup:hit()
    gSounds['recover']:play()
   
end


function Powerup:render()

    love.graphics.draw(gTextures['main'], gFrames['powerups'][self.skin],
     self.x, self.y)

end