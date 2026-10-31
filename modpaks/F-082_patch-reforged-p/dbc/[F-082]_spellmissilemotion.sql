-- spellmissilemotion: 4 inserts, 187 updates, 0 deletes

-- New entries
DELETE FROM `spellmissilemotion` WHERE `id` = 3905;
INSERT INTO `spellmissilemotion` (`id`, `name`, `script`, `flags`, `missile_count`) VALUES (3905, '	Mage - Arcane - Arcane Missiles (Right)', 'faceImpactPos = 0 
local rand4 = (rand1*10)%1 
local angle = 0
local maxMagnitude = startDistance * .3 * rand4 + .2 

transAngle = angle 
transMag = (progress * 2) - 1 
transMag = ((1 - (transMag * progress^0.1)) * (maxMagnitude)) * progress^2 

local startSpeedScale = ((rand3 + .5) * 0.1) 
local fullSpeedProgress = 0.5 

-- progress at which it will be going full speed 
if progress > fullSpeedProgress then
	out_speedScale = 1.0 
else 
	-- Lerp from start speed up to full speed 
	local introProgress = (progress * (1.0/fullSpeedProgress)) 
	out_speedScale = startSpeedScale + (introProgress * (1.0 - startSpeedScale)) 
end 

local magnitude = transMag * .3 
transRight = ((sin((rand1 * 2000) + (time * 600)) + sin((rand3 * 2000) + (time * 90))) * (magnitude*2)) 
transUp = ((sin((rand2 * 2000) + (time * 450)) + sin((rand1 * 2000) + (time * 150))) * (magnitude*2)) 
--transFront = (transFront + (sin((rand3 * 1000) + (time * 300)) + cos((rand2 * 1000) + (time * 100))) * magnitude) --speedScalar = ((rand3 + .5) / 2) 
scale = progress^0.05', 0, 4);
DELETE FROM `spellmissilemotion` WHERE `id` = 3906;
INSERT INTO `spellmissilemotion` (`id`, `name`, `script`, `flags`, `missile_count`) VALUES (3906, 'Warlock - Destro - Incinerate V2', 'local waveHeight = 1.2 
local wavesPerSec = 1.6 
transRight = waveHeight * (1-progress) * sin(time * wavesPerSec * 360) 

if rand2>0.5 then 
	transRight = -1*transRight 
end 

scale = 0.3 + (progress) 
--speedAbs = rand1*10-5 
local randomSpeedAmount = 0.25 
out_speedScale = (1 - randomSpeedAmount) + (rand1 * randomSpeedAmount)', 0, 1);
DELETE FROM `spellmissilemotion` WHERE `id` = 4047;
INSERT INTO `spellmissilemotion` (`id`, `name`, `script`, `flags`, `missile_count`) VALUES (4047, 'Warlock - Destro - Chaos Bolt (Main)', 'faceImpactPos = 1', 0, 0);
DELETE FROM `spellmissilemotion` WHERE `id` = 4196;
INSERT INTO `spellmissilemotion` (`id`, `name`, `script`, `flags`, `missile_count`) VALUES (4196, 'Warlock - Demonology - Shadowbolt Missile', 'local flip 
flip = rand1 
transFront = progress 
if flip <= 0.5 then 
	transRight = sin(progress * 180) * 1.3 *rand2 
	transUp = sin(progress * 180) * 2 *rand1 
end 
if flip > 0.5 then 
	transRight = -sin(progress * 180) * 1.3 *rand3 
	transUp = sin(progress * 180) * 2 *rand2 
end', 0, 1);

-- Changed values
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 13;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 19;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.5
local minSpeedScalar = .7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 1000)) + cos((rand2 * 1000) + (time * 200))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)
' WHERE `id` = 20;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 600
local outerWheelMag = 1.5
local innerWheelSpinRate = 800
local innerWheelMagBase = .75
local innerWheelMagVariance = .25
local innerWheelOscillateRate = 300

transAngle = time * outerWheelSpinRate
transMag = outerWheelMag * (1 - progress)
local innerMag = innerWheelMagBase + (innerWheelMagVariance * sin(time * innerWheelOscillateRate))
if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount - 1)
	transRight = innerMag * cos((time * innerWheelSpinRate) + (missileIndex * anglePerMissile))
	transUp = innerMag * sin((time * innerWheelSpinRate ) + (missileIndex * anglePerMissile))
end' WHERE `id` = 22;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 720

modelPitch = time * spinRate' WHERE `id` = 23;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 90
local maxMagnitude = startDistance * .2
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelYaw = time * spinRate' WHERE `id` = 24;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local finalAngle = 720
local wavesPerSec = 2
local maxMagnitude = 3

transAngle = startAngle + ((finalAngle - startAngle) * progress)
transMag = sin(time * wavesPerSec * 360) * maxMagnitude' WHERE `id` = 25;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = .8
local wavesPerSec = 4

transUp = waveHeight * sin(time * wavesPerSec * 360)' WHERE `id` = 26;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 360
local angle = 90
local maxMagnitude = startDistance * .1

modelYaw = 90
modelRoll = time * spinRate
modelPitch = 90

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
' WHERE `id` = 35;
UPDATE `spellmissilemotion` SET `script` = 'local magnitude = totalDistance * .5

transUp = magnitude * ( 1 - progress )
' WHERE `id` = 36;
UPDATE `spellmissilemotion` SET `script` = 'local magnitude = totalDistance * 2

transUp = magnitude * ( 1 - progress )
transFront = distanceToImpactPos
' WHERE `id` = 37;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 360

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 38;
UPDATE `spellmissilemotion` SET `script` = '--
-- This is actually more like a heat-seeking missile
-- That always misses. 
-- However, if you use it with a Nearby-Circumference (Dest)
-- It looks awesome! 
-- Check out 37099 for an example.
--
local angle = 0
local maxMagnitude = startDistance*.75

transAngle = angle

if ( progress > .5 ) then
	transFront = (progress) / 2
else
	transFront = ((progress) * 1.5 - 0.5 )
end

transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
	
transFront = transFront * totalDistance' WHERE `id` = 39;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .75

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)' WHERE `id` = 40;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

-- Add Upward Arc
transUp = (progress * 2) - 1
transUp = (1 - (transUp * transUp)) * startDistance * .15

transFront = transFront + -distanceToFirePos * (1 - progress)' WHERE `id` = 41;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 81;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 720

modelRoll = time * spinRate' WHERE `id` = 101;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = .8
local wavesPerSec = 2

