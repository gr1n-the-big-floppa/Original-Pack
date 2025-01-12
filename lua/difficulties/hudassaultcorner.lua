local data = HUDAssaultCorner.sync_start_assault
function HUDAssaultCorner:sync_start_assault(assault_number)
	data(self, assault_number)																																											
	if managers.job:is_current_job_professional() or managers.crime_spree:is_active() then
		self:_hide_hostages()
	end
end

local data = HUDAssaultCorner._update_assault_hud_color
function HUDAssaultCorner:_update_assault_hud_color(color)
	data(self, color)
	local assault_panel = self._hud_panel:child("assault_panel")
	local icon_assaultbox = assault_panel:child("icon_assaultbox")
	if managers.job:is_current_job_professional() or managers.crime_spree:is_active() then
		icon_assaultbox:set_color(tweak_data.screen_colors.pro_color)
	else
		icon_assaultbox:set_color(color)
	end
end

function HUDAssaultCorner:_show_icon_assaultbox(icon_assaultbox)
	local TOTAL_T = 2
	local t = TOTAL_T
	local anim_pulse_glow = function(o)
		local t = 0
		local dt = 0
		while true do
			dt = coroutine.yield()
			t = (t + dt * 0.5) % 1
			o:set_alpha((math.sin(t * 180)))
			
		end
	end
	
	while t > 0 do
		local dt = coroutine.yield()
		t = t - dt
		local alpha = math.round(math.abs(math.sin(t * 360 * 2)))

		icon_assaultbox:set_alpha(alpha)
	end

	local is_whisper_mode = managers.groupai and managers.groupai:state():whisper_mode()
	if not is_whisper_mode and (managers.job:is_current_job_professional() or managers.crime_spree:is_active()) then
		icon_assaultbox:animate(anim_pulse_glow)
	else
		icon_assaultbox:set_alpha(1)
	end
end