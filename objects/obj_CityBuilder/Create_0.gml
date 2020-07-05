/// @Description Build the City

// Get the building JSON

var buildingsFile = file_text_open_read(working_directory + "buildings.json");
var buildingsJSON = "";
while (!file_text_eof(buildingsFile)) {
	buildingsJSON += file_text_read_string(buildingsFile);
	file_text_readln(buildingsFile);
}
file_text_close(buildingsFile);
var buildingMap = json_decode(buildingsJSON);

var buildings = ds_map_find_value(buildingMap, "buildings");
var coords = ds_map_find_value(buildingMap, "buildingCoords");

var buildingCount = ds_list_size(buildings);
var buildingData = ds_grid_create(buildingCount, 2);
for (var i = 0; i < buildingCount; i++) {
	var theBuilding = ds_list_find_value(buildings, i);
	// getting the building name
    buildingData[# i, 0] = theBuilding[? "buildingName"];
	
	//getting the fixes
	var fixCount = ds_list_size(theBuilding[? "fixes"]);
	var theFixes = [];
	for (var j = 0; j < fixCount; j++) {
		theFixes[j] = ds_list_find_value(theBuilding[? "fixes"], j);
	}
	buildingData[# i, 1] = theFixes;
}

var coordCount = ds_list_size(coords);
var coordData = ds_grid_create(coordCount, 3);
for (var i = 0; i < coordCount; i++) {
	var theCoord = ds_list_find_value(coords, i);
	coordData[# i, 0] = theCoord[? "buildingX"];
	coordData[# i, 1] = theCoord[? "buildingY"];
	coordData[# i, 2] = theCoord[? "buildingName"];
}

// Place the Buildings

for (var i = 0; i < ds_grid_width(buildingData); i++) {
	buildingInst = instance_create_depth(coordData[# i, 0], coordData[# i, 1], -1, obj_Building);	
	buildingInst.buildingName = buildingData[# i, 0];
	buildingInst.buildingFixes = buildingData[# i, 1];
}

// Spawn the people
while (instance_number(obj_Person) < 100) {
	for (var i = 0; i < instance_number(obj_PersonSpawner); i++) {
		var personSpawnerInstance = instance_find(obj_PersonSpawner, i);
		if (instance_number(obj_Person) < 100) {
			spawnedPerson = instance_create_depth(personSpawnerInstance.x, personSpawnerInstance.y, -100, obj_Person)
		}
	}
}

// cleanup

ds_map_destroy(buildingMap);
ds_list_destroy(buildings);
ds_list_destroy(coords);
ds_grid_destroy(buildingData);
ds_grid_destroy(coordData);

