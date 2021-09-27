module WAGSI.Plumbing.Samples where

type Samples :: forall k. k -> Row k
type Samples a =
  ( kicklinn_0 :: a
  , msg_0 :: a
  , msg_1 :: a
  , msg_2 :: a
  , msg_3 :: a
  , msg_4 :: a
  , msg_5 :: a
  , msg_6 :: a
  , msg_7 :: a
  , msg_8 :: a
  , gabbalouder_0 :: a
  , gabbalouder_1 :: a
  , gabbalouder_2 :: a
  , gabbalouder_3 :: a
  , kurt_0 :: a
  , kurt_1 :: a
  , kurt_2 :: a
  , kurt_3 :: a
  , kurt_4 :: a
  , kurt_5 :: a
  , kurt_6 :: a
  , bassdm_0 :: a
  , bassdm_1 :: a
  , bassdm_2 :: a
  , bassdm_3 :: a
  , bassdm_4 :: a
  , bassdm_5 :: a
  , bassdm_6 :: a
  , bassdm_7 :: a
  , bassdm_8 :: a
  , bassdm_9 :: a
  , bassdm_10 :: a
  , bassdm_11 :: a
  , bassdm_12 :: a
  , bassdm_13 :: a
  , bassdm_14 :: a
  , bassdm_15 :: a
  , bassdm_16 :: a
  , bassdm_17 :: a
  , bassdm_18 :: a
  , bassdm_19 :: a
  , bassdm_20 :: a
  , bassdm_21 :: a
  , bassdm_22 :: a
  , bassdm_23 :: a
  , tabla2_0 :: a
  , tabla2_1 :: a
  , tabla2_2 :: a
  , tabla2_3 :: a
  , tabla2_4 :: a
  , tabla2_5 :: a
  , tabla2_6 :: a
  , tabla2_7 :: a
  , tabla2_8 :: a
  , tabla2_9 :: a
  , tabla2_10 :: a
  , tabla2_11 :: a
  , tabla2_12 :: a
  , tabla2_13 :: a
  , tabla2_14 :: a
  , tabla2_15 :: a
  , tabla2_16 :: a
  , tabla2_17 :: a
  , tabla2_18 :: a
  , tabla2_19 :: a
  , tabla2_20 :: a
  , tabla2_21 :: a
  , tabla2_22 :: a
  , tabla2_23 :: a
  , tabla2_24 :: a
  , tabla2_25 :: a
  , tabla2_26 :: a
  , tabla2_27 :: a
  , tabla2_28 :: a
  , tabla2_29 :: a
  , tabla2_30 :: a
  , tabla2_31 :: a
  , tabla2_32 :: a
  , tabla2_33 :: a
  , tabla2_34 :: a
  , tabla2_35 :: a
  , tabla2_36 :: a
  , tabla2_37 :: a
  , tabla2_38 :: a
  , tabla2_39 :: a
  , tabla2_40 :: a
  , tabla2_41 :: a
  , tabla2_42 :: a
  , tabla2_43 :: a
  , tabla2_44 :: a
  , tabla2_45 :: a
  , chin_0 :: a
  , chin_1 :: a
  , chin_2 :: a
  , chin_3 :: a
  , mp3_0 :: a
  , mp3_1 :: a
  , mp3_2 :: a
  , mp3_3 :: a
  , tablex_0 :: a
  , tablex_1 :: a
  , tablex_2 :: a
  , sf_0 :: a
  , sf_1 :: a
  , sf_2 :: a
  , sf_3 :: a
  , sf_4 :: a
  , sf_5 :: a
  , sf_6 :: a
  , sf_7 :: a
  , sf_8 :: a
  , sf_9 :: a
  , sf_10 :: a
  , sf_11 :: a
  , sf_12 :: a
  , sf_13 :: a
  , sf_14 :: a
  , sf_15 :: a
  , sf_16 :: a
  , sf_17 :: a
  , speakspell_0 :: a
  , speakspell_1 :: a
  , speakspell_2 :: a
  , speakspell_3 :: a
  , speakspell_4 :: a
  , speakspell_5 :: a
  , speakspell_6 :: a
  , speakspell_7 :: a
  , speakspell_8 :: a
  , speakspell_9 :: a
  , speakspell_10 :: a
  , speakspell_11 :: a
  , cc_0 :: a
  , cc_1 :: a
  , cc_2 :: a
  , cc_3 :: a
  , cc_4 :: a
  , cc_5 :: a
  , gabbaloud_0 :: a
  , gabbaloud_1 :: a
  , gabbaloud_2 :: a
  , gabbaloud_3 :: a
  , ades2_0 :: a
  , ades2_1 :: a
  , ades2_2 :: a
  , ades2_3 :: a
  , ades2_4 :: a
  , ades2_5 :: a
  , ades2_6 :: a
  , ades2_7 :: a
  , ades2_8 :: a
  , space_0 :: a
  , space_1 :: a
  , space_2 :: a
  , space_3 :: a
  , space_4 :: a
  , space_5 :: a
  , space_6 :: a
  , space_7 :: a
  , space_8 :: a
  , space_9 :: a
  , space_10 :: a
  , space_11 :: a
  , space_12 :: a
  , space_13 :: a
  , space_14 :: a
  , space_15 :: a
  , space_16 :: a
  , space_17 :: a
  , battles_0 :: a
  , battles_1 :: a
  , voodoo_0 :: a
  , voodoo_1 :: a
  , voodoo_2 :: a
  , voodoo_3 :: a
  , voodoo_4 :: a
  , ravemono_0 :: a
  , ravemono_1 :: a
  , psr_0 :: a
  , psr_1 :: a
  , psr_2 :: a
  , psr_3 :: a
  , psr_4 :: a
  , psr_5 :: a
  , psr_6 :: a
  , psr_7 :: a
  , psr_8 :: a
  , psr_9 :: a
  , psr_10 :: a
  , psr_11 :: a
  , psr_12 :: a
  , psr_13 :: a
  , psr_14 :: a
  , psr_15 :: a
  , psr_16 :: a
  , psr_17 :: a
  , psr_18 :: a
  , psr_19 :: a
  , psr_20 :: a
  , psr_21 :: a
  , psr_22 :: a
  , psr_23 :: a
  , psr_24 :: a
  , psr_25 :: a
  , psr_26 :: a
  , psr_27 :: a
  , psr_28 :: a
  , psr_29 :: a
  , metal_0 :: a
  , metal_1 :: a
  , metal_2 :: a
  , metal_3 :: a
  , metal_4 :: a
  , metal_5 :: a
  , metal_6 :: a
  , metal_7 :: a
  , metal_8 :: a
  , metal_9 :: a
  , hardcore_0 :: a
  , hardcore_1 :: a
  , hardcore_2 :: a
  , hardcore_3 :: a
  , hardcore_4 :: a
  , hardcore_5 :: a
  , hardcore_6 :: a
  , hardcore_7 :: a
  , hardcore_8 :: a
  , hardcore_9 :: a
  , hardcore_10 :: a
  , hardcore_11 :: a
  , mouth_0 :: a
  , mouth_1 :: a
  , mouth_2 :: a
  , mouth_3 :: a
  , mouth_4 :: a
  , mouth_5 :: a
  , mouth_6 :: a
  , mouth_7 :: a
  , mouth_8 :: a
  , mouth_9 :: a
  , mouth_10 :: a
  , mouth_11 :: a
  , mouth_12 :: a
  , mouth_13 :: a
  , mouth_14 :: a
  , sugar_0 :: a
  , sugar_1 :: a
  , odx_0 :: a
  , odx_1 :: a
  , odx_2 :: a
  , odx_3 :: a
  , odx_4 :: a
  , odx_5 :: a
  , odx_6 :: a
  , odx_7 :: a
  , odx_8 :: a
  , odx_9 :: a
  , odx_10 :: a
  , odx_11 :: a
  , odx_12 :: a
  , odx_13 :: a
  , odx_14 :: a
  , x_808lc_0 :: a
  , x_808lc_1 :: a
  , x_808lc_2 :: a
  , x_808lc_3 :: a
  , x_808lc_4 :: a
  , mt_0 :: a
  , mt_1 :: a
  , mt_2 :: a
  , mt_3 :: a
  , mt_4 :: a
  , mt_5 :: a
  , mt_6 :: a
  , mt_7 :: a
  , mt_8 :: a
  , mt_9 :: a
  , mt_10 :: a
  , mt_11 :: a
  , mt_12 :: a
  , mt_13 :: a
  , mt_14 :: a
  , mt_15 :: a
  , drumtraks_0 :: a
  , drumtraks_1 :: a
  , drumtraks_2 :: a
  , drumtraks_3 :: a
  , drumtraks_4 :: a
  , drumtraks_5 :: a
  , drumtraks_6 :: a
  , drumtraks_7 :: a
  , drumtraks_8 :: a
  , drumtraks_9 :: a
  , drumtraks_10 :: a
  , drumtraks_11 :: a
  , drumtraks_12 :: a
  , print_0 :: a
  , print_1 :: a
  , print_2 :: a
  , print_3 :: a
  , print_4 :: a
  , print_5 :: a
  , print_6 :: a
  , print_7 :: a
  , print_8 :: a
  , print_9 :: a
  , print_10 :: a
  , blip_0 :: a
  , blip_1 :: a
  , wobble_0 :: a
  , made_0 :: a
  , made_1 :: a
  , made_2 :: a
  , made_3 :: a
  , made_4 :: a
  , made_5 :: a
  , made_6 :: a
  , bass3_0 :: a
  , bass3_1 :: a
  , bass3_2 :: a
  , bass3_3 :: a
  , bass3_4 :: a
  , bass3_5 :: a
  , bass3_6 :: a
  , bass3_7 :: a
  , bass3_8 :: a
  , bass3_9 :: a
  , bass3_10 :: a
  , speechless_0 :: a
  , speechless_1 :: a
  , speechless_2 :: a
  , speechless_3 :: a
  , speechless_4 :: a
  , speechless_5 :: a
  , speechless_6 :: a
  , speechless_7 :: a
  , speechless_8 :: a
  , speechless_9 :: a
  , sine_0 :: a
  , sine_1 :: a
  , sine_2 :: a
  , sine_3 :: a
  , sine_4 :: a
  , sine_5 :: a
  , noise_0 :: a
  , x_808lt_0 :: a
  , x_808lt_1 :: a
  , x_808lt_2 :: a
  , x_808lt_3 :: a
  , x_808lt_4 :: a
  , sd_0 :: a
  , sd_1 :: a
  , alphabet_0 :: a
  , alphabet_1 :: a
  , alphabet_2 :: a
  , alphabet_3 :: a
  , alphabet_4 :: a
  , alphabet_5 :: a
  , alphabet_6 :: a
  , alphabet_7 :: a
  , alphabet_8 :: a
  , alphabet_9 :: a
  , alphabet_10 :: a
  , alphabet_11 :: a
  , alphabet_12 :: a
  , alphabet_13 :: a
  , alphabet_14 :: a
  , alphabet_15 :: a
  , alphabet_16 :: a
  , alphabet_17 :: a
  , alphabet_18 :: a
  , alphabet_19 :: a
  , alphabet_20 :: a
  , alphabet_21 :: a
  , alphabet_22 :: a
  , alphabet_23 :: a
  , alphabet_24 :: a
  , alphabet_25 :: a
  , baa2_0 :: a
  , baa2_1 :: a
  , baa2_2 :: a
  , baa2_3 :: a
  , baa2_4 :: a
  , baa2_5 :: a
  , baa2_6 :: a
  , tok_0 :: a
  , tok_1 :: a
  , tok_2 :: a
  , tok_3 :: a
  , ades3_0 :: a
  , ades3_1 :: a
  , ades3_2 :: a
  , ades3_3 :: a
  , ades3_4 :: a
  , ades3_5 :: a
  , ades3_6 :: a
  , x_909_0 :: a
  , sid_0 :: a
  , sid_1 :: a
  , sid_2 :: a
  , sid_3 :: a
  , sid_4 :: a
  , sid_5 :: a
  , sid_6 :: a
  , sid_7 :: a
  , sid_8 :: a
  , sid_9 :: a
  , sid_10 :: a
  , sid_11 :: a
  , jungbass_0 :: a
  , jungbass_1 :: a
  , jungbass_2 :: a
  , jungbass_3 :: a
  , jungbass_4 :: a
  , jungbass_5 :: a
  , jungbass_6 :: a
  , jungbass_7 :: a
  , jungbass_8 :: a
  , jungbass_9 :: a
  , jungbass_10 :: a
  , jungbass_11 :: a
  , jungbass_12 :: a
  , jungbass_13 :: a
  , jungbass_14 :: a
  , jungbass_15 :: a
  , jungbass_16 :: a
  , jungbass_17 :: a
  , jungbass_18 :: a
  , jungbass_19 :: a
  , gabba_0 :: a
  , gabba_1 :: a
  , gabba_2 :: a
  , gabba_3 :: a
  , crow_0 :: a
  , crow_1 :: a
  , crow_2 :: a
  , crow_3 :: a
  , birds3_0 :: a
  , birds3_1 :: a
  , birds3_2 :: a
  , birds3_3 :: a
  , birds3_4 :: a
  , birds3_5 :: a
  , birds3_6 :: a
  , birds3_7 :: a
  , birds3_8 :: a
  , birds3_9 :: a
  , birds3_10 :: a
  , birds3_11 :: a
  , birds3_12 :: a
  , birds3_13 :: a
  , birds3_14 :: a
  , birds3_15 :: a
  , birds3_16 :: a
  , birds3_17 :: a
  , birds3_18 :: a
  , auto_0 :: a
  , auto_1 :: a
  , auto_2 :: a
  , auto_3 :: a
  , auto_4 :: a
  , auto_5 :: a
  , auto_6 :: a
  , auto_7 :: a
  , auto_8 :: a
  , auto_9 :: a
  , auto_10 :: a
  , mute_0 :: a
  , mute_1 :: a
  , mute_2 :: a
  , mute_3 :: a
  , mute_4 :: a
  , mute_5 :: a
  , mute_6 :: a
  , mute_7 :: a
  , mute_8 :: a
  , mute_9 :: a
  , mute_10 :: a
  , mute_11 :: a
  , mute_12 :: a
  , mute_13 :: a
  , mute_14 :: a
  , mute_15 :: a
  , mute_16 :: a
  , mute_17 :: a
  , mute_18 :: a
  , mute_19 :: a
  , mute_20 :: a
  , mute_21 :: a
  , mute_22 :: a
  , mute_23 :: a
  , mute_24 :: a
  , mute_25 :: a
  , mute_26 :: a
  , mute_27 :: a
  , sheffield_0 :: a
  , casio_0 :: a
  , casio_1 :: a
  , casio_2 :: a
  , sax_0 :: a
  , sax_1 :: a
  , sax_2 :: a
  , sax_3 :: a
  , sax_4 :: a
  , sax_5 :: a
  , sax_6 :: a
  , sax_7 :: a
  , sax_8 :: a
  , sax_9 :: a
  , sax_10 :: a
  , sax_11 :: a
  , sax_12 :: a
  , sax_13 :: a
  , sax_14 :: a
  , sax_15 :: a
  , sax_16 :: a
  , sax_17 :: a
  , sax_18 :: a
  , sax_19 :: a
  , sax_20 :: a
  , sax_21 :: a
  , circus_0 :: a
  , circus_1 :: a
  , circus_2 :: a
  , yeah_0 :: a
  , yeah_1 :: a
  , yeah_2 :: a
  , yeah_3 :: a
  , yeah_4 :: a
  , yeah_5 :: a
  , yeah_6 :: a
  , yeah_7 :: a
  , yeah_8 :: a
  , yeah_9 :: a
  , yeah_10 :: a
  , yeah_11 :: a
  , yeah_12 :: a
  , yeah_13 :: a
  , yeah_14 :: a
  , yeah_15 :: a
  , yeah_16 :: a
  , yeah_17 :: a
  , yeah_18 :: a
  , yeah_19 :: a
  , yeah_20 :: a
  , yeah_21 :: a
  , yeah_22 :: a
  , yeah_23 :: a
  , yeah_24 :: a
  , yeah_25 :: a
  , yeah_26 :: a
  , yeah_27 :: a
  , yeah_28 :: a
  , yeah_29 :: a
  , yeah_30 :: a
  , oc_0 :: a
  , oc_1 :: a
  , oc_2 :: a
  , oc_3 :: a
  , alex_0 :: a
  , alex_1 :: a
  , can_0 :: a
  , can_1 :: a
  , can_2 :: a
  , can_3 :: a
  , can_4 :: a
  , can_5 :: a
  , can_6 :: a
  , can_7 :: a
  , can_8 :: a
  , can_9 :: a
  , can_10 :: a
  , can_11 :: a
  , can_12 :: a
  , can_13 :: a
  , jungle_0 :: a
  , jungle_1 :: a
  , jungle_2 :: a
  , jungle_3 :: a
  , jungle_4 :: a
  , jungle_5 :: a
  , jungle_6 :: a
  , jungle_7 :: a
  , jungle_8 :: a
  , jungle_9 :: a
  , jungle_10 :: a
  , jungle_11 :: a
  , jungle_12 :: a
  , moog_0 :: a
  , moog_1 :: a
  , moog_2 :: a
  , moog_3 :: a
  , moog_4 :: a
  , moog_5 :: a
  , moog_6 :: a
  , h_0 :: a
  , h_1 :: a
  , h_2 :: a
  , h_3 :: a
  , h_4 :: a
  , h_5 :: a
  , h_6 :: a
  , wind_0 :: a
  , wind_1 :: a
  , wind_2 :: a
  , wind_3 :: a
  , wind_4 :: a
  , wind_5 :: a
  , wind_6 :: a
  , wind_7 :: a
  , wind_8 :: a
  , wind_9 :: a
  , rs_0 :: a
  , em2_0 :: a
  , em2_1 :: a
  , em2_2 :: a
  , em2_3 :: a
  , em2_4 :: a
  , em2_5 :: a
  , noise2_0 :: a
  , noise2_1 :: a
  , noise2_2 :: a
  , noise2_3 :: a
  , noise2_4 :: a
  , noise2_5 :: a
  , noise2_6 :: a
  , noise2_7 :: a
  , foo_0 :: a
  , foo_1 :: a
  , foo_2 :: a
  , foo_3 :: a
  , foo_4 :: a
  , foo_5 :: a
  , foo_6 :: a
  , foo_7 :: a
  , foo_8 :: a
  , foo_9 :: a
  , foo_10 :: a
  , foo_11 :: a
  , foo_12 :: a
  , foo_13 :: a
  , foo_14 :: a
  , foo_15 :: a
  , foo_16 :: a
  , foo_17 :: a
  , foo_18 :: a
  , foo_19 :: a
  , foo_20 :: a
  , foo_21 :: a
  , foo_22 :: a
  , foo_23 :: a
  , foo_24 :: a
  , foo_25 :: a
  , foo_26 :: a
  , armora_0 :: a
  , armora_1 :: a
  , armora_2 :: a
  , armora_3 :: a
  , armora_4 :: a
  , armora_5 :: a
  , armora_6 :: a
  , bend_0 :: a
  , bend_1 :: a
  , bend_2 :: a
  , bend_3 :: a
  , newnotes_0 :: a
  , newnotes_1 :: a
  , newnotes_2 :: a
  , newnotes_3 :: a
  , newnotes_4 :: a
  , newnotes_5 :: a
  , newnotes_6 :: a
  , newnotes_7 :: a
  , newnotes_8 :: a
  , newnotes_9 :: a
  , newnotes_10 :: a
  , newnotes_11 :: a
  , newnotes_12 :: a
  , newnotes_13 :: a
  , newnotes_14 :: a
  , pebbles_0 :: a
  , mash2_0 :: a
  , mash2_1 :: a
  , mash2_2 :: a
  , mash2_3 :: a
  , diphone2_0 :: a
  , diphone2_1 :: a
  , diphone2_2 :: a
  , diphone2_3 :: a
  , diphone2_4 :: a
  , diphone2_5 :: a
  , diphone2_6 :: a
  , diphone2_7 :: a
  , diphone2_8 :: a
  , diphone2_9 :: a
  , diphone2_10 :: a
  , diphone2_11 :: a
  , e_0 :: a
  , e_1 :: a
  , e_2 :: a
  , e_3 :: a
  , e_4 :: a
  , e_5 :: a
  , e_6 :: a
  , e_7 :: a
  , bubble_0 :: a
  , bubble_1 :: a
  , bubble_2 :: a
  , bubble_3 :: a
  , bubble_4 :: a
  , bubble_5 :: a
  , bubble_6 :: a
  , bubble_7 :: a
  , insect_0 :: a
  , insect_1 :: a
  , insect_2 :: a
  , ade_0 :: a
  , ade_1 :: a
  , ade_2 :: a
  , ade_3 :: a
  , ade_4 :: a
  , ade_5 :: a
  , ade_6 :: a
  , ade_7 :: a
  , ade_8 :: a
  , ade_9 :: a
  , glitch_0 :: a
  , glitch_1 :: a
  , glitch_2 :: a
  , glitch_3 :: a
  , glitch_4 :: a
  , glitch_5 :: a
  , glitch_6 :: a
  , glitch_7 :: a
  , haw_0 :: a
  , haw_1 :: a
  , haw_2 :: a
  , haw_3 :: a
  , haw_4 :: a
  , haw_5 :: a
  , popkick_0 :: a
  , popkick_1 :: a
  , popkick_2 :: a
  , popkick_3 :: a
  , popkick_4 :: a
  , popkick_5 :: a
  , popkick_6 :: a
  , popkick_7 :: a
  , popkick_8 :: a
  , popkick_9 :: a
  , breaks157_0 :: a
  , gtr_0 :: a
  , gtr_1 :: a
  , gtr_2 :: a
  , clubkick_0 :: a
  , clubkick_1 :: a
  , clubkick_2 :: a
  , clubkick_3 :: a
  , clubkick_4 :: a
  , breaks152_0 :: a
  , x_808bd_0 :: a
  , x_808bd_1 :: a
  , x_808bd_2 :: a
  , x_808bd_3 :: a
  , x_808bd_4 :: a
  , x_808bd_5 :: a
  , x_808bd_6 :: a
  , x_808bd_7 :: a
  , x_808bd_8 :: a
  , x_808bd_9 :: a
  , x_808bd_10 :: a
  , x_808bd_11 :: a
  , x_808bd_12 :: a
  , x_808bd_13 :: a
  , x_808bd_14 :: a
  , x_808bd_15 :: a
  , x_808bd_16 :: a
  , x_808bd_17 :: a
  , x_808bd_18 :: a
  , x_808bd_19 :: a
  , x_808bd_20 :: a
  , x_808bd_21 :: a
  , x_808bd_22 :: a
  , x_808bd_23 :: a
  , x_808bd_24 :: a
  , miniyeah_0 :: a
  , miniyeah_1 :: a
  , miniyeah_2 :: a
  , miniyeah_3 :: a
  , if_0 :: a
  , if_1 :: a
  , if_2 :: a
  , if_3 :: a
  , if_4 :: a
  , x_808oh_0 :: a
  , x_808oh_1 :: a
  , x_808oh_2 :: a
  , x_808oh_3 :: a
  , x_808oh_4 :: a
  , house_0 :: a
  , house_1 :: a
  , house_2 :: a
  , house_3 :: a
  , house_4 :: a
  , house_5 :: a
  , house_6 :: a
  , house_7 :: a
  , dr_0 :: a
  , dr_1 :: a
  , dr_2 :: a
  , dr_3 :: a
  , dr_4 :: a
  , dr_5 :: a
  , dr_6 :: a
  , dr_7 :: a
  , dr_8 :: a
  , dr_9 :: a
  , dr_10 :: a
  , dr_11 :: a
  , dr_12 :: a
  , dr_13 :: a
  , dr_14 :: a
  , dr_15 :: a
  , dr_16 :: a
  , dr_17 :: a
  , dr_18 :: a
  , dr_19 :: a
  , dr_20 :: a
  , dr_21 :: a
  , dr_22 :: a
  , dr_23 :: a
  , dr_24 :: a
  , dr_25 :: a
  , dr_26 :: a
  , dr_27 :: a
  , dr_28 :: a
  , dr_29 :: a
  , dr_30 :: a
  , dr_31 :: a
  , dr_32 :: a
  , dr_33 :: a
  , dr_34 :: a
  , dr_35 :: a
  , dr_36 :: a
  , dr_37 :: a
  , dr_38 :: a
  , dr_39 :: a
  , dr_40 :: a
  , dr_41 :: a
  , dr55_0 :: a
  , dr55_1 :: a
  , dr55_2 :: a
  , dr55_3 :: a
  , bass_0 :: a
  , bass_1 :: a
  , bass_2 :: a
  , bass_3 :: a
  , ho_0 :: a
  , ho_1 :: a
  , ho_2 :: a
  , ho_3 :: a
  , ho_4 :: a
  , ho_5 :: a
  , hardkick_0 :: a
  , hardkick_1 :: a
  , hardkick_2 :: a
  , hardkick_3 :: a
  , hardkick_4 :: a
  , hardkick_5 :: a
  , x_808hc_0 :: a
  , x_808hc_1 :: a
  , x_808hc_2 :: a
  , x_808hc_3 :: a
  , x_808hc_4 :: a
  , hit_0 :: a
  , hit_1 :: a
  , hit_2 :: a
  , hit_3 :: a
  , hit_4 :: a
  , hit_5 :: a
  , breaks165_0 :: a
  , dr2_0 :: a
  , dr2_1 :: a
  , dr2_2 :: a
  , dr2_3 :: a
  , dr2_4 :: a
  , dr2_5 :: a
  , tabla_0 :: a
  , tabla_1 :: a
  , tabla_2 :: a
  , tabla_3 :: a
  , tabla_4 :: a
  , tabla_5 :: a
  , tabla_6 :: a
  , tabla_7 :: a
  , tabla_8 :: a
  , tabla_9 :: a
  , tabla_10 :: a
  , tabla_11 :: a
  , tabla_12 :: a
  , tabla_13 :: a
  , tabla_14 :: a
  , tabla_15 :: a
  , tabla_16 :: a
  , tabla_17 :: a
  , tabla_18 :: a
  , tabla_19 :: a
  , tabla_20 :: a
  , tabla_21 :: a
  , tabla_22 :: a
  , tabla_23 :: a
  , tabla_24 :: a
  , tabla_25 :: a
  , dork2_0 :: a
  , dork2_1 :: a
  , dork2_2 :: a
  , dork2_3 :: a
  , hc_0 :: a
  , hc_1 :: a
  , hc_2 :: a
  , hc_3 :: a
  , hc_4 :: a
  , hc_5 :: a
  , bassfoo_0 :: a
  , bassfoo_1 :: a
  , bassfoo_2 :: a
  , seawolf_0 :: a
  , seawolf_1 :: a
  , seawolf_2 :: a
  , cp_0 :: a
  , cp_1 :: a
  , jazz_0 :: a
  , jazz_1 :: a
  , jazz_2 :: a
  , jazz_3 :: a
  , jazz_4 :: a
  , jazz_5 :: a
  , jazz_6 :: a
  , jazz_7 :: a
  , juno_0 :: a
  , juno_1 :: a
  , juno_2 :: a
  , juno_3 :: a
  , juno_4 :: a
  , juno_5 :: a
  , juno_6 :: a
  , juno_7 :: a
  , juno_8 :: a
  , juno_9 :: a
  , juno_10 :: a
  , juno_11 :: a
  , birds_0 :: a
  , birds_1 :: a
  , birds_2 :: a
  , birds_3 :: a
  , birds_4 :: a
  , birds_5 :: a
  , birds_6 :: a
  , birds_7 :: a
  , birds_8 :: a
  , birds_9 :: a
  , glasstap_0 :: a
  , glasstap_1 :: a
  , glasstap_2 :: a
  , bass1_0 :: a
  , bass1_1 :: a
  , bass1_2 :: a
  , bass1_3 :: a
  , bass1_4 :: a
  , bass1_5 :: a
  , bass1_6 :: a
  , bass1_7 :: a
  , bass1_8 :: a
  , bass1_9 :: a
  , bass1_10 :: a
  , bass1_11 :: a
  , bass1_12 :: a
  , bass1_13 :: a
  , bass1_14 :: a
  , bass1_15 :: a
  , bass1_16 :: a
  , bass1_17 :: a
  , bass1_18 :: a
  , bass1_19 :: a
  , bass1_20 :: a
  , bass1_21 :: a
  , bass1_22 :: a
  , bass1_23 :: a
  , bass1_24 :: a
  , bass1_25 :: a
  , bass1_26 :: a
  , bass1_27 :: a
  , bass1_28 :: a
  , bass1_29 :: a
  , hh27_0 :: a
  , hh27_1 :: a
  , hh27_2 :: a
  , hh27_3 :: a
  , hh27_4 :: a
  , hh27_5 :: a
  , hh27_6 :: a
  , hh27_7 :: a
  , hh27_8 :: a
  , hh27_9 :: a
  , hh27_10 :: a
  , hh27_11 :: a
  , hh27_12 :: a
  , x_808_0 :: a
  , x_808_1 :: a
  , x_808_2 :: a
  , x_808_3 :: a
  , x_808_4 :: a
  , x_808_5 :: a
  , notes_0 :: a
  , notes_1 :: a
  , notes_2 :: a
  , notes_3 :: a
  , notes_4 :: a
  , notes_5 :: a
  , notes_6 :: a
  , notes_7 :: a
  , notes_8 :: a
  , notes_9 :: a
  , notes_10 :: a
  , notes_11 :: a
  , notes_12 :: a
  , notes_13 :: a
  , notes_14 :: a
  , xmas_0 :: a
  , erk_0 :: a
  , x_808mt_0 :: a
  , x_808mt_1 :: a
  , x_808mt_2 :: a
  , x_808mt_3 :: a
  , x_808mt_4 :: a
  , lighter_0 :: a
  , lighter_1 :: a
  , lighter_2 :: a
  , lighter_3 :: a
  , lighter_4 :: a
  , lighter_5 :: a
  , lighter_6 :: a
  , lighter_7 :: a
  , lighter_8 :: a
  , lighter_9 :: a
  , lighter_10 :: a
  , lighter_11 :: a
  , lighter_12 :: a
  , lighter_13 :: a
  , lighter_14 :: a
  , lighter_15 :: a
  , lighter_16 :: a
  , lighter_17 :: a
  , lighter_18 :: a
  , lighter_19 :: a
  , lighter_20 :: a
  , lighter_21 :: a
  , lighter_22 :: a
  , lighter_23 :: a
  , lighter_24 :: a
  , lighter_25 :: a
  , lighter_26 :: a
  , lighter_27 :: a
  , lighter_28 :: a
  , lighter_29 :: a
  , lighter_30 :: a
  , lighter_31 :: a
  , lighter_32 :: a
  , cb_0 :: a
  , subroc3d_0 :: a
  , subroc3d_1 :: a
  , subroc3d_2 :: a
  , subroc3d_3 :: a
  , subroc3d_4 :: a
  , subroc3d_5 :: a
  , subroc3d_6 :: a
  , subroc3d_7 :: a
  , subroc3d_8 :: a
  , subroc3d_9 :: a
  , subroc3d_10 :: a
  , ul_0 :: a
  , ul_1 :: a
  , ul_2 :: a
  , ul_3 :: a
  , ul_4 :: a
  , ul_5 :: a
  , ul_6 :: a
  , ul_7 :: a
  , ul_8 :: a
  , ul_9 :: a
  , gab_0 :: a
  , gab_1 :: a
  , gab_2 :: a
  , gab_3 :: a
  , gab_4 :: a
  , gab_5 :: a
  , gab_6 :: a
  , gab_7 :: a
  , gab_8 :: a
  , gab_9 :: a
  , monsterb_0 :: a
  , monsterb_1 :: a
  , monsterb_2 :: a
  , monsterb_3 :: a
  , monsterb_4 :: a
  , monsterb_5 :: a
  , diphone_0 :: a
  , diphone_1 :: a
  , diphone_2 :: a
  , diphone_3 :: a
  , diphone_4 :: a
  , diphone_5 :: a
  , diphone_6 :: a
  , diphone_7 :: a
  , diphone_8 :: a
  , diphone_9 :: a
  , diphone_10 :: a
  , diphone_11 :: a
  , diphone_12 :: a
  , diphone_13 :: a
  , diphone_14 :: a
  , diphone_15 :: a
  , diphone_16 :: a
  , diphone_17 :: a
  , diphone_18 :: a
  , diphone_19 :: a
  , diphone_20 :: a
  , diphone_21 :: a
  , diphone_22 :: a
  , diphone_23 :: a
  , diphone_24 :: a
  , diphone_25 :: a
  , diphone_26 :: a
  , diphone_27 :: a
  , diphone_28 :: a
  , diphone_29 :: a
  , diphone_30 :: a
  , diphone_31 :: a
  , diphone_32 :: a
  , diphone_33 :: a
  , diphone_34 :: a
  , diphone_35 :: a
  , diphone_36 :: a
  , diphone_37 :: a
  , clak_0 :: a
  , clak_1 :: a
  , sitar_0 :: a
  , sitar_1 :: a
  , sitar_2 :: a
  , sitar_3 :: a
  , sitar_4 :: a
  , sitar_5 :: a
  , sitar_6 :: a
  , sitar_7 :: a
  , ab_0 :: a
  , ab_1 :: a
  , ab_2 :: a
  , ab_3 :: a
  , ab_4 :: a
  , ab_5 :: a
  , ab_6 :: a
  , ab_7 :: a
  , ab_8 :: a
  , ab_9 :: a
  , ab_10 :: a
  , ab_11 :: a
  , cr_0 :: a
  , cr_1 :: a
  , cr_2 :: a
  , cr_3 :: a
  , cr_4 :: a
  , cr_5 :: a
  , tacscan_0 :: a
  , tacscan_1 :: a
  , tacscan_2 :: a
  , tacscan_3 :: a
  , tacscan_4 :: a
  , tacscan_5 :: a
  , tacscan_6 :: a
  , tacscan_7 :: a
  , tacscan_8 :: a
  , tacscan_9 :: a
  , tacscan_10 :: a
  , tacscan_11 :: a
  , tacscan_12 :: a
  , tacscan_13 :: a
  , tacscan_14 :: a
  , tacscan_15 :: a
  , tacscan_16 :: a
  , tacscan_17 :: a
  , tacscan_18 :: a
  , tacscan_19 :: a
  , tacscan_20 :: a
  , tacscan_21 :: a
  , v_0 :: a
  , v_1 :: a
  , v_2 :: a
  , v_3 :: a
  , v_4 :: a
  , v_5 :: a
  , bd_0 :: a
  , bd_1 :: a
  , bd_2 :: a
  , bd_3 :: a
  , bd_4 :: a
  , bd_5 :: a
  , bd_6 :: a
  , bd_7 :: a
  , bd_8 :: a
  , bd_9 :: a
  , bd_10 :: a
  , bd_11 :: a
  , bd_12 :: a
  , bd_13 :: a
  , bd_14 :: a
  , bd_15 :: a
  , bd_16 :: a
  , bd_17 :: a
  , bd_18 :: a
  , bd_19 :: a
  , bd_20 :: a
  , bd_21 :: a
  , bd_22 :: a
  , bd_23 :: a
  , rm_0 :: a
  , rm_1 :: a
  , blue_0 :: a
  , blue_1 :: a
  , latibro_0 :: a
  , latibro_1 :: a
  , latibro_2 :: a
  , latibro_3 :: a
  , latibro_4 :: a
  , latibro_5 :: a
  , latibro_6 :: a
  , latibro_7 :: a
  , dr_few_0 :: a
  , dr_few_1 :: a
  , dr_few_2 :: a
  , dr_few_3 :: a
  , dr_few_4 :: a
  , dr_few_5 :: a
  , dr_few_6 :: a
  , dr_few_7 :: a
  , rave2_0 :: a
  , rave2_1 :: a
  , rave2_2 :: a
  , rave2_3 :: a
  , rave2_4 :: a
  , rave2_5 :: a
  , koy_0 :: a
  , koy_1 :: a
  , glitch2_0 :: a
  , glitch2_1 :: a
  , glitch2_2 :: a
  , glitch2_3 :: a
  , glitch2_4 :: a
  , glitch2_5 :: a
  , glitch2_6 :: a
  , glitch2_7 :: a
  , hmm_0 :: a
  , arp_0 :: a
  , arp_1 :: a
  , made2_0 :: a
  , uxay_0 :: a
  , uxay_1 :: a
  , uxay_2 :: a
  , stomp_0 :: a
  , stomp_1 :: a
  , stomp_2 :: a
  , stomp_3 :: a
  , stomp_4 :: a
  , stomp_5 :: a
  , stomp_6 :: a
  , stomp_7 :: a
  , stomp_8 :: a
  , stomp_9 :: a
  , tech_0 :: a
  , tech_1 :: a
  , tech_2 :: a
  , tech_3 :: a
  , tech_4 :: a
  , tech_5 :: a
  , tech_6 :: a
  , tech_7 :: a
  , tech_8 :: a
  , tech_9 :: a
  , tech_10 :: a
  , tech_11 :: a
  , tech_12 :: a
  , sn_0 :: a
  , sn_1 :: a
  , sn_2 :: a
  , sn_3 :: a
  , sn_4 :: a
  , sn_5 :: a
  , sn_6 :: a
  , sn_7 :: a
  , sn_8 :: a
  , sn_9 :: a
  , sn_10 :: a
  , sn_11 :: a
  , sn_12 :: a
  , sn_13 :: a
  , sn_14 :: a
  , sn_15 :: a
  , sn_16 :: a
  , sn_17 :: a
  , sn_18 :: a
  , sn_19 :: a
  , sn_20 :: a
  , sn_21 :: a
  , sn_22 :: a
  , sn_23 :: a
  , sn_24 :: a
  , sn_25 :: a
  , sn_26 :: a
  , sn_27 :: a
  , sn_28 :: a
  , sn_29 :: a
  , sn_30 :: a
  , sn_31 :: a
  , sn_32 :: a
  , sn_33 :: a
  , sn_34 :: a
  , sn_35 :: a
  , sn_36 :: a
  , sn_37 :: a
  , sn_38 :: a
  , sn_39 :: a
  , sn_40 :: a
  , sn_41 :: a
  , sn_42 :: a
  , sn_43 :: a
  , sn_44 :: a
  , sn_45 :: a
  , sn_46 :: a
  , sn_47 :: a
  , sn_48 :: a
  , sn_49 :: a
  , sn_50 :: a
  , sn_51 :: a
  , less_0 :: a
  , less_1 :: a
  , less_2 :: a
  , less_3 :: a
  , off_0 :: a
  , x_808sd_0 :: a
  , x_808sd_1 :: a
  , x_808sd_2 :: a
  , x_808sd_3 :: a
  , x_808sd_4 :: a
  , x_808sd_5 :: a
  , x_808sd_6 :: a
  , x_808sd_7 :: a
  , x_808sd_8 :: a
  , x_808sd_9 :: a
  , x_808sd_10 :: a
  , x_808sd_11 :: a
  , x_808sd_12 :: a
  , x_808sd_13 :: a
  , x_808sd_14 :: a
  , x_808sd_15 :: a
  , x_808sd_16 :: a
  , x_808sd_17 :: a
  , x_808sd_18 :: a
  , x_808sd_19 :: a
  , x_808sd_20 :: a
  , x_808sd_21 :: a
  , x_808sd_22 :: a
  , x_808sd_23 :: a
  , x_808sd_24 :: a
  , trump_0 :: a
  , trump_1 :: a
  , trump_2 :: a
  , trump_3 :: a
  , trump_4 :: a
  , trump_5 :: a
  , trump_6 :: a
  , trump_7 :: a
  , trump_8 :: a
  , trump_9 :: a
  , trump_10 :: a
  , bev_0 :: a
  , bev_1 :: a
  , pad_0 :: a
  , pad_1 :: a
  , pad_2 :: a
  , led_0 :: a
  , perc_0 :: a
  , perc_1 :: a
  , perc_2 :: a
  , perc_3 :: a
  , perc_4 :: a
  , perc_5 :: a
  , pluck_0 :: a
  , pluck_1 :: a
  , pluck_2 :: a
  , pluck_3 :: a
  , pluck_4 :: a
  , pluck_5 :: a
  , pluck_6 :: a
  , pluck_7 :: a
  , pluck_8 :: a
  , pluck_9 :: a
  , pluck_10 :: a
  , pluck_11 :: a
  , pluck_12 :: a
  , pluck_13 :: a
  , pluck_14 :: a
  , pluck_15 :: a
  , pluck_16 :: a
  , bleep_0 :: a
  , bleep_1 :: a
  , bleep_2 :: a
  , bleep_3 :: a
  , bleep_4 :: a
  , bleep_5 :: a
  , bleep_6 :: a
  , bleep_7 :: a
  , bleep_8 :: a
  , bleep_9 :: a
  , bleep_10 :: a
  , bleep_11 :: a
  , bleep_12 :: a
  , ht_0 :: a
  , ht_1 :: a
  , ht_2 :: a
  , ht_3 :: a
  , ht_4 :: a
  , ht_5 :: a
  , ht_6 :: a
  , ht_7 :: a
  , ht_8 :: a
  , ht_9 :: a
  , ht_10 :: a
  , ht_11 :: a
  , ht_12 :: a
  , ht_13 :: a
  , ht_14 :: a
  , ht_15 :: a
  , ades4_0 :: a
  , ades4_1 :: a
  , ades4_2 :: a
  , ades4_3 :: a
  , ades4_4 :: a
  , ades4_5 :: a
  , proc_0 :: a
  , proc_1 :: a
  , gretsch_0 :: a
  , gretsch_1 :: a
  , gretsch_2 :: a
  , gretsch_3 :: a
  , gretsch_4 :: a
  , gretsch_5 :: a
  , gretsch_6 :: a
  , gretsch_7 :: a
  , gretsch_8 :: a
  , gretsch_9 :: a
  , gretsch_10 :: a
  , gretsch_11 :: a
  , gretsch_12 :: a
  , gretsch_13 :: a
  , gretsch_14 :: a
  , gretsch_15 :: a
  , gretsch_16 :: a
  , gretsch_17 :: a
  , gretsch_18 :: a
  , gretsch_19 :: a
  , gretsch_20 :: a
  , gretsch_21 :: a
  , gretsch_22 :: a
  , gretsch_23 :: a
  , outdoor_0 :: a
  , outdoor_1 :: a
  , outdoor_2 :: a
  , outdoor_3 :: a
  , outdoor_4 :: a
  , outdoor_5 :: a
  , techno_0 :: a
  , techno_1 :: a
  , techno_2 :: a
  , techno_3 :: a
  , techno_4 :: a
  , techno_5 :: a
  , techno_6 :: a
  , ulgab_0 :: a
  , ulgab_1 :: a
  , ulgab_2 :: a
  , ulgab_3 :: a
  , ulgab_4 :: a
  , breaks125_0 :: a
  , breaks125_1 :: a
  , bin_0 :: a
  , bin_1 :: a
  , x_808mc_0 :: a
  , x_808mc_1 :: a
  , x_808mc_2 :: a
  , x_808mc_3 :: a
  , x_808mc_4 :: a
  , lt_0 :: a
  , lt_1 :: a
  , lt_2 :: a
  , lt_3 :: a
  , lt_4 :: a
  , lt_5 :: a
  , lt_6 :: a
  , lt_7 :: a
  , lt_8 :: a
  , lt_9 :: a
  , lt_10 :: a
  , lt_11 :: a
  , lt_12 :: a
  , lt_13 :: a
  , lt_14 :: a
  , lt_15 :: a
  , amencutup_0 :: a
  , amencutup_1 :: a
  , amencutup_2 :: a
  , amencutup_3 :: a
  , amencutup_4 :: a
  , amencutup_5 :: a
  , amencutup_6 :: a
  , amencutup_7 :: a
  , amencutup_8 :: a
  , amencutup_9 :: a
  , amencutup_10 :: a
  , amencutup_11 :: a
  , amencutup_12 :: a
  , amencutup_13 :: a
  , amencutup_14 :: a
  , amencutup_15 :: a
  , amencutup_16 :: a
  , amencutup_17 :: a
  , amencutup_18 :: a
  , amencutup_19 :: a
  , amencutup_20 :: a
  , amencutup_21 :: a
  , amencutup_22 :: a
  , amencutup_23 :: a
  , amencutup_24 :: a
  , amencutup_25 :: a
  , amencutup_26 :: a
  , amencutup_27 :: a
  , amencutup_28 :: a
  , amencutup_29 :: a
  , amencutup_30 :: a
  , amencutup_31 :: a
  , drum_0 :: a
  , drum_1 :: a
  , drum_2 :: a
  , drum_3 :: a
  , drum_4 :: a
  , drum_5 :: a
  , coins_0 :: a
  , industrial_0 :: a
  , industrial_1 :: a
  , industrial_2 :: a
  , industrial_3 :: a
  , industrial_4 :: a
  , industrial_5 :: a
  , industrial_6 :: a
  , industrial_7 :: a
  , industrial_8 :: a
  , industrial_9 :: a
  , industrial_10 :: a
  , industrial_11 :: a
  , industrial_12 :: a
  , industrial_13 :: a
  , industrial_14 :: a
  , industrial_15 :: a
  , industrial_16 :: a
  , industrial_17 :: a
  , industrial_18 :: a
  , industrial_19 :: a
  , industrial_20 :: a
  , industrial_21 :: a
  , industrial_22 :: a
  , industrial_23 :: a
  , industrial_24 :: a
  , industrial_25 :: a
  , industrial_26 :: a
  , industrial_27 :: a
  , industrial_28 :: a
  , industrial_29 :: a
  , industrial_30 :: a
  , industrial_31 :: a
  , tink_0 :: a
  , tink_1 :: a
  , tink_2 :: a
  , tink_3 :: a
  , tink_4 :: a
  , co_0 :: a
  , co_1 :: a
  , co_2 :: a
  , co_3 :: a
  , fest_0 :: a
  , feelfx_0 :: a
  , feelfx_1 :: a
  , feelfx_2 :: a
  , feelfx_3 :: a
  , feelfx_4 :: a
  , feelfx_5 :: a
  , feelfx_6 :: a
  , feelfx_7 :: a
  , x_808cy_0 :: a
  , x_808cy_1 :: a
  , x_808cy_2 :: a
  , x_808cy_3 :: a
  , x_808cy_4 :: a
  , x_808cy_5 :: a
  , x_808cy_6 :: a
  , x_808cy_7 :: a
  , x_808cy_8 :: a
  , x_808cy_9 :: a
  , x_808cy_10 :: a
  , x_808cy_11 :: a
  , x_808cy_12 :: a
  , x_808cy_13 :: a
  , x_808cy_14 :: a
  , x_808cy_15 :: a
  , x_808cy_16 :: a
  , x_808cy_17 :: a
  , x_808cy_18 :: a
  , x_808cy_19 :: a
  , x_808cy_20 :: a
  , x_808cy_21 :: a
  , x_808cy_22 :: a
  , x_808cy_23 :: a
  , x_808cy_24 :: a
  , world_0 :: a
  , world_1 :: a
  , world_2 :: a
  , f_0 :: a
  , numbers_0 :: a
  , numbers_1 :: a
  , numbers_2 :: a
  , numbers_3 :: a
  , numbers_4 :: a
  , numbers_5 :: a
  , numbers_6 :: a
  , numbers_7 :: a
  , numbers_8 :: a
  , d_0 :: a
  , d_1 :: a
  , d_2 :: a
  , d_3 :: a
  , padlong_0 :: a
  , sequential_0 :: a
  , sequential_1 :: a
  , sequential_2 :: a
  , sequential_3 :: a
  , sequential_4 :: a
  , sequential_5 :: a
  , sequential_6 :: a
  , sequential_7 :: a
  , stab_0 :: a
  , stab_1 :: a
  , stab_2 :: a
  , stab_3 :: a
  , stab_4 :: a
  , stab_5 :: a
  , stab_6 :: a
  , stab_7 :: a
  , stab_8 :: a
  , stab_9 :: a
  , stab_10 :: a
  , stab_11 :: a
  , stab_12 :: a
  , stab_13 :: a
  , stab_14 :: a
  , stab_15 :: a
  , stab_16 :: a
  , stab_17 :: a
  , stab_18 :: a
  , stab_19 :: a
  , stab_20 :: a
  , stab_21 :: a
  , stab_22 :: a
  , electro1_0 :: a
  , electro1_1 :: a
  , electro1_2 :: a
  , electro1_3 :: a
  , electro1_4 :: a
  , electro1_5 :: a
  , electro1_6 :: a
  , electro1_7 :: a
  , electro1_8 :: a
  , electro1_9 :: a
  , electro1_10 :: a
  , electro1_11 :: a
  , electro1_12 :: a
  , ifdrums_0 :: a
  , ifdrums_1 :: a
  , ifdrums_2 :: a
  , invaders_0 :: a
  , invaders_1 :: a
  , invaders_2 :: a
  , invaders_3 :: a
  , invaders_4 :: a
  , invaders_5 :: a
  , invaders_6 :: a
  , invaders_7 :: a
  , invaders_8 :: a
  , invaders_9 :: a
  , invaders_10 :: a
  , invaders_11 :: a
  , invaders_12 :: a
  , invaders_13 :: a
  , invaders_14 :: a
  , invaders_15 :: a
  , invaders_16 :: a
  , invaders_17 :: a
  , dist_0 :: a
  , dist_1 :: a
  , dist_2 :: a
  , dist_3 :: a
  , dist_4 :: a
  , dist_5 :: a
  , dist_6 :: a
  , dist_7 :: a
  , dist_8 :: a
  , dist_9 :: a
  , dist_10 :: a
  , dist_11 :: a
  , dist_12 :: a
  , dist_13 :: a
  , dist_14 :: a
  , dist_15 :: a
  , sundance_0 :: a
  , sundance_1 :: a
  , sundance_2 :: a
  , sundance_3 :: a
  , sundance_4 :: a
  , sundance_5 :: a
  , speech_0 :: a
  , speech_1 :: a
  , speech_2 :: a
  , speech_3 :: a
  , speech_4 :: a
  , speech_5 :: a
  , speech_6 :: a
  , toys_0 :: a
  , toys_1 :: a
  , toys_2 :: a
  , toys_3 :: a
  , toys_4 :: a
  , toys_5 :: a
  , toys_6 :: a
  , toys_7 :: a
  , toys_8 :: a
  , toys_9 :: a
  , toys_10 :: a
  , toys_11 :: a
  , toys_12 :: a
  , bass0_0 :: a
  , bass0_1 :: a
  , bass0_2 :: a
  , realclaps_0 :: a
  , realclaps_1 :: a
  , realclaps_2 :: a
  , realclaps_3 :: a
  , dorkbot_0 :: a
  , dorkbot_1 :: a
  , arpy_0 :: a
  , arpy_1 :: a
  , arpy_2 :: a
  , arpy_3 :: a
  , arpy_4 :: a
  , arpy_5 :: a
  , arpy_6 :: a
  , arpy_7 :: a
  , arpy_8 :: a
  , arpy_9 :: a
  , arpy_10 :: a
  , fire_0 :: a
  , hoover_0 :: a
  , hoover_1 :: a
  , hoover_2 :: a
  , hoover_3 :: a
  , hoover_4 :: a
  , hoover_5 :: a
  , breath_0 :: a
  , rave_0 :: a
  , rave_1 :: a
  , rave_2 :: a
  , rave_3 :: a
  , rave_4 :: a
  , rave_5 :: a
  , rave_6 :: a
  , rave_7 :: a
  , bottle_0 :: a
  , bottle_1 :: a
  , bottle_2 :: a
  , bottle_3 :: a
  , bottle_4 :: a
  , bottle_5 :: a
  , bottle_6 :: a
  , bottle_7 :: a
  , bottle_8 :: a
  , bottle_9 :: a
  , bottle_10 :: a
  , bottle_11 :: a
  , bottle_12 :: a
  , east_0 :: a
  , east_1 :: a
  , east_2 :: a
  , east_3 :: a
  , east_4 :: a
  , east_5 :: a
  , east_6 :: a
  , east_7 :: a
  , east_8 :: a
  , linnhats_0 :: a
  , linnhats_1 :: a
  , linnhats_2 :: a
  , linnhats_3 :: a
  , linnhats_4 :: a
  , linnhats_5 :: a
  , speedupdown_0 :: a
  , speedupdown_1 :: a
  , speedupdown_2 :: a
  , speedupdown_3 :: a
  , speedupdown_4 :: a
  , speedupdown_5 :: a
  , speedupdown_6 :: a
  , speedupdown_7 :: a
  , speedupdown_8 :: a
  , cosmicg_0 :: a
  , cosmicg_1 :: a
  , cosmicg_2 :: a
  , cosmicg_3 :: a
  , cosmicg_4 :: a
  , cosmicg_5 :: a
  , cosmicg_6 :: a
  , cosmicg_7 :: a
  , cosmicg_8 :: a
  , cosmicg_9 :: a
  , cosmicg_10 :: a
  , cosmicg_11 :: a
  , cosmicg_12 :: a
  , cosmicg_13 :: a
  , cosmicg_14 :: a
  , jvbass_0 :: a
  , jvbass_1 :: a
  , jvbass_2 :: a
  , jvbass_3 :: a
  , jvbass_4 :: a
  , jvbass_5 :: a
  , jvbass_6 :: a
  , jvbass_7 :: a
  , jvbass_8 :: a
  , jvbass_9 :: a
  , jvbass_10 :: a
  , jvbass_11 :: a
  , jvbass_12 :: a
  , mash_0 :: a
  , mash_1 :: a
  , feel_0 :: a
  , feel_1 :: a
  , feel_2 :: a
  , feel_3 :: a
  , feel_4 :: a
  , feel_5 :: a
  , feel_6 :: a
  , short_0 :: a
  , short_1 :: a
  , short_2 :: a
  , short_3 :: a
  , short_4 :: a
  , incoming_0 :: a
  , incoming_1 :: a
  , incoming_2 :: a
  , incoming_3 :: a
  , incoming_4 :: a
  , incoming_5 :: a
  , incoming_6 :: a
  , incoming_7 :: a
  , flick_0 :: a
  , flick_1 :: a
  , flick_2 :: a
  , flick_3 :: a
  , flick_4 :: a
  , flick_5 :: a
  , flick_6 :: a
  , flick_7 :: a
  , flick_8 :: a
  , flick_9 :: a
  , flick_10 :: a
  , flick_11 :: a
  , flick_12 :: a
  , flick_13 :: a
  , flick_14 :: a
  , flick_15 :: a
  , flick_16 :: a
  , reverbkick_0 :: a
  , bass2_0 :: a
  , bass2_1 :: a
  , bass2_2 :: a
  , bass2_3 :: a
  , bass2_4 :: a
  , baa_0 :: a
  , baa_1 :: a
  , baa_2 :: a
  , baa_3 :: a
  , baa_4 :: a
  , baa_5 :: a
  , baa_6 :: a
  , fm_0 :: a
  , fm_1 :: a
  , fm_2 :: a
  , fm_3 :: a
  , fm_4 :: a
  , fm_5 :: a
  , fm_6 :: a
  , fm_7 :: a
  , fm_8 :: a
  , fm_9 :: a
  , fm_10 :: a
  , fm_11 :: a
  , fm_12 :: a
  , fm_13 :: a
  , fm_14 :: a
  , fm_15 :: a
  , fm_16 :: a
  , click_0 :: a
  , click_1 :: a
  , click_2 :: a
  , click_3 :: a
  , control_0 :: a
  , control_1 :: a
  , peri_0 :: a
  , peri_1 :: a
  , peri_2 :: a
  , peri_3 :: a
  , peri_4 :: a
  , peri_5 :: a
  , peri_6 :: a
  , peri_7 :: a
  , peri_8 :: a
  , peri_9 :: a
  , peri_10 :: a
  , peri_11 :: a
  , peri_12 :: a
  , peri_13 :: a
  , peri_14 :: a
  , procshort_0 :: a
  , procshort_1 :: a
  , procshort_2 :: a
  , procshort_3 :: a
  , procshort_4 :: a
  , procshort_5 :: a
  , procshort_6 :: a
  , procshort_7 :: a
  , hand_0 :: a
  , hand_1 :: a
  , hand_2 :: a
  , hand_3 :: a
  , hand_4 :: a
  , hand_5 :: a
  , hand_6 :: a
  , hand_7 :: a
  , hand_8 :: a
  , hand_9 :: a
  , hand_10 :: a
  , hand_11 :: a
  , hand_12 :: a
  , hand_13 :: a
  , hand_14 :: a
  , hand_15 :: a
  , hand_16 :: a
  , future_0 :: a
  , future_1 :: a
  , future_2 :: a
  , future_3 :: a
  , future_4 :: a
  , future_5 :: a
  , future_6 :: a
  , future_7 :: a
  , future_8 :: a
  , future_9 :: a
  , future_10 :: a
  , future_11 :: a
  , future_12 :: a
  , future_13 :: a
  , future_14 :: a
  , future_15 :: a
  , future_16 :: a
  , hh_0 :: a
  , hh_1 :: a
  , hh_2 :: a
  , hh_3 :: a
  , hh_4 :: a
  , hh_5 :: a
  , hh_6 :: a
  , hh_7 :: a
  , hh_8 :: a
  , hh_9 :: a
  , hh_10 :: a
  , hh_11 :: a
  , hh_12 :: a
  , x_808ht_0 :: a
  , x_808ht_1 :: a
  , x_808ht_2 :: a
  , x_808ht_3 :: a
  , x_808ht_4 :: a
  , db_0 :: a
  , db_1 :: a
  , db_2 :: a
  , db_3 :: a
  , db_4 :: a
  , db_5 :: a
  , db_6 :: a
  , db_7 :: a
  , db_8 :: a
  , db_9 :: a
  , db_10 :: a
  , db_11 :: a
  , db_12 :: a
  )

