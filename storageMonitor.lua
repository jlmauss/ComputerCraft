function prepareMon()
    mon.clear()
    monX, monY = mon.getSize()
    if monX < 38 or monY < 25 then
        error("Monitor is too small, we need a size of 39x and 26y minimum.")
    end
    mon.setBackgroundColor(colors.black)
    mon.setCursorPos((monX/2)-(#label/2),1)
    mon.setTextScale(1)
    mon.write(label)
    mon.setCursorPos(1,1)
    drawBox(2, monX - 1, 3, monY - 10, "CPU's", colors.gray, colors.lightGray)
    drawBox(2, monX - 1, monY - 8, monY - 1, "Stats", colors.gray, colors.lightGray)
    addBars()
end

function drawBox(xMin, xMax, yMin, yMax, title, bcolor, tcolor)
    mon.setBackgroundColor(bcolor)
    for xPos = xMin, xMax, 1 do
        mon.setCursorPos(xPos, yMin)
        mon.write(" ")
    end
    for yPos = yMin, yMax, 1 do
        mon.setCursorPos(xMin, yPos)
        mon.write(" ")
        mon.setCursorPos(xMax, yPos)
        mon.write(" ")

    end
    for xPos = xMin, xMax, 1 do
        mon.setCursorPos(xPos, yMax)
        mon.write(" ")
    end
    mon.setCursorPos(xMin+2, yMin)
    mon.setBackgroundColor(colors.black)
    mon.setTextColor(tcolor)
    mon.write(" ")
    mon.write(title)
    mon.write(" ")
    mon.setTextColor(colors.white)
end

function clear(xMin,xMax, yMin, yMax)
    mon.setBackgroundColor(colors.black)
    for xPos = xMin, xMax, 1 do
        for yPos = yMin, yMax, 1 do
            mon.setCursorPos(xPos, yPos)
            mon.write(" ")
        end
    end
end
