/// @description 
open_two_windows();
randomize();

cursor_sprite = spr_cursor

inp_player_name = "Szu"

// Connection info
server_ip = "127.0.0.1";
server_port = 3000;

is_server = false;



// ----------
// Data types
enum DATA {
	INIT_DATA,
	PLAYER_UPDATE_POS,
	PLAYER_UPDATE_ROT,
	PLAYER_JOINED,
	PLAYER_SHOOT,
	PLAYER_SET_NAME,
	GAME_SETTINGS_UPDATE,
	PLAYER_UPDATE_HP,
	UPDATE_NEXUS,
	CREATE_ENEMY,
	KILL_ENEMY,
	WEAPON_BOUND,
	WEAPON_DROP,
	WEAPON_RELOAD,
	ENEMY_SYNC_POS,
	
}

enum enemy_type
{
	BUZAK,
	BUZAK_W,
	SZU,
	APIASTA
	
}

enum WEAPON_TYPE
{
	M4A4,
}

enum WEAPON
{
DROP,
RELOAD,
BOUND

}

enum enemy{
UPDATE_POS,
UPDATE_HP,
CREATE
}


// Connected clients
clients = ds_list_create();


roundtime="";
player_spawn_time=30; // sekundy
mob_spawn_factor=5;
start_money=100;
start_hp=3;
money_income_factor=1;
enemy_hp_factor=1;
game_description="";
mob_speed_factor=1;
game_tick=0;
is_game_initalized=0;
money =start_money;
ammo=9999999;