urls :: { | Samples String }
urls =
  { kicklinn_0: "https://klank-share.s3.amazonaws.com/dirt-samples/kicklinn/Linn_Kick_1.ogg"
  , msg_0: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/007_msg7.ogg"
  , msg_1: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/003_msg3.ogg"
  , msg_2: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/002_msg2.ogg"
  , msg_3: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/001_msg1.ogg"
  , msg_4: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/004_msg4.ogg"
  , msg_5: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/008_msg8.ogg"
  , msg_6: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/000_msg0.ogg"
  , msg_7: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/006_msg6.ogg"
  , msg_8: "https://klank-share.s3.amazonaws.com/dirt-samples/msg/005_msg5.ogg"
  , gabbalouder_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/003_3.ogg"
  , gabbalouder_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/001_1.ogg"
  , gabbalouder_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/000_0.ogg"
  , gabbalouder_3: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/002_2.ogg"
  , kurt_0: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/000_kurt01.ogg"
  , kurt_1: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/001_kurt02.ogg"
  , kurt_2: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/003_kurt04.ogg"
  , kurt_3: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/006_kurt07.ogg"
  , kurt_4: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/004_kurt05.ogg"
  , kurt_5: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/005_kurt06.ogg"
  , kurt_6: "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/002_kurt03.ogg"
  , bassdm_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/003_BT0A0D3.ogg"
  , bassdm_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/022_BTAA0DA.ogg"
  , bassdm_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/019_BTAA0D0.ogg"
  , bassdm_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/018_BT7AADA.ogg"
  , bassdm_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/024_BTAAADA.ogg"
  , bassdm_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/008_BT3A0D3.ogg"
  , bassdm_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/012_BT3AADA.ogg"
  , bassdm_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/015_BT7A0D7.ogg"
  , bassdm_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/021_BTAA0D7.ogg"
  , bassdm_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/017_BT7AAD0.ogg"
  , bassdm_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/004_BT0A0DA.ogg"
  , bassdm_11: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/020_BTAA0D3.ogg"
  , bassdm_12: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/013_BT7A0D0.ogg"
  , bassdm_13: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/016_BT7A0DA.ogg"
  , bassdm_14: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/007_BT3A0D0.ogg"
  , bassdm_15: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/011_BT3AAD0.ogg"
  , bassdm_16: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/001_BT0A0A7.ogg"
  , bassdm_17: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/014_BT7A0D3.ogg"
  , bassdm_18: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/023_BTAAAD0.ogg"
  , bassdm_19: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/009_BT3A0D7.ogg"
  , bassdm_20: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/006_BT0AADA.ogg"
  , bassdm_21: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/002_BT0A0D0.ogg"
  , bassdm_22: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/005_BT0AAD0.ogg"
  , bassdm_23: "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/010_BT3A0DA.ogg"
  , tabla2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23663_loofa_A_019.ogg"
  , tabla2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23678_loofa_bahia006.ogg"
  , tabla2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23671_loofa_A_027.ogg"
  , tabla2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23688_loofa_bahia016.ogg"
  , tabla2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23658_loofa_A_014.ogg"
  , tabla2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23660_loofa_A_016.ogg"
  , tabla2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23673_loofa_bahia001.ogg"
  , tabla2_7: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23687_loofa_bahia015.ogg"
  , tabla2_8: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23664_loofa_A_020.ogg"
  , tabla2_9: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23674_loofa_bahia002.ogg"
  , tabla2_10: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23652_loofa_A_008.ogg"
  , tabla2_11: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23646_loofa_A_002.ogg"
  , tabla2_12: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23653_loofa_A_009.ogg"
  , tabla2_13: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23648_loofa_A_004.ogg"
  , tabla2_14: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23681_loofa_bahia009.ogg"
  , tabla2_15: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23665_loofa_A_021.ogg"
  , tabla2_16: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23657_loofa_A_013.ogg"
  , tabla2_17: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23649_loofa_A_005.ogg"
  , tabla2_18: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23679_loofa_bahia007.ogg"
  , tabla2_19: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23677_loofa_bahia005.ogg"
  , tabla2_20: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23661_loofa_A_017.ogg"
  , tabla2_21: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23656_loofa_A_012.ogg"
  , tabla2_22: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23684_loofa_bahia012.ogg"
  , tabla2_23: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23676_loofa_bahia004.ogg"
  , tabla2_24: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23682_loofa_bahia010.ogg"
  , tabla2_25: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23647_loofa_A_003.ogg"
  , tabla2_26: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23668_loofa_A_024.ogg"
  , tabla2_27: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23675_loofa_bahia003.ogg"
  , tabla2_28: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23670_loofa_A_026.ogg"
  , tabla2_29: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23645_loofa_A_001.ogg"
  , tabla2_30: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23680_loofa_bahia008.ogg"
  , tabla2_31: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23689_loofa_bahia017.ogg"
  , tabla2_32: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23659_loofa_A_015.ogg"
  , tabla2_33: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23683_loofa_bahia011.ogg"
  , tabla2_34: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23686_loofa_bahia014.ogg"
  , tabla2_35: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23655_loofa_A_011.ogg"
  , tabla2_36: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23667_loofa_A_023.ogg"
  , tabla2_37: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23662_loofa_A_018.ogg"
  , tabla2_38: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23654_loofa_A_010.ogg"
  , tabla2_39: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23690_loofa_bahia018.ogg"
  , tabla2_40: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23650_loofa_A_006.ogg"
  , tabla2_41: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23669_loofa_A_025.ogg"
  , tabla2_42: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23666_loofa_A_022.ogg"
  , tabla2_43: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23651_loofa_A_007.ogg"
  , tabla2_44: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23685_loofa_bahia013.ogg"
  , tabla2_45: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23672_loofa_A_028.ogg"
  , chin_0: "https://klank-share.s3.amazonaws.com/dirt-samples/chin/001_tik2.ogg"
  , chin_1: "https://klank-share.s3.amazonaws.com/dirt-samples/chin/003_tik4.ogg"
  , chin_2: "https://klank-share.s3.amazonaws.com/dirt-samples/chin/000_tik1.ogg"
  , chin_3: "https://klank-share.s3.amazonaws.com/dirt-samples/chin/002_tik3.ogg"
  , mp3_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/003_mp33.ogg"
  , mp3_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/001_mp31.ogg"
  , mp3_2: "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/000_mp30.ogg"
  , mp3_3: "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/002_mp32.ogg"
  , tablex_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/0.ogg"
  , tablex_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/1.ogg"
  , tablex_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/fuckable.ogg"
  , sf_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/010_2.ogg"
  , sf_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/006_14.ogg"
  , sf_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/009_17.ogg"
  , sf_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/012_4.ogg"
  , sf_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/007_15.ogg"
  , sf_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/013_5.ogg"
  , sf_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/001_1.ogg"
  , sf_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/008_16.ogg"
  , sf_8: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/004_12.ogg"
  , sf_9: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/015_7.ogg"
  , sf_10: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/016_8.ogg"
  , sf_11: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/002_10.ogg"
  , sf_12: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/003_11.ogg"
  , sf_13: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/014_6.ogg"
  , sf_14: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/017_9.ogg"
  , sf_15: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/005_13.ogg"
  , sf_16: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/000_bass.ogg"
  , sf_17: "https://klank-share.s3.amazonaws.com/dirt-samples/sf/011_3.ogg"
  , speakspell_0: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/009_7.ogg"
  , speakspell_1: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/004_2.ogg"
  , speakspell_2: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/002_11.ogg"
  , speakspell_3: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/005_3.ogg"
  , speakspell_4: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/007_5.ogg"
  , speakspell_5: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/000_1.ogg"
  , speakspell_6: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/011_9.ogg"
  , speakspell_7: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/003_12.ogg"
  , speakspell_8: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/010_8.ogg"
  , speakspell_9: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/008_6.ogg"
  , speakspell_10: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/006_4.ogg"
  , speakspell_11: "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/001_10.ogg"
  , cc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHDA.ogg"
  , cc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD6.ogg"
  , cc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD4.ogg"
  , cc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD2.ogg"
  , cc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD0.ogg"
  , cc_5: "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD8.ogg"
  , gabbaloud_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/003_3.ogg"
  , gabbaloud_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/001_1.ogg"
  , gabbaloud_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/000_0.ogg"
  , gabbaloud_3: "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/002_2.ogg"
  , ades2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/004_05.ogg"
  , ades2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/002_03.ogg"
  , ades2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/001_02.ogg"
  , ades2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/007_08.ogg"
  , ades2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/006_07.ogg"
  , ades2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/005_06.ogg"
  , ades2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/000_01.ogg"
  , ades2_7: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/003_04.ogg"
  , ades2_8: "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/008_09.ogg"
  , space_0: "https://klank-share.s3.amazonaws.com/dirt-samples/space/010_2.ogg"
  , space_1: "https://klank-share.s3.amazonaws.com/dirt-samples/space/012_4.ogg"
  , space_2: "https://klank-share.s3.amazonaws.com/dirt-samples/space/006_15.ogg"
  , space_3: "https://klank-share.s3.amazonaws.com/dirt-samples/space/002_11.ogg"
  , space_4: "https://klank-share.s3.amazonaws.com/dirt-samples/space/004_13.ogg"
  , space_5: "https://klank-share.s3.amazonaws.com/dirt-samples/space/013_5.ogg"
  , space_6: "https://klank-share.s3.amazonaws.com/dirt-samples/space/001_1.ogg"
  , space_7: "https://klank-share.s3.amazonaws.com/dirt-samples/space/005_14.ogg"
  , space_8: "https://klank-share.s3.amazonaws.com/dirt-samples/space/015_7.ogg"
  , space_9: "https://klank-share.s3.amazonaws.com/dirt-samples/space/016_8.ogg"
  , space_10: "https://klank-share.s3.amazonaws.com/dirt-samples/space/003_12.ogg"
  , space_11: "https://klank-share.s3.amazonaws.com/dirt-samples/space/007_16.ogg"
  , space_12: "https://klank-share.s3.amazonaws.com/dirt-samples/space/014_6.ogg"
  , space_13: "https://klank-share.s3.amazonaws.com/dirt-samples/space/017_9.ogg"
  , space_14: "https://klank-share.s3.amazonaws.com/dirt-samples/space/009_18.ogg"
  , space_15: "https://klank-share.s3.amazonaws.com/dirt-samples/space/000_0.ogg"
  , space_16: "https://klank-share.s3.amazonaws.com/dirt-samples/space/008_17.ogg"
  , space_17: "https://klank-share.s3.amazonaws.com/dirt-samples/space/011_3.ogg"
  , battles_0: "https://klank-share.s3.amazonaws.com/dirt-samples/battles/000_explo1.ogg"
  , battles_1: "https://klank-share.s3.amazonaws.com/dirt-samples/battles/001_explo2.ogg"
  , voodoo_0: "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/004_VoodooTom.ogg"
  , voodoo_1: "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/003_VoodooSnare.ogg"
  , voodoo_2: "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/000_VoodooBass.ogg"
  , voodoo_3: "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/001_VoodooHihat.ogg"
  , voodoo_4: "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/002_VoodooRim.ogg"
  , ravemono_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ravemono/Babylon.ogg"
  , ravemono_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ravemono/prodigyloop.ogg"
  , psr_0: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/020_21.ogg"
  , psr_1: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/012_13.ogg"
  , psr_2: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/009_10.ogg"
  , psr_3: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/004_05.ogg"
  , psr_4: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/021_22.ogg"
  , psr_5: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/002_03.ogg"
  , psr_6: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/026_27.ogg"
  , psr_7: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/014_15.ogg"
  , psr_8: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/025_26.ogg"
  , psr_9: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/027_28.ogg"
  , psr_10: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/001_02.ogg"
  , psr_11: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/023_24.ogg"
  , psr_12: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/007_08.ogg"
  , psr_13: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/010_11.ogg"
  , psr_14: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/006_07.ogg"
  , psr_15: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/013_14.ogg"
  , psr_16: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/015_16.ogg"
  , psr_17: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/024_25.ogg"
  , psr_18: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/022_23.ogg"
  , psr_19: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/005_06.ogg"
  , psr_20: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/028_29.ogg"
  , psr_21: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/019_20.ogg"
  , psr_22: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/011_12.ogg"
  , psr_23: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/016_17.ogg"
  , psr_24: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/017_18.ogg"
  , psr_25: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/029_30.ogg"
  , psr_26: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/000_01.ogg"
  , psr_27: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/003_04.ogg"
  , psr_28: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/018_19.ogg"
  , psr_29: "https://klank-share.s3.amazonaws.com/dirt-samples/psr/008_09.ogg"
  , metal_0: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/007_7.ogg"
  , metal_1: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/009_9.ogg"
  , metal_2: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/003_3.ogg"
  , metal_3: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/001_1.ogg"
  , metal_4: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/008_8.ogg"
  , metal_5: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/005_5.ogg"
  , metal_6: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/006_6.ogg"
  , metal_7: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/004_4.ogg"
  , metal_8: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/000_0.ogg"
  , metal_9: "https://klank-share.s3.amazonaws.com/dirt-samples/metal/002_2.ogg"
  , hardcore_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/006_hcopenhh.ogg"
  , hardcore_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/008_hcperc2.ogg"
  , hardcore_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/004_hckick1.ogg"
  , hardcore_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/007_hcperc1.ogg"
  , hardcore_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/003_hchit2.ogg"
  , hardcore_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/009_hcride.ogg"
  , hardcore_6: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/000_hcclosedhh.ogg"
  , hardcore_7: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/002_hccrash.ogg"
  , hardcore_8: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/005_hckick2.ogg"
  , hardcore_9: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/010_hcsnare1.ogg"
  , hardcore_10: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/001_hchit1.ogg"
  , hardcore_11: "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/011_hcsnare2.ogg"
  , mouth_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/006_15.ogg"
  , mouth_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/002_11.ogg"
  , mouth_2: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/013_8.ogg"
  , mouth_3: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/004_13.ogg"
  , mouth_4: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/007_2.ogg"
  , mouth_5: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/000_1.ogg"
  , mouth_6: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/005_14.ogg"
  , mouth_7: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/003_12.ogg"
  , mouth_8: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/011_6.ogg"
  , mouth_9: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/009_4.ogg"
  , mouth_10: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/010_5.ogg"
  , mouth_11: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/008_3.ogg"
  , mouth_12: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/012_7.ogg"
  , mouth_13: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/001_10.ogg"
  , mouth_14: "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/014_9.ogg"
  , sugar_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sugar/000_bark.ogg"
  , sugar_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sugar/001_crab.ogg"
  , odx_0: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/007_DX_Med_Crash.ogg"
  , odx_1: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/005_DX_Open_Hat.ogg"
  , odx_2: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/002_DXShaker.ogg"
  , odx_3: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/008_DX_Low_Tom.ogg"
  , odx_4: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/012_DX_Cl_Hat.ogg"
  , odx_5: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/014_DX_Ax_Hat.ogg"
  , odx_6: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/001_DX_Snare_1.ogg"
  , odx_7: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/010_DX_Hi_Tom.ogg"
  , odx_8: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/004_DXRide.ogg"
  , odx_9: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/009_DX_Lo_Crash.ogg"
  , odx_10: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/006_DX_Mid_Tom.ogg"
  , odx_11: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/013_DXClap.ogg"
  , odx_12: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/003_DXRimshot.ogg"
  , odx_13: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/000_Kick_1.ogg"
  , odx_14: "https://klank-share.s3.amazonaws.com/dirt-samples/odx/011_DX_High_Crash.ogg"
  , x_808lc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC10.ogg"
  , x_808lc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC50.ogg"
  , x_808lc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC75.ogg"
  , x_808lc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC00.ogg"
  , x_808lc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC25.ogg"
  , mt_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D3.ogg"
  , mt_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0DA.ogg"
  , mt_2: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D7.ogg"
  , mt_3: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3DA.ogg"
  , mt_4: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D0.ogg"
  , mt_5: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D0.ogg"
  , mt_6: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D0.ogg"
  , mt_7: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D7.ogg"
  , mt_8: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD0.ogg"
  , mt_9: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D3.ogg"
  , mt_10: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD3.ogg"
  , mt_11: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D7.ogg"
  , mt_12: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTADA.ogg"
  , mt_13: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D3.ogg"
  , mt_14: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD7.ogg"
  , mt_15: "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7DA.ogg"
  , drumtraks_0: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/000_DT_Cabasa.ogg"
  , drumtraks_1: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/009_DT_Snare.ogg"
  , drumtraks_2: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/003_DT_Crash.ogg"
  , drumtraks_3: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/007_DT_Ride.ogg"
  , drumtraks_4: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/011_DT_Tom1.ogg"
  , drumtraks_5: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/004_DT_Hat_Closed.ogg"
  , drumtraks_6: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/002_DT_Cowbell.ogg"
  , drumtraks_7: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/005_DT_Hat_Open.ogg"
  , drumtraks_8: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/006_DT_Kick.ogg"
  , drumtraks_9: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/008_DT_Rimshot.ogg"
  , drumtraks_10: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/012_DT_Tom2.ogg"
  , drumtraks_11: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/001_DT_Claps.ogg"
  , drumtraks_12: "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/010_DT_Tambourine.ogg"
  , print_0: "https://klank-share.s3.amazonaws.com/dirt-samples/print/003_2.ogg"
  , print_1: "https://klank-share.s3.amazonaws.com/dirt-samples/print/006_5.ogg"
  , print_2: "https://klank-share.s3.amazonaws.com/dirt-samples/print/001_1.ogg"
  , print_3: "https://klank-share.s3.amazonaws.com/dirt-samples/print/008_7.ogg"
  , print_4: "https://klank-share.s3.amazonaws.com/dirt-samples/print/002_10.ogg"
  , print_5: "https://klank-share.s3.amazonaws.com/dirt-samples/print/004_3.ogg"
  , print_6: "https://klank-share.s3.amazonaws.com/dirt-samples/print/010_9.ogg"
  , print_7: "https://klank-share.s3.amazonaws.com/dirt-samples/print/009_8.ogg"
  , print_8: "https://klank-share.s3.amazonaws.com/dirt-samples/print/007_6.ogg"
  , print_9: "https://klank-share.s3.amazonaws.com/dirt-samples/print/000_0.ogg"
  , print_10: "https://klank-share.s3.amazonaws.com/dirt-samples/print/005_4.ogg"
  , blip_0: "https://klank-share.s3.amazonaws.com/dirt-samples/blip/000_blipp01.ogg"
  , blip_1: "https://klank-share.s3.amazonaws.com/dirt-samples/blip/001_blipp02.ogg"
  , wobble_0: "https://klank-share.s3.amazonaws.com/dirt-samples/wobble/000_0.ogg"
  , made_0: "https://klank-share.s3.amazonaws.com/dirt-samples/made/3.ogg"
  , made_1: "https://klank-share.s3.amazonaws.com/dirt-samples/made/5.ogg"
  , made_2: "https://klank-share.s3.amazonaws.com/dirt-samples/made/0.ogg"
  , made_3: "https://klank-share.s3.amazonaws.com/dirt-samples/made/1.ogg"
  , made_4: "https://klank-share.s3.amazonaws.com/dirt-samples/made/2.ogg"
  , made_5: "https://klank-share.s3.amazonaws.com/dirt-samples/made/4.ogg"
  , made_6: "https://klank-share.s3.amazonaws.com/dirt-samples/made/6.ogg"
  , bass3_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83250__zgump__bass-0206.ogg"
  , bass3_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83253__zgump__bass-0209.ogg"
  , bass3_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83249__zgump__bass-0205.ogg"
  , bass3_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83246__zgump__bass-0202.ogg"
  , bass3_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83251__zgump__bass-0207.ogg"
  , bass3_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83247__zgump__bass-0203.ogg"
  , bass3_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83248__zgump__bass-0204.ogg"
  , bass3_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/85057__zgump__reverse-bass-02.ogg"
  , bass3_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83252__zgump__bass-0208.ogg"
  , bass3_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83245__zgump__bass-0201.ogg"
  , bass3_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/85056__zgump__reverse-bass-01.ogg"
  , speechless_0: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/004_pepper.ogg"
  , speechless_1: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/000_a.ogg"
  , speechless_2: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/006_pick.ogg"
  , speechless_3: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/007_pickle.ogg"
  , speechless_4: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/009_te.ogg"
  , speechless_5: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/003_pepepepepe.ogg"
  , speechless_6: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/002_pepepe.ogg"
  , speechless_7: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/001_pe.ogg"
  , speechless_8: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/008_po.ogg"
  , speechless_9: "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/005_pepperpot.ogg"
  , sine_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/004_sine5.ogg"
  , sine_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/000_sine.ogg"
  , sine_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/005_sine6.ogg"
  , sine_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/003_sine4.ogg"
  , sine_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/001_sine2.ogg"
  , sine_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sine/002_sine3.ogg"
  , noise_0: "https://klank-share.s3.amazonaws.com/dirt-samples/noise/000_noise.ogg"
  , x_808lt_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT00.ogg"
  , x_808lt_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT50.ogg"
  , x_808lt_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT10.ogg"
  , x_808lt_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT75.ogg"
  , x_808lt_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT25.ogg"
  , sd_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sd/rytm-01-classic.ogg"
  , sd_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sd/rytm-00-hard.ogg"
  , alphabet_0: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/c.ogg"
  , alphabet_1: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/e.ogg"
  , alphabet_2: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/a.ogg"
  , alphabet_3: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/x.ogg"
  , alphabet_4: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/g.ogg"
  , alphabet_5: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/k.ogg"
  , alphabet_6: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/z.ogg"
  , alphabet_7: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/i.ogg"
  , alphabet_8: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/f.ogg"
  , alphabet_9: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/q.ogg"
  , alphabet_10: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/b.ogg"
  , alphabet_11: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/m.ogg"
  , alphabet_12: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/r.ogg"
  , alphabet_13: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/n.ogg"
  , alphabet_14: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/d.ogg"
  , alphabet_15: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/p.ogg"
  , alphabet_16: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/j.ogg"
  , alphabet_17: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/l.ogg"
  , alphabet_18: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/y.ogg"
  , alphabet_19: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/w.ogg"
  , alphabet_20: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/v.ogg"
  , alphabet_21: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/t.ogg"
  , alphabet_22: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/u.ogg"
  , alphabet_23: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/h.ogg"
  , alphabet_24: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/s.ogg"
  , alphabet_25: "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/o.ogg"
  , baa2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/3.ogg"
  , baa2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/5.ogg"
  , baa2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/7.ogg"
  , baa2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/1.ogg"
  , baa2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/2.ogg"
  , baa2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/4.ogg"
  , baa2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/6.ogg"
  , tok_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tok/003_3.ogg"
  , tok_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tok/001_1.ogg"
  , tok_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tok/000_0.ogg"
  , tok_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tok/002_2.ogg"
  , ades3_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/01.ogg"
  , ades3_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/07.ogg"
  , ades3_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/06.ogg"
  , ades3_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/04.ogg"
  , ades3_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/03.ogg"
  , ades3_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/02.ogg"
  , ades3_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/05.ogg"
  , x_909_0: "https://klank-share.s3.amazonaws.com/dirt-samples/909/BT0A0A7.ogg"
  , sid_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/004_blipp02.ogg"
  , sid_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/011_tdrum.ogg"
  , sid_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/005_high.ogg"
  , sid_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/007_hihat01.ogg"
  , sid_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/009_lofidrums.ogg"
  , sid_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/006_high2.ogg"
  , sid_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/008_hihat02.ogg"
  , sid_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/001_bas.ogg"
  , sid_8: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/003_blipp01.ogg"
  , sid_9: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/000_bas2.ogg"
  , sid_10: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/002_basd.ogg"
  , sid_11: "https://klank-share.s3.amazonaws.com/dirt-samples/sid/010_sidsnares.ogg"
  , jungbass_0: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/012_short.ogg"
  , jungbass_1: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/013_sub_to_open_wah.ogg"
  , jungbass_2: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/015_sustained_3_octave.ogg"
  , jungbass_3: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/014_sustained_2_octave.ogg"
  , jungbass_4: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/001_fat_808_sub.ogg"
  , jungbass_5: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/009_junglesine3.ogg"
  , jungbass_6: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/006_junglerevbass.ogg"
  , jungbass_7: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/003_glide_up_down_sub.ogg"
  , jungbass_8: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/011_shiphorn_tekstep_bass.ogg"
  , jungbass_9: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/008_junglesine2.ogg"
  , jungbass_10: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/018_synthy_round.ogg"
  , jungbass_11: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/019_thin_808_sub.ogg"
  , jungbass_12: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/007_junglesine.ogg"
  , jungbass_13: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/017_sweep_me_low_bass.ogg"
  , jungbass_14: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/016_sustained_deep_low.ogg"
  , jungbass_15: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/000_deeep_n_low.ogg"
  , jungbass_16: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/005_jungasubdown.ogg"
  , jungbass_17: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/010_mega_jungasubdown.ogg"
  , jungbass_18: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/002_fukubass2.ogg"
  , jungbass_19: "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/004_gliding_808_sub.ogg"
  , gabba_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/003_3.ogg"
  , gabba_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/001_1.ogg"
  , gabba_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/000_0.ogg"
  , gabba_3: "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/002_2.ogg"
  , crow_0: "https://klank-share.s3.amazonaws.com/dirt-samples/crow/000_crow.ogg"
  , crow_1: "https://klank-share.s3.amazonaws.com/dirt-samples/crow/002_crow3.ogg"
  , crow_2: "https://klank-share.s3.amazonaws.com/dirt-samples/crow/001_crow2.ogg"
  , crow_3: "https://klank-share.s3.amazonaws.com/dirt-samples/crow/003_crow4.ogg"
  , birds3_0: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/006_15.ogg"
  , birds3_1: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/012_3.ogg"
  , birds3_2: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/002_11.ogg"
  , birds3_3: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/004_13.ogg"
  , birds3_4: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/000_1.ogg"
  , birds3_5: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/017_8.ogg"
  , birds3_6: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/015_6.ogg"
  , birds3_7: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/014_5.ogg"
  , birds3_8: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/005_14.ogg"
  , birds3_9: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/003_12.ogg"
  , birds3_10: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/007_16.ogg"
  , birds3_11: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/011_2.ogg"
  , birds3_12: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/018_9.ogg"
  , birds3_13: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/016_7.ogg"
  , birds3_14: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/013_4.ogg"
  , birds3_15: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/001_10.ogg"
  , birds3_16: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/010_19.ogg"
  , birds3_17: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/009_18.ogg"
  , birds3_18: "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/008_17.ogg"
  , auto_0: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/001_break-ride.ogg"
  , auto_1: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/008_shake1.ogg"
  , auto_2: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/006_sd.ogg"
  , auto_3: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/010_shake3.ogg"
  , auto_4: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/000_break-kick.ogg"
  , auto_5: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/009_shake2.ogg"
  , auto_6: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/004_kick.ogg"
  , auto_7: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/005_kick-ambient.ogg"
  , auto_8: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/002_break-sd.ogg"
  , auto_9: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/003_cymrev.ogg"
  , auto_10: "https://klank-share.s3.amazonaws.com/dirt-samples/auto/007_sd-ambient.ogg"
  , mute_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/007_FH_C-Sharp-5_SCF.ogg"
  , mute_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/004_FH_B4_SCF.ogg"
  , mute_2: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/019_FH_F5_SCF.ogg"
  , mute_3: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/003_FH_B4_SC.ogg"
  , mute_4: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/016_FH_F-Sharp-4_SCF.ogg"
  , mute_5: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/025_FH_G-Sharp-4_SCF.ogg"
  , mute_6: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/002_FH_B3_SCF.ogg"
  , mute_7: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/013_FH_E3_SC.ogg"
  , mute_8: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/009_FH_D-Sharp-4_SCF.ogg"
  , mute_9: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/011_FH_D3_SC.ogg"
  , mute_10: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/014_FH_E3_SCF.ogg"
  , mute_11: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/017_FH_F3_SC.ogg"
  , mute_12: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/026_FH_G2_SC.ogg"
  , mute_13: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/006_FH_C-Sharp-3_SCF.ogg"
  , mute_14: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/023_FH_G-Sharp-3_SCF.ogg"
  , mute_15: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/008_FH_C4_SCF.ogg"
  , mute_16: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/021_FH_G-Sharp-2_SCF.ogg"
  , mute_17: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/020_FH_G-Sharp-2_SC.ogg"
  , mute_18: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/001_FH_A3_SCF.ogg"
  , mute_19: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/000_FH_A-Sharp-2_SCF.ogg"
  , mute_20: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/012_FH_D3_SCF.ogg"
  , mute_21: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/024_FH_G-Sharp-4_SC.ogg"
  , mute_22: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/015_FH_F-Sharp-4_SC.ogg"
  , mute_23: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/005_FH_C-Sharp-3_SC.ogg"
  , mute_24: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/022_FH_G-Sharp-3_SC.ogg"
  , mute_25: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/010_FH_D-Sharp-5_SCF.ogg"
  , mute_26: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/027_FH_G2_SCF.ogg"
  , mute_27: "https://klank-share.s3.amazonaws.com/dirt-samples/mute/018_FH_F3_SCF.ogg"
  , sheffield_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sheffield/jakeinsects.ogg"
  , casio_0: "https://klank-share.s3.amazonaws.com/dirt-samples/casio/high.ogg"
  , casio_1: "https://klank-share.s3.amazonaws.com/dirt-samples/casio/low.ogg"
  , casio_2: "https://klank-share.s3.amazonaws.com/dirt-samples/casio/noise.ogg"
  , sax_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/016_notes121fsharp.ogg"
  , sax_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/013_notes121eflat2.ogg"
  , sax_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/018_notes121g.ogg"
  , sax_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/020_notes121gsharp.ogg"
  , sax_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/000_notes121a.ogg"
  , sax_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/019_notes121g2.ogg"
  , sax_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/005_notes121c.ogg"
  , sax_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/008_notes121csharp2.ogg"
  , sax_8: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/015_notes121f2.ogg"
  , sax_9: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/010_notes121e.ogg"
  , sax_10: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/006_notes121c2.ogg"
  , sax_11: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/002_notes121b.ogg"
  , sax_12: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/021_notes121gsharp2.ogg"
  , sax_13: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/009_notes121d.ogg"
  , sax_14: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/004_notes121bflat2.ogg"
  , sax_15: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/017_notes121fsharp2.ogg"
  , sax_16: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/014_notes121f.ogg"
  , sax_17: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/011_notes121e2.ogg"
  , sax_18: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/001_notes121a2.ogg"
  , sax_19: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/003_notes121bflat.ogg"
  , sax_20: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/007_notes121csharp.ogg"
  , sax_21: "https://klank-share.s3.amazonaws.com/dirt-samples/sax/012_notes121eflat.ogg"
  , circus_0: "https://klank-share.s3.amazonaws.com/dirt-samples/circus/000_bounce.ogg"
  , circus_1: "https://klank-share.s3.amazonaws.com/dirt-samples/circus/001_miss.ogg"
  , circus_2: "https://klank-share.s3.amazonaws.com/dirt-samples/circus/002_pop.ogg"
  , yeah_0: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/002_Sound11.ogg"
  , yeah_1: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/009_Sound20.ogg"
  , yeah_2: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/018_Sound29.ogg"
  , yeah_3: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/024_Sound36.ogg"
  , yeah_4: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/000_Sound0.ogg"
  , yeah_5: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/012_Sound23.ogg"
  , yeah_6: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/029_Sound8.ogg"
  , yeah_7: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/001_Sound10.ogg"
  , yeah_8: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/006_Sound17.ogg"
  , yeah_9: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/028_Sound7.ogg"
  , yeah_10: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/015_Sound26.ogg"
  , yeah_11: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/026_Sound5.ogg"
  , yeah_12: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/011_Sound22.ogg"
  , yeah_13: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/003_Sound13.ogg"
  , yeah_14: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/016_Sound27.ogg"
  , yeah_15: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/030_Sound9.ogg"
  , yeah_16: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/020_Sound32.ogg"
  , yeah_17: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/019_Sound3.ogg"
  , yeah_18: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/008_Sound19.ogg"
  , yeah_19: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/007_Sound18.ogg"
  , yeah_20: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/014_Sound25.ogg"
  , yeah_21: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/027_Sound6.ogg"
  , yeah_22: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/017_Sound28.ogg"
  , yeah_23: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/022_Sound34.ogg"
  , yeah_24: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/013_Sound24.ogg"
  , yeah_25: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/023_Sound35.ogg"
  , yeah_26: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/021_Sound33.ogg"
  , yeah_27: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/005_Sound15.ogg"
  , yeah_28: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/010_Sound21.ogg"
  , yeah_29: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/025_Sound4.ogg"
  , yeah_30: "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/004_Sound14.ogg"
  , oc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL2.ogg"
  , oc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL3.ogg"
  , oc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL4.ogg"
  , oc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL1.ogg"
  , alex_0: "https://klank-share.s3.amazonaws.com/dirt-samples/alex/000_drumx1.ogg"
  , alex_1: "https://klank-share.s3.amazonaws.com/dirt-samples/alex/001_drumx2.ogg"
  , can_0: "https://klank-share.s3.amazonaws.com/dirt-samples/can/002_11.ogg"
  , can_1: "https://klank-share.s3.amazonaws.com/dirt-samples/can/011_7.ogg"
  , can_2: "https://klank-share.s3.amazonaws.com/dirt-samples/can/008_4.ogg"
  , can_3: "https://klank-share.s3.amazonaws.com/dirt-samples/can/004_13.ogg"
  , can_4: "https://klank-share.s3.amazonaws.com/dirt-samples/can/010_6.ogg"
  , can_5: "https://klank-share.s3.amazonaws.com/dirt-samples/can/006_2.ogg"
  , can_6: "https://klank-share.s3.amazonaws.com/dirt-samples/can/000_1.ogg"
  , can_7: "https://klank-share.s3.amazonaws.com/dirt-samples/can/012_8.ogg"
  , can_8: "https://klank-share.s3.amazonaws.com/dirt-samples/can/005_14.ogg"
  , can_9: "https://klank-share.s3.amazonaws.com/dirt-samples/can/003_12.ogg"
  , can_10: "https://klank-share.s3.amazonaws.com/dirt-samples/can/013_9.ogg"
  , can_11: "https://klank-share.s3.amazonaws.com/dirt-samples/can/001_10.ogg"
  , can_12: "https://klank-share.s3.amazonaws.com/dirt-samples/can/009_5.ogg"
  , can_13: "https://klank-share.s3.amazonaws.com/dirt-samples/can/007_3.ogg"
  , jungle_0: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit2.ogg"
  , jungle_1: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4kick1.ogg"
  , jungle_2: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4closedhh.ogg"
  , jungle_3: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4snare1.ogg"
  , jungle_4: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4openhh.ogg"
  , jungle_5: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit1.ogg"
  , jungle_6: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4crash.ogg"
  , jungle_7: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4snare2.ogg"
  , jungle_8: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit3.ogg"
  , jungle_9: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4kick2.ogg"
  , jungle_10: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4perc2.ogg"
  , jungle_11: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4ride.ogg"
  , jungle_12: "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4perc1.ogg"
  , moog_0: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/006_Mighty_Moog_G4.ogg"
  , moog_1: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/000_Mighty_Moog_C2.ogg"
  , moog_2: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/004_Mighty_Moog_G2.ogg"
  , moog_3: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/002_Mighty_Moog_C4.ogg"
  , moog_4: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/003_Mighty_Moog_G1.ogg"
  , moog_5: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/005_Mighty_Moog_G3.ogg"
  , moog_6: "https://klank-share.s3.amazonaws.com/dirt-samples/moog/001_Mighty_Moog_C3.ogg"
  , h_0: "https://klank-share.s3.amazonaws.com/dirt-samples/h/000_0_da0.ogg"
  , h_1: "https://klank-share.s3.amazonaws.com/dirt-samples/h/001_0_da0-200-percent-_1000_0_R.ogg"
  , h_2: "https://klank-share.s3.amazonaws.com/dirt-samples/h/006_4_tock.ogg"
  , h_3: "https://klank-share.s3.amazonaws.com/dirt-samples/h/004_2_da2.ogg"
  , h_4: "https://klank-share.s3.amazonaws.com/dirt-samples/h/003_1_da1.ogg"
  , h_5: "https://klank-share.s3.amazonaws.com/dirt-samples/h/002_0_da0-50-percent-_1000_0_R.ogg"
  , h_6: "https://klank-share.s3.amazonaws.com/dirt-samples/h/005_3_tick.ogg"
  , wind_0: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/004_wind4.ogg"
  , wind_1: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/000_wind1.ogg"
  , wind_2: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/009_wind9.ogg"
  , wind_3: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/005_wind5.ogg"
  , wind_4: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/007_wind7.ogg"
  , wind_5: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/001_wind10.ogg"
  , wind_6: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/006_wind6.ogg"
  , wind_7: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/003_wind3.ogg"
  , wind_8: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/008_wind8.ogg"
  , wind_9: "https://klank-share.s3.amazonaws.com/dirt-samples/wind/002_wind2.ogg"
  , rs_0: "https://klank-share.s3.amazonaws.com/dirt-samples/rs/rytm-rs.ogg"
  , em2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/3.ogg"
  , em2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/5.ogg"
  , em2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/0.ogg"
  , em2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/1.ogg"
  , em2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/2.ogg"
  , em2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/em2/4.ogg"
  , noise2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/007_7.ogg"
  , noise2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/003_3.ogg"
  , noise2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/001_1.ogg"
  , noise2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/005_5.ogg"
  , noise2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/006_6.ogg"
  , noise2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/004_4.ogg"
  , noise2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/000_0.ogg"
  , noise2_7: "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/002_2.ogg"
  , foo_0: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/014_thumpnbr.ogg"
  , foo_1: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/001_frtwbrak.ogg"
  , foo_2: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/013_mrestick.ogg"
  , foo_3: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/023_btstmpbr.ogg"
  , foo_4: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/009_hrdlvbrk.ogg"
  , foo_5: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/002_fullbrk.ogg"
  , foo_6: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/007_lkfnkybr.ogg"
  , foo_7: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/004_brtalhat.ogg"
  , foo_8: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/019_crshstmp.ogg"
  , foo_9: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/020_fststick.ogg"
  , foo_10: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/008_clnkrbrk.ogg"
  , foo_11: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/022_cnfssbrk.ogg"
  , foo_12: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/000_samthfdbrk.ogg"
  , foo_13: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/005_nicedrop.ogg"
  , foo_14: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/018_nlzdelit.ogg"
  , foo_15: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/011_eyebreak.ogg"
  , foo_16: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/012_vctrybrk.ogg"
  , foo_17: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/010_dngrsbrk.ogg"
  , foo_18: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/006_fastfaze.ogg"
  , foo_19: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/016_bllstmp.ogg"
  , foo_20: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/025_pssbreak.ogg"
  , foo_21: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/003_drydrmmr.ogg"
  , foo_22: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/015_sdstckbr.ogg"
  , foo_23: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/024_rlltnbrk.ogg"
  , foo_24: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/026_vintage.ogg"
  , foo_25: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/021_sqezdbrk.ogg"
  , foo_26: "https://klank-share.s3.amazonaws.com/dirt-samples/foo/017_gattabrk.ogg"
  , armora_0: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/001_chopper.ogg"
  , armora_1: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/000_beep.ogg"
  , armora_2: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/002_hiexp.ogg"
  , armora_3: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/006_tankfire.ogg"
  , armora_4: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/005_tankeng.ogg"
  , armora_5: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/003_jeepfire.ogg"
  , armora_6: "https://klank-share.s3.amazonaws.com/dirt-samples/armora/004_loexp.ogg"
  , bend_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bend/002_6.ogg"
  , bend_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bend/003_8.ogg"
  , bend_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bend/001_5.ogg"
  , bend_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bend/000_2.ogg"
  , newnotes_0: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/006_14.ogg"
  , newnotes_1: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/013_8.ogg"
  , newnotes_2: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/007_2.ogg"
  , newnotes_3: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/001_1.ogg"
  , newnotes_4: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/004_12.ogg"
  , newnotes_5: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/011_6.ogg"
  , newnotes_6: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/009_4.ogg"
  , newnotes_7: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/002_10.ogg"
  , newnotes_8: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/003_11.ogg"
  , newnotes_9: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/010_5.ogg"
  , newnotes_10: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/008_3.ogg"
  , newnotes_11: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/012_7.ogg"
  , newnotes_12: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/014_9.ogg"
  , newnotes_13: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/000_0.ogg"
  , newnotes_14: "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/005_13.ogg"
  , pebbles_0: "https://klank-share.s3.amazonaws.com/dirt-samples/pebbles/90788__kmoon__pebbles-scrape-drag-foot.ogg"
  , mash2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/001_output2.ogg"
  , mash2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/003_output4.ogg"
  , mash2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/000_output.ogg"
  , mash2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/002_output3.ogg"
  , diphone2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/001_kd1_400.ogg"
  , diphone2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/003_kd1_402.ogg"
  , diphone2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/010_kd3_012.ogg"
  , diphone2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/008_kd3_010.ogg"
  , diphone2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/006_kd1_405.ogg"
  , diphone2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/004_kd1_403.ogg"
  , diphone2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/005_kd1_404.ogg"
  , diphone2_7: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/002_kd1_401.ogg"
  , diphone2_8: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/000_kd1_399.ogg"
  , diphone2_9: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/007_kd1_406.ogg"
  , diphone2_10: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/011_kd3_013.ogg"
  , diphone2_11: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/009_kd3_011.ogg"
  , e_0: "https://klank-share.s3.amazonaws.com/dirt-samples/e/002_e3.ogg"
  , e_1: "https://klank-share.s3.amazonaws.com/dirt-samples/e/001_e2.ogg"
  , e_2: "https://klank-share.s3.amazonaws.com/dirt-samples/e/000_e1.ogg"
  , e_3: "https://klank-share.s3.amazonaws.com/dirt-samples/e/003_e4.ogg"
  , e_4: "https://klank-share.s3.amazonaws.com/dirt-samples/e/004_e5.ogg"
  , e_5: "https://klank-share.s3.amazonaws.com/dirt-samples/e/005_e6.ogg"
  , e_6: "https://klank-share.s3.amazonaws.com/dirt-samples/e/006_e7.ogg"
  , e_7: "https://klank-share.s3.amazonaws.com/dirt-samples/e/007_e8.ogg"
  , bubble_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/004_bub4.ogg"
  , bubble_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/003_bub3.ogg"
  , bubble_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/002_bub2.ogg"
  , bubble_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/007_bub7.ogg"
  , bubble_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/000_bub0.ogg"
  , bubble_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/006_bub6.ogg"
  , bubble_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/001_bub1.ogg"
  , bubble_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/005_bub5.ogg"
  , insect_0: "https://klank-share.s3.amazonaws.com/dirt-samples/insect/000_everglades_conehead.ogg"
  , insect_1: "https://klank-share.s3.amazonaws.com/dirt-samples/insect/002_seashore_meadow_katydid.ogg"
  , insect_2: "https://klank-share.s3.amazonaws.com/dirt-samples/insect/001_robust_shieldback.ogg"
  , ade_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/007_microsound.ogg"
  , ade_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/005_fanbass.ogg"
  , ade_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/004_fan.ogg"
  , ade_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/009_rise.ogg"
  , ade_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/006_glass.ogg"
  , ade_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/008_rhythm.ogg"
  , ade_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/000_011112-bassline.ogg"
  , ade_7: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/002_20020506-01.ogg"
  , ade_8: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/001_011112-melody.ogg"
  , ade_9: "https://klank-share.s3.amazonaws.com/dirt-samples/ade/003_abt.ogg"
  , glitch_0: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/000_BD.ogg"
  , glitch_1: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/004_OH.ogg"
  , glitch_2: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/001_CB.ogg"
  , glitch_3: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/006_P2.ogg"
  , glitch_4: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/002_FX.ogg"
  , glitch_5: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/005_P1.ogg"
  , glitch_6: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/007_SN.ogg"
  , glitch_7: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/003_HH.ogg"
  , haw_0: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-kick.ogg"
  , haw_1: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-hh.ogg"
  , haw_2: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-sd.ogg"
  , haw_3: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-short1.ogg"
  , haw_4: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-pop.ogg"
  , haw_5: "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-short2.ogg"
  , popkick_0: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/007_7.ogg"
  , popkick_1: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/009_9.ogg"
  , popkick_2: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/003_3.ogg"
  , popkick_3: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/008_8.ogg"
  , popkick_4: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/005_5.ogg"
  , popkick_5: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/006_6.ogg"
  , popkick_6: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/000_1.ogg"
  , popkick_7: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/004_4.ogg"
  , popkick_8: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/001_10.ogg"
  , popkick_9: "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/002_2.ogg"
  , breaks157_0: "https://klank-share.s3.amazonaws.com/dirt-samples/breaks157/000_PLEAD.ogg"
  , gtr_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0001_cleanC.ogg"
  , gtr_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0002_ovrdC.ogg"
  , gtr_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0003_distC.ogg"
  , clubkick_0: "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/3.ogg"
  , clubkick_1: "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/5.ogg"
  , clubkick_2: "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/1.ogg"
  , clubkick_3: "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/2.ogg"
  , clubkick_4: "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/4.ogg"
  , breaks152_0: "https://klank-share.s3.amazonaws.com/dirt-samples/breaks152/000_AMEN.ogg"
  , x_808bd_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0075.ogg"
  , x_808bd_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0025.ogg"
  , x_808bd_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2575.ogg"
  , x_808bd_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1000.ogg"
  , x_808bd_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0010.ogg"
  , x_808bd_5: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2510.ogg"
  , x_808bd_6: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1025.ogg"
  , x_808bd_7: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7525.ogg"
  , x_808bd_8: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5025.ogg"
  , x_808bd_9: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7500.ogg"
  , x_808bd_10: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7550.ogg"
  , x_808bd_11: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5050.ogg"
  , x_808bd_12: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2550.ogg"
  , x_808bd_13: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2500.ogg"
  , x_808bd_14: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1075.ogg"
  , x_808bd_15: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1010.ogg"
  , x_808bd_16: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0050.ogg"
  , x_808bd_17: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0000.ogg"
  , x_808bd_18: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7510.ogg"
  , x_808bd_19: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5000.ogg"
  , x_808bd_20: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1050.ogg"
  , x_808bd_21: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5075.ogg"
  , x_808bd_22: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5010.ogg"
  , x_808bd_23: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7575.ogg"
  , x_808bd_24: "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2525.ogg"
  , miniyeah_0: "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/003_Sound36.ogg"
  , miniyeah_1: "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/001_Sound11.ogg"
  , miniyeah_2: "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/000_Sound0.ogg"
  , miniyeah_3: "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/002_Sound23.ogg"
  , if_0: "https://klank-share.s3.amazonaws.com/dirt-samples/if/003_snarl2b.ogg"
  , if_1: "https://klank-share.s3.amazonaws.com/dirt-samples/if/004_snarl3b.ogg"
  , if_2: "https://klank-share.s3.amazonaws.com/dirt-samples/if/000_gab.ogg"
  , if_3: "https://klank-share.s3.amazonaws.com/dirt-samples/if/001_gab2.ogg"
  , if_4: "https://klank-share.s3.amazonaws.com/dirt-samples/if/002_snarl1b.ogg"
  , x_808oh_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH10.ogg"
  , x_808oh_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH50.ogg"
  , x_808oh_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH75.ogg"
  , x_808oh_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH25.ogg"
  , x_808oh_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH00.ogg"
  , house_0: "https://klank-share.s3.amazonaws.com/dirt-samples/house/000_BD.ogg"
  , house_1: "https://klank-share.s3.amazonaws.com/dirt-samples/house/004_OH.ogg"
  , house_2: "https://klank-share.s3.amazonaws.com/dirt-samples/house/001_CB.ogg"
  , house_3: "https://klank-share.s3.amazonaws.com/dirt-samples/house/006_P2.ogg"
  , house_4: "https://klank-share.s3.amazonaws.com/dirt-samples/house/002_FX.ogg"
  , house_5: "https://klank-share.s3.amazonaws.com/dirt-samples/house/005_P1.ogg"
  , house_6: "https://klank-share.s3.amazonaws.com/dirt-samples/house/007_SN.ogg"
  , house_7: "https://klank-share.s3.amazonaws.com/dirt-samples/house/003_HH.ogg"
  , dr_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/039_048.ogg"
  , dr_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/036_045.ogg"
  , dr_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/041_050.ogg"
  , dr_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/027_036.ogg"
  , dr_4: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/022_031.ogg"
  , dr_5: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/026_035.ogg"
  , dr_6: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/023_032.ogg"
  , dr_7: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/009_014.ogg"
  , dr_8: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/029_038.ogg"
  , dr_9: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/037_046.ogg"
  , dr_10: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/035_044.ogg"
  , dr_11: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/024_033.ogg"
  , dr_12: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/006_009.ogg"
  , dr_13: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/021_030.ogg"
  , dr_14: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/018_027.ogg"
  , dr_15: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/008_011.ogg"
  , dr_16: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/025_034.ogg"
  , dr_17: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/014_023.ogg"
  , dr_18: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/020_029.ogg"
  , dr_19: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/034_043.ogg"
  , dr_20: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/032_041.ogg"
  , dr_21: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/011_016.ogg"
  , dr_22: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/017_026.ogg"
  , dr_23: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/012_017.ogg"
  , dr_24: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/028_037.ogg"
  , dr_25: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/040_049.ogg"
  , dr_26: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/007_010.ogg"
  , dr_27: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/010_015.ogg"
  , dr_28: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/031_040.ogg"
  , dr_29: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/019_028.ogg"
  , dr_30: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/030_039.ogg"
  , dr_31: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/001_003.ogg"
  , dr_32: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/013_019.ogg"
  , dr_33: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/038_047.ogg"
  , dr_34: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/003_005.ogg"
  , dr_35: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/000_002.ogg"
  , dr_36: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/004_006.ogg"
  , dr_37: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/033_042.ogg"
  , dr_38: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/002_004.ogg"
  , dr_39: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/005_008.ogg"
  , dr_40: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/015_024.ogg"
  , dr_41: "https://klank-share.s3.amazonaws.com/dirt-samples/dr/016_025.ogg"
  , dr55_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/003_DR55_snare.ogg"
  , dr55_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/001_DR55_kick.ogg"
  , dr55_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/002_DR55_rimshot.ogg"
  , dr55_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/000_DR55_hi_hat.ogg"
  , bass_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bass/001_bass2.ogg"
  , bass_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bass/003_bass4.ogg"
  , bass_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bass/002_bass3.ogg"
  , bass_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bass/000_bass1.ogg"
  , ho_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD8.ogg"
  , ho_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHODA.ogg"
  , ho_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD2.ogg"
  , ho_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD6.ogg"
  , ho_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD0.ogg"
  , ho_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD4.ogg"
  , hardkick_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_37.ogg"
  , hardkick_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_41.ogg"
  , hardkick_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_53.ogg"
  , hardkick_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_39.ogg"
  , hardkick_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_52.ogg"
  , hardkick_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_06.ogg"
  , x_808hc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC25.ogg"
  , x_808hc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC75.ogg"
  , x_808hc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC00.ogg"
  , x_808hc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC50.ogg"
  , x_808hc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC10.ogg"
  , hit_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/laser-powered-sword.ogg"
  , hit_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/ufo-take-me-away.ogg"
  , hit_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/robot-fart.ogg"
  , hit_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/zap-to-crack.ogg"
  , hit_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/bandpass-blart.ogg"
  , hit_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hit/electro-pling1.ogg"
  , breaks165_0: "https://klank-share.s3.amazonaws.com/dirt-samples/breaks165/000_RAWCLN.ogg"
  , dr2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/004_DR110OHT.ogg"
  , dr2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/002_DR110CYM.ogg"
  , dr2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/005_DR110SNR.ogg"
  , dr2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/000_DR110CHT.ogg"
  , dr2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/003_DR110KIK.ogg"
  , dr2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/001_DR110CLP.ogg"
  , tabla_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/023_lower5_hit.ogg"
  , tabla_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/024_lower6_hit.ogg"
  , tabla_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/003_dead_hit1.ogg"
  , tabla_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/011_hi_hit2.ogg"
  , tabla_4: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/015_hi_hit6.ogg"
  , tabla_5: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/001_bass_flick2.ogg"
  , tabla_6: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/005_dead_hit3.ogg"
  , tabla_7: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/010_hi_hit10.ogg"
  , tabla_8: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/020_lower2_hit.ogg"
  , tabla_9: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/007_hi_flick1.ogg"
  , tabla_10: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/014_hi_hit5.ogg"
  , tabla_11: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/013_hi_hit4.ogg"
  , tabla_12: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/009_hi_hit1.ogg"
  , tabla_13: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/025_lower_hits_descending.ogg"
  , tabla_14: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/008_hi_flick2.ogg"
  , tabla_15: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/021_lower3_hit.ogg"
  , tabla_16: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/006_d_sharp_hit.ogg"
  , tabla_17: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/012_hi_hit3.ogg"
  , tabla_18: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/016_hi_hit7.ogg"
  , tabla_19: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/017_hi_hit8.ogg"
  , tabla_20: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/018_hi_hit9.ogg"
  , tabla_21: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/002_bass_lick1.ogg"
  , tabla_22: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/000_bass_flick1.ogg"
  , tabla_23: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/022_lower4_hit.ogg"
  , tabla_24: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/019_lower1_hit.ogg"
  , tabla_25: "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/004_dead_hit2.ogg"
  , dork2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/0.ogg"
  , dork2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/1.ogg"
  , dork2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/2.ogg"
  , dork2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/4.ogg"
  , hc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD4.ogg"
  , hc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD2.ogg"
  , hc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD6.ogg"
  , hc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCDA.ogg"
  , hc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD8.ogg"
  , hc_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD0.ogg"
  , bassfoo_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/001_1.ogg"
  , bassfoo_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/000_0.ogg"
  , bassfoo_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/002_2.ogg"
  , seawolf_0: "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/001_shiphit.ogg"
  , seawolf_1: "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/000_minehit.ogg"
  , seawolf_2: "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/002_torpedo.ogg"
  , cp_0: "https://klank-share.s3.amazonaws.com/dirt-samples/cp/HANDCLP0.ogg"
  , cp_1: "https://klank-share.s3.amazonaws.com/dirt-samples/cp/HANDCLPA.ogg"
  , jazz_0: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/000_BD.ogg"
  , jazz_1: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/004_OH.ogg"
  , jazz_2: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/001_CB.ogg"
  , jazz_3: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/006_P2.ogg"
  , jazz_4: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/002_FX.ogg"
  , jazz_5: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/005_P1.ogg"
  , jazz_6: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/007_SN.ogg"
  , jazz_7: "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/003_HH.ogg"
  , juno_0: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/00_juno_raw_low.ogg"
  , juno_1: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/06_juno_release_low.ogg"
  , juno_2: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/09_juno_pad_c_minor_filter.ogg"
  , juno_3: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/02_juno_raw_high.ogg"
  , juno_4: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/08_juno_release_high.ogg"
  , juno_5: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/07_juno_release_mid.ogg"
  , juno_6: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/11_juno_pad_c_minor_noise.ogg"
  , juno_7: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/04_juno_chorus_mid.ogg"
  , juno_8: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/10_juno_pad_c_minor_no_filter.ogg"
  , juno_9: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/03_juno_chorus_low.ogg"
  , juno_10: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/05_juno_chorus_high.ogg"
  , juno_11: "https://klank-share.s3.amazonaws.com/dirt-samples/juno/01_juno_raw_mid.ogg"
  , birds_0: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/007_7.ogg"
  , birds_1: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/009_9.ogg"
  , birds_2: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/003_3.ogg"
  , birds_3: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/008_8.ogg"
  , birds_4: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/005_5.ogg"
  , birds_5: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/006_6.ogg"
  , birds_6: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/000_1.ogg"
  , birds_7: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/004_4.ogg"
  , birds_8: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/001_10.ogg"
  , birds_9: "https://klank-share.s3.amazonaws.com/dirt-samples/birds/002_2.ogg"
  , glasstap_0: "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/001_1.ogg"
  , glasstap_1: "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/000_0.ogg"
  , glasstap_2: "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/002_2.ogg"
  , bass1_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18083__daven__08-sb-bass-hit-c.ogg"
  , bass1_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18101__daven__26-sb-bass-hit-f.ogg"
  , bass1_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18080__daven__05-sb-bass-hit-c.ogg"
  , bass1_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18093__daven__18-sb-bass-hit-c.ogg"
  , bass1_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18099__daven__24-sb-bass-hit-f.ogg"
  , bass1_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18097__daven__22-sb-bass-hit-f.ogg"
  , bass1_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18082__daven__07-sb-bass-hit-c.ogg"
  , bass1_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18100__daven__25-sb-bass-hit-f.ogg"
  , bass1_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18077__daven__02-sb-bass-hit-c.ogg"
  , bass1_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18094__daven__19-sb-bass-hit-f.ogg"
  , bass1_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18089__daven__14-sb-bass-hit-c.ogg"
  , bass1_11: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18103__daven__28-sb-bass-hit-f.ogg"
  , bass1_12: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18086__daven__11-sb-bass-hit-c.ogg"
  , bass1_13: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18088__daven__13-sb-bass-hit-c.ogg"
  , bass1_14: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18085__daven__10-sb-bass-hit-c.ogg"
  , bass1_15: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18102__daven__27-sb-bass-hit-f.ogg"
  , bass1_16: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18096__daven__21-sb-bass-hit-f.ogg"
  , bass1_17: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18087__daven__12-sb-bass-hit-c.ogg"
  , bass1_18: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18104__daven__29-sb-bass-hit-f.ogg"
  , bass1_19: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18081__daven__06-sb-bass-hit-c.ogg"
  , bass1_20: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18105__daven__30-sb-bass-hit-f.ogg"
  , bass1_21: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18076__daven__01-sb-bass-hit-c.ogg"
  , bass1_22: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18078__daven__03-sb-bass-hit-c.ogg"
  , bass1_23: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18084__daven__09-sb-bass-hit-c.ogg"
  , bass1_24: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18095__daven__20-sb-bass-hit-f.ogg"
  , bass1_25: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18090__daven__15-sb-bass-hit-c.ogg"
  , bass1_26: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18098__daven__23-sb-bass-hit-f.ogg"
  , bass1_27: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18092__daven__17-sb-bass-hit-c.ogg"
  , bass1_28: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18091__daven__16-sb-bass-hit-c.ogg"
  , bass1_29: "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18079__daven__04-sb-bass-hit-c.ogg"
  , hh27_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/008_hh27perc1.ogg"
  , hh27_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/007_hh27opendhh.ogg"
  , hh27_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/001_hh27crash.ogg"
  , hh27_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/005_hh27kick1.ogg"
  , hh27_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/010_hh27ride.ogg"
  , hh27_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/000_hh27closedhh.ogg"
  , hh27_6: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/012_hh27snare2.ogg"
  , hh27_7: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/003_hh27hit2.ogg"
  , hh27_8: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/002_hh27hit1.ogg"
  , hh27_9: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/009_hh27perc2.ogg"
  , hh27_10: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/011_hh27snare1.ogg"
  , hh27_11: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/004_hh27hit3.ogg"
  , hh27_12: "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/006_hh27kick2.ogg"
  , x_808_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808/CP.ogg"
  , x_808_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808/MA.ogg"
  , x_808_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808/CB.ogg"
  , x_808_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808/CH.ogg"
  , x_808_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808/CL.ogg"
  , x_808_5: "https://klank-share.s3.amazonaws.com/dirt-samples/808/RS.ogg"
  , notes_0: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/006_14.ogg"
  , notes_1: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/013_8.ogg"
  , notes_2: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/007_2.ogg"
  , notes_3: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/001_1.ogg"
  , notes_4: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/004_12.ogg"
  , notes_5: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/011_6.ogg"
  , notes_6: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/009_4.ogg"
  , notes_7: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/002_10.ogg"
  , notes_8: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/003_11.ogg"
  , notes_9: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/010_5.ogg"
  , notes_10: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/008_3.ogg"
  , notes_11: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/012_7.ogg"
  , notes_12: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/014_9.ogg"
  , notes_13: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/000_0.ogg"
  , notes_14: "https://klank-share.s3.amazonaws.com/dirt-samples/notes/005_13.ogg"
  , xmas_0: "https://klank-share.s3.amazonaws.com/dirt-samples/xmas/170535__cognito-perceptu__merry-christmas.ogg"
  , erk_0: "https://klank-share.s3.amazonaws.com/dirt-samples/erk/000_123.ogg"
  , x_808mt_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT00.ogg"
  , x_808mt_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT25.ogg"
  , x_808mt_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT50.ogg"
  , x_808mt_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT75.ogg"
  , x_808mt_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT10.ogg"
  , lighter_0: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/007_7.ogg"
  , lighter_1: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/015_15.ogg"
  , lighter_2: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/009_9.ogg"
  , lighter_3: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/023_23.ogg"
  , lighter_4: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/012_12.ogg"
  , lighter_5: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/020_20.ogg"
  , lighter_6: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/016_16.ogg"
  , lighter_7: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/003_3.ogg"
  , lighter_8: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/014_14.ogg"
  , lighter_9: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/018_18.ogg"
  , lighter_10: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/030_30.ogg"
  , lighter_11: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/025_25.ogg"
  , lighter_12: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/017_17.ogg"
  , lighter_13: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/019_19.ogg"
  , lighter_14: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/013_13.ogg"
  , lighter_15: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/001_1.ogg"
  , lighter_16: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/026_26.ogg"
  , lighter_17: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/024_24.ogg"
  , lighter_18: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/008_8.ogg"
  , lighter_19: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/029_29.ogg"
  , lighter_20: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/005_5.ogg"
  , lighter_21: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/028_28.ogg"
  , lighter_22: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/006_6.ogg"
  , lighter_23: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/010_10.ogg"
  , lighter_24: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/021_21.ogg"
  , lighter_25: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/004_4.ogg"
  , lighter_26: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/031_31.ogg"
  , lighter_27: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/011_11.ogg"
  , lighter_28: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/032_32.ogg"
  , lighter_29: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/027_27.ogg"
  , lighter_30: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/022_22.ogg"
  , lighter_31: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/000_0.ogg"
  , lighter_32: "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/002_2.ogg"
  , cb_0: "https://klank-share.s3.amazonaws.com/dirt-samples/cb/rytm-cb.ogg"
  , subroc3d_0: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/009_11.ogg"
  , subroc3d_1: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/004_05.ogg"
  , subroc3d_2: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/002_03.ogg"
  , subroc3d_3: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/001_02.ogg"
  , subroc3d_4: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/007_08.ogg"
  , subroc3d_5: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/006_07.ogg"
  , subroc3d_6: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/005_06.ogg"
  , subroc3d_7: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/010_12.ogg"
  , subroc3d_8: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/000_01.ogg"
  , subroc3d_9: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/003_04.ogg"
  , subroc3d_10: "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/008_09.ogg"
  , ul_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/006_ulnoisey-snare.ogg"
  , ul_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/000_beep.ogg"
  , ul_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/005_ulnoisey-run.ogg"
  , ul_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/008_ulsnare-reverb.ogg"
  , ul_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/009_ulsnare-reverse.ogg"
  , ul_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/003_ulkick.ogg"
  , ul_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/002_ulhh.ogg"
  , ul_7: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/007_ulsnare.ogg"
  , ul_8: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/001_little-whip.ogg"
  , ul_9: "https://klank-share.s3.amazonaws.com/dirt-samples/ul/004_ulnoisey-kick.ogg"
  , gab_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab07.ogg"
  , gab_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab03.ogg"
  , gab_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab05.ogg"
  , gab_3: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab09.ogg"
  , gab_4: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab04.ogg"
  , gab_5: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab02.ogg"
  , gab_6: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab06.ogg"
  , gab_7: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab08.ogg"
  , gab_8: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab01.ogg"
  , gab_9: "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab10.ogg"
  , monsterb_0: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/002_tongue.ogg"
  , monsterb_1: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/005_zap.ogg"
  , monsterb_2: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/003_warping.ogg"
  , monsterb_3: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/001_laughter.ogg"
  , monsterb_4: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/004_wolfman.ogg"
  , monsterb_5: "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/000_jumpdown.ogg"
  , diphone_0: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/016_kd1_018.ogg"
  , diphone_1: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/037_kd1_039.ogg"
  , diphone_2: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/004_kd1_006.ogg"
  , diphone_3: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/015_kd1_017.ogg"
  , diphone_4: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/026_kd1_028.ogg"
  , diphone_5: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/011_kd1_013.ogg"
  , diphone_6: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/031_kd1_033.ogg"
  , diphone_7: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/010_kd1_012.ogg"
  , diphone_8: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/020_kd1_022.ogg"
  , diphone_9: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/007_kd1_009.ogg"
  , diphone_10: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/006_kd1_008.ogg"
  , diphone_11: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/032_kd1_034.ogg"
  , diphone_12: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/028_kd1_030.ogg"
  , diphone_13: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/017_kd1_019.ogg"
  , diphone_14: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/036_kd1_038.ogg"
  , diphone_15: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/002_kd1_004.ogg"
  , diphone_16: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/018_kd1_020.ogg"
  , diphone_17: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/003_kd1_005.ogg"
  , diphone_18: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/024_kd1_026.ogg"
  , diphone_19: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/012_kd1_014.ogg"
  , diphone_20: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/022_kd1_024.ogg"
  , diphone_21: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/009_kd1_011.ogg"
  , diphone_22: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/008_kd1_010.ogg"
  , diphone_23: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/027_kd1_029.ogg"
  , diphone_24: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/001_kd1_003.ogg"
  , diphone_25: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/005_kd1_007.ogg"
  , diphone_26: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/034_kd1_036.ogg"
  , diphone_27: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/019_kd1_021.ogg"
  , diphone_28: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/013_kd1_015.ogg"
  , diphone_29: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/023_kd1_025.ogg"
  , diphone_30: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/033_kd1_035.ogg"
  , diphone_31: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/030_kd1_032.ogg"
  , diphone_32: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/014_kd1_016.ogg"
  , diphone_33: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/021_kd1_023.ogg"
  , diphone_34: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/029_kd1_031.ogg"
  , diphone_35: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/035_kd1_037.ogg"
  , diphone_36: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/000_kd1_002.ogg"
  , diphone_37: "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/025_kd1_027.ogg"
  , clak_0: "https://klank-share.s3.amazonaws.com/dirt-samples/clak/000_clak1.ogg"
  , clak_1: "https://klank-share.s3.amazonaws.com/dirt-samples/clak/001_clak2.ogg"
  , sitar_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/006_d_minor_sitar_chordb.ogg"
  , sitar_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/003_d_maj_sitar_chordd.ogg"
  , sitar_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/000_d_maj_sitar_chorda.ogg"
  , sitar_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/005_d_minor_sitar_chorda.ogg"
  , sitar_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/004_d_maj_sitar_chorde.ogg"
  , sitar_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/001_d_maj_sitar_chordb.ogg"
  , sitar_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/007_d_minor_sitar_chordc.ogg"
  , sitar_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/002_d_maj_sitar_chordc.ogg"
  , ab_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/000_ab2closedhh.ogg"
  , ab_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/007_ab2perc1.ogg"
  , ab_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/005_ab2kick2.ogg"
  , ab_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/002_ab2hit1.ogg"
  , ab_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/004_ab2kick1.ogg"
  , ab_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/003_ab2hit2.ogg"
  , ab_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/009_ab2ride.ogg"
  , ab_7: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/001_ab2crash.ogg"
  , ab_8: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/011_ab2snare2.ogg"
  , ab_9: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/006_ab2openhh.ogg"
  , ab_10: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/010_ab2snare1.ogg"
  , ab_11: "https://klank-share.s3.amazonaws.com/dirt-samples/ab/008_ab2perc2.ogg"
  , cr_0: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED6.ogg"
  , cr_1: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED0.ogg"
  , cr_2: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDEDA.ogg"
  , cr_3: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED4.ogg"
  , cr_4: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED8.ogg"
  , cr_5: "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED2.ogg"
  , tacscan_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/021_warp.ogg"
  , tacscan_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/002_03.ogg"
  , tacscan_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/018_sthrust.ogg"
  , tacscan_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/019_tunnelh.ogg"
  , tacscan_4: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/001_02.ogg"
  , tacscan_5: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/007_flight1.ogg"
  , tacscan_6: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/010_flight4.ogg"
  , tacscan_7: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/014_plaser.ogg"
  , tacscan_8: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/006_eshot.ogg"
  , tacscan_9: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/013_pexpl.ogg"
  , tacscan_10: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/004_credit.ogg"
  , tacscan_11: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/011_flight5.ogg"
  , tacscan_12: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/020_tunnelw.ogg"
  , tacscan_13: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/008_flight2.ogg"
  , tacscan_14: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/012_formatn.ogg"
  , tacscan_15: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/009_flight3.ogg"
  , tacscan_16: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/017_slaser.ogg"
  , tacscan_17: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/015_pship.ogg"
  , tacscan_18: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/000_01.ogg"
  , tacscan_19: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/005_eexpl.ogg"
  , tacscan_20: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/003_1up.ogg"
  , tacscan_21: "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/016_sexpl.ogg"
  , v_0: "https://klank-share.s3.amazonaws.com/dirt-samples/v/001_v_blipp02.ogg"
  , v_1: "https://klank-share.s3.amazonaws.com/dirt-samples/v/004_v_snare01.ogg"
  , v_2: "https://klank-share.s3.amazonaws.com/dirt-samples/v/000_b_blipp01.ogg"
  , v_3: "https://klank-share.s3.amazonaws.com/dirt-samples/v/002_v_perc3.ogg"
  , v_4: "https://klank-share.s3.amazonaws.com/dirt-samples/v/003_v_perc5.ogg"
  , v_5: "https://klank-share.s3.amazonaws.com/dirt-samples/v/005_v_snare02.ogg"
  , bd_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAAAD0.ogg"
  , bd_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D3.ogg"
  , bd_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0DA.ogg"
  , bd_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7AAD0.ogg"
  , bd_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D0.ogg"
  , bd_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0DA.ogg"
  , bd_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0AAD0.ogg"
  , bd_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7AADA.ogg"
  , bd_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D7.ogg"
  , bd_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAAADA.ogg"
  , bd_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D7.ogg"
  , bd_11: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0A7.ogg"
  , bd_12: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D3.ogg"
  , bd_13: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0AADA.ogg"
  , bd_14: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D0.ogg"
  , bd_15: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0D3.ogg"
  , bd_16: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3AAD0.ogg"
  , bd_17: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D7.ogg"
  , bd_18: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D0.ogg"
  , bd_19: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3AADA.ogg"
  , bd_20: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0D0.ogg"
  , bd_21: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D3.ogg"
  , bd_22: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0DA.ogg"
  , bd_23: "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0DA.ogg"
  , rm_0: "https://klank-share.s3.amazonaws.com/dirt-samples/rm/RIMA.ogg"
  , rm_1: "https://klank-share.s3.amazonaws.com/dirt-samples/rm/RIM0.ogg"
  , blue_0: "https://klank-share.s3.amazonaws.com/dirt-samples/blue/aya.ogg"
  , blue_1: "https://klank-share.s3.amazonaws.com/dirt-samples/blue/howdoesitfeel.ogg"
  , latibro_0: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/001_Sound3.ogg"
  , latibro_1: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/006_Sound8.ogg"
  , latibro_2: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/003_Sound5.ogg"
  , latibro_3: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/000_Sound2.ogg"
  , latibro_4: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/002_Sound4.ogg"
  , latibro_5: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/005_Sound7.ogg"
  , latibro_6: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/007_Sound9.ogg"
  , latibro_7: "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/004_Sound6.ogg"
  , dr_few_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/005_020.ogg"
  , dr_few_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/000_001.ogg"
  , dr_few_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/003_013.ogg"
  , dr_few_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/006_021.ogg"
  , dr_few_4: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/004_018.ogg"
  , dr_few_5: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/002_012.ogg"
  , dr_few_6: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/007_022.ogg"
  , dr_few_7: "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/001_007.ogg"
  , rave2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_choir01.ogg"
  , rave2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/electric_ping01.ogg"
  , rave2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass04.ogg"
  , rave2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass03.ogg"
  , rave2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass02.ogg"
  , rave2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass01.ogg"
  , koy_0: "https://klank-share.s3.amazonaws.com/dirt-samples/koy/01_left.ogg"
  , koy_1: "https://klank-share.s3.amazonaws.com/dirt-samples/koy/02_right.ogg"
  , glitch2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/000_BD.ogg"
  , glitch2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/004_OH.ogg"
  , glitch2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/001_CB.ogg"
  , glitch2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/006_P2.ogg"
  , glitch2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/002_FX.ogg"
  , glitch2_5: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/005_P1.ogg"
  , glitch2_6: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/007_SN.ogg"
  , glitch2_7: "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/003_HH.ogg"
  , hmm_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hmm/hmm.ogg"
  , arp_0: "https://klank-share.s3.amazonaws.com/dirt-samples/arp/000_arp2.ogg"
  , arp_1: "https://klank-share.s3.amazonaws.com/dirt-samples/arp/001_arp.ogg"
  , made2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/made2/output.ogg"
  , uxay_0: "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/002_foo.ogg"
  , uxay_1: "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/001_erk.ogg"
  , uxay_2: "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/000_bar.ogg"
  , stomp_0: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/007_7.ogg"
  , stomp_1: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/003_2.ogg"
  , stomp_2: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/009_9.ogg"
  , stomp_3: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/001_0_2.ogg"
  , stomp_4: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/008_8.ogg"
  , stomp_5: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/005_5.ogg"
  , stomp_6: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/006_6.ogg"
  , stomp_7: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/004_3.ogg"
  , stomp_8: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/002_1.ogg"
  , stomp_9: "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/000_0.ogg"
  , tech_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1kick1.ogg"
  , tech_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit3.ogg"
  , tech_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1kick2.ogg"
  , tech_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1ride.ogg"
  , tech_4: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1snare1.ogg"
  , tech_5: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1openhh.ogg"
  , tech_6: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1perc2.ogg"
  , tech_7: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit2.ogg"
  , tech_8: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1closedhh.ogg"
  , tech_9: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1perc1.ogg"
  , tech_10: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1snare2.ogg"
  , tech_11: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1crash.ogg"
  , tech_12: "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit1.ogg"
  , sn_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S3.ogg"
  , sn_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3S7.ogg"
  , sn_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7SA.ogg"
  , sn_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7SA.ogg"
  , sn_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S3.ogg"
  , sn_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TASA.ogg"
  , sn_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3SA.ogg"
  , sn_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S7.ogg"
  , sn_8: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7SA.ogg"
  , sn_9: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S7.ogg"
  , sn_10: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TAS7.ogg"
  , sn_11: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3SA.ogg"
  , sn_12: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7S3.ogg"
  , sn_13: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7S3.ogg"
  , sn_14: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3S3.ogg"
  , sn_15: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3S7.ogg"
  , sn_16: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATAS3.ogg"
  , sn_17: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7S7.ogg"
  , sn_18: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7S7.ogg"
  , sn_19: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S3.ogg"
  , sn_20: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATASA.ogg"
  , sn_21: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TASA.ogg"
  , sn_22: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TAS3.ogg"
  , sn_23: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3S7.ogg"
  , sn_24: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TAS7.ogg"
  , sn_25: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S7.ogg"
  , sn_26: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3S3.ogg"
  , sn_27: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S7.ogg"
  , sn_28: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3SA.ogg"
  , sn_29: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0SA.ogg"
  , sn_30: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S0.ogg"
  , sn_31: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3SA.ogg"
  , sn_32: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TAS7.ogg"
  , sn_33: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S0.ogg"
  , sn_34: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S3.ogg"
  , sn_35: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S0.ogg"
  , sn_36: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7S7.ogg"
  , sn_37: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0SA.ogg"
  , sn_38: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0SA.ogg"
  , sn_39: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S0.ogg"
  , sn_40: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TAS3.ogg"
  , sn_41: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3S7.ogg"
  , sn_42: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7S3.ogg"
  , sn_43: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7S3.ogg"
  , sn_44: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7SA.ogg"
  , sn_45: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TAS3.ogg"
  , sn_46: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0SA.ogg"
  , sn_47: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATAS7.ogg"
  , sn_48: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3S3.ogg"
  , sn_49: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3S3.ogg"
  , sn_50: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TASA.ogg"
  , sn_51: "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7S7.ogg"
  , less_0: "https://klank-share.s3.amazonaws.com/dirt-samples/less/bass2.ogg"
  , less_1: "https://klank-share.s3.amazonaws.com/dirt-samples/less/kicklesshuman.ogg"
  , less_2: "https://klank-share.s3.amazonaws.com/dirt-samples/less/snare.ogg"
  , less_3: "https://klank-share.s3.amazonaws.com/dirt-samples/less/hhxx.ogg"
  , off_0: "https://klank-share.s3.amazonaws.com/dirt-samples/off/000_01.ogg"
  , x_808sd_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2575.ogg"
  , x_808sd_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2510.ogg"
  , x_808sd_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2550.ogg"
  , x_808sd_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7500.ogg"
  , x_808sd_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1075.ogg"
  , x_808sd_5: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7550.ogg"
  , x_808sd_6: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1000.ogg"
  , x_808sd_7: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0050.ogg"
  , x_808sd_8: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5050.ogg"
  , x_808sd_9: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0010.ogg"
  , x_808sd_10: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0025.ogg"
  , x_808sd_11: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5025.ogg"
  , x_808sd_12: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7510.ogg"
  , x_808sd_13: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5010.ogg"
  , x_808sd_14: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7525.ogg"
  , x_808sd_15: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0000.ogg"
  , x_808sd_16: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5075.ogg"
  , x_808sd_17: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7575.ogg"
  , x_808sd_18: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5000.ogg"
  , x_808sd_19: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1025.ogg"
  , x_808sd_20: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2500.ogg"
  , x_808sd_21: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1010.ogg"
  , x_808sd_22: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2525.ogg"
  , x_808sd_23: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1050.ogg"
  , x_808sd_24: "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0075.ogg"
  , trump_0: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/007_trumpstabe.ogg"
  , trump_1: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/008_trumpstabg.ogg"
  , trump_2: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/002_tightstabe.ogg"
  , trump_3: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/004_trumpfunk107a.ogg"
  , trump_4: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/006_trumpstabblowoct.ogg"
  , trump_5: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/003_tightstabg.ogg"
  , trump_6: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/005_trumpstabb.ogg"
  , trump_7: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/000_tightstabb.ogg"
  , trump_8: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/010_trumptightstabschord.ogg"
  , trump_9: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/001_tightstabblowoct.ogg"
  , trump_10: "https://klank-share.s3.amazonaws.com/dirt-samples/trump/009_trumpstabschord.ogg"
  , bev_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bev/01-stereo.ogg"
  , bev_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bev/00-mono.ogg"
  , pad_0: "https://klank-share.s3.amazonaws.com/dirt-samples/pad/angelpads.ogg"
  , pad_1: "https://klank-share.s3.amazonaws.com/dirt-samples/pad/bellpad-harmonics.ogg"
  , pad_2: "https://klank-share.s3.amazonaws.com/dirt-samples/pad/alien-monolith-pad.ogg"
  , led_0: "https://klank-share.s3.amazonaws.com/dirt-samples/led/000_foo.ogg"
  , perc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/005_perc5.ogg"
  , perc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/003_perc3.ogg"
  , perc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/000_perc0.ogg"
  , perc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/002_perc2.ogg"
  , perc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/001_perc1.ogg"
  , perc_5: "https://klank-share.s3.amazonaws.com/dirt-samples/perc/004_perc4.ogg"
  , pluck_0: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_B3_PI.ogg"
  , pluck_1: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G-Sharp-2_PI.ogg"
  , pluck_2: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G2_PI.ogg"
  , pluck_3: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_C3_PI.ogg"
  , pluck_4: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A1_PI.ogg"
  , pluck_5: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D4_PI.ogg"
  , pluck_6: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G3_PI.ogg"
  , pluck_7: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A3_PI.ogg"
  , pluck_8: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_E1_PI.ogg"
  , pluck_9: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G1_PI.ogg"
  , pluck_10: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D2_PI.ogg"
  , pluck_11: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_F1_PI.ogg"
  , pluck_12: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A-Sharp-2_PI.ogg"
  , pluck_13: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_E2_PI.ogg"
  , pluck_14: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D-Sharp-3_PI.ogg"
  , pluck_15: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_F3_PI.ogg"
  , pluck_16: "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_B1_PI.ogg"
  , bleep_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/harsh-whippleszoot.ogg"
  , bleep_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/pc_beep.ogg"
  , bleep_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/vidgame-bleep2.ogg"
  , bleep_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/tinynote.ogg"
  , bleep_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/shortsaxish.ogg"
  , bleep_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/stereo-star-trek-pager.ogg"
  , bleep_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/echo-blip-thing.ogg"
  , bleep_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/watch_beep.ogg"
  , bleep_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/checkpoint-hit.ogg"
  , bleep_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/vidgame-bleep1.ogg"
  , bleep_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/simpletone.ogg"
  , bleep_11: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/tiniest.ogg"
  , bleep_12: "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/boip.ogg"
  , ht_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D7.ogg"
  , ht_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7DA.ogg"
  , ht_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD7.ogg"
  , ht_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D0.ogg"
  , ht_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D0.ogg"
  , ht_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD0.ogg"
  , ht_6: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD3.ogg"
  , ht_7: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D3.ogg"
  , ht_8: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0DA.ogg"
  , ht_9: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D7.ogg"
  , ht_10: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D7.ogg"
  , ht_11: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3DA.ogg"
  , ht_12: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D0.ogg"
  , ht_13: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTADA.ogg"
  , ht_14: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D3.ogg"
  , ht_15: "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D3.ogg"
  , ades4_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/01.ogg"
  , ades4_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/06.ogg"
  , ades4_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/04.ogg"
  , ades4_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/03.ogg"
  , ades4_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/02.ogg"
  , ades4_5: "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/05.ogg"
  , proc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/proc/001_3.ogg"
  , proc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/proc/000_2.ogg"
  , gretsch_0: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/021_snareghost.ogg"
  , gretsch_1: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/001_brushlotom.ogg"
  , gretsch_2: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/005_closedhathard.ogg"
  , gretsch_3: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/017_openhat.ogg"
  , gretsch_4: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/018_ridebell.ogg"
  , gretsch_5: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/006_cowbell.ogg"
  , gretsch_6: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/016_openclosedhat.ogg"
  , gretsch_7: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/012_hitom.ogg"
  , gretsch_8: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/015_lotom.ogg"
  , gretsch_9: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/008_cymbalrub.ogg"
  , gretsch_10: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/020_snare.ogg"
  , gretsch_11: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/014_kicksnare.ogg"
  , gretsch_12: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/009_flam.ogg"
  , gretsch_13: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/010_foothat.ogg"
  , gretsch_14: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/003_brushsnareghost.ogg"
  , gretsch_15: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/007_cymbalgrab.ogg"
  , gretsch_16: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/022_snarehard.ogg"
  , gretsch_17: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/023_snareslack.ogg"
  , gretsch_18: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/019_ridecymbal.ogg"
  , gretsch_19: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/013_kick.ogg"
  , gretsch_20: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/004_closedhat.ogg"
  , gretsch_21: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/002_brushsnare.ogg"
  , gretsch_22: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/000_brushhitom.ogg"
  , gretsch_23: "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/011_foothat2.ogg"
  , outdoor_0: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/3.ogg"
  , outdoor_1: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/5.ogg"
  , outdoor_2: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/1.ogg"
  , outdoor_3: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/2.ogg"
  , outdoor_4: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/4.ogg"
  , outdoor_5: "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/6.ogg"
  , techno_0: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/003_4.ogg"
  , techno_1: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/005_6.ogg"
  , techno_2: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/001_1.ogg"
  , techno_3: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/002_3.ogg"
  , techno_4: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/006_7.ogg"
  , techno_5: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/000_0.ogg"
  , techno_6: "https://klank-share.s3.amazonaws.com/dirt-samples/techno/004_5.ogg"
  , ulgab_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab4.ogg"
  , ulgab_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab2.ogg"
  , ulgab_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab1.ogg"
  , ulgab_3: "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab3.ogg"
  , ulgab_4: "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab5.ogg"
  , breaks125_0: "https://klank-share.s3.amazonaws.com/dirt-samples/breaks125/016_bllstmp.ogg"
  , breaks125_1: "https://klank-share.s3.amazonaws.com/dirt-samples/breaks125/015_sdstckbr.ogg"
  , bin_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bin/001_0.ogg"
  , bin_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bin/000_bin1.ogg"
  , x_808mc_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC10.ogg"
  , x_808mc_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC75.ogg"
  , x_808mc_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC50.ogg"
  , x_808mc_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC00.ogg"
  , x_808mc_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC25.ogg"
  , lt_0: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTADA.ogg"
  , lt_1: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD0.ogg"
  , lt_2: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D0.ogg"
  , lt_3: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD7.ogg"
  , lt_4: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D7.ogg"
  , lt_5: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD3.ogg"
  , lt_6: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D7.ogg"
  , lt_7: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D0.ogg"
  , lt_8: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D3.ogg"
  , lt_9: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D0.ogg"
  , lt_10: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D3.ogg"
  , lt_11: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D3.ogg"
  , lt_12: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7DA.ogg"
  , lt_13: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0DA.ogg"
  , lt_14: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D7.ogg"
  , lt_15: "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3DA.ogg"
  , amencutup_0: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/022_AMENCUT_023.ogg"
  , amencutup_1: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/023_AMENCUT_024.ogg"
  , amencutup_2: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/003_AMENCUT_004.ogg"
  , amencutup_3: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/028_AMENCUT_029.ogg"
  , amencutup_4: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/000_AMENCUT_001.ogg"
  , amencutup_5: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/010_AMENCUT_011.ogg"
  , amencutup_6: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/029_AMENCUT_030.ogg"
  , amencutup_7: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/014_AMENCUT_015.ogg"
  , amencutup_8: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/027_AMENCUT_028.ogg"
  , amencutup_9: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/024_AMENCUT_025.ogg"
  , amencutup_10: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/031_AMENCUT_032.ogg"
  , amencutup_11: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/020_AMENCUT_021.ogg"
  , amencutup_12: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/002_AMENCUT_003.ogg"
  , amencutup_13: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/008_AMENCUT_009.ogg"
  , amencutup_14: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/016_AMENCUT_017.ogg"
  , amencutup_15: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/015_AMENCUT_016.ogg"
  , amencutup_16: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/017_AMENCUT_018.ogg"
  , amencutup_17: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/006_AMENCUT_007.ogg"
  , amencutup_18: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/004_AMENCUT_005.ogg"
  , amencutup_19: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/019_AMENCUT_020.ogg"
  , amencutup_20: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/026_AMENCUT_027.ogg"
  , amencutup_21: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/007_AMENCUT_008.ogg"
  , amencutup_22: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/030_AMENCUT_031.ogg"
  , amencutup_23: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/021_AMENCUT_022.ogg"
  , amencutup_24: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/009_AMENCUT_010.ogg"
  , amencutup_25: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/025_AMENCUT_026.ogg"
  , amencutup_26: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/012_AMENCUT_013.ogg"
  , amencutup_27: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/013_AMENCUT_014.ogg"
  , amencutup_28: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/001_AMENCUT_002.ogg"
  , amencutup_29: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/018_AMENCUT_019.ogg"
  , amencutup_30: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/005_AMENCUT_006.ogg"
  , amencutup_31: "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/011_AMENCUT_012.ogg"
  , drum_0: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/000_drum1.ogg"
  , drum_1: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/002_drum3.ogg"
  , drum_2: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/005_drum6.ogg"
  , drum_3: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/001_drum2.ogg"
  , drum_4: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/004_drum5.ogg"
  , drum_5: "https://klank-share.s3.amazonaws.com/dirt-samples/drum/003_drum4.ogg"
  , coins_0: "https://klank-share.s3.amazonaws.com/dirt-samples/coins/coins.ogg"
  , industrial_0: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/020_21.ogg"
  , industrial_1: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/031_32.ogg"
  , industrial_2: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/012_13.ogg"
  , industrial_3: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/009_10.ogg"
  , industrial_4: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/004_05.ogg"
  , industrial_5: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/021_22.ogg"
  , industrial_6: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/002_03.ogg"
  , industrial_7: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/026_27.ogg"
  , industrial_8: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/014_15.ogg"
  , industrial_9: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/025_26.ogg"
  , industrial_10: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/027_28.ogg"
  , industrial_11: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/001_02.ogg"
  , industrial_12: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/023_24.ogg"
  , industrial_13: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/007_08.ogg"
  , industrial_14: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/010_11.ogg"
  , industrial_15: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/030_31.ogg"
  , industrial_16: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/006_07.ogg"
  , industrial_17: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/013_14.ogg"
  , industrial_18: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/015_16.ogg"
  , industrial_19: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/024_25.ogg"
  , industrial_20: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/022_23.ogg"
  , industrial_21: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/005_06.ogg"
  , industrial_22: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/028_29.ogg"
  , industrial_23: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/019_20.ogg"
  , industrial_24: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/011_12.ogg"
  , industrial_25: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/016_17.ogg"
  , industrial_26: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/017_18.ogg"
  , industrial_27: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/029_30.ogg"
  , industrial_28: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/000_01.ogg"
  , industrial_29: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/003_04.ogg"
  , industrial_30: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/018_19.ogg"
  , industrial_31: "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/008_09.ogg"
  , tink_0: "https://klank-share.s3.amazonaws.com/dirt-samples/tink/001_tink2.ogg"
  , tink_1: "https://klank-share.s3.amazonaws.com/dirt-samples/tink/000_tink1.ogg"
  , tink_2: "https://klank-share.s3.amazonaws.com/dirt-samples/tink/003_tink4.ogg"
  , tink_3: "https://klank-share.s3.amazonaws.com/dirt-samples/tink/002_tink3.ogg"
  , tink_4: "https://klank-share.s3.amazonaws.com/dirt-samples/tink/004_tink5.ogg"
  , co_0: "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP2.ogg"
  , co_1: "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP3.ogg"
  , co_2: "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP4.ogg"
  , co_3: "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP1.ogg"
  , fest_0: "https://klank-share.s3.amazonaws.com/dirt-samples/fest/000_foo.ogg"
  , feelfx_0: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/boschwitz.ogg"
  , feelfx_1: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/silent.ogg"
  , feelfx_2: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/bwawp.ogg"
  , feelfx_3: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/blnk.ogg"
  , feelfx_4: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/machine.ogg"
  , feelfx_5: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/doing.ogg"
  , feelfx_6: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/laser-buzz.ogg"
  , feelfx_7: "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/surfactant_15_xilo.ogg"
  , x_808cy_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7525.ogg"
  , x_808cy_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7500.ogg"
  , x_808cy_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2550.ogg"
  , x_808cy_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1075.ogg"
  , x_808cy_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5025.ogg"
  , x_808cy_5: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0000.ogg"
  , x_808cy_6: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2510.ogg"
  , x_808cy_7: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0010.ogg"
  , x_808cy_8: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5000.ogg"
  , x_808cy_9: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0075.ogg"
  , x_808cy_10: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7550.ogg"
  , x_808cy_11: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5075.ogg"
  , x_808cy_12: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1010.ogg"
  , x_808cy_13: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2525.ogg"
  , x_808cy_14: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2575.ogg"
  , x_808cy_15: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0025.ogg"
  , x_808cy_16: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2500.ogg"
  , x_808cy_17: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5010.ogg"
  , x_808cy_18: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7510.ogg"
  , x_808cy_19: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1025.ogg"
  , x_808cy_20: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7575.ogg"
  , x_808cy_21: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1050.ogg"
  , x_808cy_22: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1000.ogg"
  , x_808cy_23: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5050.ogg"
  , x_808cy_24: "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0050.ogg"
  , world_0: "https://klank-share.s3.amazonaws.com/dirt-samples/world/bd.ogg"
  , world_1: "https://klank-share.s3.amazonaws.com/dirt-samples/world/sn.ogg"
  , world_2: "https://klank-share.s3.amazonaws.com/dirt-samples/world/gabbakick.ogg"
  , f_0: "https://klank-share.s3.amazonaws.com/dirt-samples/f/000_f.ogg"
  , numbers_0: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/3.ogg"
  , numbers_1: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/5.ogg"
  , numbers_2: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/0.ogg"
  , numbers_3: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/7.ogg"
  , numbers_4: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/1.ogg"
  , numbers_5: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/2.ogg"
  , numbers_6: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/4.ogg"
  , numbers_7: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/6.ogg"
  , numbers_8: "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/8.ogg"
  , d_0: "https://klank-share.s3.amazonaws.com/dirt-samples/d/000_d1.ogg"
  , d_1: "https://klank-share.s3.amazonaws.com/dirt-samples/d/003_d4.ogg"
  , d_2: "https://klank-share.s3.amazonaws.com/dirt-samples/d/001_d2.ogg"
  , d_3: "https://klank-share.s3.amazonaws.com/dirt-samples/d/002_d3.ogg"
  , padlong_0: "https://klank-share.s3.amazonaws.com/dirt-samples/padlong/atmospheric-abduction.ogg"
  , sequential_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/005_Tom_Snare.ogg"
  , sequential_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/000_Tom_Clap.ogg"
  , sequential_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/002_Tom_Hat_Closed.ogg"
  , sequential_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/004_Tom_Openhat.ogg"
  , sequential_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/001_Tom_Crash.ogg"
  , sequential_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/003_Tom_Kick.ogg"
  , sequential_6: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/007_Tom_Tom2.ogg"
  , sequential_7: "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/006_Tom_Tom1.ogg"
  , stab_0: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/005_stab14.ogg"
  , stab_1: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/009_stab18.ogg"
  , stab_2: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/014_stab22.ogg"
  , stab_3: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/015_stab23.ogg"
  , stab_4: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/012_stab20.ogg"
  , stab_5: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/008_stab17.ogg"
  , stab_6: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/020_stab7.ogg"
  , stab_7: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/018_stab5.ogg"
  , stab_8: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/021_stab8.ogg"
  , stab_9: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/011_stab2.ogg"
  , stab_10: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/010_stab19.ogg"
  , stab_11: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/000_stab1.ogg"
  , stab_12: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/004_stab13.ogg"
  , stab_13: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/019_stab6.ogg"
  , stab_14: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/022_stab9.ogg"
  , stab_15: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/006_stab15.ogg"
  , stab_16: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/016_stab3.ogg"
  , stab_17: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/017_stab4.ogg"
  , stab_18: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/013_stab21.ogg"
  , stab_19: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/001_stab10.ogg"
  , stab_20: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/002_stab11.ogg"
  , stab_21: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/007_stab16.ogg"
  , stab_22: "https://klank-share.s3.amazonaws.com/dirt-samples/stab/003_stab12.ogg"
  , electro1_0: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/003_et1hit2.ogg"
  , electro1_1: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/005_et1kick1.ogg"
  , electro1_2: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/009_et1perc2.ogg"
  , electro1_3: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/000_et1closedhh.ogg"
  , electro1_4: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/011_et1snare1.ogg"
  , electro1_5: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/006_et1kick2.ogg"
  , electro1_6: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/010_et1ride.ogg"
  , electro1_7: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/001_et1crash.ogg"
  , electro1_8: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/012_et1snare2.ogg"
  , electro1_9: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/004_et1hit3.ogg"
  , electro1_10: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/007_et1openhh.ogg"
  , electro1_11: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/008_et1perc1.ogg"
  , electro1_12: "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/002_et1hit1.ogg"
  , ifdrums_0: "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignorehh.ogg"
  , ifdrums_1: "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignoresd.ogg"
  , ifdrums_2: "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignorebd.ogg"
  , invaders_0: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/010_2.ogg"
  , invaders_1: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/012_4.ogg"
  , invaders_2: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/006_15.ogg"
  , invaders_3: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/002_11.ogg"
  , invaders_4: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/004_13.ogg"
  , invaders_5: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/013_5.ogg"
  , invaders_6: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/001_1.ogg"
  , invaders_7: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/005_14.ogg"
  , invaders_8: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/015_7.ogg"
  , invaders_9: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/016_8.ogg"
  , invaders_10: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/003_12.ogg"
  , invaders_11: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/007_16.ogg"
  , invaders_12: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/014_6.ogg"
  , invaders_13: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/017_9.ogg"
  , invaders_14: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/009_18.ogg"
  , invaders_15: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/000_0.ogg"
  , invaders_16: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/008_17.ogg"
  , invaders_17: "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/011_3.ogg"
  , dist_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/013_inddistb7ride.ogg"
  , dist_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/005_inddistb3ride.ogg"
  , dist_2: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/012_inddistb7.ogg"
  , dist_3: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/006_inddistb4.ogg"
  , dist_4: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/011_inddistb6ride.ogg"
  , dist_5: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/009_inddistb5ride.ogg"
  , dist_6: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/015_inddistb8ride.ogg"
  , dist_7: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/001_inddistb2.ogg"
  , dist_8: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/007_inddistb4ride.ogg"
  , dist_9: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/008_inddistb5.ogg"
  , dist_10: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/002_inddistb1ride.ogg"
  , dist_11: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/014_inddistb8.ogg"
  , dist_12: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/004_inddistb3.ogg"
  , dist_13: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/010_inddistb6.ogg"
  , dist_14: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/003_inddistb2ride.ogg"
  , dist_15: "https://klank-share.s3.amazonaws.com/dirt-samples/dist/000_inddistb1.ogg"
  , sundance_0: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/000_bong.ogg"
  , sundance_1: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/003_ping1.ogg"
  , sundance_2: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/001_explsion.ogg"
  , sundance_3: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/005_whoosh.ogg"
  , sundance_4: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/002_hatch.ogg"
  , sundance_5: "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/004_ping2.ogg"
  , speech_0: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/000_Sound10.ogg"
  , speech_1: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/003_Sound6.ogg"
  , speech_2: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/006_Sound9.ogg"
  , speech_3: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/002_Sound5.ogg"
  , speech_4: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/004_Sound7.ogg"
  , speech_5: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/001_Sound4.ogg"
  , speech_6: "https://klank-share.s3.amazonaws.com/dirt-samples/speech/005_Sound8.ogg"
  , toys_0: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/012_ToyNotes.ogg"
  , toys_1: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/001_ClassicalMusic-Notes.ogg"
  , toys_2: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/008_MusicalMedley-Words.ogg"
  , toys_3: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/005_Colors-Words.ogg"
  , toys_4: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/006_MusicalMedley.ogg"
  , toys_5: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/004_Colors-Notes.ogg"
  , toys_6: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/003_Colors.ogg"
  , toys_7: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/009_Numbers.ogg"
  , toys_8: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/011_Numbers-Words.ogg"
  , toys_9: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/002_ClassicalMusic-Words.ogg"
  , toys_10: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/000_ClassicalMusic.ogg"
  , toys_11: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/007_MusicalMedley-Notes.ogg"
  , toys_12: "https://klank-share.s3.amazonaws.com/dirt-samples/toys/010_Numbers-Notes.ogg"
  , bass0_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/001_1.ogg"
  , bass0_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/000_0.ogg"
  , bass0_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/002_2.ogg"
  , realclaps_0: "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/3.ogg"
  , realclaps_1: "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/1.ogg"
  , realclaps_2: "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/2.ogg"
  , realclaps_3: "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/4.ogg"
  , dorkbot_0: "https://klank-share.s3.amazonaws.com/dirt-samples/dorkbot/1.ogg"
  , dorkbot_1: "https://klank-share.s3.amazonaws.com/dirt-samples/dorkbot/2.ogg"
  , arpy_0: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy03.ogg"
  , arpy_1: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy01.ogg"
  , arpy_2: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy04.ogg"
  , arpy_3: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy06.ogg"
  , arpy_4: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy07.ogg"
  , arpy_5: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy09.ogg"
  , arpy_6: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy10.ogg"
  , arpy_7: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy11.ogg"
  , arpy_8: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy05.ogg"
  , arpy_9: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy02.ogg"
  , arpy_10: "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy08.ogg"
  , fire_0: "https://klank-share.s3.amazonaws.com/dirt-samples/fire/fire.ogg"
  , hoover_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/3.ogg"
  , hoover_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/5.ogg"
  , hoover_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/1.ogg"
  , hoover_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/2.ogg"
  , hoover_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/4.ogg"
  , hoover_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/6.ogg"
  , breath_0: "https://klank-share.s3.amazonaws.com/dirt-samples/breath/000_breath.ogg"
  , rave_0: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/stabah.ogg"
  , rave_1: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/doh.ogg"
  , rave_2: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/giveit.ogg"
  , rave_3: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/Babylon.ogg"
  , rave_4: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/cut.ogg"
  , rave_5: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/ourcrew.ogg"
  , rave_6: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/prodigyloop.ogg"
  , rave_7: "https://klank-share.s3.amazonaws.com/dirt-samples/rave/AREUREADY.ogg"
  , bottle_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/007_4.ogg"
  , bottle_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/002_11.ogg"
  , bottle_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/011_8.ogg"
  , bottle_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/004_13.ogg"
  , bottle_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/006_3.ogg"
  , bottle_5: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/012_9.ogg"
  , bottle_6: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/009_6.ogg"
  , bottle_7: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/000_1.ogg"
  , bottle_8: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/003_12.ogg"
  , bottle_9: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/008_5.ogg"
  , bottle_10: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/010_7.ogg"
  , bottle_11: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/001_10.ogg"
  , bottle_12: "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/005_2.ogg"
  , east_0: "https://klank-share.s3.amazonaws.com/dirt-samples/east/007_taiko_2.ogg"
  , east_1: "https://klank-share.s3.amazonaws.com/dirt-samples/east/004_shime_hi_2.ogg"
  , east_2: "https://klank-share.s3.amazonaws.com/dirt-samples/east/000_nipon_wood_block.ogg"
  , east_3: "https://klank-share.s3.amazonaws.com/dirt-samples/east/002_ohkawa_open.ogg"
  , east_4: "https://klank-share.s3.amazonaws.com/dirt-samples/east/001_ohkawa_mute.ogg"
  , east_5: "https://klank-share.s3.amazonaws.com/dirt-samples/east/006_taiko_1.ogg"
  , east_6: "https://klank-share.s3.amazonaws.com/dirt-samples/east/003_shime_hi.ogg"
  , east_7: "https://klank-share.s3.amazonaws.com/dirt-samples/east/005_shime_mute.ogg"
  , east_8: "https://klank-share.s3.amazonaws.com/dirt-samples/east/008_taiko_3.ogg"
  , linnhats_0: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/3.ogg"
  , linnhats_1: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/5.ogg"
  , linnhats_2: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/1.ogg"
  , linnhats_3: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/2.ogg"
  , linnhats_4: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/4.ogg"
  , linnhats_5: "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/6.ogg"
  , speedupdown_0: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/004_Sound24.ogg"
  , speedupdown_1: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/005_Sound25.ogg"
  , speedupdown_2: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/008_Sound28.ogg"
  , speedupdown_3: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/007_Sound27.ogg"
  , speedupdown_4: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/006_Sound26.ogg"
  , speedupdown_5: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/003_Sound23.ogg"
  , speedupdown_6: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/002_Sound22.ogg"
  , speedupdown_7: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/001_Sound21.ogg"
  , speedupdown_8: "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/000_Sound20.ogg"
  , cosmicg_0: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/013_cg_m6.ogg"
  , cosmicg_1: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/009_cg_m2.ogg"
  , cosmicg_2: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/001_cg_chnc.ogg"
  , cosmicg_3: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/002_cg_dest.ogg"
  , cosmicg_4: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/007_cg_m0.ogg"
  , cosmicg_5: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/006_cg_gun.ogg"
  , cosmicg_6: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/005_cg_gotm.ogg"
  , cosmicg_7: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/014_cg_m7.ogg"
  , cosmicg_8: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/008_cg_m1.ogg"
  , cosmicg_9: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/011_cg_m4.ogg"
  , cosmicg_10: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/012_cg_m5.ogg"
  , cosmicg_11: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/010_cg_m3.ogg"
  , cosmicg_12: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/004_cg_gotb.ogg"
  , cosmicg_13: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/000_cg_att.ogg"
  , cosmicg_14: "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/003_cg_ext.ogg"
  , jvbass_0: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/012_13.ogg"
  , jvbass_1: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/009_10.ogg"
  , jvbass_2: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/004_05.ogg"
  , jvbass_3: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/002_03.ogg"
  , jvbass_4: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/001_02.ogg"
  , jvbass_5: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/007_08.ogg"
  , jvbass_6: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/010_11.ogg"
  , jvbass_7: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/006_07.ogg"
  , jvbass_8: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/005_06.ogg"
  , jvbass_9: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/011_12.ogg"
  , jvbass_10: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/000_01.ogg"
  , jvbass_11: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/003_04.ogg"
  , jvbass_12: "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/008_09.ogg"
  , mash_0: "https://klank-share.s3.amazonaws.com/dirt-samples/mash/0.ogg"
  , mash_1: "https://klank-share.s3.amazonaws.com/dirt-samples/mash/1.ogg"
  , feel_0: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/sub.ogg"
  , feel_1: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/BD_04_d.ogg"
  , feel_2: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/hihat029a.ogg"
  , feel_3: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/HH_003b.ogg"
  , feel_4: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_180.ogg"
  , feel_5: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_223.ogg"
  , feel_6: "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_139.ogg"
  , short_0: "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-020.ogg"
  , short_1: "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-010.ogg"
  , short_2: "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-012.ogg"
  , short_3: "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-021.ogg"
  , short_4: "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-fx-synth-009.ogg"
  , incoming_0: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/000_Mattel__Snare.ogg"
  , incoming_1: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/002_Mattel_Cymbal.ogg"
  , incoming_2: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/004_Mattel_Kick.ogg"
  , incoming_3: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/007_Mattel_Tom_VLow.ogg"
  , incoming_4: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/001_Mattel__Tom_VHigh.ogg"
  , incoming_5: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/005_Mattel_Tom_High.ogg"
  , incoming_6: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/006_Mattel_Tom_Low.ogg"
  , incoming_7: "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/003_Mattel_Hi-Hat.ogg"
  , flick_0: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/006_14.ogg"
  , flick_1: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/016_square.ogg"
  , flick_2: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/015_hi.ogg"
  , flick_3: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/013_8.ogg"
  , flick_4: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/007_2.ogg"
  , flick_5: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/001_1.ogg"
  , flick_6: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/000_square-p.ogg"
  , flick_7: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/004_12.ogg"
  , flick_8: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/011_6.ogg"
  , flick_9: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/009_4.ogg"
  , flick_10: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/002_10.ogg"
  , flick_11: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/003_11.ogg"
  , flick_12: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/010_5.ogg"
  , flick_13: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/008_3.ogg"
  , flick_14: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/012_7.ogg"
  , flick_15: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/014_9.ogg"
  , flick_16: "https://klank-share.s3.amazonaws.com/dirt-samples/flick/005_13.ogg"
  , reverbkick_0: "https://klank-share.s3.amazonaws.com/dirt-samples/reverbkick/1.ogg"
  , bass2_0: "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69988__noizemassacre__hardcore-bass-1.ogg"
  , bass2_1: "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69989__noizemassacre__hardcore-bass-2.ogg"
  , bass2_2: "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69992__noizemassacre__hardcore-bass-5.ogg"
  , bass2_3: "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69991__noizemassacre__hardcore-bass-4.ogg"
  , bass2_4: "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69990__noizemassacre__hardcore-bass-3.ogg"
  , baa_0: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/3.ogg"
  , baa_1: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/5.ogg"
  , baa_2: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/7.ogg"
  , baa_3: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/1.ogg"
  , baa_4: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/2.ogg"
  , baa_5: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/4.ogg"
  , baa_6: "https://klank-share.s3.amazonaws.com/dirt-samples/baa/6.ogg"
  , fm_0: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/bambaataa.ogg"
  , fm_1: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/charly.ogg"
  , fm_2: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/electro2.ogg"
  , fm_3: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/shakedown.ogg"
  , fm_4: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/pad.ogg"
  , fm_5: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/808909stabs.ogg"
  , fm_6: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal2.ogg"
  , fm_7: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break1.ogg"
  , fm_8: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal3.ogg"
  , fm_9: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal1.ogg"
  , fm_10: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/badboy.ogg"
  , fm_11: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/heyhey.ogg"
  , fm_12: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break3.ogg"
  , fm_13: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break2.ogg"
  , fm_14: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/stabs.ogg"
  , fm_15: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/31seconds.ogg"
  , fm_16: "https://klank-share.s3.amazonaws.com/dirt-samples/fm/electro1.ogg"
  , click_0: "https://klank-share.s3.amazonaws.com/dirt-samples/click/001_click1.ogg"
  , click_1: "https://klank-share.s3.amazonaws.com/dirt-samples/click/000_click0.ogg"
  , click_2: "https://klank-share.s3.amazonaws.com/dirt-samples/click/003_click3.ogg"
  , click_3: "https://klank-share.s3.amazonaws.com/dirt-samples/click/002_click2.ogg"
  , control_0: "https://klank-share.s3.amazonaws.com/dirt-samples/control/1.ogg"
  , control_1: "https://klank-share.s3.amazonaws.com/dirt-samples/control/2.ogg"
  , peri_0: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/007_xbigclang.ogg"
  , peri_1: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/008_xbong.ogg"
  , peri_2: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/009_xbusket.ogg"
  , peri_3: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/000_bd.ogg"
  , peri_4: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/011_xfx1.ogg"
  , peri_5: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/005_sd.ogg"
  , peri_6: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/004_ksh.ogg"
  , peri_7: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/013_xfx3.ogg"
  , peri_8: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/014_xgillclank.ogg"
  , peri_9: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/010_xchinga.ogg"
  , peri_10: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/012_xfx2.ogg"
  , peri_11: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/002_hh2.ogg"
  , peri_12: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/003_hhx.ogg"
  , peri_13: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/006_sd-rev.ogg"
  , peri_14: "https://klank-share.s3.amazonaws.com/dirt-samples/peri/001_bd-rev.ogg"
  , procshort_0: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/007_9.ogg"
  , procshort_1: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/003_4.ogg"
  , procshort_2: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/002_11.ogg"
  , procshort_3: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/000_1.ogg"
  , procshort_4: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/006_8.ogg"
  , procshort_5: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/005_7.ogg"
  , procshort_6: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/001_10.ogg"
  , procshort_7: "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/004_5.ogg"
  , hand_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand7-mono.ogg"
  , hand_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand16-mono.ogg"
  , hand_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand11-mono.ogg"
  , hand_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand20.ogg"
  , hand_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand12-mono.ogg"
  , hand_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand14-mono.ogg"
  , hand_6: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand3-mono.ogg"
  , hand_7: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand9-mono.ogg"
  , hand_8: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand8-mono.ogg"
  , hand_9: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand17.ogg"
  , hand_10: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand22-mono.ogg"
  , hand_11: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand2-mono.ogg"
  , hand_12: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand21-mono.ogg"
  , hand_13: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand15-mono.ogg"
  , hand_14: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand13-mono.ogg"
  , hand_15: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand4-mono.ogg"
  , hand_16: "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand1-mono.ogg"
  , future_0: "https://klank-share.s3.amazonaws.com/dirt-samples/future/002_Bd1_w.ogg"
  , future_1: "https://klank-share.s3.amazonaws.com/dirt-samples/future/005_Johnson.ogg"
  , future_2: "https://klank-share.s3.amazonaws.com/dirt-samples/future/004_Bd3_w.ogg"
  , future_3: "https://klank-share.s3.amazonaws.com/dirt-samples/future/003_Bd2_w.ogg"
  , future_4: "https://klank-share.s3.amazonaws.com/dirt-samples/future/010_MKDRCK06.ogg"
  , future_5: "https://klank-share.s3.amazonaws.com/dirt-samples/future/013_Shake2.ogg"
  , future_6: "https://klank-share.s3.amazonaws.com/dirt-samples/future/014_Shake4.ogg"
  , future_7: "https://klank-share.s3.amazonaws.com/dirt-samples/future/012_Mhhcf3.ogg"
  , future_8: "https://klank-share.s3.amazonaws.com/dirt-samples/future/006_Kick9.ogg"
  , future_9: "https://klank-share.s3.amazonaws.com/dirt-samples/future/015_lockett_conga_mute2.ogg"
  , future_10: "https://klank-share.s3.amazonaws.com/dirt-samples/future/016_lockett_conga_open1.ogg"
  , future_11: "https://klank-share.s3.amazonaws.com/dirt-samples/future/007_MKD03.ogg"
  , future_12: "https://klank-share.s3.amazonaws.com/dirt-samples/future/000_808KICK4.ogg"
  , future_13: "https://klank-share.s3.amazonaws.com/dirt-samples/future/001_808KICK9.ogg"
  , future_14: "https://klank-share.s3.amazonaws.com/dirt-samples/future/011_MKDRCK07.ogg"
  , future_15: "https://klank-share.s3.amazonaws.com/dirt-samples/future/009_MKDRCK05.ogg"
  , future_16: "https://klank-share.s3.amazonaws.com/dirt-samples/future/008_MKD60601.ogg"
  , hh_0: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/012_hh3snare2.ogg"
  , hh_1: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/010_hh3ride.ogg"
  , hh_2: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/007_hh3openhh.ogg"
  , hh_3: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/008_hh3rerc1.ogg"
  , hh_4: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/000_hh3closedhh.ogg"
  , hh_5: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/002_hh3hit1.ogg"
  , hh_6: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/004_hh3hit3.ogg"
  , hh_7: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/001_hh3crash.ogg"
  , hh_8: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/011_hh3snare1.ogg"
  , hh_9: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/003_hh3hit2.ogg"
  , hh_10: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/005_hh3kick1.ogg"
  , hh_11: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/006_hh3kick2.ogg"
  , hh_12: "https://klank-share.s3.amazonaws.com/dirt-samples/hh/009_hh3rerc2.ogg"
  , x_808ht_0: "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT10.ogg"
  , x_808ht_1: "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT50.ogg"
  , x_808ht_2: "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT00.ogg"
  , x_808ht_3: "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT25.ogg"
  , x_808ht_4: "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT75.ogg"
  , db_0: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12ride.ogg"
  , db_1: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12openhh.ogg"
  , db_2: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit3.ogg"
  , db_3: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12snare1.ogg"
  , db_4: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12perc2.ogg"
  , db_5: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12perc1.ogg"
  , db_6: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12kick1.ogg"
  , db_7: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12closedhh.ogg"
  , db_8: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12crash.ogg"
  , db_9: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit2.ogg"
  , db_10: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit1.ogg"
  , db_11: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12kick2.ogg"
  , db_12: "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12snare2.ogg"
  }