transRight = waveHeight * sin(time * wavesPerSec * 360) * ( 1 - progress ) * 2' WHERE `id` = 121;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = .8
local wavesPerSec = 1

transRight = waveHeight * sin(time * wavesPerSec * 360) * ( 1 - progress ) * 2' WHERE `id` = 122;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 123;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
modelPitch = -90

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 124;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
modelPitch = -90 + 45 * progress

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
' WHERE `id` = 125;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 90
local maxMagnitude = startDistance * .2
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelYaw = time * spinRate
modelPitch = 90' WHERE `id` = 142;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 360 	-- 1 spin / sec
local outerWheelMag = 2			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	--local anglePerMissile = 360 / (missileCount - 1)
	--missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle )
transRight = outerWheelMag * sin ( missileAngle )
transUp = -distanceToFirePos' WHERE `id` = 161;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 360 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle )
transRight = outerWheelMag * sin ( missileAngle )
transUp = -distanceToFirePos' WHERE `id` = 162;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle )
transRight = outerWheelMag * sin ( missileAngle )
transUp = -distanceToFirePos' WHERE `id` = 163;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle )
transRight = outerWheelMag * sin ( missileAngle )
' WHERE `id` = 181;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle ) * (1 - progress) * 2
transRight = outerWheelMag * sin ( missileAngle ) * (1 - progress) * 2
' WHERE `id` = 182;
UPDATE `spellmissilemotion` SET `script` = 'local angle = -90
local maxMagnitude = startDistance * .2
local spinRate = 720

modelRoll = 90

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelYaw = time * spinRate' WHERE `id` = 201;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 90
local maxMagnitude = startDistance * .2
local spinRate = 720

modelRoll = 90

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelYaw = time * spinRate

transFront = distanceToImpactPos - distanceToFirePos' WHERE `id` = 202;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 90
local maxMagnitude = startDistance * .2
local yawSpin = 1080

transAngle = angle
--transMag = (progress * 2) - 1
--transMag = (1 - (transMag * transMag)) * maxMagnitude
--modelYaw = time * yawSpin
--modelRoll = progress * 90
modelRoll = time * 500' WHERE `id` = 223;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 224;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 720

modelRoll = time * spinRate' WHERE `id` = 225;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

--progress = 1 - progress

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 226;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transUp = distanceToImpactPos - distanceToFirePos
transMag = 10 * (1-progress) * (1-progress)

transFront = distanceToImpactPos * (1 - progress) * (1 - progress)' WHERE `id` = 227;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .50
local spread = 5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transRight = (rand1 - 0.5) * spread * progress
transUp = (rand2 - 0.5) * spread * progress' WHERE `id` = 241;
UPDATE `spellmissilemotion` SET `script` = 'scale = 1 + 2 * progress
modelYaw = 180' WHERE `id` = 321;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 360

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 341;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate
' WHERE `id` = 361;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 362;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 720
local maxMagnitude = 1
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 381;
UPDATE `spellmissilemotion` SET `script` = 'speedScalar = 0.1 + 35 * progress * progress
transUp  = (1.4 - 2 * rand1) * (1 - progress)
transRight  = (1 - 2 * rand2) * (1 - progress)' WHERE `id` = 382;
UPDATE `spellmissilemotion` SET `script` = '
local waveHeight = 1.5
local wavesPerSec = 0.7

if (missileIndex == 0) then
transRight = waveHeight * sin(time * wavesPerSec * 360)
end

if (missileIndex == 1) then
transRight = - waveHeight * sin(time * wavesPerSec * 360)
end' WHERE `id` = 383;
UPDATE `spellmissilemotion` SET `script` = '
local waveHeight = 1.5
local wavesPerSec = 0.7

if (missileIndex == 0) then
transRight = waveHeight * sin(time * wavesPerSec * 360)
end

if (missileIndex == 1) then
transRight = - waveHeight * sin(time * wavesPerSec * 360)
end
--[[
if (missileIndex == 2) then
transUp = waveHeight * sin(time * wavesPerSec * 360) /2
end

if (missileIndex == 3) then
transUp = - waveHeight * sin(time * wavesPerSec * 360) /2
end ]]' WHERE `id` = 384;
UPDATE `spellmissilemotion` SET `script` = '
local spread = 1.2
local distanceToFireMin = 5
local distanceToFireMax = 7
local spreadSpeed = 0.1
local finalSpeed = 1.5

if ( distanceToFirePos > distanceToFireMin and distanceToFirePos < distanceToFireMax ) then
   speedScalar = spreadSpeed
   if (missileIndex == 0) then
   transUp = spread * ( distanceToFirePos - distanceToFireMin ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 1) then
   transUp = -spread * ( distanceToFirePos - distanceToFireMin   ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 2) then
   transRight = spread * ( distanceToFirePos - distanceToFireMin   ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 3) then
   transRight = -spread * ( distanceToFirePos - distanceToFireMin    ) / ( distanceToFireMax - distanceToFireMin )
   end
end

if ( distanceToFirePos > distanceToFireMax ) then
   speedScalar = finalSpeed
   if (missileIndex == 0) then
   transUp = spread
   end
   if (missileIndex == 1) then
   transUp = -spread
   end
   if (missileIndex == 2) then
   transRight = spread
   end
   if (missileIndex == 3) then
   transRight = -spread
   end
end
' WHERE `id` = 385;
UPDATE `spellmissilemotion` SET `script` = 'speedScalar = 0.1 + 35 * progress * progress
transUp  = (1.4 - 2 * rand1) * (1 - progress)
transRight  = (1 - 2 * rand2) * (1 - progress)' WHERE `id` = 386;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 1080

modelRoll = time * spinRate' WHERE `id` = 401;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 720

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 421;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90
local spinRate = 360

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 441;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 2.5
local maxKickBack = 0

--progress = 1 - progress

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 482;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .10

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 501;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate' WHERE `id` = 521;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 1     -- 180 = 1 spin / sec
local outerWheelMag = 1
local missileAngle = 1

outerWheelSpinRate = 360 - 400 * (progress)
speedScalar = sin(100 * progress) + 0.1
missileAngle = outerWheelSpinRate * time
outerWheelMag = 10 * sin (500 * progress)
transFront = outerWheelMag * cos ( missileAngle )
transRight = outerWheelMag * sin ( missileAngle )
' WHERE `id` = 541;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .60

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 542;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.0
local minSpeedScalar = 1.0
local maxSpeedScalar = 1.0
local randscalar = 100
local timescalar = 50
 
local angle = 0
local maxArcMagnitude = startDistance * .35

local magnitude = (progress * 1.9) - 1

