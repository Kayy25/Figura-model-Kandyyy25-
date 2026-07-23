local headHair = models["model - thin"].root.Neck.Head.mechinhas1
local bodyHair = models["model - thin"].root.Body.mechas2

local hx, hy = 0, 0
local bx, by = 0, 0

function events.tick()

    local head = vanilla_model.HEAD:getOriginRot()
    local headPitch = head.x
    local headYaw = head.y

    local crouching = player:getPose() == "CROUCHING"

    -- 💇 HEAD (sempre livre)
    local targetX_head = -headPitch * 1.0
    local targetY_head = -headYaw * 0.18

    if headHair then
        hx = hx + (targetX_head - hx) * 0.18
        hy = hy + (targetY_head - hy) * 0.18
        headHair:setRot(hx, 0, hy)
    end

    -- 🧍 BODY
    if bodyHair then

        local targetZ_body = -headYaw * 0.09

        -- movimento lateral agora no eixo Z
        by = by + (targetZ_body - by) * 0.09

        if crouching then
            local targetX_body = -headPitch * 0.20
            bx = bx + (targetX_body - bx) * 0.15
        else
            bx = bx + (0 - bx) * 0.15
        end

        bodyHair:setRot(bx, 0, by)
    end
end