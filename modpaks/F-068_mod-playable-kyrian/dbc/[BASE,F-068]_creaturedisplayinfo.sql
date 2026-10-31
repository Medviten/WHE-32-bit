-- creaturedisplayinfo: 2 inserts, 0 updates, 0 deletes

-- New entries (display scale 0.7, as CoA's displays)
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@KyrianMaleDisplay, @KyrianFemaleDisplay);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@KyrianMaleDisplay,   @KyrianMaleModel, 0, @KyrianMaleDisplayExtra,   '0.7000000000000000', 255, '', '', '', '', 3, 0, 0, 0, 0, 0),
(@KyrianFemaleDisplay, @KyrianFemaleModel, 0, @KyrianFemaleDisplayExtra, '0.7000000000000000', 255, '', '', '', '', 3, 0, 0, 0, 0, 0);