magnitude = 1 

transRight = (sin((rand1 * randscalar * progress) + (time * randscalar)) + sin((rand2 * randscalar * progress) + (time * timescalar))) * magnitude
transUp = (sin((rand2 * randscalar * progress) + (time * randscalar)) + sin((rand1 * randscalar * progress) + (time * timescalar))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxArcMagnitude
' WHERE `id` = 561;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.0
local minSpeedScalar = 1.0
local maxSpeedScalar = 1.0
local randscalar = 100
local timescalar = 50
 
local angle = 0
local maxMagnitude = startDistance * .35

local magnitude = (progress * 1.9) - 1

local Xmagnitude = 4 
local Ymagnitude = 2

transRight = (sin((rand1 * randscalar * progress)+ (time * randscalar)) + sin((rand2 * randscalar * progress))) * Xmagnitude
transUp = (sin((rand2 * randscalar * progress) + (time * randscalar)) + sin((rand1 * randscalar * progress) + (time * timescalar))) * Ymagnitude
transUp = transUp - 0
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 581;
UPDATE `spellmissilemotion` SET `script` = '
local slowProgressStart = 0.4
local slowProgressEnd = 0.65
local slowSpeed = 0.3
local finalSpeed = 6

speedScalar = finalSpeed

if ( progress > slowProgressStart and progress < slowProgressEnd ) then
   speedScalar = slowSpeed
end

' WHERE `id` = 601;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 1
local spinRateP = 180
local spinRateY = 45

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude


modelPitch = time * spinRateP
modelYaw = time * spinRateY' WHERE `id` = 621;
UPDATE `spellmissilemotion` SET `script` = '-- spread out as the missiles travel
local outerWheelMag = 1.5 * progress
local missileAngle


if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	transAngle = anglePerMissile * missileIndex
end

transMag = outerWheelMag
' WHERE `id` = 641;
UPDATE `spellmissilemotion` SET `script` = 'local m1x=0.4    --the first progress point where the missile is smallest
local m1y=0.4    --the scale of the missile at the point above

local m2x=0.6    --the first progress opint where the missile begins growing again
local m2y=0.4    --the scale of the missile at the point above


local slope
local intercept
if (progress <m1x) then
                slope=(1-m1y)/(0-m1x)
                intercept=1
elseif (progress<m2x) then
                slope=(m1y-m2y)/(m1x-m2x)
                intercept=m1y-slope*m1x
else
                slope=(m2y-1)/(m2x-1)
                intercept=1-slope
end
scale=slope*progress+intercept
' WHERE `id` = 661;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 720
local maxMagnitude = 1
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 681;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 1440

modelPitch = time * spinRate' WHERE `id` = 701;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .10

transAngle = angle
progress = math.fmod(progress * 3, 1)
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 721;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .10

transAngle = angle
progress = math.fmod(progress * 3, 1)
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
transMag = transMag * (1 - progress)' WHERE `id` = 722;
UPDATE `spellmissilemotion` SET `script` = '
local minSpeedScalar = 1.0
local maxSpeedScalar = 1.0
local randscalar = 100
local timescalar = 50
 
local angle = 0
local maxMagnitude = startDistance * .20

local magnitude = (progress * 1.9) - 1

local Xmagnitude = 4 
local Ymagnitude = 2


local modProgress = 4*(-1*(progress*progress) + progress)

transRight = (sin((rand1 * randscalar * modProgress)+ (time * randscalar * modProgress)) + sin((rand2 * randscalar * modProgress))) * Xmagnitude
transUp = (sin((rand2 * randscalar * modProgress) + (time * randscalar)) + sin((rand1 * randscalar * modProgress) + (time * timescalar))) * Ymagnitude
transUp = transUp - 0
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

' WHERE `id` = 761;
UPDATE `spellmissilemotion` SET `script` = 'local randscalar = 100
local timescalar = 100
local wavefreqscalar = 50
local yawlimit = 60
local rolllimit = 25
local minSpeedScalar = 1.0
local maxSpeedScalar = 1.0

local angle = 0
local maxMagnitude = startDistance * .10

local Ymagnitude = 1
local Xmagnitude = 3

local modProgress = 4*(-1*(progress*progress) + progress)

modelYaw = sin(time*timescalar*rand1) * yawlimit * rand2
modelRoll = sin(time*timescalar*rand2) * rolllimit * rand1
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)
transUp = (sin((rand3 * randscalar * modProgress) + (time * randscalar)) + sin((rand1 * randscalar * modProgress) + (time * wavefreqscalar))) * Ymagnitude

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 781;
UPDATE `spellmissilemotion` SET `script` = 'transRight = progress * 2
transUp = progress * 4
transFront = progress * 20' WHERE `id` = 801;
UPDATE `spellmissilemotion` SET `script` = 'local magnitude = totalDistance * 2.0

transUp = totalDistance + -magnitude * ( progress )
transFront = distanceFromImpactPos

-- speedScalar = 0.8' WHERE `id` = 821;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 0.5
local minSpeedScalar = .9
local maxSpeedScalar = 1.1

local angle = 0
local maxArcMagnitude = startDistance * .75


local magnitude = (progress * 1.9) - 1
magnitude = (1 - (magnitude * magnitude * magnitude * magnitude)) * maxMagnitude

