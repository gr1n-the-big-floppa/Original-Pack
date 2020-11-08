local data = CharacterTweakData.init
function CharacterTweakData:init(tweak_data)
    data(self, tweak_data)
	local presets = self:_presets(tweak_data)
	local easy_mode = Global.game_settings and Global.game_settings.one_down
	
	self.presets.weapon.gang_member.is_pistol.aim_delay = {0, 1}
	self.presets.weapon.gang_member.is_pistol.focus_dis = 2000
	self.presets.weapon.gang_member.is_pistol.miss_dis = 20
	self.presets.weapon.gang_member.is_pistol.RELOAD_SPEED = 1.5
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{r = 300, 	acc = {0.7, 1}, 	dmg_mul = 3.5, 	recoil = {0.25, 0.45}, 	mode = {1, 0, 0, 0}},
		{r = 2000, 	acc = {0.1, 0.6}, 	dmg_mul = 1, 	recoil = {0.25, 2}, 	mode = {1, 0, 0, 0}},
		{r = 10000, acc = {0, 0.15}, 	dmg_mul = 1, 	recoil = {2, 3}, 		mode = {1, 0, 0, 0}}
	}
	self.presets.weapon.gang_member.is_rifle.aim_delay = {0, 1}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{r = 300,	acc = {0.7, 1},		dmg_mul = 3.5,	recoil = {0.25, 0.45},	mode = {0.1, 0.3, 4, 7}},
		{r = 2000,	acc = {0.1, 0.6},	dmg_mul = 0.5,	recoil = {0.25, 2},		mode = {2, 2, 5, 8}},
		{r = 10000,	acc = {0, 0.15},	dmg_mul = 0.5,	recoil = {2, 3},		mode = {2, 1, 1, 0.01}}
	}
	self.presets.weapon.gang_member.is_sniper.aim_delay = {0.5, 2}
	self.presets.weapon.gang_member.is_sniper.FALLOFF[1].dmg_mul = 5
	self.presets.weapon.gang_member.is_sniper.FALLOFF[2].dmg_mul = 5
	self.presets.weapon.gang_member.is_sniper.FALLOFF[3].dmg_mul = 5
	self.presets.weapon.gang_member.is_sniper.FALLOFF[4].dmg_mul = 2.5
	self.presets.weapon.gang_member.is_sniper.FALLOFF[5].dmg_mul = 2.5
	self.presets.weapon.gang_member.is_lmg.aim_delay = {0, 1}
	self.presets.weapon.gang_member.is_lmg.FALLOFF[1].dmg_mul = 2
	self.presets.weapon.gang_member.is_lmg.FALLOFF[2].dmg_mul = 1.5
	self.presets.weapon.gang_member.is_lmg.FALLOFF[3].dmg_mul = 1
	self.presets.weapon.gang_member.is_lmg.FALLOFF[4].dmg_mul = 0.5
	self.presets.weapon.gang_member.is_lmg.FALLOFF[5].dmg_mul = 0.2
	self.presets.weapon.gang_member.is_lmg.FALLOFF[6].dmg_mul = 0.1
	self.presets.weapon.gang_member.is_shotgun_pump.aim_delay = {0, 0.02}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{r = 300, 	acc = {0.7, 1}, 	dmg_mul = 3.5, 	recoil = {2, 2},	mode = {1, 0, 0, 0}},
		{r = 1000,	acc = {0.1, 0.6}, 	dmg_mul = 1, 	recoil = {2, 2},	mode = {1, 0, 0, 0}},
		{r = 4000,	acc = {0, 0.15}, 	dmg_mul = 0.1, 	recoil = {2, 4},	mode = {1, 0, 0, 0}}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.aim_delay = {0, 0.02}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{r = 300, 	acc = {0.7, 1}, 	dmg_mul = 3.5, 	recoil = {2, 2},	mode = {1, 1, 4, 6}},
		{r = 1000, 	acc = {0.1, 0.6}, 	dmg_mul = 1, 	recoil = {2, 2},	mode = {1, 1, 4, 6}},
		{r = 4000, 	acc = {0, 0.15}, 	dmg_mul = 0.1, 	recoil = {2, 4},	mode = {2, 1, 0, 0}}
	}
	self.presets.move_speed.very_slow_but_faster = {
		stand = {
			walk = 	{ntl = {fwd = 220, strafe = 170, bwd = 144},		hos = {fwd = 220, strafe = 170, bwd = 144},	cbt = {fwd = 220, strafe = 170, bwd = 144}},
			run = 	{hos = {fwd = 220, strafe = 190, bwd = 144},		cbt = {fwd = 220, strafe = 150, bwd = 156}}
		},
		crouch = {
			walk = 	{hos = {fwd = 220, strafe = 170, bwd = 144},		cbt = {fwd = 220, strafe = 170, bwd = 144}},
			run = 	{hos = {fwd = 220, strafe = 190, bwd = 144},		cbt = {fwd = 220, strafe = 150, bwd = 156}}
		}
	}
	self.presets.hurt_severities.tough_light_hurt_and_fire = {
		tase = true,
		bullet = {
			health_reference = 1,
			zones = {{light = 1}}
		},
		explosion = {
			health_reference = 1,
			zones = {{moderate = 0.5, explode = 1}}
		},
		melee = {
			health_reference = 1,
			zones = {{light = 1}}
		},
		fire = {
			health_reference = 1,
			zones = {{fire = 1}}
		},
		poison = {
			health_reference = 1,
			zones = {{none = 1}}
		}
	}
	self.presets.hurt_severities.dodge_light_hurt_and_fire = {
		tase = true,
		bullet = {
			health_reference = 1,
			zones = {{light = 1}}
		},
		explosion = {
			health_reference = 1,
			zones = {{moderate = 1}}
		},
		melee = {
			health_reference = 1,
			zones = {{light = 1}}
		},
		fire = {
			health_reference = 1,
			zones = {{fire = 1}}
		},
		poison = {
			health_reference = 1,
			zones = {{none = 1}}
		}
	}

	local movement_speed = easy_mode and self.presets.move_speed.lightning or self.presets.move_speed.fast
	self.russian.move_speed 	= 		movement_speed
	self.german.move_speed 		= 		movement_speed
	self.spanish.move_speed 	= 		movement_speed
	self.american.move_speed 	= 		movement_speed
	self.jowi.move_speed 		= 		movement_speed
	self.old_hoxton.move_speed 	=  		movement_speed
	self.female_1.move_speed 	=  		movement_speed
	self.dragan.move_speed 		=  		movement_speed
	self.jacket.move_speed 		=  		movement_speed
	self.bonnie.move_speed 		=  		movement_speed
	self.sokol.move_speed 		=  		movement_speed
	self.dragon.move_speed 		=  		movement_speed
	self.bodhi.move_speed 		=  		movement_speed
	self.jimmy.move_speed 		=  		movement_speed
	self.sydney.move_speed 		= 		movement_speed
	self.wild.move_speed 		= 		movement_speed
	self.chico.move_speed 		=		movement_speed
	self.max.move_speed 		= 		movement_speed
	self.joy.move_speed 		= 		movement_speed
	self.myh.move_speed 		= 		movement_speed
	self.ecp_female.move_speed 	= 		movement_speed
	self.ecp_male.move_speed 	= 		movement_speed
	
	if not easy_mode then
		self.presets.surrender = {
			always = {
				base_chance = 1
			},
			never = {
				base_chance = 0
			},
			easy = {
				base_chance = 0.75,
				significant_chance = 0.1,
				violence_timeout = 2,
				reasons = {
					pants_down = 1,
					isolated = 0.1,
					weapon_down = 0.8,
					health = {
						[1] = 0.2,
						[0.3] = 1
					}
				},
				factors = {
					unaware_of_aggressor = 0.08,
					enemy_weap_cold = 0.15,
					flanked = 0.07,
					aggressor_dis = {
						[300.0] = 0.15,
						[1000.0] = 0.02
					}
				}
			},
			normal = {
				base_chance = 0.5,
				significant_chance = 0.2,
				violence_timeout = 2,
				reasons = {
					health = {
						[1] = 0,
						[0.5] = 0.5
					}
				},
				factors = {
					unaware_of_aggressor = 0.1,
					enemy_weap_cold = 0.11,
					flanked = 0.05,
					aggressor_dis = {
						[300.0] = 0.1,
						[1000.0] = 0
					}
				}
			},
			hard = {
				base_chance = 0.35,
				significant_chance = 0.25,
				violence_timeout = 2,
				reasons = {
					pants_down = 0.8,
					weapon_down = 0.2,
					health = {
						[1] = 0,
						[0.35] = 0.5
					}
				},
				factors = {
					enemy_weap_cold = 0.05,
					unaware_of_aggressor = 0.1,
					flanked = 0.04,
					isolated = 0.1,
					aggressor_dis = {
						[300.0] = 0.1,
						[1000.0] = 0
					}
				}
			},
			special = {
				base_chance = 0.25,
				significant_chance = 0.25,
				violence_timeout = 2,
				reasons = {
					pants_down = 0.6,
					weapon_down = 0.02,
					health = {
						[0.5] = 0,
						[0.2] = 0.25
					}
				},
				factors = {
					enemy_weap_cold = 0.05,
					unaware_of_aggressor = 0.02,
					isolated = 0.05,
					flanked = 0.015
				}
			}
		}	
		self.presets.gang_member_damage.hurt_severity.bullet = {
			health_reference = "current",
			zones = {
				{
					health_limit = 0.4,
					none = 0.3,
					light = 0.6,
					moderate = 0.1
				},
				{
					health_limit = 0.7,
					none = 0.1,
					light = 0.7,
					moderate = 0.2
				},
				{
					none = 0.1,
					light = 0.5,
					moderate = 0.3,
					heavy = 0.1
				}
			}
		}
		
		self.presets.gang_member_damage.MIN_DAMAGE_INTERVAL = 0
		
		self.presets.weapon.normal.is_pistol.melee_dmg = 8
		self.presets.weapon.normal.akimbo_pistol.melee_dmg = 8
		self.presets.weapon.normal.is_rifle.melee_dmg = 8
		self.presets.weapon.normal.is_bullpup.melee_dmg = 8
		self.presets.weapon.normal.is_shotgun_pump.melee_dmg = 8
		self.presets.weapon.normal.is_shotgun_mag.melee_dmg = 8
		self.presets.weapon.normal.is_smg.melee_dmg = 8
		self.presets.weapon.normal.is_revolver.melee_dmg = 8
		self.presets.weapon.normal.mini.melee_dmg = 8
		self.presets.weapon.normal.is_lmg.melee_dmg = 8
	end
	
	
	self.presets.weapon.expert.is_rifle.focus_delay = 2
	self.presets.weapon.expert.is_rifle.focus_dis = 300
	self.presets.weapon.expert.is_rifle.RELOAD_SPEED = 1.2
	self.presets.weapon.expert.is_rifle.melee_dmg = 20
	self.presets.weapon.expert.is_rifle.FALLOFF = {
		{r = 100, 	acc = {0.6, 0.9}, 		dmg_mul = 6, 		recoil = {0.4, 0.8}, 	mode = {0, 3, 3, 1}},
		{r = 500, 	acc = {0.55, 0.95}, 	dmg_mul = 5.75, 	recoil = {0.45, 0.8}, 	mode = {0, 3, 3, 1}},
		{r = 1000,	acc = {0.525, 0.8}, 	dmg_mul = 5.75, 	recoil = {0.35, 0.75}, 	mode = {1, 2, 2, 0}},
		{r = 2000,	acc = {0.5, 0.7}, 		dmg_mul = 5.5, 		recoil = {0.4, 1.2}, 	mode = {3, 2, 2, 0}},
		{r = 3000,	acc = {0.2, 0.4}, 		dmg_mul = 5.25, 	recoil = {1.5, 3}, 		mode = {3, 1, 1, 0}}
	}
	self.presets.weapon.expert.is_bullpup.melee_dmg = 20
	self.presets.weapon.expert.is_shotgun_pump.focus_delay = 2
	self.presets.weapon.expert.is_shotgun_pump.RELOAD_SPEED = 1.2
	self.presets.weapon.expert.is_shotgun_pump.melee_dmg = 20
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF = {
		{r = 100,	acc = {0.6, 0.95},	dmg_mul = 6.5,	recoil = {1, 1.5},	mode = {1, 0, 0, 0}},
		{r = 500,	acc = {0.5, 0.9},	dmg_mul = 5.5,	recoil = {1.5, 2},	mode = {1, 0, 0, 0}},
		{r = 1000,	acc = {0.4, 0.75},	dmg_mul = 4,	recoil = {1.5, 2},	mode = {1, 0, 0, 0}},
		{r = 2000,	acc = {0.1, 0.55},	dmg_mul = 3.5,	recoil = {1.5, 2},	mode = {1, 0, 0, 0}},
		{r = 3000,	acc = {0.1, 0.35},	dmg_mul = 2.5,	recoil = {1.5, 2},	mode = {1, 0, 0, 0}}
	}
	self.presets.weapon.expert.is_smg.FALLOFF = {
		{r = 100,	acc = {0.6, 0.9},	dmg_mul = 5,	recoil = {0.5, 0.6},	mode = {0, 3, 3, 1}},
		{r = 500,	acc = {0.5, 0.85},	dmg_mul = 4,	recoil = {0.5, 0.65},	mode = {0, 1, 3, 1}},
		{r = 1000,	acc = {0.3, 0.65},	dmg_mul = 3.5,	recoil = {0.55, 0.85},	mode = {2, 1, 3, 0}},
		{r = 2000,	acc = {0.35, 0.55},	dmg_mul = 3,	recoil = {0.65, 1},		mode = {2, 1, 3, 0}},
		{r = 3000,	acc = {0.2, 0.35},	dmg_mul = 2.5,	recoil = {0.65, 1.2},	mode = {4, 1, 0, 0}}
	}
	
	self.security.chatter = {
		aggressive = true,
		contact = true,
		clear = true,
		clear_whisper = true,
		clear_whisper_2 = true,
		reload = true,
		look_for_angle = true,
		ecm = true,
		saw = true,
		trip_mines = true,
		sentry = true,
		suppress = true
	}
	self.security.HEALTH_INIT = 5
	self.security.headshot_dmg_mul = self.security.HEALTH_INIT / 1
	self.security_mex.HEALTH_INIT = 5
	
	self.gensec.chatter = {
		aggressive = true,
		contact = true,
		clear = true,
		clear_whisper = true,
		clear_whisper_2 = true,
		reload = true,
		look_for_angle = true,
		ecm = true,
		saw = true,
		trip_mines = true,
		sentry = true,
		suppress = true
	}
	self.gensec.surrender = self.presets.surrender.hard
	self.gensec.HEALTH_INIT = 10
	self.gensec.headshot_dmg_mul = self.gensec.HEALTH_INIT / 1
	
	self.cop.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.cop.HEALTH_INIT = 5
	self.cop.headshot_dmg_mul = self.cop.HEALTH_INIT / 1
	self.cop.surrender = self.presets.surrender.normal
	
	self.fbi.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.fbi.HEALTH_INIT = 8
	self.fbi.headshot_dmg_mul = self.fbi.HEALTH_INIT / 1
	self.fbi.surrender = self.presets.surrender.normal
	
	self.swat.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.swat.HEALTH_INIT = 13
	self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT / 2
	self.swat.surrender = self.presets.surrender.hard
	
	self.heavy_swat.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.heavy_swat.HEALTH_INIT = 20
	self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT / 6
	self.heavy_swat.surrender = self.presets.surrender.hard
	
	self.fbi_swat.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.fbi_swat.HEALTH_INIT = 17
	self.fbi_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 5
	self.fbi_swat.surrender = self.presets.surrender.hard
	
	self.fbi_heavy_swat.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.fbi_heavy_swat.HEALTH_INIT = 28
	self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.HEALTH_INIT / 14
	self.fbi_heavy_swat.surrender = self.presets.surrender.hard
	
	self.city_swat.chatter = {
	    incomming_captain = true,
	    incomming_tank = true,
	    incomming_spooc = true,
	    incomming_shield = true,
	    incomming_taser = true,
	    entry = true,
	    aggressive = true,
	    aggressive_assault = true,
	    retreat = true,
	    contact = true,
	    clear = true,
	    clear_whisper = true,
	    go_go = true,
	    push = true,
	    reload = true,
	    look_for_angle = true,
	    ecm = true,
	    saw = true,
	    trip_mines = true,
	    sentry = true,
	    ready = true,
	    smoke = true,
	    flash_grenade = true,
	    follow_me = true,
	    deathguard = true,
	    open_fire = true,
	    suppress = true
	}
	self.city_swat.HEALTH_INIT = 24
	self.city_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 8
	self.city_swat.surrender = self.presets.surrender.hard
	self.city_swat.damage.explosion_damage_mul = 1
	self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
	
	self.sniper.headshot_dmg_mul = self.sniper.HEALTH_INIT / 2
	
	self.gangster.HEALTH_INIT = 7
	self.gangster.headshot_dmg_mul = self.gangster.HEALTH_INIT / 1
	
	self.tank.HEALTH_INIT = 550
	self.tank.headshot_dmg_mul = self.tank.HEALTH_INIT / 24
	self.tank.damage.explosion_damage_mul = 1
	self.tank.move_speed = self.presets.move_speed.very_slow
	self.tank.damage.hurt_severity = self.presets.hurt_severities.only_light_hurt_and_fire
	self.tank.weapon.is_shotgun_mag.FALLOFF[1].dmg_mul = 3
	self.tank.ecm_hurts.ears = {min_duration = 7, max_duration = 9}
	self.tank.chatter = {
		aggressive = true,
		retreat = true,
		go_go = true,
		contact = true,
		entrance = true
	}	
	self.tank_mini.move_speed = self.presets.move_speed.very_slow
	self.tank_mini.damage.hurt_severity = self.presets.hurt_severities.dodge_light_hurt_and_fire
	self.tank_mini.HEALTH_INIT = 1150
	self.tank_mini.headshot_dmg_mul = self.tank_mini.HEALTH_INIT / 75
	
	self.spooc.headshot_dmg_mul = self.spooc.HEALTH_INIT / 14
	
	self.shield.die_sound_event = nil
	self.shield.HEALTH_INIT = 17
	self.shield.headshot_dmg_mul = self.shield.HEALTH_INIT / 6
	self.shield.move_speed = self.presets.move_speed.fast
	self.shield.weapon.is_smg.FALLOFF[2].dmg_mul = 3
	self.shield.weapon.is_smg.FALLOFF[3].dmg_mul = 2
	self.shield.weapon.is_smg.FALLOFF[4].dmg_mul = 1
	self.shield.chatter = {
		incomming_captain = true,
		incomming_tank = true,
		incomming_spooc = true,
		incomming_taser = true,
		entry = true,
		follow_me = true,
		aggressive_assault = true,
		retreat = true,
		go_go = true,
		push = true,
		clear = true,
		reload = true
	}
	
	self.taser.HEALTH_INIT = 36
	self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 20
	
	self.shield.surrender = nil
	self.taser.surrender = nil
	self.medic.surrender = nil
	self.spooc.surrender = nil
	self.tank_medic.surrender = nil
	self.tank.surrender = nil
	self.tank_mini.surrender = nil
	
	if easy_mode then
		self.security.HEALTH_INIT = 3
		self.security_mex.HEALTH_INIT = 3
		self.cop.HEALTH_INIT = 3
		self.gangster.HEALTH_INIT = 4
		self.fbi.HEALTH_INIT = 5
		self.gensec.HEALTH_INIT = 6
		self.swat.HEALTH_INIT = 8
		self.heavy_swat.HEALTH_INIT = 10
		self.fbi_swat.HEALTH_INIT = 13
		self.fbi_heavy_swat.HEALTH_INIT = 20
		self.shield.HEALTH_INIT = 10
	end
	
