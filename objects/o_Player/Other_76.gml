/// @description End of Trick
if (global.paused) return;

if (event_data[? "event_type"] != "sprite event") return;
switch (event_data[? "message"]) {
	case "TrickEnd":
		tricking = false;
		event_user(2);
		break;
	case "Landing":
		noTerminal = false;
		mustLand = false;
		break;
	case "IFrameEnd":
		isInvinc = false;
		InvincCounter = 0;
		break;
}