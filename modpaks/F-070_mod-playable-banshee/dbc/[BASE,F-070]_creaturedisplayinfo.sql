-- creaturedisplayinfo: 2 inserts, 0 updates, 0 deletes

-- New entries (display scale 0.98, as CoA's displays)
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@BansheeMaleDisplay, @BansheeFemaleDisplay);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@BansheeMaleDisplay,   @BansheeMaleModel, 0, @BansheeMaleDisplayExtra,   '0.9800000000000000', 255, '', '', '', '', 3, 0, 0, 0, 0, 0),
(@BansheeFemaleDisplay, @BansheeFemaleModel, 0, @BansheeFemaleDisplayExtra, '0.9800000000000000', 255, '', '', '', '', 3, 0, 0, 0, 0, 0);
