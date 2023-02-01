-- FADESND: fadein/fadeout sound execution in screenpacks.
-- Version: 1.0
-- Date: 1/2/2023
-- Author: DoomJoshuaBoy
-- Compatible with: 0.98.2
-- Description: This module modifies the function main.f_fadeAnim to allow simple fade sounds in all menu sections.
--
-- New system.def parameters:
-- * fadein.snd: sets a sound hear when fadein. Takes effect after fadein.anim animation.
-- * fadeout.snd: sets a sound to hear when fadeout. Takes effect after fadeout.anim animation.

local played = false

function f_fadesnd(t)
	sndPlay(motif.files.snd_data, t[main.fadeType .. '_snd'][1], t[main.fadeType .. '_snd'][2])
	return  t[main.fadeType .. '_snd'][1] and t[main.fadeType .. '_snd'][2] end



function main.f_fadeAnim(t)
	if not main.fadeActive then played = false end
	--draw fade anim
	if main.fadeCnt > 0 then
		if t[main.fadeType .. '_data'] ~= nil then
			animDraw(t[main.fadeType .. '_data'])
			animUpdate(t[main.fadeType .. '_data'])
		end
		if played == false then
		f_fadesnd(t)
		played = true
		end

		main.fadeCnt = main.fadeCnt - 1
	end
	--draw fadein / fadeout
	main.fadeActive = fadeColor(
		main.fadeType,
		 main.fadeStart,
		t[main.fadeType .. '_time'],
		t[main.fadeType .. '_col'][1],
		t[main.fadeType .. '_col'][2],
		t[main.fadeType .. '_col'][3]
	)
end