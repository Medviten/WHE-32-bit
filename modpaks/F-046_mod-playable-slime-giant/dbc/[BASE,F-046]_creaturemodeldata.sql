-- creaturemodeldata: 1 insert, 0 updates, 0 deletes
-- One model for both genders (male-only race). Sizes, sounds and footprints from the playable Ogre male (F-031): a
-- big humanoid like the 2.64-yard Slime Giant. The geometry box is the model's own (rest pose).

-- New entries
DELETE FROM `creaturemodeldata` WHERE `id` = @SlimeGiantMaleModel;
INSERT INTO `creaturemodeldata` (`id`, `flags`, `model_path`, `size_class`, `model_scale`, `blood_id`, `footprint_texture_id`, `footprint_texture_length`, `footprint_texture_width`, `footprint_particle_scale`, `foley_material_id`, `footstep_shake_size`, `death_thud_shake_size`, `sound_data`, `collision_width`, `collision_height`, `mount_height`, `geo_box_min_x`, `geo_box_min_y`, `geo_box_min_z`, `geo_box_max_x`, `geo_box_max_y`, `geo_box_max_z`, `world_effect_scale`, `attached_effect_scale`, `missile_collision_radius`, `missile_collision_push`, `missile_collision_raise`) VALUES
(@SlimeGiantMaleModel, 2052, @SlimeGiantModelPath, 3, '1.0000000000000000', 1, 4, '18.0000000000000000', '12.0000000000000000', '1.0000000000000000', 0, 0, 10, 32, '0.6111000180244446', '2.0309998989105225', '1.3466869592666626', '-0.4850000000000000', '-1.0510000000000000', '-0.0100000000000000', '0.3190000000000000', '1.0510000000000000', '2.6420000000000000', '1.0000000000000000', '1.0000000000000000', '0E-16', '0E-16', '0E-16');
