timer = 0
msg = ""

function rgb(r, g, b)
    return r/255, g/255, b/255
end

function love.load()
    love.window.setFullscreen(true)

    local mainFont = love.graphics.newFont(256)
    love.graphics.setColor(rgb(255, 255, 255))
    love.graphics.setFont(mainFont)
end

function love.keypressed(key)
    if key == "q" and love.keyboard.isDown("lctrl", "rctrl") then
        love.event.quit()
    end
end

function love.update(dt)
    timer = timer + dt
    if timer >= 1.5 then
        if msg == "writing GUI" then
            msg = "   SUCKS"
        else
            msg = "writing GUI"
        end
        timer = 0
    end
end

function love.draw()
    love.graphics.print(msg, 250, 320)
end
