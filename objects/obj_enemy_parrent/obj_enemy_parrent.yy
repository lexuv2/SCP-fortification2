{
  "spriteId": {
    "name": "spr_zombie",
    "path": "sprites/spr_zombie/spr_zombie.yy",
  },
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
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_bullet","path":"objects/obj_bullet/obj_bullet.yy",},"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_explosion","path":"objects/obj_explosion/obj_explosion.yy",},"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":2,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"obj_slime_pond","path":"objects/obj_slime_pond/obj_slime_pond.yy",},"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":1,"eventType":3,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":3,"eventType":2,"collisionObjectId":null,"parent":{"name":"obj_enemy_parrent","path":"objects/obj_enemy_parrent/obj_enemy_parrent.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"5","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"hp","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"3","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"move_speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"obj_player","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[
        "GMObject",
      ],"resourceVersion":"1.0","name":"goto_nearst_obj","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"6","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"money_gain","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"use_path","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"check_if_player_moved","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"30","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"update_path_interval","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shooting","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"noone","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"projectile","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"False","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"teleports","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"True","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"hitbox","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"60*10","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":null,"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"killafter","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "enemies",
    "path": "folders/Objects/enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "obj_enemy_parrent",
  "tags": [],
  "resourceType": "GMObject",
}