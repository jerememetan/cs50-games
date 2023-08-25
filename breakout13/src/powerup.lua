Powerup = Class{}


function Powerup:init(skin)
    self.x = 0
    self.y = 0

    self.dy = 5
    self.width = 90
    self.height = 90
    self.skin = skin
    self.inPlay = true
end

function Powerup:update(dt)
    if self.inPlay == true then
      self.y = self.y + self.dy * dt
    end

   

    -- if self.y > VIRTUAL_HEIGHT - 16 then
    --  gSounds['no-select']:play()
    -- self.inPlay = false
    -- end

end



function Powerup:render()

    love.graphics.draw(gTextures['main'], gFrames['powerups'][self.skin],
     self.x, self.y)

end