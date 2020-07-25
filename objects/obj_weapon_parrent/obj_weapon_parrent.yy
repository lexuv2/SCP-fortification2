{
  "spriteId": null,
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":50,"eventType":6,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":10,"eventType":7,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":81,"eventType":9,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":82,"eventType":9,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":11,"eventType":7,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":56,"eventType":6,"collisionObjectId":null,"parent":{"name":"obj_weapon_parrent","path":"objects/obj_weapon_parrent/obj_weapon_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"50","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"cost","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"reload_time_sec","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"30","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"mag_size","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"reload_anim","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"reload_sequence","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shooting_anim","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"recoil","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shooting_speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"holding_anim","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"obj_bullet","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"projectile","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"50","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"bullet_speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"snd_shoot","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shoot_sound","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"fulll_auto","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"obj_garand","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"next_wepon","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"100","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"next_cost","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"damage","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "weapons",
    "path": "folders/Objects/weapons.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_weapon_parrent",
  "tags": [],
  "resourceType": "GMObject",
}