transRight = (sin((rand1 * 1000) + (time * 700)) + cos((rand2 * 1000) + (time * 100))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxArcMagnitude' WHERE `id` = 841;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .50
local spread = 5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transRight = (rand1 - 0.5) * spread * progress
transUp = (rand2 - 0.5) * spread * progress' WHERE `id` = 861;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local randomMagnitudeScalar = rand1

if (randomMagnitudeScalar <= 0.33)then
	randomMagnitudeScalar = 0.20
elseif (randomMagnitudeScalar <= 0.66)then
	randomMagnitudeScalar = 0.30
elseif (randomMagnitudeScalar <= 0.99)then
	randomMagnitudeScalar = 0.40
end

local maxMagnitude = startDistance * randomMagnitudeScalar
local spinRate = 540

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 881;
UPDATE `spellmissilemotion` SET `script` = 'local missileSpeed = 0.42
local startSpeed = 20
local p0 = 0.5

local travelTime = (startDistance / missileSpeed) - 2.5
local v0 = startSpeed
local acc = (v0*travelTime + p0) / (travelTime*travelTime)

transUp = -acc*time*time + v0*time + p0

local spinRate = 1080
modelPitch = time * spinRate
' WHERE `id` = 901;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = (distanceToImpactPos) * 2

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

local spinRate = 1080
modelPitch = time * spinRate

speedScalar = 1' WHERE `id` = 921;
UPDATE `spellmissilemotion` SET `script` = 'scale = 0.10 + 1 * progress * progress
--speedScalar = 3 * progress' WHERE `id` = 922;
UPDATE `spellmissilemotion` SET `script` = 'local missileSpeed = 3.9
local startSpeed = 20
local p0 = 0

local travelTime = (startDistance / missileSpeed)
local v0 = startSpeed
local acc = (v0*travelTime + p0) / (travelTime*travelTime)

transUp = -acc*time*time + v0*time + p0

--transFront = -distanceToFirePos

local spinRate = 1420
modelPitch = time * spinRate
' WHERE `id` = 941;
UPDATE `spellmissilemotion` SET `script` = 'local missileSpeed = 6
local startSpeed = 15
local p0 = 0

local travelTime = (startDistance / missileSpeed)
local v0 = startSpeed
local acc = (v0*travelTime + p0) / (travelTime*travelTime)

transUp = -acc*time*time + v0*time + p0

--transFront = -distanceToFirePos

local spinRate = 1500
modelPitch = time * spinRate
' WHERE `id` = 942;
UPDATE `spellmissilemotion` SET `script` = 'local missileSpeed = 9
local startSpeed = 20
local p0 = 0

local travelTime = (startDistance / missileSpeed)
local v0 = startSpeed
local acc = (v0*travelTime + p0) / (travelTime*travelTime)

transUp = -acc*time*time + v0*time + p0

--transFront = -distanceToFirePos

local spinRate = 1600
modelPitch = time * spinRate
' WHERE `id` = 943;
UPDATE `spellmissilemotion` SET `script` = 'local degreesPerSec = 720
local maxMagnitude = 4

transAngle = (missileIndex / missileCount) * 360 + (time * degreesPerSec)
transMag = 1- progress
transMag = transMag * maxMagnitude
transUp = 5 * progress' WHERE `id` = 961;
UPDATE `spellmissilemotion` SET `script` = 'local sideMagnitude = startDistance * .3
local frontMagnitude = startDistance
local minAngle = -135
local maxAngle = -45
local collapseAngle = -90

speedScalar = .4 + (progress * 1.2)

transAngle = minAngle + (rand1 * (maxAngle - minAngle))
transAngle = (transAngle * (1 - progress)) + (collapseAngle * progress)
transMag = sin(progress * 480) * (1 - progress) * sideMagnitude
transUp = (rand2 - 0.5) * (15 * progress) - 2

transFront = sin(progress * 240) * (1 - progress) * frontMagnitude' WHERE `id` = 981;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1001;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.5
local minSpeedScalar = .7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 1000)) + cos((rand2 * 1000) + (time * 200))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 360

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1041;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 120

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate
modelRoll = time * spinRate/2
modelPitch = time * spinRate/4' WHERE `id` = 1061;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .05
local spinRate = 720

if ( rand1 > 0.5 ) then
	spinRate = spinRate * -1
end

modelRoll = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1101;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 1141;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate' WHERE `id` = 1161;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .60
local spinRate = 360

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate
' WHERE `id` = 1181;
UPDATE `spellmissilemotion` SET `script` = 'local m1x=0.4    --the first progress point where the missile is smallest
local m1y=0.4    --the scale of the missile at the point above

local m2x=0.6    --the first progress opint where the missile begins growing again
local m2y=0.4    --the scale of the missile at the point above


local slope
local intercept
if (progress <m1x) then
                slope=(1-m1y)/(0-m1x)
                intercept=1
elseif (progress<m2x) then
                slope=(m1y-m2y)/(m1x-m2x)
                intercept=m1y-slope*m1x
else
                slope=(m2y-1)/(m2x-1)
                intercept=1-slope
end
scale=slope*progress+intercept

transUp=1.6' WHERE `id` = 1183;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90

transAngle = angle
transMag = (progress * 2) - 1
transMag = 2*(1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1201;
UPDATE `spellmissilemotion` SET `script` = 'local numSpirals = 5
local radius = 5 * progress * (rand1 + .5)

local curAngle = numSpirals * progress * 360

transFront = (sin(curAngle) * radius) - distanceToFirePos
transRight = (cos(curAngle) * radius)

transUp = 1.5 * progress

speedScalar = .2' WHERE `id` = 1221;
UPDATE `spellmissilemotion` SET `script` = 'local magnitude = totalDistance * 2
local spinRate = 1080

transUp = magnitude * ( 1 - progress )
transFront = distanceToImpactPos
modelRoll = time * spinRate' WHERE `id` = 1241;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 6
local spinRateP = 60

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude


modelPitch = time * spinRateP
' WHERE `id` = 1242;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle ) * (rand1*30) * time
transRight = outerWheelMag * sin ( missileAngle ) * (rand2*30) * time

transUp = distanceToFirePos*10' WHERE `id` = 1261;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .60

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1262;
UPDATE `spellmissilemotion` SET `script` = '
	transUp = (1 - progress) * 8


' WHERE `id` = 1281;
UPDATE `spellmissilemotion` SET `script` = '
local angle = 0
local maxMagnitude = 4

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude


local spread = 1
local distanceToFireMin = 5
local distanceToFireMax = 30
local spreadSpeed = 1
local finalSpeed = 1.5

if ( distanceToFirePos > distanceToFireMin and distanceToFirePos < distanceToFireMax ) then
   speedScalar = spreadSpeed
   if (missileIndex == 0) then
   transUp = spread * ( distanceToFirePos - distanceToFireMin ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 1) then
   transUp = -spread * ( distanceToFirePos - distanceToFireMin   ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 2) then
   transRight = spread * ( distanceToFirePos - distanceToFireMin   ) / ( distanceToFireMax - distanceToFireMin )
   end
   if (missileIndex == 3) then
   transRight = -spread * ( distanceToFirePos - distanceToFireMin    ) / ( distanceToFireMax - distanceToFireMin )
   end
end

if ( distanceToFirePos > distanceToFireMax ) then
   speedScalar = finalSpeed
   if (missileIndex == 0) then
   transUp = spread
   end
   if (missileIndex == 1) then
   transUp = -spread
   end
   if (missileIndex == 2) then
   transRight = spread
   end
   if (missileIndex == 3) then
   transRight = -spread
   end
end' WHERE `id` = 1301;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90
local spinRate = 1440

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate *rand1
modelYaw = time * spinRate
' WHERE `id` = 1321;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90
local spinRate = 1440

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

' WHERE `id` = 1322;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 540

modelPitch = time * spinRate

scale = 1 + 2 * progress' WHERE `id` = 1341;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

scale = progress' WHERE `id` = 1361;
UPDATE `spellmissilemotion` SET `script` = 'local maxHeight = 10

transUp = progress * (1 - progress) * maxHeight

--transFront = startDistance - 2 * distanceToFirePos  --this would reverse the direction of the missile
' WHERE `id` = 1381;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .60
local spinRate = 360

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate
' WHERE `id` = 1421;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 0.5
local minSpeedScalar = 0.7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 100)) + cos((rand2 * 1000) + (time * 200))) * magnitude * (1-progress)
--transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)

