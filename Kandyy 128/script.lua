vanilla_model.PLAYER:setVisible(false)

-- =============================
-- Controle da animação de piscar
-- =============================
local currentEmotion = nil
local blinkTimer = 0
local BLINK_INTERVAL = math.random(80, 160)

local function fixEyes()
    models["model - thin"].root.Head.Olhos:setPrimaryTexture("Custom", textures["Olhos"])
end

local function playBlink()
    local animModel = animations["model - thin"]
    if animModel and animModel.Piscar then
        if not animModel.Piscar:isPlaying() then
            animModel.Piscar:play()
        end
    end
end

function events.tick()
    blinkTimer = blinkTimer + 1

    if blinkTimer >= BLINK_INTERVAL then
        blinkTimer = 0

        local animModel = animations["model - thin"]

        if not currentEmotion then
            playBlink()
        end

        local anim = animModel and animModel[currentEmotion]

        if anim then
            anim:stop()
            anim:play()
        end
    end
end

local function stopAllEmotions()
    local animModel = animations["model - thin"]
    if not animModel then return end
    if animModel.Vergonha then animModel.Vergonha:stop() end
    if animModel.Raiva then animModel.Raiva:stop() end
    if animModel.Triste then animModel.Triste:stop() end
    if animModel.Triste2 then animModel.Triste2:stop() end
    if animModel.Animada then animModel.Animada:stop() end
end

-- =============================
-- FUNÇÕES DE EMOÇÕES
-- =============================
local function stopAllEmotions()
    local animModel = animations["model - thin"]
    if not animModel then return end
    if animModel.Vergonha then animModel.Vergonha:stop() end
    if animModel.Raiva then animModel.Raiva:stop() end
    if animModel.Triste then animModel.Triste:stop() end
    if animModel.Triste2 then animModel.Triste2:stop() end
    if animModel.Animada then animModel.Animada:stop() end
end

--logTable(textures:getTextures())

function pings.Casual()
    models:setPrimaryTexture("Custom", textures["Casual"])
    fixEyes()
end

function pings.Primavera()
    models:setPrimaryTexture("Custom", textures["Primavera"])    
    fixEyes()
end

function pings.Verao()
    models:setPrimaryTexture("Custom", textures["Verao"])    
    fixEyes()
end

function pings.Outono()
    models:setPrimaryTexture("Custom", textures["Outono"])    
    fixEyes()
end

function pings.Inverno()
    models:setPrimaryTexture("Custom", textures["Inverno"])    
    fixEyes()
end

function pings.Casual2()
    models:setPrimaryTexture("Custom", textures["Casual2"])    
    fixEyes()
end

function pings.Construtora()
    models:setPrimaryTexture("Custom", textures["Construtora"])    
    fixEyes()
end

function pings.Fazendeira()
    models:setPrimaryTexture("Custom", textures["Fazendeira"])    
    fixEyes()
end

function pings.Aventureira()
    models:setPrimaryTexture("Custom", textures["Aventureira"])    
    fixEyes()
end

function pings.Pijama()
    models:setPrimaryTexture("Custom", textures["Pijama"])    
    fixEyes()
end

function pings.Vestido()
    models:setPrimaryTexture("Custom", textures["Vestido"])    
    fixEyes()
end

-- =============================
-- EMOÇÕES
-- =============================
function pings.vergonha()
    stopAllEmotions()
    currentEmotion = "Vergonha"
    local animModel = animations["model - thin"]
    if animModel and animModel.Vergonha then
        animModel.Vergonha:stop()
        animModel.Vergonha:play()
    end
    blinkTimer = 0
end

function pings.raiva()
    stopAllEmotions()
    currentEmotion = "Raiva"
    local animModel = animations["model - thin"]
    if animModel and animModel.Raiva then
        animModel.Raiva:stop()
        animModel.Raiva:play()
    end
    blinkTimer = 0
end

function pings.triste()
    stopAllEmotions()
    currentEmotion = "Triste"
    local animModel = animations["model - thin"]
    if animModel and animModel.Triste then
        animModel.Triste:stop()
        animModel.Triste:play()
    end
    blinkTimer = 0
end

function pings.triste2()
    stopAllEmotions()
    currentEmotion = "Triste2"
    local animModel = animations["model - thin"]
    if animModel and animModel.Triste2 then
        animModel.Triste2:stop()
        animModel.Triste2:play()
    end
    blinkTimer = 0
end

function pings.triste2()
    stopAllEmotions()
    currentEmotion = "Animada"
    local animModel = animations["model - thin"]
    if animModel and animModel.Animada then
        animModel.Animada:stop()
        animModel.Animada:play()
    end
    blinkTimer = 0
