actionButton = keyboard_check_pressed(ord("E"));
// Instances inside house are deactivated at game creation
instance_deactivate_layer(37);
layer_set_visible(37, false);