' WHERE `id` = 1422;
UPDATE `spellmissilemotion` SET `script` = '
	if missileIndex == 1 then
		transRight =  (1 - progress) * 3
	else
		transRight =  (1 - progress) * -3
	end' WHERE `id` = 1441;
UPDATE `spellmissilemotion` SET `script` = 'transRight = 5 * (1 - progress * 2 * rand2)
transUp = 2 * (1 - progress * 2 * rand1)
transFront = 80 * progress' WHERE `id` = 1461;
UPDATE `spellmissilemotion` SET `script` = 'transFront = startDistance - 2 * distanceToFirePos  --this would reverse the direction of the missile
' WHERE `id` = 1462;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .30
local spinRate = 1440

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRate' WHERE `id` = 1481;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

--progress = 1 - progress

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 1502;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10
speedscalar = 0.5

--progress = 1 - progress

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 1503;
UPDATE `spellmissilemotion` SET `script` = '
if (missileIndex > 0) then
    transFront = progress * (3 - 2 * missileIndex)
end

' WHERE `id` = 1521;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 10

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

-- Add Upward Arc
transUp = (progress * 2) - 1
transUp = (1 - (transUp * transUp)) * startDistance * .15

transFront = transFront + -distanceToFirePos * (1 - progress)' WHERE `id` = 1522;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 0.5
local spinRateP = 180
local spinRateY = 45

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude


modelPitch = time * spinRateP
modelYaw = time * spinRateY' WHERE `id` = 1541;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 0.25
local spinRateP = 180
local spinRateY = 45

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude


modelPitch = time * spinRateP
modelYaw = time * spinRateY' WHERE `id` = 1542;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .1
local spinRate = 120

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 1581;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = startDistance * .5
local spinRate = 360


transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = (rand1 * 5) * (time * spinRate)
speedScalar = (rand1 + 1)/2.5

transUp = rand1 * progress
transFront = rand2 * progress
transRight = rand3 * progress
' WHERE `id` = 1601;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 0.25
local spinRateY = 360

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelYaw = time * spinRateY' WHERE `id` = 1621;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 0.5
local minSpeedScalar = 0.7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 100)) + cos((rand2 * 1000) + (time * 200))) * magnitude * (1-progress)
--transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)
' WHERE `id` = 1641;
UPDATE `spellmissilemotion` SET `script` = '-- spread out as the missiles travel
local outerWheelMag = 1.5 * progress
local missileAngle


if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	transAngle = anglePerMissile * missileIndex
end

transMag = outerWheelMag
' WHERE `id` = 1661;
UPDATE `spellmissilemotion` SET `script` = 'scale = 2
local spinRate = 540

modelPitch = time * spinRate' WHERE `id` = 1663;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 360

modelRoll = time * spinRate

transUp = progress * 3' WHERE `id` = 1684;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.5
local minSpeedScalar = .7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 1000)) + cos((rand2 * 1000) + (time * 200))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)
' WHERE `id` = 1704;
UPDATE `spellmissilemotion` SET `script` = '
local waveHeight = 15
local wavesPerSec = 0.3

if (missileIndex == 0) then
transRight = waveHeight * sin(time * wavesPerSec * 360)
end

if (missileIndex == 1) then
transRight = - waveHeight * sin(time * wavesPerSec * 360)
end

if (missileIndex == 2) then
transUp = waveHeight * sin(time * wavesPerSec * 360) /2
end

if (missileIndex == 3) then
transUp = - waveHeight * sin(time * wavesPerSec * 360) /2
end' WHERE `id` = 1724;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .20
local spinRate = -3600

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1725;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 2
local spinRate = 1080

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 1726;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 3

transAngle = angle	

if progress < 0.3 then
	transMag = (1 - (((progress*3.33)-1)^2)) * 15
	speedScalar = .5
else
	transMag = (1 - (progress*1.43) +0.43) * 15
	speedScalar = 20 * progress * progress * progress
end


if progress <= .3 then
	transRight = (cos(progress*3000)) * 2 * (1-progress)
	transUp = (sin(progress*3000)) * 2 * (1-progress)
end' WHERE `id` = 1744;
UPDATE `spellmissilemotion` SET `script` = 'transRight = progress * ( 5 * rand1)
transUp = progress * ( 4 * rand2)
transFront = progress * 10


' WHERE `id` = 1764;
UPDATE `spellmissilemotion` SET `script` = '	
	modelPitch = -90
--	scale = progress

--	transRight = (missileIndex * 5) * (1-progress)' WHERE `id` = 1784;
UPDATE `spellmissilemotion` SET `script` = '--[[

--Old script, was based on 

local missileSpeed = 10
local startSpeed = 20
local p0 = 0.5

local travelTime = (startDistance / missileSpeed)  -- - 2.5
local v0 = startSpeed
local acc = (v0*travelTime + p0) / (travelTime*travelTime)

--transUp = -acc*time*time + v0*time + p0

]]--

local spinRate = 1080
modelPitch = time * spinRate


-- distance = X (totalDistance / 2)
-- acceleration due to gravity = -9.8
-- velocity = v0 + a * t
-- position = p0 + v0 * t + 0.5 a * t * t

local initialPosition = 0;
local initialVelocity = 9.8; 
local initialDistance = startDistance - initialPosition;

local travelTime = initialDistance / initialVelocity;

local t = travelTime * progress

transUp = initialPosition + initialVelocity * t + -9.8 * t * t
transFront = 0' WHERE `id` = 1804;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .40

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelRoll = progress * 6000' WHERE `id` = 1824;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 3
local maxKickBack = 12

--progress = 1 - progress
if ( rand1 < 0.5 ) then
	missileIndex = 1;
else
	missileIndex = 2;
end