end

function CharacterTweakData:_multiply_all_hp(hp_mul, hs_mul)
	self.security.HEALTH_INIT = self.security.HEALTH_INIT * hp_mul
	self.cop.HEALTH_INIT = self.cop.HEALTH_INIT * hp_mul
	self.fbi.HEALTH_INIT = self.fbi.HEALTH_INIT * hp_mul
	self.swat.HEALTH_INIT = self.swat.HEALTH_INIT * hp_mul
	self.heavy_swat.HEALTH_INIT = self.heavy_swat.HEALTH_INIT * hp_mul
	self.fbi_heavy_swat.HEALTH_INIT = self.fbi_heavy_swat.HEALTH_INIT * hp_mul
	self.sniper.HEALTH_INIT = self.sniper.HEALTH_INIT * hp_mul
	self.gangster.HEALTH_INIT = self.gangster.HEALTH_INIT * hp_mul
	self.biker.HEALTH_INIT = self.biker.HEALTH_INIT * hp_mul
	self.tank.HEALTH_INIT = self.tank.HEALTH_INIT * hp_mul
	self.tank_mini.HEALTH_INIT = self.tank_mini.HEALTH_INIT * hp_mul
	self.tank_medic.HEALTH_INIT = self.tank_medic.HEALTH_INIT * hp_mul
	self.spooc.HEALTH_INIT = self.spooc.HEALTH_INIT * hp_mul
	self.shadow_spooc.HEALTH_INIT = self.shadow_spooc.HEALTH_INIT * hp_mul
	self.shield.HEALTH_INIT = self.shield.HEALTH_INIT * hp_mul
	self.phalanx_minion.HEALTH_INIT = self.phalanx_minion.HEALTH_INIT * hp_mul
	self.phalanx_vip.HEALTH_INIT = self.phalanx_vip.HEALTH_INIT * hp_mul
	self.taser.HEALTH_INIT = self.taser.HEALTH_INIT * hp_mul
	self.city_swat.HEALTH_INIT = self.city_swat.HEALTH_INIT * hp_mul
	self.biker_escape.HEALTH_INIT = self.biker_escape.HEALTH_INIT * hp_mul
	self.fbi_swat.HEALTH_INIT = self.fbi_swat.HEALTH_INIT * hp_mul
	self.tank_hw.HEALTH_INIT = self.tank_hw.HEALTH_INIT * hp_mul
	self.medic.HEALTH_INIT = self.medic.HEALTH_INIT * hp_mul
	self.bolivian.HEALTH_INIT = self.bolivian.HEALTH_INIT * hp_mul
	self.bolivian_indoors.HEALTH_INIT = self.bolivian_indoors.HEALTH_INIT * hp_mul
	self.bolivian_indoors_mex.HEALTH_INIT = self.bolivian_indoors_mex.HEALTH_INIT * hp_mul
	self.drug_lord_boss.HEALTH_INIT = self.drug_lord_boss.HEALTH_INIT * hp_mul
	self.drug_lord_boss_stealth.HEALTH_INIT = self.drug_lord_boss_stealth.HEALTH_INIT * hp_mul

	if self.security.headshot_dmg_mul then
		self.security.headshot_dmg_mul = self.security.headshot_dmg_mul * hs_mul
	end

	if self.cop.headshot_dmg_mul then
		self.cop.headshot_dmg_mul = self.cop.headshot_dmg_mul * hs_mul
	end

	if self.fbi.headshot_dmg_mul then
		self.fbi.headshot_dmg_mul = self.fbi.headshot_dmg_mul * hs_mul
	end

	if self.swat.headshot_dmg_mul then
		self.swat.headshot_dmg_mul = self.swat.headshot_dmg_mul * hs_mul
	end

	if self.heavy_swat.headshot_dmg_mul then
		self.heavy_swat.headshot_dmg_mul = self.heavy_swat.headshot_dmg_mul * hs_mul
	end

	if self.fbi_heavy_swat.headshot_dmg_mul then
		self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.headshot_dmg_mul * hs_mul
	end

	if self.sniper.headshot_dmg_mul then
		self.sniper.headshot_dmg_mul = self.sniper.headshot_dmg_mul * hs_mul
	end

	if self.gangster.headshot_dmg_mul then
		self.gangster.headshot_dmg_mul = self.gangster.headshot_dmg_mul * hs_mul
	end

	if self.biker.headshot_dmg_mul then
		self.biker.headshot_dmg_mul = self.biker.headshot_dmg_mul * hs_mul
	end

	if self.tank.headshot_dmg_mul then
		self.tank.headshot_dmg_mul = self.tank.headshot_dmg_mul * hs_mul
	end

	if self.shadow_spooc.headshot_dmg_mul then
		self.shadow_spooc.headshot_dmg_mul = self.shadow_spooc.headshot_dmg_mul * hs_mul
	end

	if self.spooc.headshot_dmg_mul then
		self.spooc.headshot_dmg_mul = self.spooc.headshot_dmg_mul * hs_mul
	end

	if self.shield.headshot_dmg_mul then
		self.shield.headshot_dmg_mul = self.shield.headshot_dmg_mul * hs_mul
	end

	if self.phalanx_minion.headshot_dmg_mul then
		self.phalanx_minion.headshot_dmg_mul = self.phalanx_minion.headshot_dmg_mul * hs_mul
	end

	if self.phalanx_vip.headshot_dmg_mul then
		self.phalanx_vip.headshot_dmg_mul = self.phalanx_vip.headshot_dmg_mul * hs_mul
	end

	if self.taser.headshot_dmg_mul then
		self.taser.headshot_dmg_mul = self.taser.headshot_dmg_mul * hs_mul
	end

	if self.biker_escape.headshot_dmg_mul then
		self.biker_escape.headshot_dmg_mul = self.biker_escape.headshot_dmg_mul * hs_mul
	end

	if self.city_swat.headshot_dmg_mul then
		self.city_swat.headshot_dmg_mul = self.city_swat.headshot_dmg_mul * hs_mul
	end

	if self.fbi_swat.headshot_dmg_mul then
		self.fbi_swat.headshot_dmg_mul = self.fbi_swat.headshot_dmg_mul * hs_mul
	end

	if self.tank_hw.headshot_dmg_mul then
		self.tank_hw.headshot_dmg_mul = self.tank_hw.headshot_dmg_mul * hs_mul
	end

	if self.medic.headshot_dmg_mul then
		self.medic.headshot_dmg_mul = self.medic.headshot_dmg_mul * hs_mul
	end

	if self.drug_lord_boss.headshot_dmg_mul then
		self.drug_lord_boss.headshot_dmg_mul = self.drug_lord_boss.headshot_dmg_mul * hs_mul
	end

	if self.bolivian.headshot_dmg_mul then
		self.bolivian.headshot_dmg_mul = self.bolivian.headshot_dmg_mul * hs_mul
	end

	if self.bolivian_indoors.headshot_dmg_mul then
		self.bolivian_indoors.headshot_dmg_mul = self.bolivian_indoors.headshot_dmg_mul * hs_mul
	end

	if self.bolivian_indoors_mex.headshot_dmg_mul then
		self.bolivian_indoors_mex.headshot_dmg_mul = self.bolivian_indoors_mex.headshot_dmg_mul * hs_mul
	end

	if self.tank_medic.headshot_dmg_mul then
		self.tank_medic.headshot_dmg_mul = self.tank_medic.headshot_dmg_mul * hs_mul
	end

	if self.tank_mini.headshot_dmg_mul then
		self.tank_mini.headshot_dmg_mul = self.tank_mini.headshot_dmg_mul * hs_mul
	end
