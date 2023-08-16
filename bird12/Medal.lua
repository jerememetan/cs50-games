Medal = Class{}

function Medal:init(path)
    self.image = love.graphics.newImage(path)
    self.x = VIRTUAL_WIDTH / 2 -25
    self.y = VIRTUAL_HEIGHT / 2 +50

     self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    self.dy = 0
end

function Medal:render()
    love.graphics.draw(self.image, self.x, self.y)
end