transAngle = startAngle + ( missileIndex / 2 * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 1825;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .10 + (rand1 * 5)
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelRoll = progress * 3000' WHERE `id` = 1844;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .90
modelPitch = -45 + 45 * progress

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
' WHERE `id` = 1864;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .60
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 1865;
UPDATE `spellmissilemotion` SET `script` = '-- spread out as the missiles travel
local outerWheelMag =  progress / 3
local missileAngle


local maxMagnitude = 1.0
local minSpeedScalar = .8
local maxSpeedScalar = 1.2

local magnitude = (progress * 1.9) - 1
magnitude = (1 - (magnitude * magnitude * magnitude * magnitude)) / 3

transRight = (sin((rand1 * 1000) + (time * 1000)) + cos((rand2 * 1000) + (time * 200))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)


if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	transAngle = anglePerMissile * missileIndex
end

modelRoll = (missileIndex + 2) * progress * 360

transMag = outerWheelMag
' WHERE `id` = 1884;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 3

transAngle = angle	

if progress < 0.3 then
	transMag = (1 - (((progress*3.33)-1)^2)) * 15
	speedScalar = .5

else
	transMag = (1 - (progress*1.43) +0.43) * 15
	speedScalar = 20 * progress * progress * progress
end


if progress <= .3 then
	transRight = (cos(progress*3000)) * 2 * (1-progress)
	transUp = (sin(progress*3000)) * 2 * (1-progress)
end' WHERE `id` = 1904;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * 1

transAngle = angle	

if progress < .3 then	
transMag = (1 - (((progress*3.33)-1)^2)) * 10
	speedScalar = .3
else
	transMag = (1 - (progress*1.43) +0.33) * 10
	speedScalar = 20 * progress * progress * progress
end
' WHERE `id` = 1905;
UPDATE `spellmissilemotion` SET `script` = 'local spread = 1.2

local startAngle = 360 * missileIndex / missileCount;
local degreesPerSec = 180

transAngle = startAngle + (time * degreesPerSec)
transMag = spread;

local spinRate = 360
modelRoll = time * spinRate
' WHERE `id` = 1924;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle ) * (1 - progress) * 2
transRight = outerWheelMag * sin ( missileAngle ) * (1 - progress) * 2
' WHERE `id` = 1964;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 2.5			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle ) * (1 - progress) * 2 * progress
transRight = outerWheelMag * sin ( missileAngle ) * (1 - progress) * 2 * progress


local angle = 0
local maxMagnitude = startDistance * .50

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 1965;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .8
local spinRate = 540

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 1984;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = 20

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

speedScalar = ((progress + .05)^1.5) * startDistance * .2' WHERE `id` = 1985;
UPDATE `spellmissilemotion` SET `script` = '
	if missileIndex == 1 then
		transRight = (progress * (rand1 - .50) * 10) + .75
		transUp = progress * (rand2 - .70) * 10
	elseif missileIndex == 2 then
		transRight = (progress * (rand2 - .50) * 10) - .75
		transUp = progress * (rand3 - .70) * 10
	else
		transRight = progress * (rand2 - .50) * 10
		transUp = progress * ((rand1 - .70) * 10) + .75
	end

transFront = progress * 3' WHERE `id` = 2004;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 1080

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 2024;
UPDATE `spellmissilemotion` SET `script` = '	if missileIndex == 1 then
		speedScalar = rand1/1.5 + 1
	elseif missileIndex == 2 then
		speedScalar = rand2/1.5 + 1
	else
		speedScalar = rand3/1.5 + 1
	end

	if missileIndex == 1 then
		transRight = progress * (rand1 - .50) + .5
		transUp = progress * (rand2 - .50)
	elseif missileIndex == 2 then
		transRight = progress * (rand2 - .50) - .5
		transUp = progress * (rand3 - .50)
	else
		transRight = progress * (rand2 - .50)
		transUp = progress * (rand1 - .50) + .5
	end' WHERE `id` = 2025;
UPDATE `spellmissilemotion` SET `script` = 'local throwHeight = 32;
local progressAtFirstBounce = .45;
local heightOfFirstBounce = 10;
local progressAtSecondBounce = .75;
local heightOfSecondBounce = 7;
local spinRate = 360

modelPitch = time * spinRate
transUp = throwHeight * progress;

if (progress < progressAtFirstBounce) then

	local normalizedProgress = progress / progressAtFirstBounce;
	transUp = transUp - ((normalizedProgress * normalizedProgress) * throwHeight);

elseif (progress < progressAtSecondBounce) then

	local normalizedProgress = (progress - progressAtFirstBounce) /
		(progressAtSecondBounce - progressAtFirstBounce);

	local curHeight = (normalizedProgress * 2) - 1;
	curHeight = (1 - (curHeight * curHeight)) * heightOfFirstBounce;

	transUp = (transUp - throwHeight) + curHeight;

else

	local normalizedProgress = (progress - progressAtSecondBounce) /
		(1.0 - progressAtSecondBounce);

	local curHeight = (normalizedProgress * 2) - 1;
	curHeight = (1 - (curHeight * curHeight)) * heightOfSecondBounce;

	transUp = (transUp - throwHeight) + curHeight;

end' WHERE `id` = 2064;
UPDATE `spellmissilemotion` SET `script` = 'local maxHeight = 5 + (startDistance * .08)

local newness = 1 - (progress * progress)

transAngle = (rand1 * 360) + (time * 400)

if progress < 0.05 then
	transMag = progress * 40
elseif progress < .1 then
	transMag = 2
elseif progress < .433333333 then
	transMag = 2 * (1 - ((progress - .1) * 3))
end

local transUp1 = (progress * 3.33) - 1
transUp1 = (1 - (transUp1 * transUp1)) * maxHeight

local transUp2 = (1.43 - (progress * 1.43)) * maxHeight

if progress < .2 then
	transUp = transUp1
elseif progress < .4 then
	transUp = transUp1 + ((transUp2 - transUp1) * ((progress - .2) * 5))
else
	transUp = transUp2
end

local accel = progress + .23
speedScalar = .05 + (8 * accel * accel * accel)' WHERE `id` = 2084;
UPDATE `spellmissilemotion` SET `script` = 'local angle = -90
local maxMagnitude = startDistance * .2
local spinRate = 720

progress = 1 - progress

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelYaw = time * spinRate


transFront = distanceToImpactPos - distanceToFirePos
' WHERE `id` = 2104;
UPDATE `spellmissilemotion` SET `script` = '
	if missileIndex == 1 then
		transRight = (progress * (rand1 - .50) * 10) + .75
		transUp = progress * (rand2 - .70) * 10
	elseif missileIndex == 2 then
		transRight = (progress * (rand2 - .50) * 10) - .75
		transUp = progress * (rand3 - .70) * 10
	else
		transRight = progress * (rand2 - .50) * 10
		transUp = progress * ((rand1 - .70) * 10) + .75
	end

transFront = progress' WHERE `id` = 2124;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .4
local spinRate = 540

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 2144;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 1080

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 2184;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 1080

modelYaw = time * spinRate' WHERE `id` = 2204;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)' WHERE `id` = 2224;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = .8
local wavesPerSec = 2

transRight = waveHeight * sin(time * wavesPerSec * 360) * ( 1 - progress ) * 2' WHERE `id` = 2244;
UPDATE `spellmissilemotion` SET `script` = 'modelPitch = 90
local spinRate = 1080

modelYaw = time * spinRate' WHERE `id` = 2284;
UPDATE `spellmissilemotion` SET `script` = 'local spinRate = 1080

modelPitch = time * spinRate' WHERE `id` = 2304;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .3
local spinRate = 720

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate
' WHERE `id` = 2344;
UPDATE `spellmissilemotion` SET `script` = 'local numSpirals = 2
local radius = 5 * progress * (rand1 + 0.5)

local curAngle = numSpirals * progress * 360

transFront = (sin(curAngle) * radius) - distanceToFirePos
transRight = (cos(curAngle) * radius)

transUp = 2 * progress' WHERE `id` = 2384;
UPDATE `spellmissilemotion` SET `script` = 'local numSpirals = 5
local minRadius = 10
local radius = minRadius + (10 * progress * (rand1 * 5))

local curAngle = numSpirals * progress * 360

transFront = (sin(curAngle) * radius) - distanceToFirePos
transRight = (cos(curAngle) * radius)

transUp = rand2 * 5' WHERE `id` = 2404;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)

local magnitude = transMag * .15

transRight = (sin((rand1 * 1000) + (time * 400)) + cos((rand3 * 1000) + (time * 60))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 300)) + cos((rand1 * 1000) + (time * 100))) * magnitude
transFront = transFront +
	(sin((rand3 * 1000) + (time * 300)) + cos((rand2 * 1000) + (time * 100))) * magnitude