end

function CharacterTweakData:_set_normal()
	self:_multiply_all_hp(1, 1)
	
	self.swat.HEALTH_INIT = 8
	self.heavy_swat.HEALTH_INIT = 10
	self.shield.HEALTH_INIT = 10
	
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.HEALTH_INIT = 50
	self.mobster_boss.HEALTH_INIT = 50
	self.biker_boss.HEALTH_INIT = 100
	self.chavez_boss.HEALTH_INIT = 100
	self.shield.HEALTH_INIT = 10
	self.presets.gang_member_damage.REGENERATE_TIME = 1.5
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.2
	
	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 125
	else
		self.presets.gang_member_damage.HEALTH_INIT = 60
	end
	
	self:_set_characters_weapon_preset("normal")
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)
	self.flashbang_multiplier = 1
	self.concussion_multiplier = 1
end

function CharacterTweakData:_set_hard()
	self:_multiply_all_hp(1, 1)

	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.HEALTH_INIT = 100
	self.mobster_boss.HEALTH_INIT = 100
	self.biker_boss.HEALTH_INIT = 100
	self.chavez_boss.HEALTH_INIT = 100
	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.4

	self:_set_characters_weapon_preset("normal")

	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 160
	else
		self.presets.gang_member_damage.HEALTH_INIT = 80
	end
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)
	self.flashbang_multiplier = 1.25
	self.concussion_multiplier = 1
	self.shadow_spooc.shadow_spooc_attack_timeout = {8, 10}
	self.spooc.spooc_attack_timeout = {8, 10}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 7,	r = 700,	acc = {0.6, 1},		recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 6,	r = 4000,	acc = {0.5, 0.9},	recoil = {4, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 3,	r = 10000,	acc = {0, 0.3},		recoil = {4, 6},	mode = {1, 0, 0, 0}}
	}
