actionButton = keyboard_check_pressed(ord("E"));
// Instances inside house are deactivated at game creation
instance_deactivate_layer(36);
layer_set_visible(36, false);