local data = CharacterTweakData.init
function CharacterTweakData:init(tweak_data)
	data(self, tweak_data)
	
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
	self.tank.chatter = {
		aggressive = true,
		retreat = true,
		go_go = true,
		contact = true,
		entrance = true
	}
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
	
	self.presets.gang_member_damage.MIN_DAMAGE_INTERVAL = 0
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
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{
			dmg_mul = 2,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{
			dmg_mul = 2,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_sniper.FALLOFF = {
		{
			dmg_mul = 4,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4,
			r = 1000,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4,
			r = 2500,
			acc = {
				0.95,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 2,
			r = 4000,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 2,
			r = 10000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_lmg.FALLOFF = {
		{
			dmg_mul = 2,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1.5,
			r = 1000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				0.4,
				0.65
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 1,
			r = 2000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 0.5,
			r = 3000,
			acc = {
				0.5,
				0.7
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 0.3,
			r = 4000,
			acc = {
				0.02,
				0.25
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 0.1,
			r = 10000,
			acc = {
				0.01,
				0.1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 2,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 1,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 2,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				6
			}
		},
		{
			dmg_mul = 2,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				5
			}
		},
		{
			dmg_mul = 1,
			r = 1000,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				1,
				2,
				4,
				4
			}
		},
		{
			dmg_mul = 0.75,
			r = 2000,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				1,
				4,
				4,
				1
			}
		},
		{
			dmg_mul = 0.25,
			r = 3000,
			acc = {
				0.4,
				0.7
			},
			recoil = {
				0.4,
				0.5
			},
			mode = {
				4,
				2,
				1,
				0
			}
		},
		{
			dmg_mul = 0.1,
			r = 10000,
			acc = {
				0.05,
				0.2
			},
			recoil = {
				0.5,
				1
			},
			mode = {
				2,
				1,
				0,
				0
			}
		}
	}

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
	self.presets.surrender.easy = {
		base_chance = 0.75,
		significant_chance = 0.1,
		violence_timeout = 2,
		reasons = {
			health = {
				[1] = 0.2,
				[0.3] = 1
			},
			weapon_down = 0.8,
			pants_down = 1,
			isolated = 0.1
		},
		factors = {
			flanked = 0.07,
			unaware_of_aggressor = 0.08,
			enemy_weap_cold = 0.15,
			aggressor_dis = {
				[1000] = 0.02,
				[300] = 0.15
			}
		}
	}
	self.presets.surrender.normal = {
		base_chance = 0.5,
		significant_chance = 0.2,
		violence_timeout = 2,
		reasons = {
			health = {
				[1] = 0,
				[0.5] = 0.5
			},
			weapon_down = 0.5,
			pants_down = 1,
			isolated = 0.08
		},
		factors = {
			flanked = 0.05,
			unaware_of_aggressor = 0.1,
			enemy_weap_cold = 0.11,
			aggressor_dis = {
				[1000] = 0,
				[300] = 0.1
			}
		}
	}
	self.presets.surrender.very_hard = {
		base_chance = 0.07,
		significant_chance = 0.05,
		violence_timeout = 1,
		reasons = {
			pants_down = 0.4,
			weapon_down = 0.1,
			health = {
				[1.0] = 0,
				[0.2] = 0.1
			}
		},
		factors = {
			enemy_weap_cold = 0.03,
			unaware_of_aggressor = 0.07,
			flanked = 0.02,
			isolated = 0.07,
			aggressor_dis = {
				[300.0] = 0.07,
				[1000.0] = 0
			}
		}
	}
	self.presets.surrender.special = {base_chance = 0}
	
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
	self.presets.weapon.normal.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.normal.is_shotgun_pump)
	self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
	self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
	self.presets.weapon.normal.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
	self.presets.weapon.good.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.good.is_shotgun_pump)
	self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
	self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
	self.presets.weapon.good.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
	self.presets.weapon.expert.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.expert.is_shotgun_pump)
	self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
	self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
	self.presets.weapon.expert.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
	self.presets.weapon.deathwish.is_shotgun_pump_rapid = deep_clone(self.presets.weapon.deathwish.is_shotgun_pump)
	self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[2].recoil = {0.4, 0.7}
	self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[3].recoil = {0.45, 0.8}
	self.presets.weapon.deathwish.is_shotgun_pump_rapid.FALLOFF[4].recoil = {0.45, 0.8}
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
	self.presets.weapon.expert.is_shotgun_pump.focus_delay = 2
	self.presets.weapon.expert.is_shotgun_pump.RELOAD_SPEED = 1.2
	self.presets.weapon.expert.is_shotgun_pump.melee_dmg = 20
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[1].acc = {0.6, 0.95}
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[2].acc = {0.5, 0.9}
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[3].acc = {0.4, 0.75}
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[4].acc = {0.1, 0.55}
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[5].acc = {0.1, 0.35}
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[1].dmg_mul = 6.5
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[2].dmg_mul = 5.5
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[3].dmg_mul = 4
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[4].dmg_mul = 3.5
	self.presets.weapon.expert.is_shotgun_pump.FALLOFF[5].dmg_mul = 2.5
	self.presets.weapon.expert.is_rifle.focus_delay = 2
	self.presets.weapon.expert.is_rifle.focus_dis = 300
	self.presets.weapon.expert.is_rifle.RELOAD_SPEED = 1.2
	self.presets.weapon.expert.is_rifle.melee_dmg = 20
	self.presets.weapon.expert.is_rifle.FALLOFF[1].dmg_mul = 6
	self.presets.weapon.expert.is_rifle.FALLOFF[2].dmg_mul = 5.75
	self.presets.weapon.expert.is_rifle.FALLOFF[2].acc = {0.55, 0.95}
	self.presets.weapon.expert.is_rifle.FALLOFF[3].dmg_mul = 5.75
	self.presets.weapon.expert.is_rifle.FALLOFF[3].acc = {0.525, 0.8}
	self.presets.weapon.expert.is_rifle.FALLOFF[4].dmg_mul = 5.5
	self.presets.weapon.expert.is_rifle.FALLOFF[4].acc = {0.5, 0.7}
	self.presets.weapon.expert.is_rifle.FALLOFF[5].acc = {0.2, 0.4}
	self.presets.weapon.expert.is_rifle.FALLOFF[5].dmg_mul = 5.25
	
	
	self.security.HEALTH_INIT = 3
	self.security.headshot_dmg_mul = self.security.HEALTH_INIT / 1
	self.security_mex.headshot_dmg_mul = self.security.headshot_dmg_mul
	self.security_mex.HEALTH_INIT = self.security.HEALTH_INIT
	
	self.gensec.HEALTH_INIT = 6
	self.gensec.headshot_dmg_mul = self.gensec.HEALTH_INIT / 1
	self.gensec.surrender = self.presets.surrender.hard
	
	self.cop.HEALTH_INIT = 3
	self.cop.headshot_dmg_mul = self.cop.HEALTH_INIT / 1
	self.cop.surrender = self.presets.surrender.normal
	
	self.fbi.HEALTH_INIT = 5
	self.fbi.headshot_dmg_mul = self.fbi.HEALTH_INIT / 1
	self.fbi.surrender = self.presets.surrender.normal
	
	self.swat.HEALTH_INIT = 8
	self.swat.headshot_dmg_mul = self.swat.HEALTH_INIT / 2
	self.swat.surrender = self.presets.surrender.hard
		
	self.heavy_swat.HEALTH_INIT = 10
	self.heavy_swat.headshot_dmg_mul = self.heavy_swat.HEALTH_INIT / 6
	self.heavy_swat.surrender = self.presets.surrender.hard
			
	self.fbi_swat.HEALTH_INIT = 13
	self.fbi_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 4
	self.fbi_swat.surrender = self.presets.surrender.hard
		
	self.fbi_heavy_swat.HEALTH_INIT = 20
	self.fbi_heavy_swat.headshot_dmg_mul = self.fbi_heavy_swat.HEALTH_INIT / 10
	self.fbi_heavy_swat.surrender = self.presets.surrender.hard
		
	self.city_swat.HEALTH_INIT = 13
	self.city_swat.headshot_dmg_mul = self.city_swat.HEALTH_INIT / 4
	self.city_swat.surrender = self.presets.surrender.hard
	self.city_heavy_swat = deep_clone(self.city_swat)
	
	self.sniper.headshot_dmg_mul = self.sniper.HEALTH_INIT / 2
		
	self.gangster.HEALTH_INIT = 4
	self.gangster.headshot_dmg_mul = self.gangster.HEALTH_INIT / 1
		
	self.tank.HEALTH_INIT = 550
	self.tank.headshot_dmg_mul = self.tank.HEALTH_INIT / 24
	self.tank.damage.explosion_damage_mul = 1
	self.tank.move_speed = self.presets.move_speed.very_slow
	self.tank.ecm_hurts.ears = {min_duration = 7, max_duration = 9}
	self.tank.weapon.is_shotgun_mag.FALLOFF[1].dmg_mul = 3
	self.tank_mini.headshot_dmg_mul = self.tank_mini.HEALTH_INIT / 75
	self.tank_green = deep_clone(self.tank)
	self.tank_black = deep_clone(self.tank)
	self.tank_city = deep_clone(self.tank)
	
	self.spooc.headshot_dmg_mul = self.spooc.HEALTH_INIT / 14
		
	self.shield.HEALTH_INIT = 10
	self.shield.headshot_dmg_mul = self.shield.HEALTH_INIT / 6
	self.shield.move_speed = self.presets.move_speed.fast
	self.shield.weapon.is_smg.FALLOFF[2].dmg_mul = 3
	self.shield.weapon.is_smg.FALLOFF[3].dmg_mul = 2
	self.shield.weapon.is_smg.FALLOFF[4].dmg_mul = 1
		
	self.taser.HEALTH_INIT = 36
	self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 20
end

function CharacterTweakData:_set_normal()
	self:_multiply_all_hp(1, 1)

	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 0.22,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 0.18,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 0.15,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.13,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.1,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 50
	self.mobster_boss.HEALTH_INIT = 50
	self.biker_boss.HEALTH_INIT = 100
	self.chavez_boss.HEALTH_INIT = 100
	self.presets.gang_member_damage.REGENERATE_TIME = 1.5
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.2
	self.presets.gang_member_damage.HEALTH_INIT = 125

	self:_set_characters_weapon_preset("normal")
	self.flashbang_multiplier = 1
	self.concussion_multiplier = 1
end

function CharacterTweakData:_set_hard()
	self:_multiply_all_hp(1.32, 1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 0.44,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 0.35,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 0.3,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.25,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.2,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 100
	self.mobster_boss.HEALTH_INIT = 100
	self.biker_boss.HEALTH_INIT = 100
	self.chavez_boss.HEALTH_INIT = 100
	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.4

	self:_set_characters_weapon_preset("normal")

	self.presets.gang_member_damage.HEALTH_INIT = 160
	self.flashbang_multiplier = 1.25
	self.concussion_multiplier = 1
	self.shadow_spooc.shadow_spooc_attack_timeout = {8, 10}
	self.spooc.spooc_attack_timeout = {8, 10}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 7,
			r = 700,
			acc = {
				0.6,
				1
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 6,
			r = 4000,
			acc = {
				0.5,
				0.9
			},
			recoil = {
				4,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 3,
			r = 10000,
			acc = {
				0,
				0.3
			},
			recoil = {
				4,
				6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	
	self.taser.HEALTH_INIT = 36
	self.spooc.HEALTH_INIT = 60
	self.tank_green.HEALTH_INIT = 550
	self.tank_black.HEALTH_INIT = 550
	self.shield.HEALTH_INIT = self.fbi_swat.HEALTH_INIT
	self.shield.headshot_dmg_mul = self.fbi_swat.headshot_dmg_mul
end

function CharacterTweakData:_set_overkill()
	self:_multiply_all_hp(1.32, 1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 1.1,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 0.88,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 0.75,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.63,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 0.5,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 300
	self.mobster_boss.HEALTH_INIT = 300
	self.biker_boss.HEALTH_INIT = 300
	self.chavez_boss.HEALTH_INIT = 300
	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 200

	self:_set_characters_weapon_preset("good")

	self.shadow_spooc.shadow_spooc_attack_timeout = {6, 8}
	self.spooc.spooc_attack_timeout = {6, 8}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 8,
			r = 700,
			acc = {
				0.7,
				1
			},
			recoil = {
				3,
				6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 6,
			r = 4000,
			acc = {
				0.5,
				0.95
			},
			recoil = {
				4,
				6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 3.5,
			r = 10000,
			acc = {
				0,
				0.3
			},
			recoil = {
				4,
				6
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.flashbang_multiplier = 1.5
	self.concussion_multiplier = 1
	
	self.taser.HEALTH_INIT = 36
	self.spooc.HEALTH_INIT = 60
	self.tank_green.HEALTH_INIT = 550
	self.tank_black.HEALTH_INIT = 550
	self.shield.HEALTH_INIT = self.fbi_swat.HEALTH_INIT
	self.shield.headshot_dmg_mul = self.fbi_swat.headshot_dmg_mul
	self.shield.HEALTH_INIT = self.fbi_swat.HEALTH_INIT
	self.shield.headshot_dmg_mul = self.fbi_swat.headshot_dmg_mul
end

function CharacterTweakData:_set_overkill_145()
	if SystemInfo:platform() == Idstring("PS3") then
		self:_multiply_all_hp(1.32, 1)
	else
		self:_multiply_all_hp(1.32, 1)
	end
	
	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 2.2,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 1.75,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 1.5,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1.25,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 600
	self.mobster_boss.HEALTH_INIT = 600
	self.biker_boss.HEALTH_INIT = 1800
	self.chavez_boss.HEALTH_INIT = 600

	self:_multiply_all_speeds(1.05, 1.05)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 2
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 250

	self:_set_characters_weapon_preset("expert")

	self.shadow_spooc.shadow_spooc_attack_timeout = {
		3.5,
		5
	}
	self.spooc.spooc_attack_timeout = {
		3.5,
		5
	}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 10,
			r = 700,
			acc = {
				0.7,
				1
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 10,
			r = 4000,
			acc = {
				0.6,
				0.95
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 6,
			r = 10000,
			acc = {
				0.2,
				0.5
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.flashbang_multiplier = 1.75
	self.concussion_multiplier = 1
	
	self.taser.HEALTH_INIT = 36
	self.spooc.HEALTH_INIT = 60
	self.tank_green.HEALTH_INIT = 550
	self.tank_black.HEALTH_INIT = 550
	self.shield.HEALTH_INIT = self.fbi_swat.HEALTH_INIT
	self.shield.headshot_dmg_mul = self.fbi_swat.headshot_dmg_mul
end

function CharacterTweakData:_set_overkill_290()
	if SystemInfo:platform() == Idstring("PS3") then
		self:_multiply_all_hp(1.7, 0.75)
	else
		self:_multiply_all_hp(1.7, 0.75)
	end

	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 3.14,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 2.5,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 2.1,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1.8,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1.4,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 3000
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(1.05, 1.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 300

	self:_set_characters_weapon_preset("deathwish")

	self.shadow_spooc.shadow_spooc_attack_timeout = {
		3,
		4
	}
	self.spooc.spooc_attack_timeout = {
		3,
		4
	}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 12,
			r = 700,
			acc = {
				0.7,
				1
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 12,
			r = 4000,
			acc = {
				0.6,
				0.95
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 12,
			r = 10000,
			acc = {
				0.2,
				0.8
			},
			recoil = {
				3,
				5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0,
		0
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 8,
			r = 100,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 7.5,
			r = 500,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.7,
				0.85
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.5,
				0.65
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 3.5,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
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
		{
			dmg_mul = 5,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 5,
			r = 500,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.5,
				0.8
			},
			mode = {
				0,
				0,
				0,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 1000,
			acc = {
				0.3,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.25,
				0.55
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 3000,
			acc = {
				0.15,
				0.5
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				2,
				6
			}
		}
	}
	self.tank.weapon.mini.aim_delay = {
		0,
		0
	}
	self.tank.weapon.mini.focus_delay = 0
	self.tank.weapon.mini.FALLOFF = {
		{
			dmg_mul = 5,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 5,
			r = 500,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.5,
				0.8
			},
			mode = {
				0,
				0,
				0,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 1000,
			acc = {
				0.3,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.25,
				0.55
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				2,
				6
			}
		},
		{
			dmg_mul = 5,
			r = 3000,
			acc = {
				0.15,
				0.5
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				2,
				6
			}
		}
	}
	self.shield.weapon.is_smg.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_smg.focus_delay = 0
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.FALLOFF = {
		{
			dmg_mul = 7,
			r = 0,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				0.35,
				0.35
			},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			dmg_mul = 7,
			r = 700,
			acc = {
				0.8,
				0.8
			},
			recoil = {
				0.35,
				0.55
			},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.6,
				0.65
			},
			recoil = {
				0.35,
				0.55
			},
			mode = {
				0.2,
				2,
				4,
				10
			}
		},
		{
			dmg_mul = 7,
			r = 2000,
			acc = {
				0.5,
				0.7
			},
			recoil = {
				0.35,
				1
			},
			mode = {
				2,
				5,
				6,
				4
			}
		},
		{
			dmg_mul = 7,
			r = 3000,
			acc = {
				0.5,
				0.5
			},
			recoil = {
				0.5,
				1.2
			},
			mode = {
				6,
				4,
				2,
				0
			}
		}
	}
	self.shield.weapon.is_pistol.aim_delay = {
		0,
		0
	}
	self.shield.weapon.is_pistol.focus_delay = 0
	self.shield.weapon.is_pistol.FALLOFF = {
		{
			dmg_mul = 7.5,
			r = 0,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.35,
				0.45
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 7.5,
			r = 700,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.35,
				0.45
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 7.5,
			r = 1000,
			acc = {
				0.6,
				0.75
			},
			recoil = {
				0.35,
				0.45
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 7.5,
			r = 2000,
			acc = {
				0.6,
				0.75
			},
			recoil = {
				0.35,
				0.65
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 7.5,
			r = 3000,
			acc = {
				0.5,
				0.6
			},
			recoil = {
				0.35,
				1.5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.taser.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 7,
			r = 100,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				0.4,
				0.4
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 7,
			r = 500,
			acc = {
				0.75,
				0.95
			},
			recoil = {
				0.4,
				0.5
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.6
			},
			mode = {
				1,
				2,
				3,
				0
			}
		},
		{
			dmg_mul = 7,
			r = 2000,
			acc = {
				0.65,
				0.8
			},
			recoil = {
				0.5,
				1
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 7,
			r = 3000,
			acc = {
				0.55,
				0.75
			},
			recoil = {
				1,
				2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.city_swat.HEALTH_INIT = 24
	self.city_swat.headshot_dmg_mul = self.fbi_swat.HEALTH_INIT / 8
	self.city_swat.damage.explosion_damage_mul = 0.8
	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1
end

local data = CharacterTweakData._set_overkill_290
function CharacterTweakData:_set_easy_wish()
	data(self)
	self.tank_green.HEALTH_INIT = 550
	self.tank_black.HEALTH_INIT = 775
	self.tank_city.HEALTH_INIT = 935
	self.tank_green.move_speed = self.presets.move_speed.slow
	self.tank_black.move_speed = self.presets.move_speed.very_slow_but_faster
	
	self.fbi_heavy_swat.HEALTH_INIT = 43
	self.fbi_heavy_swat.move_speed = self.presets.move_speed.fast
	self.fbi_heavy_swat.damage.explosion_damage_mul = 0.8
	
	self.shield.HEALTH_INIT = self.city_swat.HEALTH_INIT
	self.shield.move_speed = self.presets.move_speed.very_fast
	self.shield.headshot_dmg_mul = self.city_swat.headshot_dmg_mul
	self.shield.damage.explosion_damage_mul = 0.8
	self.gensec.melee_weapon = "knife_1"
	self.fbi.melee_weapon = "knife_1"
end

function CharacterTweakData:_set_sm_wish()
	data(self)
	self.swat = self.city_swat
	self.heavy_swat = self.city_heavy_swat
	self.shield.HEALTH_INIT = self.city_swat.HEALTH_INIT
	self.tank_green.HEALTH_INIT = 550
	self.tank_black.HEALTH_INIT = 775
	self.tank_city.HEALTH_INIT = 935
	self.tank_mini.HEALTH_INIT = 1200
	
	if SystemInfo:platform() == Idstring("PS3") then
		self:_multiply_all_hp(1.2, 0.9)
	else
		self:_multiply_all_hp(1.2, 0.9)
	end
	
	self.civilian.move_speed = self.presets.move_speed.very_fast
	self.civilian_female.move_speed = self.presets.move_speed.very_fast
	self.bank_manager.move_speed = self.presets.move_speed.very_fast
	self.cop.move_speed = self.presets.move_speed.lightning
	self.fbi.move_speed = self.presets.move_speed.lightning
	self.fbi_swat.move_speed = self.presets.move_speed.lightning
	self.swat.move_speed = self.presets.move_speed.very_fast
	self.heavy_swat.move_speed = self.presets.move_speed.normal
	self.shield.move_speed = self.presets.move_speed.very_fast
	self.tank_green.move_speed = self.presets.move_speed.slow
	self.tank_black.move_speed = self.presets.move_speed.very_slow_but_faster
	self.tank_mini.move_speed = self.presets.move_speed.very_slow
	
	
	self.swat.damage.explosion_damage_mul = 0.75
	self.heavy_swat.damage.explosion_damage_mul = 0.75
	self.fbi_swat.damage.explosion_damage_mul = 0.75
	self.fbi_heavy_swat.damage.explosion_damage_mul = 0.75
	self.city_swat.damage.explosion_damage_mul = 0.75
	self.city_heavy_swat.damage.explosion_damage_mul = 0.75
	
	self.shield.HEALTH_INIT = self.city_swat.HEALTH_INIT
	self.cop.headshot_dmg_mul = self.gensec.headshot_dmg_mul
	self.security.headshot_dmg_mul = self.gensec.headshot_dmg_mul
	self.security_mex.headshot_dmg_mul = self.gensec.headshot_dmg_mul
	self.shield.headshot_dmg_mul = self.city_swat.headshot_dmg_mul
	self.fbi_swat.headshot_dmg_mul = self.spooc.headshot_dmg_mul
	self.city_heavy_swat.headshot_dmg_mul = self.city_swat.headshot_dmg_mul
	self.heavy_swat.headshot_dmg_mul = self.city_heavy_swat.headshot_dmg_mul * 0.5
	self.tank_mini.headshot_dmg_mul = self.tank.headshot_dmg_mul * 0.7
	self.fbi_heavy_swat.HEALTH_INIT = 48
	self.city_heavy_swat.HEALTH_INIT = 52
	self.gensec.melee_weapon = "knife_1"
	self.fbi.melee_weapon = "knife_1"
	
	self.security.no_arrest = true
	self.security_mex.no_arrest = true
	self.cop.no_arrest = true
	self.gensec.no_arrest = true
	self.fbi.no_arrest = true
	self.swat.no_arrest = true
	self.heavy_swat.no_arrest = true
	self.fbi_swat.no_arrest = true
	self.fbi_heavy_swat.no_arrest = true
	self.city_heavy_swat.no_arrest = true
	
	self.cop.dodge = self.presets.dodge.athletic
	self.heavy_swat.dodge = self.presets.dodge.athletic
	self.fbi_heavy_swat.dodge = self.presets.dodge.athletic
	self.city_heavy_swat.dodge = self.presets.dodge.athletic
	
	self.security.surrender = self.presets.surrender.hard
	self.security_mex.surrender = self.presets.surrender.hard
	self.cop.surrender = self.presets.surrender.hard
	self.fbi.surrender = self.presets.surrender.hard
	self.gensec.surrender = self.presets.surrender.hard
	
	self.swat.surrender = self.presets.surrender.very_hard
	self.heavy_swat.surrender = self.presets.surrender.very_hard
	self.city_swat.surrender = self.presets.surrender.very_hard
	self.fbi_swat.surrender = self.presets.surrender.very_hard
	self.fbi_heavy_swat.surrender = self.presets.surrender.very_hard
	self.city_heavy_swat.surrender = self.presets.surrender.very_hard

	self.tank_green.steal_loot = true
	
	self.spooc.dodge_with_grenade = {
		flash = {
			instant = true,
			duration = {
				1,
				1
			}
		},
		check = function (t, nr_grenades_used)
			local delay_till_next_use = math.lerp(17, 45, math.min(1, (nr_grenades_used or 0) / 4))
			local chance = math.lerp(1, 0.5, math.min(1, (nr_grenades_used or 0) / 10))

			if math.random() < chance then
				return true, t + delay_till_next_use
			end

			return false, t + delay_till_next_use
		end
	}
end

local data = CharacterTweakData._multiply_all_hp
function CharacterTweakData:_multiply_all_hp(hp_mul, hs_mul)
	data(self, hp_mul, hs_mul)
	self.security.HEALTH_INIT = self.security.HEALTH_INIT * hp_mul
	self.security_mex.HEALTH_INIT = self.security_mex.HEALTH_INIT * hp_mul
	self.cop.HEALTH_INIT = self.cop.HEALTH_INIT * hp_mul
	self.gensec.HEALTH_INIT = self.gensec.HEALTH_INIT * hp_mul
	
	self.tank_green.HEALTH_INIT = self.tank_green.HEALTH_INIT * hp_mul
	self.tank_black.HEALTH_INIT = self.tank_black.HEALTH_INIT * hp_mul
	self.tank_city.HEALTH_INIT = self.tank_city.HEALTH_INIT * hp_mul
	
	if self.security.headshot_dmg_mul then
		self.security.headshot_dmg_mul = self.security.headshot_dmg_mul * hs_mul
	end
	if self.security_mex.headshot_dmg_mul then
		self.security_mex.headshot_dmg_mul = self.security_mex.headshot_dmg_mul * hs_mul
	end
	if self.cop.headshot_dmg_mul then
		self.cop.headshot_dmg_mul = self.cop.headshot_dmg_mul * hs_mul
	end
	if self.gensec.headshot_dmg_mul then
		self.gensec.headshot_dmg_mul = self.gensec.headshot_dmg_mul * hs_mul
	end
	if self.tank_green.headshot_dmg_mul then
		self.tank_green.headshot_dmg_mul = self.tank_green.headshot_dmg_mul * hs_mul
	end
	if self.tank_black.headshot_dmg_mul then
		self.tank_black.headshot_dmg_mul = self.tank_black.headshot_dmg_mul * hs_mul
	end
	if self.tank_city.headshot_dmg_mul then
		self.tank_city.headshot_dmg_mul = self.tank_city.headshot_dmg_mul * hs_mul
	end
	
end

function CharacterTweakData:custom_weapons(unit)
	local name = unit:name()
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	local raging_bull = Idstring("units/payday2/weapons/wpn_npc_raging_bull/wpn_npc_raging_bull")
	local beretta = Idstring("units/payday2/weapons/wpn_npc_beretta92/wpn_npc_beretta92")
	local benelli = Idstring("units/payday2/weapons/wpn_npc_benelli/wpn_npc_benelli")
	local c45 = Idstring("units/payday2/weapons/wpn_npc_c45/wpn_npc_c45")
	local g36 = Idstring("units/payday2/weapons/wpn_npc_g36/wpn_npc_g36")
	local m4 = Idstring("units/payday2/weapons/wpn_npc_m4/wpn_npc_m4")
	local mp5 = Idstring("units/payday2/weapons/wpn_npc_mp5/wpn_npc_mp5")
	local mp5_spook = Idstring("units/payday2/weapons/wpn_npc_mp5_tactical/wpn_npc_mp5_tactical")
	local scar = Idstring("units/payday2/weapons/wpn_npc_scar_murkywater/wpn_npc_scar_murkywater")
	local ump = Idstring("units/payday2/weapons/wpn_npc_ump/wpn_npc_ump")
	local asval = Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval")
	local rpk = Idstring("units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk")
	
	math.randomseed(TimerManager:game():time() * 1500)
	
	local weapons = {g36, ump}
	local city_swat = {
		"units/payday2/characters/ene_city_swat_1/ene_city_swat_1",
		"units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat"
	}
	for _, units in pairs(city_swat) do
		if name == Idstring(units) or name == Idstring(units .. "_husk") then
			return weapons[math.random(2)]
		end
	end
	
	local weapons = {scar, asval}
	local city_military = {
		"units/pd2_dlc_bph/characters/ene_murkywater_city_g36/ene_murkywater_city_g36",
		"units/pd2_dlc_bex/characters/ene_swat_policia_federale_city_g36/ene_swat_policia_federale_city_g36"
	}
	for _, units in pairs(city_military) do
		if name == Idstring(units) or name == Idstring(units .. "_husk") then
			return weapons[math.random(2)]
		end
	end
	
	local scar_rifles = {
		"units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy",
		"units/pd2_dlc_bex/characters/ene_swat_heavy_policia_federale_fbi/ene_swat_heavy_policia_federale_fbi",
		"units/pd2_dlc_bex/characters/ene_swat_heavy_policia_federale_fbi_g36/ene_swat_heavy_policia_federale_fbi_g36",
		"units/pd2_dlc_bph/characters/ene_murkywater_heavy_g36/ene_murkywater_heavy_g36",
		"units/pd2_dlc_drm/characters/ene_bulldozer_minigun_classic/ene_bulldozer_minigun_classic",
		"units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun",
		"units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_1/ene_murkywater_bulldozer_1",
		"units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_minigun/ene_swat_dozer_policia_federale_minigun"
	}
	for _, units in pairs(scar_rifles) do
		if name == Idstring(units) or name == Idstring(units .. "_husk") then
			if difficulty == "easy_wish" or difficulty == "sm_wish" then
				return scar
			else
				return m4
			end
		end
	end
	
	local weapons = {rpk, asval}
	local units = "units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass"
	if name == Idstring(units) or name == Idstring(units .. "_husk") then
		return weapons[math.random(2)]
	end

	local units = "units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870"
	if name == Idstring(units) or name == Idstring(units .. "_husk") then
		return benelli
	end
	
	local units = "units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36"
	if name == Idstring(units) or name == Idstring(units .. "_husk") then
		return rpk
	end	
	
	local units = "units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg"
	if name == Idstring(units) or name == Idstring(units .. "_husk") then
		if difficulty == "sm_wish" then
			return scar
		end
	end
			
	local weapons = {beretta, c45, raging_bull}
	local secret_service = {
		"units/pd2_dlc_gitgud/characters/ene_secret_service_2/ene_secret_service_2",
		"units/pd2_dlc_bex/characters/ene_fbi_bex_1/ene_fbi_bex_1"
	}
	for _, units in pairs(secret_service) do
		if name == Idstring(units) or name == Idstring(units .. "_husk") then
			return weapons[math.random(3)]
		end
	end
	
	local weapons = {mp5, mp5_spook, ump}
	local units = "units/pd2_dlc_gitgud/characters/ene_secret_service_1/ene_secret_service_1"
	if name == Idstring(units) or name == Idstring(units .. "_husk") then
		return weapons[math.random(2)]
	end
	
	local weapons = {scar, m4, benelli}
	local secret_swat = {
		"units/pd2_dlc_bph/characters/ene_murkywater_secret_service/ene_murkywater_secret_service",
		"units/pd2_dlc_bex/characters/ene_fbi_bex_2/ene_fbi_bex_2"
	}
	for _, units in pairs(secret_swat) do
		if name == Idstring(units) or name == Idstring(units .. "_husk") then
			if difficulty == "easy_wish" or difficulty == "sm_wish" then
				return weapons[math.random(3)]
			else
				return m4
			end
		end
	end
	
	return
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
			"ene_fbi_bex_1",
			"ene_fbi_bex_2",
			"ene_swat_policia_federale_fbi_r870",
			"ene_swat_policia_federale_city_g36"
		}
	}
	return char_map
end
