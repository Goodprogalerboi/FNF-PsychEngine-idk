  local turnvalue = 25
  function onBeatHit()
	turnvalue = -26
	if curBeat % 2 == 0 then
	  turnvalue = 21
	end
  
	setProperty('iconP2.angle',-turnvalue)
	setProperty('iconP1.angle',turnvalue)
  
	doTweenAngle('iconiconP1',0,crochet/222,'circOut')
	doTweenAngle('iconTween2','iconP2',0,crochet/222,'circOut')
  end