end

function CharacterTweakData:_set_overkill()
	self:_multiply_all_hp(1, 1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.HEALTH_INIT = 300
	self.mobster_boss.HEALTH_INIT = 300
	self.biker_boss.HEALTH_INIT = 300
	self.chavez_boss.HEALTH_INIT = 300
	self.phalanx_minion.HEALTH_INIT = 30
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 15
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 60
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 30
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	
	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 200
	else
		self.presets.gang_member_damage.HEALTH_INIT = 100
	end
	
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("good")

	self.shadow_spooc.shadow_spooc_attack_timeout = {6, 8}
	self.spooc.spooc_attack_timeout = {6, 8}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 8, 	r = 700, 	acc = {0.7, 1}, 	recoil = {3, 6}, mode = {1, 0, 0, 0}},
		{dmg_mul = 6, 	r = 4000, 	acc = {0.5, 0.95}, 	recoil = {4, 6}, mode = {1, 0, 0, 0}},
		{dmg_mul = 3.5, r = 10000, 	acc = {0, 0.3}, 	recoil = {4, 6}, mode = {1, 0, 0, 0}}
	}
	self.flashbang_multiplier = 1.5
	self.concussion_multiplier = 1
end

function CharacterTweakData:_set_overkill_145()
	self:_multiply_all_hp(1, 1)
	self:_multiply_all_speeds(1.05, 1.05)
	local easy_mode = Global.game_settings and Global.game_settings.one_down

	self.hector_boss.HEALTH_INIT = 600
	self.mobster_boss.HEALTH_INIT = 600
	self.biker_boss.HEALTH_INIT = 600
	self.chavez_boss.HEALTH_INIT = 600
	self.phalanx_minion.HEALTH_INIT = 60
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 30
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 120
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 60
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 250
	else
		self.presets.gang_member_damage.HEALTH_INIT = 125
	end
	
	self:_set_characters_weapon_preset("expert")

	self.shadow_spooc.shadow_spooc_attack_timeout = {3.5, 5}
	self.spooc.spooc_attack_timeout = {3.5, 5}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 10, 	r = 700, 	acc = {0.7, 1}, 	recoil = {3, 5}, mode = {1, 0, 0, 0}},
		{dmg_mul = 10, 	r = 4000, 	acc = {0.6, 0.95}, 	recoil = {3, 5}, mode = {1, 0, 0, 0}},
		{dmg_mul = 6, 	r = 10000, 	acc = {0.2, 0.5}, 	recoil = {3, 5}, mode = {1, 0, 0, 0}}
	}
	self.flashbang_multiplier = 1.75
	self.concussion_multiplier = 1
	
	local movement_speed = easy_mode and self.presets.move_speed.lightning or self.presets.move_speed.very_fast
	self.russian.move_speed 	= 		movement_speed
	self.german.move_speed 		= 		movement_speed
	self.spanish.move_speed 	= 		movement_speed
	self.american.move_speed 	= 		movement_speed
	self.jowi.move_speed 		= 		movement_speed
	self.old_hoxton.move_speed 	=  		movement_speed
	self.female_1.move_speed 	=  		movement_speed
	self.dragan.move_speed 		=  		movement_speed
	self.jacket.move_speed 		=  		movement_speed
	self.bonnie.move_speed 		=  		movement_speed
	self.sokol.move_speed 		=  		movement_speed
	self.dragon.move_speed 		=  		movement_speed
	self.bodhi.move_speed 		=  		movement_speed
	self.jimmy.move_speed 		=  		movement_speed
	self.sydney.move_speed 		= 		movement_speed
	self.wild.move_speed 		= 		movement_speed
	self.chico.move_speed 		=		movement_speed
	self.max.move_speed 		= 		movement_speed
	self.joy.move_speed 		= 		movement_speed
	self.myh.move_speed 		= 		movement_speed
	self.ecp_female.move_speed 	= 		movement_speed
	self.ecp_male.move_speed 	= 		movement_speed