end

----------------------------------- 

local Page1 = action_wheel:newPage()
local Page2 = action_wheel:newPage()
local Page3 = action_wheel:newPage()
local EmotionPage = action_wheel:newPage()

Page1:newAction():title("Roupas"):item("minecraft:enchanted_golden_apple")
    :hoverColor(0.6,0.6,1):onLeftClick(function() action_wheel:setPage(Page2) end)

Page1:newAction():title("Emoções"):item("minecraft:sunflower")
    :hoverColor(0.6,0.6,1):onLeftClick(function() action_wheel:setPage(EmotionPage) end)
    
-- =============================
-- NAVEGAÇÃO ROUPAS
-- =============================

Page2:newAction():title("→ Mais skins"):item("minecraft:arrow")
    :hoverColor(0.6,0.6,1):onLeftClick(function() action_wheel:setPage(Page3) end)

Page2:newAction():title("← Voltar"):item("minecraft:barrier")
    :hoverColor(1,0.4,0.4):onLeftClick(function() action_wheel:setPage(Page1) end)

Page3:newAction():title("← Voltar"):item("minecraft:barrier")
    :hoverColor(1,0.4,0.4):onLeftClick(function() action_wheel:setPage(Page2) end)


local Skin1 = Page2:newAction()
    :title("Casual")
    :item("minecraft:nether_star")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Casual(math.random())
    end)

local Skin2 = Page2:newAction()
    :title("Casual 2")
    :item("minecraft:ghast_tear")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Casual2(math.random())
    end)

local Skin3 = Page2:newAction()
    :title("Primavera")
    :item("minecraft:apple")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Primavera(math.random())
    end)

local Skin4 = Page2:newAction()
    :title("Verão")
    :item("minecraft:melon_slice")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Verao(math.random())
    end)

local Skin5 = Page2:newAction()
    :title("Outono")
    :item("minecraft:sweet_berries")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Outono(math.random())
    end)

local Skin6 = Page2:newAction()
    :title("Inverno")
    :item("minecraft:snowball")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Inverno(math.random())
    end)

local Skin7 = Page3:newAction()
    :title("Construtora")
    :item("minecraft:iron_axe")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Construtora(math.random())
    end)

local Skin8 = Page3:newAction()
    :title("Fazendeira")
    :item("minecraft:carrot")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Fazendeira(math.random())
    end)

local Skin9 = Page3:newAction()
    :title("Aventureira")
    :item("minecraft:golden_apple")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Aventureira(math.random())
    end)

local Skin10 = Page3:newAction()
    :title("Pijama")
    :item("minecraft:wind_charge")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Pijama(math.random())
    end)

local Skin11 = Page3:newAction()
    :title("Vestido")
    :item("minecraft:amethyst_shard")
    :hoverColor(1, 0, 1)
    :onLeftClick(function()
        pings.Vestido(math.random())
    end)

-- =============================
-- EMOÇÕES
-- =============================

EmotionPage:newAction():title("← Voltar"):item("minecraft:barrier")
    :onLeftClick(function() action_wheel:setPage(Page1) end)

EmotionPage:newAction():title("Vergonha"):item("minecraft:pink_tulip")
    :onLeftClick(function() pings.vergonha() end)

EmotionPage:newAction():title("Raiva"):item("minecraft:red_tulip")
    :onLeftClick(function() pings.raiva() end)

EmotionPage:newAction():title("Triste"):item("minecraft:cornflower")
    :onLeftClick(function() pings.triste() end)

EmotionPage:newAction():title("Chateada"):item("minecraft:blue_orchid")
    :onLeftClick(function() pings.triste2() end)

EmotionPage:newAction():title("Animada"):item("minecraft:bucket")
    :onLeftClick(function() pings.triste2() end)

EmotionPage:newAction():title("Normal"):item("minecraft:lily_of_the_valley")
    :onLeftClick(function()
        stopAllEmotions()
        currentEmotion = nil
    end)

action_wheel:setPage(Page1)

-- Mirror @MagicLab --
local BoneInit = require("libs.extrabone_lib")
BoneInit({
    { models["model - thin"].root.Neck, "body" },
    { models["model - thin"].root.Body.chest, "body" },
    { models["model - thin"].root.LeftShoulder, "body" },
    { models["model - thin"].root.RightShoulder, "body" },
    { models["model - thin"].root.LeftShoulder.LeftArm.LArmLower, "leftArm" },
    { models["model - thin"].root.RightShoulder.RightArm.RArmLower, "rightArm" },
    { models["model - thin"].root.LeftLeg.LLegLower, "leftLeg" },
    { models["model - thin"].root.RightLeg.RLegLower, "rightLeg" }
})
