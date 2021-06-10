/// @description End of Trick
if (event_data[? "event_type"] != "sprite event") return;
switch (event_data[? "message"]) {
	case "TrickEnd":
		tricking = false;
		event_user(2);
		
		break;
	case "Landing":
		mustLand = false;
		break;
}