end

function CharacterTweakData:_set_overkill_290()
	self:_multiply_all_hp(1, 1)
	local easy_mode = Global.game_settings and Global.game_settings.one_down

	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 900
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(1.05, 1.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	if Global.game_settings and Global.game_settings.one_down then
		self.presets.gang_member_damage.HEALTH_INIT = 300
	else
		self.presets.gang_member_damage.HEALTH_INIT = 150
	end
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")
	self.shadow_spooc.shadow_spooc_attack_timeout = {3, 4}
	self.spooc.spooc_attack_timeout = {3, 4}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 12,	r = 700,	acc = {0.7, 1},		recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 4000,	acc = {0.6, 0.95},	recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 10000,	acc = {0.2, 0.8},	recoil = {3, 5},	mode = {1, 0, 0, 0}}
	}
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{dmg_mul = 8,	r = 100,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7.5,	r = 500,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.85},	recoil = {0.45, 0.8},	mode = {1, 2, 2, 0}},
		{dmg_mul = 5,	r = 2000,	acc = {0.5, 0.65},	recoil = {0.45, 0.8},	mode = {3, 2, 2, 0}},
		{dmg_mul = 3.5,	r = 3000,	acc = {0.3, 0.5}, 	recoil = {1, 1.2}, 		mode = {3, 1, 1, 0}}
	}
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
	self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
	self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
	self.tank.weapon.is_rifle.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_rifle.focus_delay = 0
	self.tank.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55}, recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.tank.weapon.mini.aim_delay = {
		0,
		0
	}
	self.tank.weapon.mini.focus_delay = 0
	self.tank.weapon.mini.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55},	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.shield.weapon.is_smg.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{dmg_mul = 7,	r = 0, 		acc = {0.9, 0.95},	recoil = {0.35, 0.35},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 700, 	acc = {0.8, 0.8}, 	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 1000,	acc = {0.6, 0.65},	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 2000,	acc = {0.5, 0.7}, 	recoil = {0.35, 1}, 	mode = {2, 5, 6, 4}},
		{dmg_mul = 7,	r = 3000,	acc = {0.5, 0.5}, 	recoil = {0.5, 1.2}, 	mode = {6, 4, 2, 0}}
	}
	self.shield.weapon.is_pistol.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{dmg_mul = 7.5, r = 0,		acc = {0.6, 0.9},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 700,	acc = {0.6, 0.8},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 1000,	acc = {0.6, 0.75},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 2000,	acc = {0.6, 0.75},	recoil = {0.35, 0.65},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 3000,	acc = {0.5, 0.6},	recoil = {0.35, 1.5},	mode = {1, 0, 0, 0}}
	}
	self.taser.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 7,	r = 100, 	acc = {0.9, 0.95}, 	recoil = {0.4, 0.4}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 500, 	acc = {0.75, 0.95}, recoil = {0.4, 0.5}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.9}, 	recoil = {0.4, 0.6}, 	mode = {1, 2, 3, 0}},
		{dmg_mul = 7,	r = 2000,	acc = {0.65, 0.8}, 	recoil = {0.5, 1}, 		mode = {3, 2, 2, 0}},
		{dmg_mul = 7,	r = 3000,	acc = {0.55, 0.75}, recoil = {1, 2}, 		mode = {3, 1, 1, 0}}
	}

	self.tank.HEALTH_INIT = 935
	self.fbi_heavy_swat.HEALTH_INIT = 34
	self.spooc.HEALTH_INIT = 102
	self.taser.HEALTH_INIT = 60
	self.phalanx_minion.HEALTH_INIT = 80
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 160
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1

	self.russian.move_speed 	= 		self.presets.move_speed.lightning
	self.german.move_speed 		= 		self.presets.move_speed.lightning
	self.spanish.move_speed 	= 		self.presets.move_speed.lightning
	self.american.move_speed 	= 		self.presets.move_speed.lightning
	self.jowi.move_speed 		= 		self.presets.move_speed.lightning
	self.old_hoxton.move_speed 	=  		self.presets.move_speed.lightning
	self.female_1.move_speed 	=  		self.presets.move_speed.lightning
	self.dragan.move_speed 		=  		self.presets.move_speed.lightning
	self.jacket.move_speed 		=  		self.presets.move_speed.lightning
	self.bonnie.move_speed 		=  		self.presets.move_speed.lightning
	self.sokol.move_speed 		=  		self.presets.move_speed.lightning
	self.dragon.move_speed 		=  		self.presets.move_speed.lightning
	self.bodhi.move_speed 		=  		self.presets.move_speed.lightning
	self.jimmy.move_speed 		=  		self.presets.move_speed.lightning
	self.sydney.move_speed 		= 		self.presets.move_speed.lightning
	self.wild.move_speed 		= 		self.presets.move_speed.lightning
	self.chico.move_speed 		=		self.presets.move_speed.lightning
	self.max.move_speed 		= 		self.presets.move_speed.lightning
	self.joy.move_speed 		= 		self.presets.move_speed.lightning
	self.myh.move_speed 		= 		self.presets.move_speed.lightning
	self.ecp_female.move_speed 	= 		self.presets.move_speed.lightning
	self.ecp_male.move_speed 	= 		self.presets.move_speed.lightning
	
	self.presets.gang_member_damage.hurt_severity.bullet = {
		health_reference = "current",
		zones = {
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.4
			},
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.7
			},
			{
				heavy = 0,
				light = 0,
				moderate = 0,
				none = 1
			}
		}
	}