speedScalar = 1 - (progress * .5)' WHERE `id` = 2424;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .8
--local spinRate = 1080

--transAngle = angle
--transMag = (progress * 2) - 1
--transMag = (1 - (transMag * transMag)) * maxMagnitude
--transUp = progress * 1.1
transUp = 20 + (progress * -19)
transFront = 3 + (progress * -3)

--modelPitch = time * spinRate
' WHERE `id` = 2444;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .15
local spinRate = 1080

modelPitch = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

scale = 1 + 2 * progress' WHERE `id` = 2464;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 0
local degreesPerSec = 180
local maxMagnitude = 2.5
local maxKickBack = 0

--progress = 1 - progress

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude

--transUp = distanceToImpactPos - distanceToFirePos' WHERE `id` = 2484;
UPDATE `spellmissilemotion` SET `script` = 'local outerWheelSpinRate = 180 	-- 1 spin / sec
local outerWheelMag = 1			-- 1 yard
local missileAngle = outerWheelSpinRate * time

if (missileIndex > 0) then
	local anglePerMissile = 360 / (missileCount)
	missileAngle = missileAngle + anglePerMissile * missileIndex
end

transFront = outerWheelMag * cos ( missileAngle ) * (1 - progress) * 2
transRight = outerWheelMag * sin ( missileAngle ) * (1 - progress) * 2
' WHERE `id` = 2504;
UPDATE `spellmissilemotion` SET `script` = '
transAngle = 0	

if (time < 7) then
	speedAbs = distanceToImpactPos / (7 - time)
else
	speedAbs = 100000
end

if progress < 0.4 then
	transMag = (1 - (((progress*3.33)-1)^2)) * 20
	speedAbs = speedAbs * 0.4
elseif progress < 0.9 then
	transMag = (1 - (progress*1.43) +0.43) * 20
	speedAbs = speedAbs * (progress^2)
else
	transMag = (1 - (progress*1.43) +0.43) * 20
end

' WHERE `id` = 2544;
UPDATE `spellmissilemotion` SET `script` = 'local spread = 1.2

local startAngle = 360 * missileIndex / missileCount;
local degreesPerSec = 180

transAngle = startAngle + (time * degreesPerSec)
transMag = spread;

local spinRate = 360
modelRoll = time * spinRate
' WHERE `id` = 2564;
UPDATE `spellmissilemotion` SET `script` = 'local spread = .5

local startAngle = 360 * missileIndex / missileCount;
local degreesPerSec = 360

transAngle = startAngle + (time * degreesPerSec)
transMag = spread;

local spinRate = 360
modelRoll = time * spinRate
' WHERE `id` = 2584;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)

local magnitude = transMag * .15

transRight = (sin((rand1 * 1000) + (time * 400)) + cos((rand3 * 1000) + (time * 60))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 300)) + cos((rand1 * 1000) + (time * 100))) * magnitude
transFront = transFront +
	(sin((rand3 * 1000) + (time * 300)) + cos((rand2 * 1000) + (time * 100))) * magnitude

speedScalar = 1 - (progress * .5)' WHERE `id` = 2624;
UPDATE `spellmissilemotion` SET `script` = 'transUp = (progress * (rand1 - .5)) * 20
transRight = (progress * (rand2 - .5)) * 20

' WHERE `id` = 2644;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = 20

local angle = 0
local maxMagnitude = startDistance * .10

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
speedAbs = totalDistance/5.5' WHERE `id` = 2645;
UPDATE `spellmissilemotion` SET `script` = 'local spread = 1.2

local startAngle = 360 * missileIndex / missileCount;
local degreesPerSec = 180

transAngle = startAngle + (time * degreesPerSec)
transMag = spread;

local spinRate = 360
modelRoll = time * spinRate
' WHERE `id` = 2664;
UPDATE `spellmissilemotion` SET `script` = 'transUp = ((progress * (rand1 - .5)) * 5) + (progress * 5)
transRight = (progress * (rand2 - .5)) * 20' WHERE `id` = 2684;
UPDATE `spellmissilemotion` SET `script` = 'local spread = .5

local startAngle = 360 * missileIndex / missileCount;
local degreesPerSec = 360

transAngle = startAngle + (time * degreesPerSec)
transMag = spread;

local spinRate = 360
modelRoll = time * spinRate
' WHERE `id` = 2704;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 1
local maxMagnitude = startDistance * .20

