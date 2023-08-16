PauseState = Class{__includes = BaseState}


function PauseState:update(dt)
    if love.keyboard.wasPressed('p') then
        gStateMachine:change('countdown')
        sounds['music']:play()
    end
end

function PauseState:render()
    love.graphics.setFont(hugeFont)
    love.graphics.printf('Paused', 0, 35, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Press "P" to resume', 0, 85, VIRTUAL_WIDTH, 'center')

end




