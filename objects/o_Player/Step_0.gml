if (duckLimit == -1) duckLimit = global.trickdata[? "Ollie"][0];
if (kflipLimit == -1) kflipLimit = global.trickdata[? "Kickflip"][0];

event_user(0); /* Get Input */


if (!global.paused) {
	//While ducking, duckTime increases
	if (ducking) {
		if (duckTime < 30) duckTime++;
	}
	else duckTime = 0;
	if (duckTime == 30) {
		//part_particles_create(global.system, x, y, global.PartSuccessR, 3);
		part_particles_create(global.system, x, y, global.PartSuccessL, 1);
	}
	
	if (kflipping) kflipTime++;
	else kflipTime = 0;
	
	//While tricking, trickTime increases
	if (tricking) {
		trickTime++;
		trickTotal++;
	} else {
		trickTime = 0;
		trickTotal = 0;
	}
}

event_user(1); /* Gravity and Physics */

//creates the particles when touching ground
if (!global.paused) {
	particleCounter = particleCounter + 1 + floor(global.points/500);
	if (particleCounter >= 30) {
		part_particles_create(global.system, x-16, y-10, global.PartTrail, 1);
		particleCounter = 0;
	}
	audio_pause_sound(PauseMusic)
	isPlayingPauseMusic = false
	if !isPlayingGameplayMusic{ 
		if audio_is_paused(GamePlayMusic){
			audio_resume_sound(GamePlayMusic)
		}
		else{audio_play_sound(GamePlayMusic,1,999)
		}
		isPlayingGameplayMusic = true
	}
}if (!global.paused and !inAir) {
	if !isPlayingRolling{ 
		if audio_is_paused(so_rolling){
			audio_resume_sound(so_rolling)
		}
		else{audio_play_sound(so_rolling,1,999)
		}
		isPlayingRolling = true
	}
}
if (!global.paused and inAir) {
	audio_pause_sound(so_rolling)
	isPlayingRolling = false
}
if(global.paused){
	audio_pause_sound(GamePlayMusic)
	isPlayingGameplayMusic = false
	if !isPlayingPauseMusic{ 
		if audio_is_paused(PauseMusic){
			audio_resume_sound(PauseMusic)
		}
		else{audio_play_sound(PauseMusic,1,999)
		}
		isPlayingPauseMusic = true
	}
}