end

function CharacterTweakData:_set_sm_wish()
	self:_multiply_all_hp(2, 2)

	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 900
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(1.05, 1.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 150
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")

	self.shadow_spooc.shadow_spooc_attack_timeout = {3, 4}
	self.spooc.spooc_attack_timeout = {3, 4}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 12,	r = 700,	acc = {0.7, 1},		recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 4000,	acc = {0.6, 0.95},	recoil = {3, 5},	mode = {1, 0, 0, 0}},
		{dmg_mul = 12,	r = 10000,	acc = {0.2, 0.8},	recoil = {3, 5},	mode = {1, 0, 0, 0}}
	}
	self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{dmg_mul = 8,	r = 100,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7.5,	r = 500,	acc = {0.75, 0.9},	recoil = {0.4, 0.7}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.85},	recoil = {0.45, 0.8},	mode = {1, 2, 2, 0}},
		{dmg_mul = 5,	r = 2000,	acc = {0.5, 0.65},	recoil = {0.45, 0.8},	mode = {3, 2, 2, 0}},
		{dmg_mul = 3.5,	r = 3000,	acc = {0.3, 0.5}, 	recoil = {1, 1.2}, 		mode = {3, 1, 1, 0}}
	}
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
	self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
	self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
	self.tank.weapon.is_rifle.aim_delay = {0, 0}
	self.tank.weapon.is_rifle.focus_delay = 0
	self.tank.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55}, recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.tank.weapon.mini.aim_delay = {0, 0}
	self.tank.weapon.mini.focus_delay = 0
	self.tank.weapon.mini.FALLOFF = {
		{dmg_mul = 5,	r = 100, 	acc = {0.7, 0.9}, 	recoil = {0.4, 0.7},	mode = {0, 0, 0, 1}},
		{dmg_mul = 5,	r = 500, 	acc = {0.5, 0.75}, 	recoil = {0.5, 0.8},	mode = {0, 0, 0, 6}},
		{dmg_mul = 5,	r = 1000,	acc = {0.3, 0.6}, 	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 2000,	acc = {0.25, 0.55},	recoil = {1, 1},		mode = {0, 0, 2, 6}},
		{dmg_mul = 5,	r = 3000,	acc = {0.15, 0.5}, 	recoil = {1, 2},		mode = {0, 0, 2, 6}}
	}
	self.shield.weapon.is_smg.aim_delay = {0, 0}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{dmg_mul = 7,	r = 0, 		acc = {0.9, 0.95},	recoil = {0.35, 0.35},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 700, 	acc = {0.8, 0.8}, 	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 1000,	acc = {0.6, 0.65},	recoil = {0.35, 0.55},	mode = {0.2, 2, 4, 10}},
		{dmg_mul = 7,	r = 2000,	acc = {0.5, 0.7}, 	recoil = {0.35, 1}, 	mode = {2, 5, 6, 4}},
		{dmg_mul = 7,	r = 3000,	acc = {0.5, 0.5}, 	recoil = {0.5, 1.2}, 	mode = {6, 4, 2, 0}}
	}
	self.shield.weapon.is_pistol.aim_delay = {0, 0}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{dmg_mul = 7.5, r = 0,		acc = {0.6, 0.9},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 700,	acc = {0.6, 0.8},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 1000,	acc = {0.6, 0.75},	recoil = {0.35, 0.45},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 2000,	acc = {0.6, 0.75},	recoil = {0.35, 0.65},	mode = {1, 0, 0, 0}},
		{dmg_mul = 7.5, r = 3000,	acc = {0.5, 0.6},	recoil = {0.35, 1.5},	mode = {1, 0, 0, 0}}
	}
	self.taser.weapon.is_rifle.FALLOFF = {
		{dmg_mul = 7,	r = 100, 	acc = {0.9, 0.95}, 	recoil = {0.4, 0.4}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 500, 	acc = {0.75, 0.95}, recoil = {0.4, 0.5}, 	mode = {0, 3, 3, 1}},
		{dmg_mul = 7,	r = 1000,	acc = {0.7, 0.9}, 	recoil = {0.4, 0.6}, 	mode = {1, 2, 3, 0}},
		{dmg_mul = 7,	r = 2000,	acc = {0.65, 0.8}, 	recoil = {0.5, 1}, 		mode = {3, 2, 2, 0}},
		{dmg_mul = 7,	r = 3000,	acc = {0.55, 0.75}, recoil = {1, 2}, 		mode = {3, 1, 1, 0}}
	}
	
	self.spooc.dodge_with_grenade = {
		flash = {duration = {8, 12}},
		check = function (t, nr_grenades_used)
			local delay_till_next_use = math.lerp(17, 45, math.min(1, (nr_grenades_used or 0) / 4))
			local chance = math.lerp(1, 0.5, math.min(1, (nr_grenades_used or 0) / 10))

			if math.random() < chance then
				return true, t + delay_till_next_use
			end

			return false, t + delay_till_next_use
		end
	}

	self.civilian.submission_max = {10, 20}
	self.civilian.submission_intimidate = 20
	self.civilian.run_away_delay = {0, 0}
	self.civilian.scare_max = {5, 20}
	
	self.civilian_female.submission_max = {10, 20}
	self.civilian_female.submission_intimidate = 20
	self.civilian_female.run_away_delay = {0, 0}
	self.civilian_female.scare_max = {5, 20}
	
	self.bank_manager.submission_max = {10, 20}
	self.bank_manager.submission_intimidate = 20
	self.bank_manager.run_away_delay = {0, 0}
	self.bank_manager.scare_max = {5, 20}
	
	self.cop.surrender = self.presets.surrender.hard
	self.fbi.surrender = self.presets.surrender.hard
	self.fbi_swat.surrender = nil
	self.fbi_heavy_swat.surrender = nil
	self.city_swat.surrender = nil
	self.heavy_swat.surrender = nil
	
	self.civilian.move_speed = self.presets.move_speed.very_fast
	self.civilian_female.move_speed = self.presets.move_speed.very_fast
	self.bank_manager.move_speed = self.presets.move_speed.very_fast
	self.cop.move_speed = self.presets.move_speed.lightning
	self.fbi.move_speed = self.presets.move_speed.very_fast
	self.swat.move_speed = self.presets.move_speed.very_fast
	self.fbi_swat.move_speed = self.presets.move_speed.fast
	self.fbi_heavy_swat.move_speed = self.presets.move_speed.normal
	self.city_swat.move_speed = self.presets.move_speed.normal
	
	self.cop.HEALTH_INIT = 6
	self.security.HEALTH_INIT = 6
	self.heavy_swat.HEALTH_INIT = 51
	self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 25
	self.shield.headshot_dmg_mul = self.shield.HEALTH_INIT / 20
	self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT / 15
	self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT / 20
	self.fbi_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 20
	self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.HEALTH_INIT / 25
	self.city_swat.headshot_dmg_mul = self.city_swat.HEALTH_INIT / 20
	self.tank.move_speed = self.presets.move_speed.very_slow_but_faster
	self.tank.damage.hurt_severity = self.presets.hurt_severities.tough_light_hurt_and_fire
	self.phalanx_minion.HEALTH_INIT = 80
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
	self.phalanx_vip.HEALTH_INIT = 160
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1
	
	self.russian.move_speed 	= 		self.presets.move_speed.lightning
	self.german.move_speed 		= 		self.presets.move_speed.lightning
	self.spanish.move_speed 	= 		self.presets.move_speed.lightning
	self.american.move_speed 	= 		self.presets.move_speed.lightning
	self.jowi.move_speed 		= 		self.presets.move_speed.lightning
	self.old_hoxton.move_speed 	=  		self.presets.move_speed.lightning
	self.female_1.move_speed 	=  		self.presets.move_speed.lightning
	self.dragan.move_speed 		=  		self.presets.move_speed.lightning
	self.jacket.move_speed 		=  		self.presets.move_speed.lightning
	self.bonnie.move_speed 		=  		self.presets.move_speed.lightning
	self.sokol.move_speed 		=  		self.presets.move_speed.lightning
	self.dragon.move_speed 		=  		self.presets.move_speed.lightning
	self.bodhi.move_speed 		=  		self.presets.move_speed.lightning
	self.jimmy.move_speed 		=  		self.presets.move_speed.lightning
	self.sydney.move_speed 		= 		self.presets.move_speed.lightning
	self.wild.move_speed 		= 		self.presets.move_speed.lightning
	self.chico.move_speed 		=		self.presets.move_speed.lightning
	self.max.move_speed 		= 		self.presets.move_speed.lightning
	self.joy.move_speed 		= 		self.presets.move_speed.lightning
	self.myh.move_speed 		= 		self.presets.move_speed.lightning
	self.ecp_female.move_speed 	= 		self.presets.move_speed.lightning
	self.ecp_male.move_speed 	= 		self.presets.move_speed.lightning
	
	self.presets.gang_member_damage.hurt_severity.bullet = {
		health_reference = "current",
		zones = {
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.4
			},
			{
				none = 1,
				light = 0,
				moderate = 0,
				health_limit = 0.7
			},
			{
				heavy = 0,
				light = 0,
				moderate = 0,
				none = 1
			}
		}
	}
