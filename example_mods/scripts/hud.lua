slotnum = 1;

function onCreatePost()
         makeLuaText('song name',songName, 150, 20, 650)
         addLuaText('song name')
         setProperty('health', 2)
         makeLuaText('ss',scrollSpeed, 150, 20, 700)
         addLuaText('ss')
         makeLuaText('diff',difficultyName, 150, 55,675)
         addLuaText('diff')
         makeLuaText('ssh',version, 150, -5,675)
         addLuaText('ssh')
end

function onCountdownTick()
triggerEvent('Add Camera Zoom',0.001,0.001)
end 
function goodNoteHit(id, noteData, noteType, False)
triggerEvent('Add Camera Zoom',0.02,0.02)
end

function onUpdate()
setTextString('sick','sick : ' .. getProperty('sicks') )
setTextString('good','good : ' .. getProperty('goods') )
setTextString('bad','bad : ' .. getProperty('bads') )
setTextString('shit','shit : ' .. getProperty('shits') )
setTextString('combo','combo : ' .. getProperty('combo') )
end

function onCreate()
      makeLuaText('sick','sick : ' .. getProperty('sicks'), 150, 20,400)
         addLuaText('sick')
               makeLuaText('good','good : ' .. getProperty('goods'), 150,20,425)
         addLuaText('good')
               makeLuaText('bad','bad : ' .. getProperty('bads'), 150, 20,450)
         addLuaText('bad')
               makeLuaText('shit','shit : ' .. getProperty('shits'), 150, 20,475)
         addLuaText('shit')
               makeLuaText('combo','COMBO : ' .. getProperty('combo'), 150, 20,525)
         addLuaText('combo')
         makeLuaSprite('slot1','slot-'..slotnum, 1230, 260)
         setScrollFactor('slot1', 0, 0)
         setObjectOrder('slot1', 100000)
         setObjectCamera('slot1', 'cameOther')
         addLuaSprite('slot1')
end