transAngle = angle
progress = math.fmod(progress * 3, 1)
transMag = (progress * 2) - 1
transMag = (.85 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 2744;
UPDATE `spellmissilemotion` SET `script` = '
transAngle = 0	

--speedAbs = startDistance / 7.5

if progress < 0.4 then
	transMag = (1 - (((progress*3.33)-1)^2)) * 20
	speedAbs = speedAbs * .5
else
	transMag = (1 - (progress*1.43) +0.43) * 20
	speedAbs = speedAbs * (1.2+progress)^3
end

' WHERE `id` = 2764;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .20

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 2784;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 1
local maxMagnitude = startDistance * .20
local spinRate = 360


transAngle = angle
progress = math.fmod(progress * 3, 1)
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
modelPitch = time * spinRate' WHERE `id` = 2804;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .5

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)

local magnitude = transMag * .15

transRight = (sin((rand1 * 1000) + (time * 400)) + cos((rand3 * 1000) + (time * 60))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 300)) + cos((rand1 * 1000) + (time * 100))) * magnitude
transFront = transFront +
	(sin((rand3 * 1000) + (time * 300)) + cos((rand2 * 1000) + (time * 100))) * magnitude

speedScalar = 1 - (progress * .5)' WHERE `id` = 2824;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = 1
local wavesPerSec = 2
local angle = 2
local maxMagnitude = startDistance * .15
local spinRate = 720

modelRoll = time * spinRate
transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude' WHERE `id` = 2825;
UPDATE `spellmissilemotion` SET `script` = 'local maxMagnitude = 1.5
local minSpeedScalar = .7
local maxSpeedScalar = 1.5

local magnitude = (progress * 1.9) - 1
magnitude = 1 - (magnitude * magnitude * magnitude * magnitude)

transRight = (sin((rand1 * 1000) + (time * 1000)) + cos((rand2 * 1000) + (time * 200))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 700)) + cos((rand1 * 1000) + (time * 300))) * magnitude
speedScalar = minSpeedScalar + ((maxSpeedScalar - minSpeedScalar) * rand3)
' WHERE `id` = 2828;
UPDATE `spellmissilemotion` SET `script` = 'local radius = (progress * 8)

local curAngle = progress * 90

transFront = (sin(curAngle) * radius) - distanceToFirePos
transRight = (cos(curAngle) * radius)' WHERE `id` = 2831;
UPDATE `spellmissilemotion` SET `script` = 'local startAngle = 45
local degreesPerSec = 0
local maxMagnitude = 1.75
local maxKickBack = 5

transAngle = startAngle + ((missileIndex / missileCount) * 360) + (time * degreesPerSec)
transMag = 1 - progress
transMag = (transMag * transMag * 2) - 1
transMag = (1 - (transMag * transMag))
transFront = transMag * -maxKickBack
transMag = transMag * maxMagnitude
' WHERE `id` = 2832;
UPDATE `spellmissilemotion` SET `script` = 'local throwHeight = 32.5;
local progressAtFirstBounce = .45;
local heightOfFirstBounce = 10;
local progressAtSecondBounce = .75;
local heightOfSecondBounce = 7;
local spinRate = 360

modelPitch = time * spinRate
transUp = throwHeight * progress;

if (progress < progressAtFirstBounce) then

	local normalizedProgress = progress / progressAtFirstBounce;
	transUp = transUp - ((normalizedProgress * normalizedProgress) * throwHeight);

elseif (progress < progressAtSecondBounce) then

	local normalizedProgress = (progress - progressAtFirstBounce) /
		(progressAtSecondBounce - progressAtFirstBounce);

	local curHeight = (normalizedProgress * 2) - 1;
	curHeight = (1 - (curHeight * curHeight)) * heightOfFirstBounce;

	transUp = (transUp - throwHeight) + curHeight;

else

	local normalizedProgress = (progress - progressAtSecondBounce) /
		(1.0 - progressAtSecondBounce);

	local curHeight = (normalizedProgress * 2) - 1;
	curHeight = (1 - (curHeight * curHeight)) * heightOfSecondBounce;

	transUp = (transUp - throwHeight) + curHeight;

end' WHERE `id` = 2833;
UPDATE `spellmissilemotion` SET `script` = 'local numSpirals = 5
local minRadius = 10
local radius = minRadius + (10 * progress * (rand1 * 2))

local curAngle = numSpirals * progress * -360

transFront = ((sin(curAngle) * radius * rand3)) * progress
transRight = (cos(curAngle) * radius * rand3) * progress

transUp = (rand2 * 5)* progress

scale = (rand2 + 1) * 2' WHERE `id` = 2834;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .35

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

transFront = -distanceToFirePos * (1 - progress)

local magnitude = transMag * .15

transRight = (sin((rand1 * 1000) + (time * 400)) + cos((rand3 * 1000) + (time * 60))) * magnitude
transUp = (sin((rand2 * 1000) + (time * 300)) + cos((rand1 * 1000) + (time * 100))) * magnitude
transFront = transFront +
	(sin((rand3 * 1000) + (time * 300)) + cos((rand2 * 1000) + (time * 100))) * magnitude

speedScalar = 1 - (progress * .5)' WHERE `id` = 2836;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = startDistance * .75
local spinRate = 540

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude

modelPitch = time * spinRate *rand1
modelYaw = time * spinRate
' WHERE `id` = 2837;
UPDATE `spellmissilemotion` SET `script` = 'local waveHeight = .2
local wavesPerSec = 2 + (rand1 * 3)

transRight = waveHeight * sin(time * wavesPerSec * 360) * ( 1 - progress ) * 2' WHERE `id` = 2839;
UPDATE `spellmissilemotion` SET `script` = '
transAngle = 0	

if (time < 5) then
	speedAbs = distanceToImpactPos / (5 - time)
else
	speedAbs = 100000
end

if progress < 0.4 then
	transMag = (1 - (((progress*3.33)-1)^2)) * 20
	speedAbs = speedAbs * 0.4
elseif progress < 0.9 then
	transMag = (1 - (progress*1.43) +0.43) * 20
	speedAbs = speedAbs * (progress^2)
else
	transMag = (1 - (progress*1.43) +0.43) * 20
end

' WHERE `id` = 2840;
UPDATE `spellmissilemotion` SET `script` = 'local angle = 0
local maxMagnitude = 20

local angle = 0
local maxMagnitude = startDistance * .10

transAngle = angle
transMag = (progress * 2) - 1
transMag = (1 - (transMag * transMag)) * maxMagnitude
speedAbs = totalDistance/6.5' WHERE `id` = 2841;