end

local origin_charmap = CharacterTweakData.character_map
function CharacterTweakData:character_map() -- thanks fuglore
	local char_map = origin_charmap(self)
	char_map.op_gitgud = {
		path = "units/pd2_dlc_gitgud/characters/",
		list = {			
			"ene_zeal_swat_heavy_op",
			"ene_zeal_swat_light",
			"ene_secret_service_1",
			"ene_secret_service_2"
		}
	}
	char_map.op_bph = {
		path = "units/pd2_dlc_bph/characters/",
		list = {
			"ene_murkywater_secret_service",
			"ene_murkywater_heavy_fbi",
			"ene_murkywater_city_g36"
		}
	}
	char_map.op_bex = {
		path = "units/pd2_dlc_bex/characters/",
		list = {
			"ene_swat_policia_federale_fbi_r870",
			"ene_swat_policia_federale_city_g36"
		}
	}
	return char_map
end

function CharacterTweakData:_init_region_federales()
	self._default_chatter = "mex_dispatch_generic_message"
	self._unit_prefixes = {
		security_mex = "m",
		cop = "m",
		swat = "m",
		heavy_swat = "m",
		fbi_swat = "m",
		fbi_heavy_swat = "m",
		city_swat = "m",
		shield = "m",
		taser = "mtsr",
		cloaker = "mclk",
		bulldozer = "mbdz",
		medic = "mmdc"
	}
	self._speech_prefix_p2 = "n"
end