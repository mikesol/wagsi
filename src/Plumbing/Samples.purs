module WAGSI.Plumbing.Samples
  ( Samples
  , Sample
  , sampleToBuffers
  , urls
  , Note(..)
  , FoT
  , nameToSampleMNO
  , intentionalSilenceForInternalUseOnly__Sample
  , kicklinn_0__Sample
  , msg_0__Sample
  , msg_1__Sample
  , msg_2__Sample
  , msg_3__Sample
  , msg_4__Sample
  , msg_5__Sample
  , msg_6__Sample
  , msg_7__Sample
  , msg_8__Sample
  , gabbalouder_0__Sample
  , gabbalouder_1__Sample
  , gabbalouder_2__Sample
  , gabbalouder_3__Sample
  , kurt_0__Sample
  , kurt_1__Sample
  , kurt_2__Sample
  , kurt_3__Sample
  , kurt_4__Sample
  , kurt_5__Sample
  , kurt_6__Sample
  , bassdm_0__Sample
  , bassdm_1__Sample
  , bassdm_2__Sample
  , bassdm_3__Sample
  , bassdm_4__Sample
  , bassdm_5__Sample
  , bassdm_6__Sample
  , bassdm_7__Sample
  , bassdm_8__Sample
  , bassdm_9__Sample
  , bassdm_10__Sample
  , bassdm_11__Sample
  , bassdm_12__Sample
  , bassdm_13__Sample
  , bassdm_14__Sample
  , bassdm_15__Sample
  , bassdm_16__Sample
  , bassdm_17__Sample
  , bassdm_18__Sample
  , bassdm_19__Sample
  , bassdm_20__Sample
  , bassdm_21__Sample
  , bassdm_22__Sample
  , bassdm_23__Sample
  , tabla2_0__Sample
  , tabla2_1__Sample
  , tabla2_2__Sample
  , tabla2_3__Sample
  , tabla2_4__Sample
  , tabla2_5__Sample
  , tabla2_6__Sample
  , tabla2_7__Sample
  , tabla2_8__Sample
  , tabla2_9__Sample
  , tabla2_10__Sample
  , tabla2_11__Sample
  , tabla2_12__Sample
  , tabla2_13__Sample
  , tabla2_14__Sample
  , tabla2_15__Sample
  , tabla2_16__Sample
  , tabla2_17__Sample
  , tabla2_18__Sample
  , tabla2_19__Sample
  , tabla2_20__Sample
  , tabla2_21__Sample
  , tabla2_22__Sample
  , tabla2_23__Sample
  , tabla2_24__Sample
  , tabla2_25__Sample
  , tabla2_26__Sample
  , tabla2_27__Sample
  , tabla2_28__Sample
  , tabla2_29__Sample
  , tabla2_30__Sample
  , tabla2_31__Sample
  , tabla2_32__Sample
  , tabla2_33__Sample
  , tabla2_34__Sample
  , tabla2_35__Sample
  , tabla2_36__Sample
  , tabla2_37__Sample
  , tabla2_38__Sample
  , tabla2_39__Sample
  , tabla2_40__Sample
  , tabla2_41__Sample
  , tabla2_42__Sample
  , tabla2_43__Sample
  , tabla2_44__Sample
  , tabla2_45__Sample
  , chin_0__Sample
  , chin_1__Sample
  , chin_2__Sample
  , chin_3__Sample
  , mp3_0__Sample
  , mp3_1__Sample
  , mp3_2__Sample
  , mp3_3__Sample
  , tablex_0__Sample
  , tablex_1__Sample
  , tablex_2__Sample
  , sf_0__Sample
  , sf_1__Sample
  , sf_2__Sample
  , sf_3__Sample
  , sf_4__Sample
  , sf_5__Sample
  , sf_6__Sample
  , sf_7__Sample
  , sf_8__Sample
  , sf_9__Sample
  , sf_10__Sample
  , sf_11__Sample
  , sf_12__Sample
  , sf_13__Sample
  , sf_14__Sample
  , sf_15__Sample
  , sf_16__Sample
  , sf_17__Sample
  , speakspell_0__Sample
  , speakspell_1__Sample
  , speakspell_2__Sample
  , speakspell_3__Sample
  , speakspell_4__Sample
  , speakspell_5__Sample
  , speakspell_6__Sample
  , speakspell_7__Sample
  , speakspell_8__Sample
  , speakspell_9__Sample
  , speakspell_10__Sample
  , speakspell_11__Sample
  , cc_0__Sample
  , cc_1__Sample
  , cc_2__Sample
  , cc_3__Sample
  , cc_4__Sample
  , cc_5__Sample
  , gabbaloud_0__Sample
  , gabbaloud_1__Sample
  , gabbaloud_2__Sample
  , gabbaloud_3__Sample
  , ades2_0__Sample
  , ades2_1__Sample
  , ades2_2__Sample
  , ades2_3__Sample
  , ades2_4__Sample
  , ades2_5__Sample
  , ades2_6__Sample
  , ades2_7__Sample
  , ades2_8__Sample
  , space_0__Sample
  , space_1__Sample
  , space_2__Sample
  , space_3__Sample
  , space_4__Sample
  , space_5__Sample
  , space_6__Sample
  , space_7__Sample
  , space_8__Sample
  , space_9__Sample
  , space_10__Sample
  , space_11__Sample
  , space_12__Sample
  , space_13__Sample
  , space_14__Sample
  , space_15__Sample
  , space_16__Sample
  , space_17__Sample
  , battles_0__Sample
  , battles_1__Sample
  , voodoo_0__Sample
  , voodoo_1__Sample
  , voodoo_2__Sample
  , voodoo_3__Sample
  , voodoo_4__Sample
  , ravemono_0__Sample
  , ravemono_1__Sample
  , psr_0__Sample
  , psr_1__Sample
  , psr_2__Sample
  , psr_3__Sample
  , psr_4__Sample
  , psr_5__Sample
  , psr_6__Sample
  , psr_7__Sample
  , psr_8__Sample
  , psr_9__Sample
  , psr_10__Sample
  , psr_11__Sample
  , psr_12__Sample
  , psr_13__Sample
  , psr_14__Sample
  , psr_15__Sample
  , psr_16__Sample
  , psr_17__Sample
  , psr_18__Sample
  , psr_19__Sample
  , psr_20__Sample
  , psr_21__Sample
  , psr_22__Sample
  , psr_23__Sample
  , psr_24__Sample
  , psr_25__Sample
  , psr_26__Sample
  , psr_27__Sample
  , psr_28__Sample
  , psr_29__Sample
  , metal_0__Sample
  , metal_1__Sample
  , metal_2__Sample
  , metal_3__Sample
  , metal_4__Sample
  , metal_5__Sample
  , metal_6__Sample
  , metal_7__Sample
  , metal_8__Sample
  , metal_9__Sample
  , hardcore_0__Sample
  , hardcore_1__Sample
  , hardcore_2__Sample
  , hardcore_3__Sample
  , hardcore_4__Sample
  , hardcore_5__Sample
  , hardcore_6__Sample
  , hardcore_7__Sample
  , hardcore_8__Sample
  , hardcore_9__Sample
  , hardcore_10__Sample
  , hardcore_11__Sample
  , mouth_0__Sample
  , mouth_1__Sample
  , mouth_2__Sample
  , mouth_3__Sample
  , mouth_4__Sample
  , mouth_5__Sample
  , mouth_6__Sample
  , mouth_7__Sample
  , mouth_8__Sample
  , mouth_9__Sample
  , mouth_10__Sample
  , mouth_11__Sample
  , mouth_12__Sample
  , mouth_13__Sample
  , mouth_14__Sample
  , sugar_0__Sample
  , sugar_1__Sample
  , odx_0__Sample
  , odx_1__Sample
  , odx_2__Sample
  , odx_3__Sample
  , odx_4__Sample
  , odx_5__Sample
  , odx_6__Sample
  , odx_7__Sample
  , odx_8__Sample
  , odx_9__Sample
  , odx_10__Sample
  , odx_11__Sample
  , odx_12__Sample
  , odx_13__Sample
  , odx_14__Sample
  , x_808lc_0__Sample
  , x_808lc_1__Sample
  , x_808lc_2__Sample
  , x_808lc_3__Sample
  , x_808lc_4__Sample
  , mt_0__Sample
  , mt_1__Sample
  , mt_2__Sample
  , mt_3__Sample
  , mt_4__Sample
  , mt_5__Sample
  , mt_6__Sample
  , mt_7__Sample
  , mt_8__Sample
  , mt_9__Sample
  , mt_10__Sample
  , mt_11__Sample
  , mt_12__Sample
  , mt_13__Sample
  , mt_14__Sample
  , mt_15__Sample
  , drumtraks_0__Sample
  , drumtraks_1__Sample
  , drumtraks_2__Sample
  , drumtraks_3__Sample
  , drumtraks_4__Sample
  , drumtraks_5__Sample
  , drumtraks_6__Sample
  , drumtraks_7__Sample
  , drumtraks_8__Sample
  , drumtraks_9__Sample
  , drumtraks_10__Sample
  , drumtraks_11__Sample
  , drumtraks_12__Sample
  , print_0__Sample
  , print_1__Sample
  , print_2__Sample
  , print_3__Sample
  , print_4__Sample
  , print_5__Sample
  , print_6__Sample
  , print_7__Sample
  , print_8__Sample
  , print_9__Sample
  , print_10__Sample
  , blip_0__Sample
  , blip_1__Sample
  , wobble_0__Sample
  , made_0__Sample
  , made_1__Sample
  , made_2__Sample
  , made_3__Sample
  , made_4__Sample
  , made_5__Sample
  , made_6__Sample
  , bass3_0__Sample
  , bass3_1__Sample
  , bass3_2__Sample
  , bass3_3__Sample
  , bass3_4__Sample
  , bass3_5__Sample
  , bass3_6__Sample
  , bass3_7__Sample
  , bass3_8__Sample
  , bass3_9__Sample
  , bass3_10__Sample
  , speechless_0__Sample
  , speechless_1__Sample
  , speechless_2__Sample
  , speechless_3__Sample
  , speechless_4__Sample
  , speechless_5__Sample
  , speechless_6__Sample
  , speechless_7__Sample
  , speechless_8__Sample
  , speechless_9__Sample
  , sine_0__Sample
  , sine_1__Sample
  , sine_2__Sample
  , sine_3__Sample
  , sine_4__Sample
  , sine_5__Sample
  , noise_0__Sample
  , x_808lt_0__Sample
  , x_808lt_1__Sample
  , x_808lt_2__Sample
  , x_808lt_3__Sample
  , x_808lt_4__Sample
  , sd_0__Sample
  , sd_1__Sample
  , alphabet_0__Sample
  , alphabet_1__Sample
  , alphabet_2__Sample
  , alphabet_3__Sample
  , alphabet_4__Sample
  , alphabet_5__Sample
  , alphabet_6__Sample
  , alphabet_7__Sample
  , alphabet_8__Sample
  , alphabet_9__Sample
  , alphabet_10__Sample
  , alphabet_11__Sample
  , alphabet_12__Sample
  , alphabet_13__Sample
  , alphabet_14__Sample
  , alphabet_15__Sample
  , alphabet_16__Sample
  , alphabet_17__Sample
  , alphabet_18__Sample
  , alphabet_19__Sample
  , alphabet_20__Sample
  , alphabet_21__Sample
  , alphabet_22__Sample
  , alphabet_23__Sample
  , alphabet_24__Sample
  , alphabet_25__Sample
  , baa2_0__Sample
  , baa2_1__Sample
  , baa2_2__Sample
  , baa2_3__Sample
  , baa2_4__Sample
  , baa2_5__Sample
  , baa2_6__Sample
  , tok_0__Sample
  , tok_1__Sample
  , tok_2__Sample
  , tok_3__Sample
  , ades3_0__Sample
  , ades3_1__Sample
  , ades3_2__Sample
  , ades3_3__Sample
  , ades3_4__Sample
  , ades3_5__Sample
  , ades3_6__Sample
  , x_909_0__Sample
  , sid_0__Sample
  , sid_1__Sample
  , sid_2__Sample
  , sid_3__Sample
  , sid_4__Sample
  , sid_5__Sample
  , sid_6__Sample
  , sid_7__Sample
  , sid_8__Sample
  , sid_9__Sample
  , sid_10__Sample
  , sid_11__Sample
  , jungbass_0__Sample
  , jungbass_1__Sample
  , jungbass_2__Sample
  , jungbass_3__Sample
  , jungbass_4__Sample
  , jungbass_5__Sample
  , jungbass_6__Sample
  , jungbass_7__Sample
  , jungbass_8__Sample
  , jungbass_9__Sample
  , jungbass_10__Sample
  , jungbass_11__Sample
  , jungbass_12__Sample
  , jungbass_13__Sample
  , jungbass_14__Sample
  , jungbass_15__Sample
  , jungbass_16__Sample
  , jungbass_17__Sample
  , jungbass_18__Sample
  , jungbass_19__Sample
  , gabba_0__Sample
  , gabba_1__Sample
  , gabba_2__Sample
  , gabba_3__Sample
  , crow_0__Sample
  , crow_1__Sample
  , crow_2__Sample
  , crow_3__Sample
  , birds3_0__Sample
  , birds3_1__Sample
  , birds3_2__Sample
  , birds3_3__Sample
  , birds3_4__Sample
  , birds3_5__Sample
  , birds3_6__Sample
  , birds3_7__Sample
  , birds3_8__Sample
  , birds3_9__Sample
  , birds3_10__Sample
  , birds3_11__Sample
  , birds3_12__Sample
  , birds3_13__Sample
  , birds3_14__Sample
  , birds3_15__Sample
  , birds3_16__Sample
  , birds3_17__Sample
  , birds3_18__Sample
  , auto_0__Sample
  , auto_1__Sample
  , auto_2__Sample
  , auto_3__Sample
  , auto_4__Sample
  , auto_5__Sample
  , auto_6__Sample
  , auto_7__Sample
  , auto_8__Sample
  , auto_9__Sample
  , auto_10__Sample
  , mute_0__Sample
  , mute_1__Sample
  , mute_2__Sample
  , mute_3__Sample
  , mute_4__Sample
  , mute_5__Sample
  , mute_6__Sample
  , mute_7__Sample
  , mute_8__Sample
  , mute_9__Sample
  , mute_10__Sample
  , mute_11__Sample
  , mute_12__Sample
  , mute_13__Sample
  , mute_14__Sample
  , mute_15__Sample
  , mute_16__Sample
  , mute_17__Sample
  , mute_18__Sample
  , mute_19__Sample
  , mute_20__Sample
  , mute_21__Sample
  , mute_22__Sample
  , mute_23__Sample
  , mute_24__Sample
  , mute_25__Sample
  , mute_26__Sample
  , mute_27__Sample
  , sheffield_0__Sample
  , casio_0__Sample
  , casio_1__Sample
  , casio_2__Sample
  , sax_0__Sample
  , sax_1__Sample
  , sax_2__Sample
  , sax_3__Sample
  , sax_4__Sample
  , sax_5__Sample
  , sax_6__Sample
  , sax_7__Sample
  , sax_8__Sample
  , sax_9__Sample
  , sax_10__Sample
  , sax_11__Sample
  , sax_12__Sample
  , sax_13__Sample
  , sax_14__Sample
  , sax_15__Sample
  , sax_16__Sample
  , sax_17__Sample
  , sax_18__Sample
  , sax_19__Sample
  , sax_20__Sample
  , sax_21__Sample
  , circus_0__Sample
  , circus_1__Sample
  , circus_2__Sample
  , yeah_0__Sample
  , yeah_1__Sample
  , yeah_2__Sample
  , yeah_3__Sample
  , yeah_4__Sample
  , yeah_5__Sample
  , yeah_6__Sample
  , yeah_7__Sample
  , yeah_8__Sample
  , yeah_9__Sample
  , yeah_10__Sample
  , yeah_11__Sample
  , yeah_12__Sample
  , yeah_13__Sample
  , yeah_14__Sample
  , yeah_15__Sample
  , yeah_16__Sample
  , yeah_17__Sample
  , yeah_18__Sample
  , yeah_19__Sample
  , yeah_20__Sample
  , yeah_21__Sample
  , yeah_22__Sample
  , yeah_23__Sample
  , yeah_24__Sample
  , yeah_25__Sample
  , yeah_26__Sample
  , yeah_27__Sample
  , yeah_28__Sample
  , yeah_29__Sample
  , yeah_30__Sample
  , oc_0__Sample
  , oc_1__Sample
  , oc_2__Sample
  , oc_3__Sample
  , alex_0__Sample
  , alex_1__Sample
  , can_0__Sample
  , can_1__Sample
  , can_2__Sample
  , can_3__Sample
  , can_4__Sample
  , can_5__Sample
  , can_6__Sample
  , can_7__Sample
  , can_8__Sample
  , can_9__Sample
  , can_10__Sample
  , can_11__Sample
  , can_12__Sample
  , can_13__Sample
  , jungle_0__Sample
  , jungle_1__Sample
  , jungle_2__Sample
  , jungle_3__Sample
  , jungle_4__Sample
  , jungle_5__Sample
  , jungle_6__Sample
  , jungle_7__Sample
  , jungle_8__Sample
  , jungle_9__Sample
  , jungle_10__Sample
  , jungle_11__Sample
  , jungle_12__Sample
  , moog_0__Sample
  , moog_1__Sample
  , moog_2__Sample
  , moog_3__Sample
  , moog_4__Sample
  , moog_5__Sample
  , moog_6__Sample
  , h_0__Sample
  , h_1__Sample
  , h_2__Sample
  , h_3__Sample
  , h_4__Sample
  , h_5__Sample
  , h_6__Sample
  , wind_0__Sample
  , wind_1__Sample
  , wind_2__Sample
  , wind_3__Sample
  , wind_4__Sample
  , wind_5__Sample
  , wind_6__Sample
  , wind_7__Sample
  , wind_8__Sample
  , wind_9__Sample
  , rs_0__Sample
  , em2_0__Sample
  , em2_1__Sample
  , em2_2__Sample
  , em2_3__Sample
  , em2_4__Sample
  , em2_5__Sample
  , noise2_0__Sample
  , noise2_1__Sample
  , noise2_2__Sample
  , noise2_3__Sample
  , noise2_4__Sample
  , noise2_5__Sample
  , noise2_6__Sample
  , noise2_7__Sample
  , foo_0__Sample
  , foo_1__Sample
  , foo_2__Sample
  , foo_3__Sample
  , foo_4__Sample
  , foo_5__Sample
  , foo_6__Sample
  , foo_7__Sample
  , foo_8__Sample
  , foo_9__Sample
  , foo_10__Sample
  , foo_11__Sample
  , foo_12__Sample
  , foo_13__Sample
  , foo_14__Sample
  , foo_15__Sample
  , foo_16__Sample
  , foo_17__Sample
  , foo_18__Sample
  , foo_19__Sample
  , foo_20__Sample
  , foo_21__Sample
  , foo_22__Sample
  , foo_23__Sample
  , foo_24__Sample
  , foo_25__Sample
  , foo_26__Sample
  , armora_0__Sample
  , armora_1__Sample
  , armora_2__Sample
  , armora_3__Sample
  , armora_4__Sample
  , armora_5__Sample
  , armora_6__Sample
  , bend_0__Sample
  , bend_1__Sample
  , bend_2__Sample
  , bend_3__Sample
  , newnotes_0__Sample
  , newnotes_1__Sample
  , newnotes_2__Sample
  , newnotes_3__Sample
  , newnotes_4__Sample
  , newnotes_5__Sample
  , newnotes_6__Sample
  , newnotes_7__Sample
  , newnotes_8__Sample
  , newnotes_9__Sample
  , newnotes_10__Sample
  , newnotes_11__Sample
  , newnotes_12__Sample
  , newnotes_13__Sample
  , newnotes_14__Sample
  , pebbles_0__Sample
  , mash2_0__Sample
  , mash2_1__Sample
  , mash2_2__Sample
  , mash2_3__Sample
  , diphone2_0__Sample
  , diphone2_1__Sample
  , diphone2_2__Sample
  , diphone2_3__Sample
  , diphone2_4__Sample
  , diphone2_5__Sample
  , diphone2_6__Sample
  , diphone2_7__Sample
  , diphone2_8__Sample
  , diphone2_9__Sample
  , diphone2_10__Sample
  , diphone2_11__Sample
  , e_0__Sample
  , e_1__Sample
  , e_2__Sample
  , e_3__Sample
  , e_4__Sample
  , e_5__Sample
  , e_6__Sample
  , e_7__Sample
  , bubble_0__Sample
  , bubble_1__Sample
  , bubble_2__Sample
  , bubble_3__Sample
  , bubble_4__Sample
  , bubble_5__Sample
  , bubble_6__Sample
  , bubble_7__Sample
  , insect_0__Sample
  , insect_1__Sample
  , insect_2__Sample
  , ade_0__Sample
  , ade_1__Sample
  , ade_2__Sample
  , ade_3__Sample
  , ade_4__Sample
  , ade_5__Sample
  , ade_6__Sample
  , ade_7__Sample
  , ade_8__Sample
  , ade_9__Sample
  , glitch_0__Sample
  , glitch_1__Sample
  , glitch_2__Sample
  , glitch_3__Sample
  , glitch_4__Sample
  , glitch_5__Sample
  , glitch_6__Sample
  , glitch_7__Sample
  , haw_0__Sample
  , haw_1__Sample
  , haw_2__Sample
  , haw_3__Sample
  , haw_4__Sample
  , haw_5__Sample
  , popkick_0__Sample
  , popkick_1__Sample
  , popkick_2__Sample
  , popkick_3__Sample
  , popkick_4__Sample
  , popkick_5__Sample
  , popkick_6__Sample
  , popkick_7__Sample
  , popkick_8__Sample
  , popkick_9__Sample
  , breaks157_0__Sample
  , gtr_0__Sample
  , gtr_1__Sample
  , gtr_2__Sample
  , clubkick_0__Sample
  , clubkick_1__Sample
  , clubkick_2__Sample
  , clubkick_3__Sample
  , clubkick_4__Sample
  , breaks152_0__Sample
  , x_808bd_0__Sample
  , x_808bd_1__Sample
  , x_808bd_2__Sample
  , x_808bd_3__Sample
  , x_808bd_4__Sample
  , x_808bd_5__Sample
  , x_808bd_6__Sample
  , x_808bd_7__Sample
  , x_808bd_8__Sample
  , x_808bd_9__Sample
  , x_808bd_10__Sample
  , x_808bd_11__Sample
  , x_808bd_12__Sample
  , x_808bd_13__Sample
  , x_808bd_14__Sample
  , x_808bd_15__Sample
  , x_808bd_16__Sample
  , x_808bd_17__Sample
  , x_808bd_18__Sample
  , x_808bd_19__Sample
  , x_808bd_20__Sample
  , x_808bd_21__Sample
  , x_808bd_22__Sample
  , x_808bd_23__Sample
  , x_808bd_24__Sample
  , miniyeah_0__Sample
  , miniyeah_1__Sample
  , miniyeah_2__Sample
  , miniyeah_3__Sample
  , if_0__Sample
  , if_1__Sample
  , if_2__Sample
  , if_3__Sample
  , if_4__Sample
  , x_808oh_0__Sample
  , x_808oh_1__Sample
  , x_808oh_2__Sample
  , x_808oh_3__Sample
  , x_808oh_4__Sample
  , house_0__Sample
  , house_1__Sample
  , house_2__Sample
  , house_3__Sample
  , house_4__Sample
  , house_5__Sample
  , house_6__Sample
  , house_7__Sample
  , dr_0__Sample
  , dr_1__Sample
  , dr_2__Sample
  , dr_3__Sample
  , dr_4__Sample
  , dr_5__Sample
  , dr_6__Sample
  , dr_7__Sample
  , dr_8__Sample
  , dr_9__Sample
  , dr_10__Sample
  , dr_11__Sample
  , dr_12__Sample
  , dr_13__Sample
  , dr_14__Sample
  , dr_15__Sample
  , dr_16__Sample
  , dr_17__Sample
  , dr_18__Sample
  , dr_19__Sample
  , dr_20__Sample
  , dr_21__Sample
  , dr_22__Sample
  , dr_23__Sample
  , dr_24__Sample
  , dr_25__Sample
  , dr_26__Sample
  , dr_27__Sample
  , dr_28__Sample
  , dr_29__Sample
  , dr_30__Sample
  , dr_31__Sample
  , dr_32__Sample
  , dr_33__Sample
  , dr_34__Sample
  , dr_35__Sample
  , dr_36__Sample
  , dr_37__Sample
  , dr_38__Sample
  , dr_39__Sample
  , dr_40__Sample
  , dr_41__Sample
  , dr55_0__Sample
  , dr55_1__Sample
  , dr55_2__Sample
  , dr55_3__Sample
  , bass_0__Sample
  , bass_1__Sample
  , bass_2__Sample
  , bass_3__Sample
  , ho_0__Sample
  , ho_1__Sample
  , ho_2__Sample
  , ho_3__Sample
  , ho_4__Sample
  , ho_5__Sample
  , hardkick_0__Sample
  , hardkick_1__Sample
  , hardkick_2__Sample
  , hardkick_3__Sample
  , hardkick_4__Sample
  , hardkick_5__Sample
  , x_808hc_0__Sample
  , x_808hc_1__Sample
  , x_808hc_2__Sample
  , x_808hc_3__Sample
  , x_808hc_4__Sample
  , hit_0__Sample
  , hit_1__Sample
  , hit_2__Sample
  , hit_3__Sample
  , hit_4__Sample
  , hit_5__Sample
  , breaks165_0__Sample
  , dr2_0__Sample
  , dr2_1__Sample
  , dr2_2__Sample
  , dr2_3__Sample
  , dr2_4__Sample
  , dr2_5__Sample
  , tabla_0__Sample
  , tabla_1__Sample
  , tabla_2__Sample
  , tabla_3__Sample
  , tabla_4__Sample
  , tabla_5__Sample
  , tabla_6__Sample
  , tabla_7__Sample
  , tabla_8__Sample
  , tabla_9__Sample
  , tabla_10__Sample
  , tabla_11__Sample
  , tabla_12__Sample
  , tabla_13__Sample
  , tabla_14__Sample
  , tabla_15__Sample
  , tabla_16__Sample
  , tabla_17__Sample
  , tabla_18__Sample
  , tabla_19__Sample
  , tabla_20__Sample
  , tabla_21__Sample
  , tabla_22__Sample
  , tabla_23__Sample
  , tabla_24__Sample
  , tabla_25__Sample
  , dork2_0__Sample
  , dork2_1__Sample
  , dork2_2__Sample
  , dork2_3__Sample
  , hc_0__Sample
  , hc_1__Sample
  , hc_2__Sample
  , hc_3__Sample
  , hc_4__Sample
  , hc_5__Sample
  , bassfoo_0__Sample
  , bassfoo_1__Sample
  , bassfoo_2__Sample
  , seawolf_0__Sample
  , seawolf_1__Sample
  , seawolf_2__Sample
  , cp_0__Sample
  , cp_1__Sample
  , jazz_0__Sample
  , jazz_1__Sample
  , jazz_2__Sample
  , jazz_3__Sample
  , jazz_4__Sample
  , jazz_5__Sample
  , jazz_6__Sample
  , jazz_7__Sample
  , juno_0__Sample
  , juno_1__Sample
  , juno_2__Sample
  , juno_3__Sample
  , juno_4__Sample
  , juno_5__Sample
  , juno_6__Sample
  , juno_7__Sample
  , juno_8__Sample
  , juno_9__Sample
  , juno_10__Sample
  , juno_11__Sample
  , birds_0__Sample
  , birds_1__Sample
  , birds_2__Sample
  , birds_3__Sample
  , birds_4__Sample
  , birds_5__Sample
  , birds_6__Sample
  , birds_7__Sample
  , birds_8__Sample
  , birds_9__Sample
  , glasstap_0__Sample
  , glasstap_1__Sample
  , glasstap_2__Sample
  , bass1_0__Sample
  , bass1_1__Sample
  , bass1_2__Sample
  , bass1_3__Sample
  , bass1_4__Sample
  , bass1_5__Sample
  , bass1_6__Sample
  , bass1_7__Sample
  , bass1_8__Sample
  , bass1_9__Sample
  , bass1_10__Sample
  , bass1_11__Sample
  , bass1_12__Sample
  , bass1_13__Sample
  , bass1_14__Sample
  , bass1_15__Sample
  , bass1_16__Sample
  , bass1_17__Sample
  , bass1_18__Sample
  , bass1_19__Sample
  , bass1_20__Sample
  , bass1_21__Sample
  , bass1_22__Sample
  , bass1_23__Sample
  , bass1_24__Sample
  , bass1_25__Sample
  , bass1_26__Sample
  , bass1_27__Sample
  , bass1_28__Sample
  , bass1_29__Sample
  , hh27_0__Sample
  , hh27_1__Sample
  , hh27_2__Sample
  , hh27_3__Sample
  , hh27_4__Sample
  , hh27_5__Sample
  , hh27_6__Sample
  , hh27_7__Sample
  , hh27_8__Sample
  , hh27_9__Sample
  , hh27_10__Sample
  , hh27_11__Sample
  , hh27_12__Sample
  , x_808_0__Sample
  , x_808_1__Sample
  , x_808_2__Sample
  , x_808_3__Sample
  , x_808_4__Sample
  , x_808_5__Sample
  , notes_0__Sample
  , notes_1__Sample
  , notes_2__Sample
  , notes_3__Sample
  , notes_4__Sample
  , notes_5__Sample
  , notes_6__Sample
  , notes_7__Sample
  , notes_8__Sample
  , notes_9__Sample
  , notes_10__Sample
  , notes_11__Sample
  , notes_12__Sample
  , notes_13__Sample
  , notes_14__Sample
  , xmas_0__Sample
  , erk_0__Sample
  , x_808mt_0__Sample
  , x_808mt_1__Sample
  , x_808mt_2__Sample
  , x_808mt_3__Sample
  , x_808mt_4__Sample
  , lighter_0__Sample
  , lighter_1__Sample
  , lighter_2__Sample
  , lighter_3__Sample
  , lighter_4__Sample
  , lighter_5__Sample
  , lighter_6__Sample
  , lighter_7__Sample
  , lighter_8__Sample
  , lighter_9__Sample
  , lighter_10__Sample
  , lighter_11__Sample
  , lighter_12__Sample
  , lighter_13__Sample
  , lighter_14__Sample
  , lighter_15__Sample
  , lighter_16__Sample
  , lighter_17__Sample
  , lighter_18__Sample
  , lighter_19__Sample
  , lighter_20__Sample
  , lighter_21__Sample
  , lighter_22__Sample
  , lighter_23__Sample
  , lighter_24__Sample
  , lighter_25__Sample
  , lighter_26__Sample
  , lighter_27__Sample
  , lighter_28__Sample
  , lighter_29__Sample
  , lighter_30__Sample
  , lighter_31__Sample
  , lighter_32__Sample
  , cb_0__Sample
  , subroc3d_0__Sample
  , subroc3d_1__Sample
  , subroc3d_2__Sample
  , subroc3d_3__Sample
  , subroc3d_4__Sample
  , subroc3d_5__Sample
  , subroc3d_6__Sample
  , subroc3d_7__Sample
  , subroc3d_8__Sample
  , subroc3d_9__Sample
  , subroc3d_10__Sample
  , ul_0__Sample
  , ul_1__Sample
  , ul_2__Sample
  , ul_3__Sample
  , ul_4__Sample
  , ul_5__Sample
  , ul_6__Sample
  , ul_7__Sample
  , ul_8__Sample
  , ul_9__Sample
  , gab_0__Sample
  , gab_1__Sample
  , gab_2__Sample
  , gab_3__Sample
  , gab_4__Sample
  , gab_5__Sample
  , gab_6__Sample
  , gab_7__Sample
  , gab_8__Sample
  , gab_9__Sample
  , monsterb_0__Sample
  , monsterb_1__Sample
  , monsterb_2__Sample
  , monsterb_3__Sample
  , monsterb_4__Sample
  , monsterb_5__Sample
  , diphone_0__Sample
  , diphone_1__Sample
  , diphone_2__Sample
  , diphone_3__Sample
  , diphone_4__Sample
  , diphone_5__Sample
  , diphone_6__Sample
  , diphone_7__Sample
  , diphone_8__Sample
  , diphone_9__Sample
  , diphone_10__Sample
  , diphone_11__Sample
  , diphone_12__Sample
  , diphone_13__Sample
  , diphone_14__Sample
  , diphone_15__Sample
  , diphone_16__Sample
  , diphone_17__Sample
  , diphone_18__Sample
  , diphone_19__Sample
  , diphone_20__Sample
  , diphone_21__Sample
  , diphone_22__Sample
  , diphone_23__Sample
  , diphone_24__Sample
  , diphone_25__Sample
  , diphone_26__Sample
  , diphone_27__Sample
  , diphone_28__Sample
  , diphone_29__Sample
  , diphone_30__Sample
  , diphone_31__Sample
  , diphone_32__Sample
  , diphone_33__Sample
  , diphone_34__Sample
  , diphone_35__Sample
  , diphone_36__Sample
  , diphone_37__Sample
  , clak_0__Sample
  , clak_1__Sample
  , sitar_0__Sample
  , sitar_1__Sample
  , sitar_2__Sample
  , sitar_3__Sample
  , sitar_4__Sample
  , sitar_5__Sample
  , sitar_6__Sample
  , sitar_7__Sample
  , ab_0__Sample
  , ab_1__Sample
  , ab_2__Sample
  , ab_3__Sample
  , ab_4__Sample
  , ab_5__Sample
  , ab_6__Sample
  , ab_7__Sample
  , ab_8__Sample
  , ab_9__Sample
  , ab_10__Sample
  , ab_11__Sample
  , cr_0__Sample
  , cr_1__Sample
  , cr_2__Sample
  , cr_3__Sample
  , cr_4__Sample
  , cr_5__Sample
  , tacscan_0__Sample
  , tacscan_1__Sample
  , tacscan_2__Sample
  , tacscan_3__Sample
  , tacscan_4__Sample
  , tacscan_5__Sample
  , tacscan_6__Sample
  , tacscan_7__Sample
  , tacscan_8__Sample
  , tacscan_9__Sample
  , tacscan_10__Sample
  , tacscan_11__Sample
  , tacscan_12__Sample
  , tacscan_13__Sample
  , tacscan_14__Sample
  , tacscan_15__Sample
  , tacscan_16__Sample
  , tacscan_17__Sample
  , tacscan_18__Sample
  , tacscan_19__Sample
  , tacscan_20__Sample
  , tacscan_21__Sample
  , v_0__Sample
  , v_1__Sample
  , v_2__Sample
  , v_3__Sample
  , v_4__Sample
  , v_5__Sample
  , bd_0__Sample
  , bd_1__Sample
  , bd_2__Sample
  , bd_3__Sample
  , bd_4__Sample
  , bd_5__Sample
  , bd_6__Sample
  , bd_7__Sample
  , bd_8__Sample
  , bd_9__Sample
  , bd_10__Sample
  , bd_11__Sample
  , bd_12__Sample
  , bd_13__Sample
  , bd_14__Sample
  , bd_15__Sample
  , bd_16__Sample
  , bd_17__Sample
  , bd_18__Sample
  , bd_19__Sample
  , bd_20__Sample
  , bd_21__Sample
  , bd_22__Sample
  , bd_23__Sample
  , rm_0__Sample
  , rm_1__Sample
  , blue_0__Sample
  , blue_1__Sample
  , latibro_0__Sample
  , latibro_1__Sample
  , latibro_2__Sample
  , latibro_3__Sample
  , latibro_4__Sample
  , latibro_5__Sample
  , latibro_6__Sample
  , latibro_7__Sample
  , dr_few_0__Sample
  , dr_few_1__Sample
  , dr_few_2__Sample
  , dr_few_3__Sample
  , dr_few_4__Sample
  , dr_few_5__Sample
  , dr_few_6__Sample
  , dr_few_7__Sample
  , rave2_0__Sample
  , rave2_1__Sample
  , rave2_2__Sample
  , rave2_3__Sample
  , rave2_4__Sample
  , rave2_5__Sample
  , koy_0__Sample
  , koy_1__Sample
  , glitch2_0__Sample
  , glitch2_1__Sample
  , glitch2_2__Sample
  , glitch2_3__Sample
  , glitch2_4__Sample
  , glitch2_5__Sample
  , glitch2_6__Sample
  , glitch2_7__Sample
  , hmm_0__Sample
  , arp_0__Sample
  , arp_1__Sample
  , made2_0__Sample
  , uxay_0__Sample
  , uxay_1__Sample
  , uxay_2__Sample
  , stomp_0__Sample
  , stomp_1__Sample
  , stomp_2__Sample
  , stomp_3__Sample
  , stomp_4__Sample
  , stomp_5__Sample
  , stomp_6__Sample
  , stomp_7__Sample
  , stomp_8__Sample
  , stomp_9__Sample
  , tech_0__Sample
  , tech_1__Sample
  , tech_2__Sample
  , tech_3__Sample
  , tech_4__Sample
  , tech_5__Sample
  , tech_6__Sample
  , tech_7__Sample
  , tech_8__Sample
  , tech_9__Sample
  , tech_10__Sample
  , tech_11__Sample
  , tech_12__Sample
  , sn_0__Sample
  , sn_1__Sample
  , sn_2__Sample
  , sn_3__Sample
  , sn_4__Sample
  , sn_5__Sample
  , sn_6__Sample
  , sn_7__Sample
  , sn_8__Sample
  , sn_9__Sample
  , sn_10__Sample
  , sn_11__Sample
  , sn_12__Sample
  , sn_13__Sample
  , sn_14__Sample
  , sn_15__Sample
  , sn_16__Sample
  , sn_17__Sample
  , sn_18__Sample
  , sn_19__Sample
  , sn_20__Sample
  , sn_21__Sample
  , sn_22__Sample
  , sn_23__Sample
  , sn_24__Sample
  , sn_25__Sample
  , sn_26__Sample
  , sn_27__Sample
  , sn_28__Sample
  , sn_29__Sample
  , sn_30__Sample
  , sn_31__Sample
  , sn_32__Sample
  , sn_33__Sample
  , sn_34__Sample
  , sn_35__Sample
  , sn_36__Sample
  , sn_37__Sample
  , sn_38__Sample
  , sn_39__Sample
  , sn_40__Sample
  , sn_41__Sample
  , sn_42__Sample
  , sn_43__Sample
  , sn_44__Sample
  , sn_45__Sample
  , sn_46__Sample
  , sn_47__Sample
  , sn_48__Sample
  , sn_49__Sample
  , sn_50__Sample
  , sn_51__Sample
  , less_0__Sample
  , less_1__Sample
  , less_2__Sample
  , less_3__Sample
  , off_0__Sample
  , x_808sd_0__Sample
  , x_808sd_1__Sample
  , x_808sd_2__Sample
  , x_808sd_3__Sample
  , x_808sd_4__Sample
  , x_808sd_5__Sample
  , x_808sd_6__Sample
  , x_808sd_7__Sample
  , x_808sd_8__Sample
  , x_808sd_9__Sample
  , x_808sd_10__Sample
  , x_808sd_11__Sample
  , x_808sd_12__Sample
  , x_808sd_13__Sample
  , x_808sd_14__Sample
  , x_808sd_15__Sample
  , x_808sd_16__Sample
  , x_808sd_17__Sample
  , x_808sd_18__Sample
  , x_808sd_19__Sample
  , x_808sd_20__Sample
  , x_808sd_21__Sample
  , x_808sd_22__Sample
  , x_808sd_23__Sample
  , x_808sd_24__Sample
  , trump_0__Sample
  , trump_1__Sample
  , trump_2__Sample
  , trump_3__Sample
  , trump_4__Sample
  , trump_5__Sample
  , trump_6__Sample
  , trump_7__Sample
  , trump_8__Sample
  , trump_9__Sample
  , trump_10__Sample
  , bev_0__Sample
  , bev_1__Sample
  , pad_0__Sample
  , pad_1__Sample
  , pad_2__Sample
  , led_0__Sample
  , perc_0__Sample
  , perc_1__Sample
  , perc_2__Sample
  , perc_3__Sample
  , perc_4__Sample
  , perc_5__Sample
  , pluck_0__Sample
  , pluck_1__Sample
  , pluck_2__Sample
  , pluck_3__Sample
  , pluck_4__Sample
  , pluck_5__Sample
  , pluck_6__Sample
  , pluck_7__Sample
  , pluck_8__Sample
  , pluck_9__Sample
  , pluck_10__Sample
  , pluck_11__Sample
  , pluck_12__Sample
  , pluck_13__Sample
  , pluck_14__Sample
  , pluck_15__Sample
  , pluck_16__Sample
  , bleep_0__Sample
  , bleep_1__Sample
  , bleep_2__Sample
  , bleep_3__Sample
  , bleep_4__Sample
  , bleep_5__Sample
  , bleep_6__Sample
  , bleep_7__Sample
  , bleep_8__Sample
  , bleep_9__Sample
  , bleep_10__Sample
  , bleep_11__Sample
  , bleep_12__Sample
  , ht_0__Sample
  , ht_1__Sample
  , ht_2__Sample
  , ht_3__Sample
  , ht_4__Sample
  , ht_5__Sample
  , ht_6__Sample
  , ht_7__Sample
  , ht_8__Sample
  , ht_9__Sample
  , ht_10__Sample
  , ht_11__Sample
  , ht_12__Sample
  , ht_13__Sample
  , ht_14__Sample
  , ht_15__Sample
  , ades4_0__Sample
  , ades4_1__Sample
  , ades4_2__Sample
  , ades4_3__Sample
  , ades4_4__Sample
  , ades4_5__Sample
  , proc_0__Sample
  , proc_1__Sample
  , gretsch_0__Sample
  , gretsch_1__Sample
  , gretsch_2__Sample
  , gretsch_3__Sample
  , gretsch_4__Sample
  , gretsch_5__Sample
  , gretsch_6__Sample
  , gretsch_7__Sample
  , gretsch_8__Sample
  , gretsch_9__Sample
  , gretsch_10__Sample
  , gretsch_11__Sample
  , gretsch_12__Sample
  , gretsch_13__Sample
  , gretsch_14__Sample
  , gretsch_15__Sample
  , gretsch_16__Sample
  , gretsch_17__Sample
  , gretsch_18__Sample
  , gretsch_19__Sample
  , gretsch_20__Sample
  , gretsch_21__Sample
  , gretsch_22__Sample
  , gretsch_23__Sample
  , outdoor_0__Sample
  , outdoor_1__Sample
  , outdoor_2__Sample
  , outdoor_3__Sample
  , outdoor_4__Sample
  , outdoor_5__Sample
  , techno_0__Sample
  , techno_1__Sample
  , techno_2__Sample
  , techno_3__Sample
  , techno_4__Sample
  , techno_5__Sample
  , techno_6__Sample
  , ulgab_0__Sample
  , ulgab_1__Sample
  , ulgab_2__Sample
  , ulgab_3__Sample
  , ulgab_4__Sample
  , breaks125_0__Sample
  , breaks125_1__Sample
  , bin_0__Sample
  , bin_1__Sample
  , x_808mc_0__Sample
  , x_808mc_1__Sample
  , x_808mc_2__Sample
  , x_808mc_3__Sample
  , x_808mc_4__Sample
  , lt_0__Sample
  , lt_1__Sample
  , lt_2__Sample
  , lt_3__Sample
  , lt_4__Sample
  , lt_5__Sample
  , lt_6__Sample
  , lt_7__Sample
  , lt_8__Sample
  , lt_9__Sample
  , lt_10__Sample
  , lt_11__Sample
  , lt_12__Sample
  , lt_13__Sample
  , lt_14__Sample
  , lt_15__Sample
  , amencutup_0__Sample
  , amencutup_1__Sample
  , amencutup_2__Sample
  , amencutup_3__Sample
  , amencutup_4__Sample
  , amencutup_5__Sample
  , amencutup_6__Sample
  , amencutup_7__Sample
  , amencutup_8__Sample
  , amencutup_9__Sample
  , amencutup_10__Sample
  , amencutup_11__Sample
  , amencutup_12__Sample
  , amencutup_13__Sample
  , amencutup_14__Sample
  , amencutup_15__Sample
  , amencutup_16__Sample
  , amencutup_17__Sample
  , amencutup_18__Sample
  , amencutup_19__Sample
  , amencutup_20__Sample
  , amencutup_21__Sample
  , amencutup_22__Sample
  , amencutup_23__Sample
  , amencutup_24__Sample
  , amencutup_25__Sample
  , amencutup_26__Sample
  , amencutup_27__Sample
  , amencutup_28__Sample
  , amencutup_29__Sample
  , amencutup_30__Sample
  , amencutup_31__Sample
  , drum_0__Sample
  , drum_1__Sample
  , drum_2__Sample
  , drum_3__Sample
  , drum_4__Sample
  , drum_5__Sample
  , coins_0__Sample
  , industrial_0__Sample
  , industrial_1__Sample
  , industrial_2__Sample
  , industrial_3__Sample
  , industrial_4__Sample
  , industrial_5__Sample
  , industrial_6__Sample
  , industrial_7__Sample
  , industrial_8__Sample
  , industrial_9__Sample
  , industrial_10__Sample
  , industrial_11__Sample
  , industrial_12__Sample
  , industrial_13__Sample
  , industrial_14__Sample
  , industrial_15__Sample
  , industrial_16__Sample
  , industrial_17__Sample
  , industrial_18__Sample
  , industrial_19__Sample
  , industrial_20__Sample
  , industrial_21__Sample
  , industrial_22__Sample
  , industrial_23__Sample
  , industrial_24__Sample
  , industrial_25__Sample
  , industrial_26__Sample
  , industrial_27__Sample
  , industrial_28__Sample
  , industrial_29__Sample
  , industrial_30__Sample
  , industrial_31__Sample
  , tink_0__Sample
  , tink_1__Sample
  , tink_2__Sample
  , tink_3__Sample
  , tink_4__Sample
  , co_0__Sample
  , co_1__Sample
  , co_2__Sample
  , co_3__Sample
  , fest_0__Sample
  , feelfx_0__Sample
  , feelfx_1__Sample
  , feelfx_2__Sample
  , feelfx_3__Sample
  , feelfx_4__Sample
  , feelfx_5__Sample
  , feelfx_6__Sample
  , feelfx_7__Sample
  , x_808cy_0__Sample
  , x_808cy_1__Sample
  , x_808cy_2__Sample
  , x_808cy_3__Sample
  , x_808cy_4__Sample
  , x_808cy_5__Sample
  , x_808cy_6__Sample
  , x_808cy_7__Sample
  , x_808cy_8__Sample
  , x_808cy_9__Sample
  , x_808cy_10__Sample
  , x_808cy_11__Sample
  , x_808cy_12__Sample
  , x_808cy_13__Sample
  , x_808cy_14__Sample
  , x_808cy_15__Sample
  , x_808cy_16__Sample
  , x_808cy_17__Sample
  , x_808cy_18__Sample
  , x_808cy_19__Sample
  , x_808cy_20__Sample
  , x_808cy_21__Sample
  , x_808cy_22__Sample
  , x_808cy_23__Sample
  , x_808cy_24__Sample
  , world_0__Sample
  , world_1__Sample
  , world_2__Sample
  , f_0__Sample
  , numbers_0__Sample
  , numbers_1__Sample
  , numbers_2__Sample
  , numbers_3__Sample
  , numbers_4__Sample
  , numbers_5__Sample
  , numbers_6__Sample
  , numbers_7__Sample
  , numbers_8__Sample
  , d_0__Sample
  , d_1__Sample
  , d_2__Sample
  , d_3__Sample
  , padlong_0__Sample
  , sequential_0__Sample
  , sequential_1__Sample
  , sequential_2__Sample
  , sequential_3__Sample
  , sequential_4__Sample
  , sequential_5__Sample
  , sequential_6__Sample
  , sequential_7__Sample
  , stab_0__Sample
  , stab_1__Sample
  , stab_2__Sample
  , stab_3__Sample
  , stab_4__Sample
  , stab_5__Sample
  , stab_6__Sample
  , stab_7__Sample
  , stab_8__Sample
  , stab_9__Sample
  , stab_10__Sample
  , stab_11__Sample
  , stab_12__Sample
  , stab_13__Sample
  , stab_14__Sample
  , stab_15__Sample
  , stab_16__Sample
  , stab_17__Sample
  , stab_18__Sample
  , stab_19__Sample
  , stab_20__Sample
  , stab_21__Sample
  , stab_22__Sample
  , electro1_0__Sample
  , electro1_1__Sample
  , electro1_2__Sample
  , electro1_3__Sample
  , electro1_4__Sample
  , electro1_5__Sample
  , electro1_6__Sample
  , electro1_7__Sample
  , electro1_8__Sample
  , electro1_9__Sample
  , electro1_10__Sample
  , electro1_11__Sample
  , electro1_12__Sample
  , ifdrums_0__Sample
  , ifdrums_1__Sample
  , ifdrums_2__Sample
  , invaders_0__Sample
  , invaders_1__Sample
  , invaders_2__Sample
  , invaders_3__Sample
  , invaders_4__Sample
  , invaders_5__Sample
  , invaders_6__Sample
  , invaders_7__Sample
  , invaders_8__Sample
  , invaders_9__Sample
  , invaders_10__Sample
  , invaders_11__Sample
  , invaders_12__Sample
  , invaders_13__Sample
  , invaders_14__Sample
  , invaders_15__Sample
  , invaders_16__Sample
  , invaders_17__Sample
  , dist_0__Sample
  , dist_1__Sample
  , dist_2__Sample
  , dist_3__Sample
  , dist_4__Sample
  , dist_5__Sample
  , dist_6__Sample
  , dist_7__Sample
  , dist_8__Sample
  , dist_9__Sample
  , dist_10__Sample
  , dist_11__Sample
  , dist_12__Sample
  , dist_13__Sample
  , dist_14__Sample
  , dist_15__Sample
  , sundance_0__Sample
  , sundance_1__Sample
  , sundance_2__Sample
  , sundance_3__Sample
  , sundance_4__Sample
  , sundance_5__Sample
  , speech_0__Sample
  , speech_1__Sample
  , speech_2__Sample
  , speech_3__Sample
  , speech_4__Sample
  , speech_5__Sample
  , speech_6__Sample
  , toys_0__Sample
  , toys_1__Sample
  , toys_2__Sample
  , toys_3__Sample
  , toys_4__Sample
  , toys_5__Sample
  , toys_6__Sample
  , toys_7__Sample
  , toys_8__Sample
  , toys_9__Sample
  , toys_10__Sample
  , toys_11__Sample
  , toys_12__Sample
  , bass0_0__Sample
  , bass0_1__Sample
  , bass0_2__Sample
  , realclaps_0__Sample
  , realclaps_1__Sample
  , realclaps_2__Sample
  , realclaps_3__Sample
  , dorkbot_0__Sample
  , dorkbot_1__Sample
  , arpy_0__Sample
  , arpy_1__Sample
  , arpy_2__Sample
  , arpy_3__Sample
  , arpy_4__Sample
  , arpy_5__Sample
  , arpy_6__Sample
  , arpy_7__Sample
  , arpy_8__Sample
  , arpy_9__Sample
  , arpy_10__Sample
  , fire_0__Sample
  , hoover_0__Sample
  , hoover_1__Sample
  , hoover_2__Sample
  , hoover_3__Sample
  , hoover_4__Sample
  , hoover_5__Sample
  , breath_0__Sample
  , rave_0__Sample
  , rave_1__Sample
  , rave_2__Sample
  , rave_3__Sample
  , rave_4__Sample
  , rave_5__Sample
  , rave_6__Sample
  , rave_7__Sample
  , bottle_0__Sample
  , bottle_1__Sample
  , bottle_2__Sample
  , bottle_3__Sample
  , bottle_4__Sample
  , bottle_5__Sample
  , bottle_6__Sample
  , bottle_7__Sample
  , bottle_8__Sample
  , bottle_9__Sample
  , bottle_10__Sample
  , bottle_11__Sample
  , bottle_12__Sample
  , east_0__Sample
  , east_1__Sample
  , east_2__Sample
  , east_3__Sample
  , east_4__Sample
  , east_5__Sample
  , east_6__Sample
  , east_7__Sample
  , east_8__Sample
  , linnhats_0__Sample
  , linnhats_1__Sample
  , linnhats_2__Sample
  , linnhats_3__Sample
  , linnhats_4__Sample
  , linnhats_5__Sample
  , speedupdown_0__Sample
  , speedupdown_1__Sample
  , speedupdown_2__Sample
  , speedupdown_3__Sample
  , speedupdown_4__Sample
  , speedupdown_5__Sample
  , speedupdown_6__Sample
  , speedupdown_7__Sample
  , speedupdown_8__Sample
  , cosmicg_0__Sample
  , cosmicg_1__Sample
  , cosmicg_2__Sample
  , cosmicg_3__Sample
  , cosmicg_4__Sample
  , cosmicg_5__Sample
  , cosmicg_6__Sample
  , cosmicg_7__Sample
  , cosmicg_8__Sample
  , cosmicg_9__Sample
  , cosmicg_10__Sample
  , cosmicg_11__Sample
  , cosmicg_12__Sample
  , cosmicg_13__Sample
  , cosmicg_14__Sample
  , jvbass_0__Sample
  , jvbass_1__Sample
  , jvbass_2__Sample
  , jvbass_3__Sample
  , jvbass_4__Sample
  , jvbass_5__Sample
  , jvbass_6__Sample
  , jvbass_7__Sample
  , jvbass_8__Sample
  , jvbass_9__Sample
  , jvbass_10__Sample
  , jvbass_11__Sample
  , jvbass_12__Sample
  , mash_0__Sample
  , mash_1__Sample
  , feel_0__Sample
  , feel_1__Sample
  , feel_2__Sample
  , feel_3__Sample
  , feel_4__Sample
  , feel_5__Sample
  , feel_6__Sample
  , short_0__Sample
  , short_1__Sample
  , short_2__Sample
  , short_3__Sample
  , short_4__Sample
  , incoming_0__Sample
  , incoming_1__Sample
  , incoming_2__Sample
  , incoming_3__Sample
  , incoming_4__Sample
  , incoming_5__Sample
  , incoming_6__Sample
  , incoming_7__Sample
  , flick_0__Sample
  , flick_1__Sample
  , flick_2__Sample
  , flick_3__Sample
  , flick_4__Sample
  , flick_5__Sample
  , flick_6__Sample
  , flick_7__Sample
  , flick_8__Sample
  , flick_9__Sample
  , flick_10__Sample
  , flick_11__Sample
  , flick_12__Sample
  , flick_13__Sample
  , flick_14__Sample
  , flick_15__Sample
  , flick_16__Sample
  , reverbkick_0__Sample
  , bass2_0__Sample
  , bass2_1__Sample
  , bass2_2__Sample
  , bass2_3__Sample
  , bass2_4__Sample
  , baa_0__Sample
  , baa_1__Sample
  , baa_2__Sample
  , baa_3__Sample
  , baa_4__Sample
  , baa_5__Sample
  , baa_6__Sample
  , fm_0__Sample
  , fm_1__Sample
  , fm_2__Sample
  , fm_3__Sample
  , fm_4__Sample
  , fm_5__Sample
  , fm_6__Sample
  , fm_7__Sample
  , fm_8__Sample
  , fm_9__Sample
  , fm_10__Sample
  , fm_11__Sample
  , fm_12__Sample
  , fm_13__Sample
  , fm_14__Sample
  , fm_15__Sample
  , fm_16__Sample
  , click_0__Sample
  , click_1__Sample
  , click_2__Sample
  , click_3__Sample
  , control_0__Sample
  , control_1__Sample
  , peri_0__Sample
  , peri_1__Sample
  , peri_2__Sample
  , peri_3__Sample
  , peri_4__Sample
  , peri_5__Sample
  , peri_6__Sample
  , peri_7__Sample
  , peri_8__Sample
  , peri_9__Sample
  , peri_10__Sample
  , peri_11__Sample
  , peri_12__Sample
  , peri_13__Sample
  , peri_14__Sample
  , procshort_0__Sample
  , procshort_1__Sample
  , procshort_2__Sample
  , procshort_3__Sample
  , procshort_4__Sample
  , procshort_5__Sample
  , procshort_6__Sample
  , procshort_7__Sample
  , hand_0__Sample
  , hand_1__Sample
  , hand_2__Sample
  , hand_3__Sample
  , hand_4__Sample
  , hand_5__Sample
  , hand_6__Sample
  , hand_7__Sample
  , hand_8__Sample
  , hand_9__Sample
  , hand_10__Sample
  , hand_11__Sample
  , hand_12__Sample
  , hand_13__Sample
  , hand_14__Sample
  , hand_15__Sample
  , hand_16__Sample
  , future_0__Sample
  , future_1__Sample
  , future_2__Sample
  , future_3__Sample
  , future_4__Sample
  , future_5__Sample
  , future_6__Sample
  , future_7__Sample
  , future_8__Sample
  , future_9__Sample
  , future_10__Sample
  , future_11__Sample
  , future_12__Sample
  , future_13__Sample
  , future_14__Sample
  , future_15__Sample
  , future_16__Sample
  , hh_0__Sample
  , hh_1__Sample
  , hh_2__Sample
  , hh_3__Sample
  , hh_4__Sample
  , hh_5__Sample
  , hh_6__Sample
  , hh_7__Sample
  , hh_8__Sample
  , hh_9__Sample
  , hh_10__Sample
  , hh_11__Sample
  , hh_12__Sample
  , x_808ht_0__Sample
  , x_808ht_1__Sample
  , x_808ht_2__Sample
  , x_808ht_3__Sample
  , x_808ht_4__Sample
  , db_0__Sample
  , db_1__Sample
  , db_2__Sample
  , db_3__Sample
  , db_4__Sample
  , db_5__Sample
  , db_6__Sample
  , db_7__Sample
  , db_8__Sample
  , db_9__Sample
  , db_10__Sample
  , db_11__Sample
  , db_12__Sample
  ) where

import Prelude

import Data.Function (on)
import Data.Generic.Rep (class Generic)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Newtype (class Newtype, unwrap)
import Data.Tuple.Nested ((/\), type (/\))
import Foreign.Object (Object)
import Foreign.Object as Object
import WAGS.WebAPI (BrowserAudioBuffer)

type Samples (a :: Type) =
  ( intentionalSilenceForInternalUseOnly :: a
  , kicklinn_0 :: a
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
  { intentionalSilenceForInternalUseOnly: "https://freesound.org/data/previews/459/459659_4766646-lq.mp3"
  , kicklinn_0: "https://klank-share.s3.amazonaws.com/dirt-samples/kicklinn/Linn_Kick_1.ogg"
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

newtype Sample = Sample String

derive instance sampleEq :: Eq Sample
derive instance sampleOrd :: Ord Sample
instance sampleShow :: Show Sample where
  show (Sample i) = "Sample <" <> show i <> ">"

type FoT =
  { clockTime :: Number
  , sampleTime :: Number
  , bigCycleTime :: Number
  , littleCycleTime :: Number
  , normalizedClockTime :: Number
  , normalizedSampleTime :: Number
  , normalizedBigCycleTime :: Number
  , normalizedLittleCycleTime :: Number
  }
  -> Number

newtype Note = Note
  { sample :: Sample
  , rateFoT :: FoT
  , volumeFoT :: FoT
  }

derive instance newtypeNote :: Newtype Note _
derive instance genericNote :: Generic Note _
instance eqNote :: Eq Note where
  eq = eq `on` (unwrap >>> _.sample) && eq `on` (unwrap >>> _.tag)

instance ordNote :: Ord Note where
  compare = compare `on` (unwrap >>> _.sample)

instance showNote :: Show Note where
  show (Note { sample }) = "Note <" <> show sample <> ">"

intentionalSilenceForInternalUseOnly__Sample = Sample "intentionalSilenceForInternalUseOnly" :: Sample
kicklinn_0__Sample = Sample "kicklinn_0" :: Sample
msg_0__Sample = Sample "msg_0" :: Sample
msg_1__Sample = Sample "msg_1" :: Sample
msg_2__Sample = Sample "msg_2" :: Sample
msg_3__Sample = Sample "msg_3" :: Sample
msg_4__Sample = Sample "msg_4" :: Sample
msg_5__Sample = Sample "msg_5" :: Sample
msg_6__Sample = Sample "msg_6" :: Sample
msg_7__Sample = Sample "msg_7" :: Sample
msg_8__Sample = Sample "msg_8" :: Sample
gabbalouder_0__Sample = Sample "gabbalouder_0" :: Sample
gabbalouder_1__Sample = Sample "gabbalouder_1" :: Sample
gabbalouder_2__Sample = Sample "gabbalouder_2" :: Sample
gabbalouder_3__Sample = Sample "gabbalouder_3" :: Sample
kurt_0__Sample = Sample "kurt_0" :: Sample
kurt_1__Sample = Sample "kurt_1" :: Sample
kurt_2__Sample = Sample "kurt_2" :: Sample
kurt_3__Sample = Sample "kurt_3" :: Sample
kurt_4__Sample = Sample "kurt_4" :: Sample
kurt_5__Sample = Sample "kurt_5" :: Sample
kurt_6__Sample = Sample "kurt_6" :: Sample
bassdm_0__Sample = Sample "bassdm_0" :: Sample
bassdm_1__Sample = Sample "bassdm_1" :: Sample
bassdm_2__Sample = Sample "bassdm_2" :: Sample
bassdm_3__Sample = Sample "bassdm_3" :: Sample
bassdm_4__Sample = Sample "bassdm_4" :: Sample
bassdm_5__Sample = Sample "bassdm_5" :: Sample
bassdm_6__Sample = Sample "bassdm_6" :: Sample
bassdm_7__Sample = Sample "bassdm_7" :: Sample
bassdm_8__Sample = Sample "bassdm_8" :: Sample
bassdm_9__Sample = Sample "bassdm_9" :: Sample
bassdm_10__Sample = Sample "bassdm_10" :: Sample
bassdm_11__Sample = Sample "bassdm_11" :: Sample
bassdm_12__Sample = Sample "bassdm_12" :: Sample
bassdm_13__Sample = Sample "bassdm_13" :: Sample
bassdm_14__Sample = Sample "bassdm_14" :: Sample
bassdm_15__Sample = Sample "bassdm_15" :: Sample
bassdm_16__Sample = Sample "bassdm_16" :: Sample
bassdm_17__Sample = Sample "bassdm_17" :: Sample
bassdm_18__Sample = Sample "bassdm_18" :: Sample
bassdm_19__Sample = Sample "bassdm_19" :: Sample
bassdm_20__Sample = Sample "bassdm_20" :: Sample
bassdm_21__Sample = Sample "bassdm_21" :: Sample
bassdm_22__Sample = Sample "bassdm_22" :: Sample
bassdm_23__Sample = Sample "bassdm_23" :: Sample
tabla2_0__Sample = Sample "tabla2_0" :: Sample
tabla2_1__Sample = Sample "tabla2_1" :: Sample
tabla2_2__Sample = Sample "tabla2_2" :: Sample
tabla2_3__Sample = Sample "tabla2_3" :: Sample
tabla2_4__Sample = Sample "tabla2_4" :: Sample
tabla2_5__Sample = Sample "tabla2_5" :: Sample
tabla2_6__Sample = Sample "tabla2_6" :: Sample
tabla2_7__Sample = Sample "tabla2_7" :: Sample
tabla2_8__Sample = Sample "tabla2_8" :: Sample
tabla2_9__Sample = Sample "tabla2_9" :: Sample
tabla2_10__Sample = Sample "tabla2_10" :: Sample
tabla2_11__Sample = Sample "tabla2_11" :: Sample
tabla2_12__Sample = Sample "tabla2_12" :: Sample
tabla2_13__Sample = Sample "tabla2_13" :: Sample
tabla2_14__Sample = Sample "tabla2_14" :: Sample
tabla2_15__Sample = Sample "tabla2_15" :: Sample
tabla2_16__Sample = Sample "tabla2_16" :: Sample
tabla2_17__Sample = Sample "tabla2_17" :: Sample
tabla2_18__Sample = Sample "tabla2_18" :: Sample
tabla2_19__Sample = Sample "tabla2_19" :: Sample
tabla2_20__Sample = Sample "tabla2_20" :: Sample
tabla2_21__Sample = Sample "tabla2_21" :: Sample
tabla2_22__Sample = Sample "tabla2_22" :: Sample
tabla2_23__Sample = Sample "tabla2_23" :: Sample
tabla2_24__Sample = Sample "tabla2_24" :: Sample
tabla2_25__Sample = Sample "tabla2_25" :: Sample
tabla2_26__Sample = Sample "tabla2_26" :: Sample
tabla2_27__Sample = Sample "tabla2_27" :: Sample
tabla2_28__Sample = Sample "tabla2_28" :: Sample
tabla2_29__Sample = Sample "tabla2_29" :: Sample
tabla2_30__Sample = Sample "tabla2_30" :: Sample
tabla2_31__Sample = Sample "tabla2_31" :: Sample
tabla2_32__Sample = Sample "tabla2_32" :: Sample
tabla2_33__Sample = Sample "tabla2_33" :: Sample
tabla2_34__Sample = Sample "tabla2_34" :: Sample
tabla2_35__Sample = Sample "tabla2_35" :: Sample
tabla2_36__Sample = Sample "tabla2_36" :: Sample
tabla2_37__Sample = Sample "tabla2_37" :: Sample
tabla2_38__Sample = Sample "tabla2_38" :: Sample
tabla2_39__Sample = Sample "tabla2_39" :: Sample
tabla2_40__Sample = Sample "tabla2_40" :: Sample
tabla2_41__Sample = Sample "tabla2_41" :: Sample
tabla2_42__Sample = Sample "tabla2_42" :: Sample
tabla2_43__Sample = Sample "tabla2_43" :: Sample
tabla2_44__Sample = Sample "tabla2_44" :: Sample
tabla2_45__Sample = Sample "tabla2_45" :: Sample
chin_0__Sample = Sample "chin_0" :: Sample
chin_1__Sample = Sample "chin_1" :: Sample
chin_2__Sample = Sample "chin_2" :: Sample
chin_3__Sample = Sample "chin_3" :: Sample
mp3_0__Sample = Sample "mp3_0" :: Sample
mp3_1__Sample = Sample "mp3_1" :: Sample
mp3_2__Sample = Sample "mp3_2" :: Sample
mp3_3__Sample = Sample "mp3_3" :: Sample
tablex_0__Sample = Sample "tablex_0" :: Sample
tablex_1__Sample = Sample "tablex_1" :: Sample
tablex_2__Sample = Sample "tablex_2" :: Sample
sf_0__Sample = Sample "sf_0" :: Sample
sf_1__Sample = Sample "sf_1" :: Sample
sf_2__Sample = Sample "sf_2" :: Sample
sf_3__Sample = Sample "sf_3" :: Sample
sf_4__Sample = Sample "sf_4" :: Sample
sf_5__Sample = Sample "sf_5" :: Sample
sf_6__Sample = Sample "sf_6" :: Sample
sf_7__Sample = Sample "sf_7" :: Sample
sf_8__Sample = Sample "sf_8" :: Sample
sf_9__Sample = Sample "sf_9" :: Sample
sf_10__Sample = Sample "sf_10" :: Sample
sf_11__Sample = Sample "sf_11" :: Sample
sf_12__Sample = Sample "sf_12" :: Sample
sf_13__Sample = Sample "sf_13" :: Sample
sf_14__Sample = Sample "sf_14" :: Sample
sf_15__Sample = Sample "sf_15" :: Sample
sf_16__Sample = Sample "sf_16" :: Sample
sf_17__Sample = Sample "sf_17" :: Sample
speakspell_0__Sample = Sample "speakspell_0" :: Sample
speakspell_1__Sample = Sample "speakspell_1" :: Sample
speakspell_2__Sample = Sample "speakspell_2" :: Sample
speakspell_3__Sample = Sample "speakspell_3" :: Sample
speakspell_4__Sample = Sample "speakspell_4" :: Sample
speakspell_5__Sample = Sample "speakspell_5" :: Sample
speakspell_6__Sample = Sample "speakspell_6" :: Sample
speakspell_7__Sample = Sample "speakspell_7" :: Sample
speakspell_8__Sample = Sample "speakspell_8" :: Sample
speakspell_9__Sample = Sample "speakspell_9" :: Sample
speakspell_10__Sample = Sample "speakspell_10" :: Sample
speakspell_11__Sample = Sample "speakspell_11" :: Sample
cc_0__Sample = Sample "cc_0" :: Sample
cc_1__Sample = Sample "cc_1" :: Sample
cc_2__Sample = Sample "cc_2" :: Sample
cc_3__Sample = Sample "cc_3" :: Sample
cc_4__Sample = Sample "cc_4" :: Sample
cc_5__Sample = Sample "cc_5" :: Sample
gabbaloud_0__Sample = Sample "gabbaloud_0" :: Sample
gabbaloud_1__Sample = Sample "gabbaloud_1" :: Sample
gabbaloud_2__Sample = Sample "gabbaloud_2" :: Sample
gabbaloud_3__Sample = Sample "gabbaloud_3" :: Sample
ades2_0__Sample = Sample "ades2_0" :: Sample
ades2_1__Sample = Sample "ades2_1" :: Sample
ades2_2__Sample = Sample "ades2_2" :: Sample
ades2_3__Sample = Sample "ades2_3" :: Sample
ades2_4__Sample = Sample "ades2_4" :: Sample
ades2_5__Sample = Sample "ades2_5" :: Sample
ades2_6__Sample = Sample "ades2_6" :: Sample
ades2_7__Sample = Sample "ades2_7" :: Sample
ades2_8__Sample = Sample "ades2_8" :: Sample
space_0__Sample = Sample "space_0" :: Sample
space_1__Sample = Sample "space_1" :: Sample
space_2__Sample = Sample "space_2" :: Sample
space_3__Sample = Sample "space_3" :: Sample
space_4__Sample = Sample "space_4" :: Sample
space_5__Sample = Sample "space_5" :: Sample
space_6__Sample = Sample "space_6" :: Sample
space_7__Sample = Sample "space_7" :: Sample
space_8__Sample = Sample "space_8" :: Sample
space_9__Sample = Sample "space_9" :: Sample
space_10__Sample = Sample "space_10" :: Sample
space_11__Sample = Sample "space_11" :: Sample
space_12__Sample = Sample "space_12" :: Sample
space_13__Sample = Sample "space_13" :: Sample
space_14__Sample = Sample "space_14" :: Sample
space_15__Sample = Sample "space_15" :: Sample
space_16__Sample = Sample "space_16" :: Sample
space_17__Sample = Sample "space_17" :: Sample
battles_0__Sample = Sample "battles_0" :: Sample
battles_1__Sample = Sample "battles_1" :: Sample
voodoo_0__Sample = Sample "voodoo_0" :: Sample
voodoo_1__Sample = Sample "voodoo_1" :: Sample
voodoo_2__Sample = Sample "voodoo_2" :: Sample
voodoo_3__Sample = Sample "voodoo_3" :: Sample
voodoo_4__Sample = Sample "voodoo_4" :: Sample
ravemono_0__Sample = Sample "ravemono_0" :: Sample
ravemono_1__Sample = Sample "ravemono_1" :: Sample
psr_0__Sample = Sample "psr_0" :: Sample
psr_1__Sample = Sample "psr_1" :: Sample
psr_2__Sample = Sample "psr_2" :: Sample
psr_3__Sample = Sample "psr_3" :: Sample
psr_4__Sample = Sample "psr_4" :: Sample
psr_5__Sample = Sample "psr_5" :: Sample
psr_6__Sample = Sample "psr_6" :: Sample
psr_7__Sample = Sample "psr_7" :: Sample
psr_8__Sample = Sample "psr_8" :: Sample
psr_9__Sample = Sample "psr_9" :: Sample
psr_10__Sample = Sample "psr_10" :: Sample
psr_11__Sample = Sample "psr_11" :: Sample
psr_12__Sample = Sample "psr_12" :: Sample
psr_13__Sample = Sample "psr_13" :: Sample
psr_14__Sample = Sample "psr_14" :: Sample
psr_15__Sample = Sample "psr_15" :: Sample
psr_16__Sample = Sample "psr_16" :: Sample
psr_17__Sample = Sample "psr_17" :: Sample
psr_18__Sample = Sample "psr_18" :: Sample
psr_19__Sample = Sample "psr_19" :: Sample
psr_20__Sample = Sample "psr_20" :: Sample
psr_21__Sample = Sample "psr_21" :: Sample
psr_22__Sample = Sample "psr_22" :: Sample
psr_23__Sample = Sample "psr_23" :: Sample
psr_24__Sample = Sample "psr_24" :: Sample
psr_25__Sample = Sample "psr_25" :: Sample
psr_26__Sample = Sample "psr_26" :: Sample
psr_27__Sample = Sample "psr_27" :: Sample
psr_28__Sample = Sample "psr_28" :: Sample
psr_29__Sample = Sample "psr_29" :: Sample
metal_0__Sample = Sample "metal_0" :: Sample
metal_1__Sample = Sample "metal_1" :: Sample
metal_2__Sample = Sample "metal_2" :: Sample
metal_3__Sample = Sample "metal_3" :: Sample
metal_4__Sample = Sample "metal_4" :: Sample
metal_5__Sample = Sample "metal_5" :: Sample
metal_6__Sample = Sample "metal_6" :: Sample
metal_7__Sample = Sample "metal_7" :: Sample
metal_8__Sample = Sample "metal_8" :: Sample
metal_9__Sample = Sample "metal_9" :: Sample
hardcore_0__Sample = Sample "hardcore_0" :: Sample
hardcore_1__Sample = Sample "hardcore_1" :: Sample
hardcore_2__Sample = Sample "hardcore_2" :: Sample
hardcore_3__Sample = Sample "hardcore_3" :: Sample
hardcore_4__Sample = Sample "hardcore_4" :: Sample
hardcore_5__Sample = Sample "hardcore_5" :: Sample
hardcore_6__Sample = Sample "hardcore_6" :: Sample
hardcore_7__Sample = Sample "hardcore_7" :: Sample
hardcore_8__Sample = Sample "hardcore_8" :: Sample
hardcore_9__Sample = Sample "hardcore_9" :: Sample
hardcore_10__Sample = Sample "hardcore_10" :: Sample
hardcore_11__Sample = Sample "hardcore_11" :: Sample
mouth_0__Sample = Sample "mouth_0" :: Sample
mouth_1__Sample = Sample "mouth_1" :: Sample
mouth_2__Sample = Sample "mouth_2" :: Sample
mouth_3__Sample = Sample "mouth_3" :: Sample
mouth_4__Sample = Sample "mouth_4" :: Sample
mouth_5__Sample = Sample "mouth_5" :: Sample
mouth_6__Sample = Sample "mouth_6" :: Sample
mouth_7__Sample = Sample "mouth_7" :: Sample
mouth_8__Sample = Sample "mouth_8" :: Sample
mouth_9__Sample = Sample "mouth_9" :: Sample
mouth_10__Sample = Sample "mouth_10" :: Sample
mouth_11__Sample = Sample "mouth_11" :: Sample
mouth_12__Sample = Sample "mouth_12" :: Sample
mouth_13__Sample = Sample "mouth_13" :: Sample
mouth_14__Sample = Sample "mouth_14" :: Sample
sugar_0__Sample = Sample "sugar_0" :: Sample
sugar_1__Sample = Sample "sugar_1" :: Sample
odx_0__Sample = Sample "odx_0" :: Sample
odx_1__Sample = Sample "odx_1" :: Sample
odx_2__Sample = Sample "odx_2" :: Sample
odx_3__Sample = Sample "odx_3" :: Sample
odx_4__Sample = Sample "odx_4" :: Sample
odx_5__Sample = Sample "odx_5" :: Sample
odx_6__Sample = Sample "odx_6" :: Sample
odx_7__Sample = Sample "odx_7" :: Sample
odx_8__Sample = Sample "odx_8" :: Sample
odx_9__Sample = Sample "odx_9" :: Sample
odx_10__Sample = Sample "odx_10" :: Sample
odx_11__Sample = Sample "odx_11" :: Sample
odx_12__Sample = Sample "odx_12" :: Sample
odx_13__Sample = Sample "odx_13" :: Sample
odx_14__Sample = Sample "odx_14" :: Sample
x_808lc_0__Sample = Sample "x_808lc_0" :: Sample
x_808lc_1__Sample = Sample "x_808lc_1" :: Sample
x_808lc_2__Sample = Sample "x_808lc_2" :: Sample
x_808lc_3__Sample = Sample "x_808lc_3" :: Sample
x_808lc_4__Sample = Sample "x_808lc_4" :: Sample
mt_0__Sample = Sample "mt_0" :: Sample
mt_1__Sample = Sample "mt_1" :: Sample
mt_2__Sample = Sample "mt_2" :: Sample
mt_3__Sample = Sample "mt_3" :: Sample
mt_4__Sample = Sample "mt_4" :: Sample
mt_5__Sample = Sample "mt_5" :: Sample
mt_6__Sample = Sample "mt_6" :: Sample
mt_7__Sample = Sample "mt_7" :: Sample
mt_8__Sample = Sample "mt_8" :: Sample
mt_9__Sample = Sample "mt_9" :: Sample
mt_10__Sample = Sample "mt_10" :: Sample
mt_11__Sample = Sample "mt_11" :: Sample
mt_12__Sample = Sample "mt_12" :: Sample
mt_13__Sample = Sample "mt_13" :: Sample
mt_14__Sample = Sample "mt_14" :: Sample
mt_15__Sample = Sample "mt_15" :: Sample
drumtraks_0__Sample = Sample "drumtraks_0" :: Sample
drumtraks_1__Sample = Sample "drumtraks_1" :: Sample
drumtraks_2__Sample = Sample "drumtraks_2" :: Sample
drumtraks_3__Sample = Sample "drumtraks_3" :: Sample
drumtraks_4__Sample = Sample "drumtraks_4" :: Sample
drumtraks_5__Sample = Sample "drumtraks_5" :: Sample
drumtraks_6__Sample = Sample "drumtraks_6" :: Sample
drumtraks_7__Sample = Sample "drumtraks_7" :: Sample
drumtraks_8__Sample = Sample "drumtraks_8" :: Sample
drumtraks_9__Sample = Sample "drumtraks_9" :: Sample
drumtraks_10__Sample = Sample "drumtraks_10" :: Sample
drumtraks_11__Sample = Sample "drumtraks_11" :: Sample
drumtraks_12__Sample = Sample "drumtraks_12" :: Sample
print_0__Sample = Sample "print_0" :: Sample
print_1__Sample = Sample "print_1" :: Sample
print_2__Sample = Sample "print_2" :: Sample
print_3__Sample = Sample "print_3" :: Sample
print_4__Sample = Sample "print_4" :: Sample
print_5__Sample = Sample "print_5" :: Sample
print_6__Sample = Sample "print_6" :: Sample
print_7__Sample = Sample "print_7" :: Sample
print_8__Sample = Sample "print_8" :: Sample
print_9__Sample = Sample "print_9" :: Sample
print_10__Sample = Sample "print_10" :: Sample
blip_0__Sample = Sample "blip_0" :: Sample
blip_1__Sample = Sample "blip_1" :: Sample
wobble_0__Sample = Sample "wobble_0" :: Sample
made_0__Sample = Sample "made_0" :: Sample
made_1__Sample = Sample "made_1" :: Sample
made_2__Sample = Sample "made_2" :: Sample
made_3__Sample = Sample "made_3" :: Sample
made_4__Sample = Sample "made_4" :: Sample
made_5__Sample = Sample "made_5" :: Sample
made_6__Sample = Sample "made_6" :: Sample
bass3_0__Sample = Sample "bass3_0" :: Sample
bass3_1__Sample = Sample "bass3_1" :: Sample
bass3_2__Sample = Sample "bass3_2" :: Sample
bass3_3__Sample = Sample "bass3_3" :: Sample
bass3_4__Sample = Sample "bass3_4" :: Sample
bass3_5__Sample = Sample "bass3_5" :: Sample
bass3_6__Sample = Sample "bass3_6" :: Sample
bass3_7__Sample = Sample "bass3_7" :: Sample
bass3_8__Sample = Sample "bass3_8" :: Sample
bass3_9__Sample = Sample "bass3_9" :: Sample
bass3_10__Sample = Sample "bass3_10" :: Sample
speechless_0__Sample = Sample "speechless_0" :: Sample
speechless_1__Sample = Sample "speechless_1" :: Sample
speechless_2__Sample = Sample "speechless_2" :: Sample
speechless_3__Sample = Sample "speechless_3" :: Sample
speechless_4__Sample = Sample "speechless_4" :: Sample
speechless_5__Sample = Sample "speechless_5" :: Sample
speechless_6__Sample = Sample "speechless_6" :: Sample
speechless_7__Sample = Sample "speechless_7" :: Sample
speechless_8__Sample = Sample "speechless_8" :: Sample
speechless_9__Sample = Sample "speechless_9" :: Sample
sine_0__Sample = Sample "sine_0" :: Sample
sine_1__Sample = Sample "sine_1" :: Sample
sine_2__Sample = Sample "sine_2" :: Sample
sine_3__Sample = Sample "sine_3" :: Sample
sine_4__Sample = Sample "sine_4" :: Sample
sine_5__Sample = Sample "sine_5" :: Sample
noise_0__Sample = Sample "noise_0" :: Sample
x_808lt_0__Sample = Sample "x_808lt_0" :: Sample
x_808lt_1__Sample = Sample "x_808lt_1" :: Sample
x_808lt_2__Sample = Sample "x_808lt_2" :: Sample
x_808lt_3__Sample = Sample "x_808lt_3" :: Sample
x_808lt_4__Sample = Sample "x_808lt_4" :: Sample
sd_0__Sample = Sample "sd_0" :: Sample
sd_1__Sample = Sample "sd_1" :: Sample
alphabet_0__Sample = Sample "alphabet_0" :: Sample
alphabet_1__Sample = Sample "alphabet_1" :: Sample
alphabet_2__Sample = Sample "alphabet_2" :: Sample
alphabet_3__Sample = Sample "alphabet_3" :: Sample
alphabet_4__Sample = Sample "alphabet_4" :: Sample
alphabet_5__Sample = Sample "alphabet_5" :: Sample
alphabet_6__Sample = Sample "alphabet_6" :: Sample
alphabet_7__Sample = Sample "alphabet_7" :: Sample
alphabet_8__Sample = Sample "alphabet_8" :: Sample
alphabet_9__Sample = Sample "alphabet_9" :: Sample
alphabet_10__Sample = Sample "alphabet_10" :: Sample
alphabet_11__Sample = Sample "alphabet_11" :: Sample
alphabet_12__Sample = Sample "alphabet_12" :: Sample
alphabet_13__Sample = Sample "alphabet_13" :: Sample
alphabet_14__Sample = Sample "alphabet_14" :: Sample
alphabet_15__Sample = Sample "alphabet_15" :: Sample
alphabet_16__Sample = Sample "alphabet_16" :: Sample
alphabet_17__Sample = Sample "alphabet_17" :: Sample
alphabet_18__Sample = Sample "alphabet_18" :: Sample
alphabet_19__Sample = Sample "alphabet_19" :: Sample
alphabet_20__Sample = Sample "alphabet_20" :: Sample
alphabet_21__Sample = Sample "alphabet_21" :: Sample
alphabet_22__Sample = Sample "alphabet_22" :: Sample
alphabet_23__Sample = Sample "alphabet_23" :: Sample
alphabet_24__Sample = Sample "alphabet_24" :: Sample
alphabet_25__Sample = Sample "alphabet_25" :: Sample
baa2_0__Sample = Sample "baa2_0" :: Sample
baa2_1__Sample = Sample "baa2_1" :: Sample
baa2_2__Sample = Sample "baa2_2" :: Sample
baa2_3__Sample = Sample "baa2_3" :: Sample
baa2_4__Sample = Sample "baa2_4" :: Sample
baa2_5__Sample = Sample "baa2_5" :: Sample
baa2_6__Sample = Sample "baa2_6" :: Sample
tok_0__Sample = Sample "tok_0" :: Sample
tok_1__Sample = Sample "tok_1" :: Sample
tok_2__Sample = Sample "tok_2" :: Sample
tok_3__Sample = Sample "tok_3" :: Sample
ades3_0__Sample = Sample "ades3_0" :: Sample
ades3_1__Sample = Sample "ades3_1" :: Sample
ades3_2__Sample = Sample "ades3_2" :: Sample
ades3_3__Sample = Sample "ades3_3" :: Sample
ades3_4__Sample = Sample "ades3_4" :: Sample
ades3_5__Sample = Sample "ades3_5" :: Sample
ades3_6__Sample = Sample "ades3_6" :: Sample
x_909_0__Sample = Sample "x_909_0" :: Sample
sid_0__Sample = Sample "sid_0" :: Sample
sid_1__Sample = Sample "sid_1" :: Sample
sid_2__Sample = Sample "sid_2" :: Sample
sid_3__Sample = Sample "sid_3" :: Sample
sid_4__Sample = Sample "sid_4" :: Sample
sid_5__Sample = Sample "sid_5" :: Sample
sid_6__Sample = Sample "sid_6" :: Sample
sid_7__Sample = Sample "sid_7" :: Sample
sid_8__Sample = Sample "sid_8" :: Sample
sid_9__Sample = Sample "sid_9" :: Sample
sid_10__Sample = Sample "sid_10" :: Sample
sid_11__Sample = Sample "sid_11" :: Sample
jungbass_0__Sample = Sample "jungbass_0" :: Sample
jungbass_1__Sample = Sample "jungbass_1" :: Sample
jungbass_2__Sample = Sample "jungbass_2" :: Sample
jungbass_3__Sample = Sample "jungbass_3" :: Sample
jungbass_4__Sample = Sample "jungbass_4" :: Sample
jungbass_5__Sample = Sample "jungbass_5" :: Sample
jungbass_6__Sample = Sample "jungbass_6" :: Sample
jungbass_7__Sample = Sample "jungbass_7" :: Sample
jungbass_8__Sample = Sample "jungbass_8" :: Sample
jungbass_9__Sample = Sample "jungbass_9" :: Sample
jungbass_10__Sample = Sample "jungbass_10" :: Sample
jungbass_11__Sample = Sample "jungbass_11" :: Sample
jungbass_12__Sample = Sample "jungbass_12" :: Sample
jungbass_13__Sample = Sample "jungbass_13" :: Sample
jungbass_14__Sample = Sample "jungbass_14" :: Sample
jungbass_15__Sample = Sample "jungbass_15" :: Sample
jungbass_16__Sample = Sample "jungbass_16" :: Sample
jungbass_17__Sample = Sample "jungbass_17" :: Sample
jungbass_18__Sample = Sample "jungbass_18" :: Sample
jungbass_19__Sample = Sample "jungbass_19" :: Sample
gabba_0__Sample = Sample "gabba_0" :: Sample
gabba_1__Sample = Sample "gabba_1" :: Sample
gabba_2__Sample = Sample "gabba_2" :: Sample
gabba_3__Sample = Sample "gabba_3" :: Sample
crow_0__Sample = Sample "crow_0" :: Sample
crow_1__Sample = Sample "crow_1" :: Sample
crow_2__Sample = Sample "crow_2" :: Sample
crow_3__Sample = Sample "crow_3" :: Sample
birds3_0__Sample = Sample "birds3_0" :: Sample
birds3_1__Sample = Sample "birds3_1" :: Sample
birds3_2__Sample = Sample "birds3_2" :: Sample
birds3_3__Sample = Sample "birds3_3" :: Sample
birds3_4__Sample = Sample "birds3_4" :: Sample
birds3_5__Sample = Sample "birds3_5" :: Sample
birds3_6__Sample = Sample "birds3_6" :: Sample
birds3_7__Sample = Sample "birds3_7" :: Sample
birds3_8__Sample = Sample "birds3_8" :: Sample
birds3_9__Sample = Sample "birds3_9" :: Sample
birds3_10__Sample = Sample "birds3_10" :: Sample
birds3_11__Sample = Sample "birds3_11" :: Sample
birds3_12__Sample = Sample "birds3_12" :: Sample
birds3_13__Sample = Sample "birds3_13" :: Sample
birds3_14__Sample = Sample "birds3_14" :: Sample
birds3_15__Sample = Sample "birds3_15" :: Sample
birds3_16__Sample = Sample "birds3_16" :: Sample
birds3_17__Sample = Sample "birds3_17" :: Sample
birds3_18__Sample = Sample "birds3_18" :: Sample
auto_0__Sample = Sample "auto_0" :: Sample
auto_1__Sample = Sample "auto_1" :: Sample
auto_2__Sample = Sample "auto_2" :: Sample
auto_3__Sample = Sample "auto_3" :: Sample
auto_4__Sample = Sample "auto_4" :: Sample
auto_5__Sample = Sample "auto_5" :: Sample
auto_6__Sample = Sample "auto_6" :: Sample
auto_7__Sample = Sample "auto_7" :: Sample
auto_8__Sample = Sample "auto_8" :: Sample
auto_9__Sample = Sample "auto_9" :: Sample
auto_10__Sample = Sample "auto_10" :: Sample
mute_0__Sample = Sample "mute_0" :: Sample
mute_1__Sample = Sample "mute_1" :: Sample
mute_2__Sample = Sample "mute_2" :: Sample
mute_3__Sample = Sample "mute_3" :: Sample
mute_4__Sample = Sample "mute_4" :: Sample
mute_5__Sample = Sample "mute_5" :: Sample
mute_6__Sample = Sample "mute_6" :: Sample
mute_7__Sample = Sample "mute_7" :: Sample
mute_8__Sample = Sample "mute_8" :: Sample
mute_9__Sample = Sample "mute_9" :: Sample
mute_10__Sample = Sample "mute_10" :: Sample
mute_11__Sample = Sample "mute_11" :: Sample
mute_12__Sample = Sample "mute_12" :: Sample
mute_13__Sample = Sample "mute_13" :: Sample
mute_14__Sample = Sample "mute_14" :: Sample
mute_15__Sample = Sample "mute_15" :: Sample
mute_16__Sample = Sample "mute_16" :: Sample
mute_17__Sample = Sample "mute_17" :: Sample
mute_18__Sample = Sample "mute_18" :: Sample
mute_19__Sample = Sample "mute_19" :: Sample
mute_20__Sample = Sample "mute_20" :: Sample
mute_21__Sample = Sample "mute_21" :: Sample
mute_22__Sample = Sample "mute_22" :: Sample
mute_23__Sample = Sample "mute_23" :: Sample
mute_24__Sample = Sample "mute_24" :: Sample
mute_25__Sample = Sample "mute_25" :: Sample
mute_26__Sample = Sample "mute_26" :: Sample
mute_27__Sample = Sample "mute_27" :: Sample
sheffield_0__Sample = Sample "sheffield_0" :: Sample
casio_0__Sample = Sample "casio_0" :: Sample
casio_1__Sample = Sample "casio_1" :: Sample
casio_2__Sample = Sample "casio_2" :: Sample
sax_0__Sample = Sample "sax_0" :: Sample
sax_1__Sample = Sample "sax_1" :: Sample
sax_2__Sample = Sample "sax_2" :: Sample
sax_3__Sample = Sample "sax_3" :: Sample
sax_4__Sample = Sample "sax_4" :: Sample
sax_5__Sample = Sample "sax_5" :: Sample
sax_6__Sample = Sample "sax_6" :: Sample
sax_7__Sample = Sample "sax_7" :: Sample
sax_8__Sample = Sample "sax_8" :: Sample
sax_9__Sample = Sample "sax_9" :: Sample
sax_10__Sample = Sample "sax_10" :: Sample
sax_11__Sample = Sample "sax_11" :: Sample
sax_12__Sample = Sample "sax_12" :: Sample
sax_13__Sample = Sample "sax_13" :: Sample
sax_14__Sample = Sample "sax_14" :: Sample
sax_15__Sample = Sample "sax_15" :: Sample
sax_16__Sample = Sample "sax_16" :: Sample
sax_17__Sample = Sample "sax_17" :: Sample
sax_18__Sample = Sample "sax_18" :: Sample
sax_19__Sample = Sample "sax_19" :: Sample
sax_20__Sample = Sample "sax_20" :: Sample
sax_21__Sample = Sample "sax_21" :: Sample
circus_0__Sample = Sample "circus_0" :: Sample
circus_1__Sample = Sample "circus_1" :: Sample
circus_2__Sample = Sample "circus_2" :: Sample
yeah_0__Sample = Sample "yeah_0" :: Sample
yeah_1__Sample = Sample "yeah_1" :: Sample
yeah_2__Sample = Sample "yeah_2" :: Sample
yeah_3__Sample = Sample "yeah_3" :: Sample
yeah_4__Sample = Sample "yeah_4" :: Sample
yeah_5__Sample = Sample "yeah_5" :: Sample
yeah_6__Sample = Sample "yeah_6" :: Sample
yeah_7__Sample = Sample "yeah_7" :: Sample
yeah_8__Sample = Sample "yeah_8" :: Sample
yeah_9__Sample = Sample "yeah_9" :: Sample
yeah_10__Sample = Sample "yeah_10" :: Sample
yeah_11__Sample = Sample "yeah_11" :: Sample
yeah_12__Sample = Sample "yeah_12" :: Sample
yeah_13__Sample = Sample "yeah_13" :: Sample
yeah_14__Sample = Sample "yeah_14" :: Sample
yeah_15__Sample = Sample "yeah_15" :: Sample
yeah_16__Sample = Sample "yeah_16" :: Sample
yeah_17__Sample = Sample "yeah_17" :: Sample
yeah_18__Sample = Sample "yeah_18" :: Sample
yeah_19__Sample = Sample "yeah_19" :: Sample
yeah_20__Sample = Sample "yeah_20" :: Sample
yeah_21__Sample = Sample "yeah_21" :: Sample
yeah_22__Sample = Sample "yeah_22" :: Sample
yeah_23__Sample = Sample "yeah_23" :: Sample
yeah_24__Sample = Sample "yeah_24" :: Sample
yeah_25__Sample = Sample "yeah_25" :: Sample
yeah_26__Sample = Sample "yeah_26" :: Sample
yeah_27__Sample = Sample "yeah_27" :: Sample
yeah_28__Sample = Sample "yeah_28" :: Sample
yeah_29__Sample = Sample "yeah_29" :: Sample
yeah_30__Sample = Sample "yeah_30" :: Sample
oc_0__Sample = Sample "oc_0" :: Sample
oc_1__Sample = Sample "oc_1" :: Sample
oc_2__Sample = Sample "oc_2" :: Sample
oc_3__Sample = Sample "oc_3" :: Sample
alex_0__Sample = Sample "alex_0" :: Sample
alex_1__Sample = Sample "alex_1" :: Sample
can_0__Sample = Sample "can_0" :: Sample
can_1__Sample = Sample "can_1" :: Sample
can_2__Sample = Sample "can_2" :: Sample
can_3__Sample = Sample "can_3" :: Sample
can_4__Sample = Sample "can_4" :: Sample
can_5__Sample = Sample "can_5" :: Sample
can_6__Sample = Sample "can_6" :: Sample
can_7__Sample = Sample "can_7" :: Sample
can_8__Sample = Sample "can_8" :: Sample
can_9__Sample = Sample "can_9" :: Sample
can_10__Sample = Sample "can_10" :: Sample
can_11__Sample = Sample "can_11" :: Sample
can_12__Sample = Sample "can_12" :: Sample
can_13__Sample = Sample "can_13" :: Sample
jungle_0__Sample = Sample "jungle_0" :: Sample
jungle_1__Sample = Sample "jungle_1" :: Sample
jungle_2__Sample = Sample "jungle_2" :: Sample
jungle_3__Sample = Sample "jungle_3" :: Sample
jungle_4__Sample = Sample "jungle_4" :: Sample
jungle_5__Sample = Sample "jungle_5" :: Sample
jungle_6__Sample = Sample "jungle_6" :: Sample
jungle_7__Sample = Sample "jungle_7" :: Sample
jungle_8__Sample = Sample "jungle_8" :: Sample
jungle_9__Sample = Sample "jungle_9" :: Sample
jungle_10__Sample = Sample "jungle_10" :: Sample
jungle_11__Sample = Sample "jungle_11" :: Sample
jungle_12__Sample = Sample "jungle_12" :: Sample
moog_0__Sample = Sample "moog_0" :: Sample
moog_1__Sample = Sample "moog_1" :: Sample
moog_2__Sample = Sample "moog_2" :: Sample
moog_3__Sample = Sample "moog_3" :: Sample
moog_4__Sample = Sample "moog_4" :: Sample
moog_5__Sample = Sample "moog_5" :: Sample
moog_6__Sample = Sample "moog_6" :: Sample
h_0__Sample = Sample "h_0" :: Sample
h_1__Sample = Sample "h_1" :: Sample
h_2__Sample = Sample "h_2" :: Sample
h_3__Sample = Sample "h_3" :: Sample
h_4__Sample = Sample "h_4" :: Sample
h_5__Sample = Sample "h_5" :: Sample
h_6__Sample = Sample "h_6" :: Sample
wind_0__Sample = Sample "wind_0" :: Sample
wind_1__Sample = Sample "wind_1" :: Sample
wind_2__Sample = Sample "wind_2" :: Sample
wind_3__Sample = Sample "wind_3" :: Sample
wind_4__Sample = Sample "wind_4" :: Sample
wind_5__Sample = Sample "wind_5" :: Sample
wind_6__Sample = Sample "wind_6" :: Sample
wind_7__Sample = Sample "wind_7" :: Sample
wind_8__Sample = Sample "wind_8" :: Sample
wind_9__Sample = Sample "wind_9" :: Sample
rs_0__Sample = Sample "rs_0" :: Sample
em2_0__Sample = Sample "em2_0" :: Sample
em2_1__Sample = Sample "em2_1" :: Sample
em2_2__Sample = Sample "em2_2" :: Sample
em2_3__Sample = Sample "em2_3" :: Sample
em2_4__Sample = Sample "em2_4" :: Sample
em2_5__Sample = Sample "em2_5" :: Sample
noise2_0__Sample = Sample "noise2_0" :: Sample
noise2_1__Sample = Sample "noise2_1" :: Sample
noise2_2__Sample = Sample "noise2_2" :: Sample
noise2_3__Sample = Sample "noise2_3" :: Sample
noise2_4__Sample = Sample "noise2_4" :: Sample
noise2_5__Sample = Sample "noise2_5" :: Sample
noise2_6__Sample = Sample "noise2_6" :: Sample
noise2_7__Sample = Sample "noise2_7" :: Sample
foo_0__Sample = Sample "foo_0" :: Sample
foo_1__Sample = Sample "foo_1" :: Sample
foo_2__Sample = Sample "foo_2" :: Sample
foo_3__Sample = Sample "foo_3" :: Sample
foo_4__Sample = Sample "foo_4" :: Sample
foo_5__Sample = Sample "foo_5" :: Sample
foo_6__Sample = Sample "foo_6" :: Sample
foo_7__Sample = Sample "foo_7" :: Sample
foo_8__Sample = Sample "foo_8" :: Sample
foo_9__Sample = Sample "foo_9" :: Sample
foo_10__Sample = Sample "foo_10" :: Sample
foo_11__Sample = Sample "foo_11" :: Sample
foo_12__Sample = Sample "foo_12" :: Sample
foo_13__Sample = Sample "foo_13" :: Sample
foo_14__Sample = Sample "foo_14" :: Sample
foo_15__Sample = Sample "foo_15" :: Sample
foo_16__Sample = Sample "foo_16" :: Sample
foo_17__Sample = Sample "foo_17" :: Sample
foo_18__Sample = Sample "foo_18" :: Sample
foo_19__Sample = Sample "foo_19" :: Sample
foo_20__Sample = Sample "foo_20" :: Sample
foo_21__Sample = Sample "foo_21" :: Sample
foo_22__Sample = Sample "foo_22" :: Sample
foo_23__Sample = Sample "foo_23" :: Sample
foo_24__Sample = Sample "foo_24" :: Sample
foo_25__Sample = Sample "foo_25" :: Sample
foo_26__Sample = Sample "foo_26" :: Sample
armora_0__Sample = Sample "armora_0" :: Sample
armora_1__Sample = Sample "armora_1" :: Sample
armora_2__Sample = Sample "armora_2" :: Sample
armora_3__Sample = Sample "armora_3" :: Sample
armora_4__Sample = Sample "armora_4" :: Sample
armora_5__Sample = Sample "armora_5" :: Sample
armora_6__Sample = Sample "armora_6" :: Sample
bend_0__Sample = Sample "bend_0" :: Sample
bend_1__Sample = Sample "bend_1" :: Sample
bend_2__Sample = Sample "bend_2" :: Sample
bend_3__Sample = Sample "bend_3" :: Sample
newnotes_0__Sample = Sample "newnotes_0" :: Sample
newnotes_1__Sample = Sample "newnotes_1" :: Sample
newnotes_2__Sample = Sample "newnotes_2" :: Sample
newnotes_3__Sample = Sample "newnotes_3" :: Sample
newnotes_4__Sample = Sample "newnotes_4" :: Sample
newnotes_5__Sample = Sample "newnotes_5" :: Sample
newnotes_6__Sample = Sample "newnotes_6" :: Sample
newnotes_7__Sample = Sample "newnotes_7" :: Sample
newnotes_8__Sample = Sample "newnotes_8" :: Sample
newnotes_9__Sample = Sample "newnotes_9" :: Sample
newnotes_10__Sample = Sample "newnotes_10" :: Sample
newnotes_11__Sample = Sample "newnotes_11" :: Sample
newnotes_12__Sample = Sample "newnotes_12" :: Sample
newnotes_13__Sample = Sample "newnotes_13" :: Sample
newnotes_14__Sample = Sample "newnotes_14" :: Sample
pebbles_0__Sample = Sample "pebbles_0" :: Sample
mash2_0__Sample = Sample "mash2_0" :: Sample
mash2_1__Sample = Sample "mash2_1" :: Sample
mash2_2__Sample = Sample "mash2_2" :: Sample
mash2_3__Sample = Sample "mash2_3" :: Sample
diphone2_0__Sample = Sample "diphone2_0" :: Sample
diphone2_1__Sample = Sample "diphone2_1" :: Sample
diphone2_2__Sample = Sample "diphone2_2" :: Sample
diphone2_3__Sample = Sample "diphone2_3" :: Sample
diphone2_4__Sample = Sample "diphone2_4" :: Sample
diphone2_5__Sample = Sample "diphone2_5" :: Sample
diphone2_6__Sample = Sample "diphone2_6" :: Sample
diphone2_7__Sample = Sample "diphone2_7" :: Sample
diphone2_8__Sample = Sample "diphone2_8" :: Sample
diphone2_9__Sample = Sample "diphone2_9" :: Sample
diphone2_10__Sample = Sample "diphone2_10" :: Sample
diphone2_11__Sample = Sample "diphone2_11" :: Sample
e_0__Sample = Sample "e_0" :: Sample
e_1__Sample = Sample "e_1" :: Sample
e_2__Sample = Sample "e_2" :: Sample
e_3__Sample = Sample "e_3" :: Sample
e_4__Sample = Sample "e_4" :: Sample
e_5__Sample = Sample "e_5" :: Sample
e_6__Sample = Sample "e_6" :: Sample
e_7__Sample = Sample "e_7" :: Sample
bubble_0__Sample = Sample "bubble_0" :: Sample
bubble_1__Sample = Sample "bubble_1" :: Sample
bubble_2__Sample = Sample "bubble_2" :: Sample
bubble_3__Sample = Sample "bubble_3" :: Sample
bubble_4__Sample = Sample "bubble_4" :: Sample
bubble_5__Sample = Sample "bubble_5" :: Sample
bubble_6__Sample = Sample "bubble_6" :: Sample
bubble_7__Sample = Sample "bubble_7" :: Sample
insect_0__Sample = Sample "insect_0" :: Sample
insect_1__Sample = Sample "insect_1" :: Sample
insect_2__Sample = Sample "insect_2" :: Sample
ade_0__Sample = Sample "ade_0" :: Sample
ade_1__Sample = Sample "ade_1" :: Sample
ade_2__Sample = Sample "ade_2" :: Sample
ade_3__Sample = Sample "ade_3" :: Sample
ade_4__Sample = Sample "ade_4" :: Sample
ade_5__Sample = Sample "ade_5" :: Sample
ade_6__Sample = Sample "ade_6" :: Sample
ade_7__Sample = Sample "ade_7" :: Sample
ade_8__Sample = Sample "ade_8" :: Sample
ade_9__Sample = Sample "ade_9" :: Sample
glitch_0__Sample = Sample "glitch_0" :: Sample
glitch_1__Sample = Sample "glitch_1" :: Sample
glitch_2__Sample = Sample "glitch_2" :: Sample
glitch_3__Sample = Sample "glitch_3" :: Sample
glitch_4__Sample = Sample "glitch_4" :: Sample
glitch_5__Sample = Sample "glitch_5" :: Sample
glitch_6__Sample = Sample "glitch_6" :: Sample
glitch_7__Sample = Sample "glitch_7" :: Sample
haw_0__Sample = Sample "haw_0" :: Sample
haw_1__Sample = Sample "haw_1" :: Sample
haw_2__Sample = Sample "haw_2" :: Sample
haw_3__Sample = Sample "haw_3" :: Sample
haw_4__Sample = Sample "haw_4" :: Sample
haw_5__Sample = Sample "haw_5" :: Sample
popkick_0__Sample = Sample "popkick_0" :: Sample
popkick_1__Sample = Sample "popkick_1" :: Sample
popkick_2__Sample = Sample "popkick_2" :: Sample
popkick_3__Sample = Sample "popkick_3" :: Sample
popkick_4__Sample = Sample "popkick_4" :: Sample
popkick_5__Sample = Sample "popkick_5" :: Sample
popkick_6__Sample = Sample "popkick_6" :: Sample
popkick_7__Sample = Sample "popkick_7" :: Sample
popkick_8__Sample = Sample "popkick_8" :: Sample
popkick_9__Sample = Sample "popkick_9" :: Sample
breaks157_0__Sample = Sample "breaks157_0" :: Sample
gtr_0__Sample = Sample "gtr_0" :: Sample
gtr_1__Sample = Sample "gtr_1" :: Sample
gtr_2__Sample = Sample "gtr_2" :: Sample
clubkick_0__Sample = Sample "clubkick_0" :: Sample
clubkick_1__Sample = Sample "clubkick_1" :: Sample
clubkick_2__Sample = Sample "clubkick_2" :: Sample
clubkick_3__Sample = Sample "clubkick_3" :: Sample
clubkick_4__Sample = Sample "clubkick_4" :: Sample
breaks152_0__Sample = Sample "breaks152_0" :: Sample
x_808bd_0__Sample = Sample "x_808bd_0" :: Sample
x_808bd_1__Sample = Sample "x_808bd_1" :: Sample
x_808bd_2__Sample = Sample "x_808bd_2" :: Sample
x_808bd_3__Sample = Sample "x_808bd_3" :: Sample
x_808bd_4__Sample = Sample "x_808bd_4" :: Sample
x_808bd_5__Sample = Sample "x_808bd_5" :: Sample
x_808bd_6__Sample = Sample "x_808bd_6" :: Sample
x_808bd_7__Sample = Sample "x_808bd_7" :: Sample
x_808bd_8__Sample = Sample "x_808bd_8" :: Sample
x_808bd_9__Sample = Sample "x_808bd_9" :: Sample
x_808bd_10__Sample = Sample "x_808bd_10" :: Sample
x_808bd_11__Sample = Sample "x_808bd_11" :: Sample
x_808bd_12__Sample = Sample "x_808bd_12" :: Sample
x_808bd_13__Sample = Sample "x_808bd_13" :: Sample
x_808bd_14__Sample = Sample "x_808bd_14" :: Sample
x_808bd_15__Sample = Sample "x_808bd_15" :: Sample
x_808bd_16__Sample = Sample "x_808bd_16" :: Sample
x_808bd_17__Sample = Sample "x_808bd_17" :: Sample
x_808bd_18__Sample = Sample "x_808bd_18" :: Sample
x_808bd_19__Sample = Sample "x_808bd_19" :: Sample
x_808bd_20__Sample = Sample "x_808bd_20" :: Sample
x_808bd_21__Sample = Sample "x_808bd_21" :: Sample
x_808bd_22__Sample = Sample "x_808bd_22" :: Sample
x_808bd_23__Sample = Sample "x_808bd_23" :: Sample
x_808bd_24__Sample = Sample "x_808bd_24" :: Sample
miniyeah_0__Sample = Sample "miniyeah_0" :: Sample
miniyeah_1__Sample = Sample "miniyeah_1" :: Sample
miniyeah_2__Sample = Sample "miniyeah_2" :: Sample
miniyeah_3__Sample = Sample "miniyeah_3" :: Sample
if_0__Sample = Sample "if_0" :: Sample
if_1__Sample = Sample "if_1" :: Sample
if_2__Sample = Sample "if_2" :: Sample
if_3__Sample = Sample "if_3" :: Sample
if_4__Sample = Sample "if_4" :: Sample
x_808oh_0__Sample = Sample "x_808oh_0" :: Sample
x_808oh_1__Sample = Sample "x_808oh_1" :: Sample
x_808oh_2__Sample = Sample "x_808oh_2" :: Sample
x_808oh_3__Sample = Sample "x_808oh_3" :: Sample
x_808oh_4__Sample = Sample "x_808oh_4" :: Sample
house_0__Sample = Sample "house_0" :: Sample
house_1__Sample = Sample "house_1" :: Sample
house_2__Sample = Sample "house_2" :: Sample
house_3__Sample = Sample "house_3" :: Sample
house_4__Sample = Sample "house_4" :: Sample
house_5__Sample = Sample "house_5" :: Sample
house_6__Sample = Sample "house_6" :: Sample
house_7__Sample = Sample "house_7" :: Sample
dr_0__Sample = Sample "dr_0" :: Sample
dr_1__Sample = Sample "dr_1" :: Sample
dr_2__Sample = Sample "dr_2" :: Sample
dr_3__Sample = Sample "dr_3" :: Sample
dr_4__Sample = Sample "dr_4" :: Sample
dr_5__Sample = Sample "dr_5" :: Sample
dr_6__Sample = Sample "dr_6" :: Sample
dr_7__Sample = Sample "dr_7" :: Sample
dr_8__Sample = Sample "dr_8" :: Sample
dr_9__Sample = Sample "dr_9" :: Sample
dr_10__Sample = Sample "dr_10" :: Sample
dr_11__Sample = Sample "dr_11" :: Sample
dr_12__Sample = Sample "dr_12" :: Sample
dr_13__Sample = Sample "dr_13" :: Sample
dr_14__Sample = Sample "dr_14" :: Sample
dr_15__Sample = Sample "dr_15" :: Sample
dr_16__Sample = Sample "dr_16" :: Sample
dr_17__Sample = Sample "dr_17" :: Sample
dr_18__Sample = Sample "dr_18" :: Sample
dr_19__Sample = Sample "dr_19" :: Sample
dr_20__Sample = Sample "dr_20" :: Sample
dr_21__Sample = Sample "dr_21" :: Sample
dr_22__Sample = Sample "dr_22" :: Sample
dr_23__Sample = Sample "dr_23" :: Sample
dr_24__Sample = Sample "dr_24" :: Sample
dr_25__Sample = Sample "dr_25" :: Sample
dr_26__Sample = Sample "dr_26" :: Sample
dr_27__Sample = Sample "dr_27" :: Sample
dr_28__Sample = Sample "dr_28" :: Sample
dr_29__Sample = Sample "dr_29" :: Sample
dr_30__Sample = Sample "dr_30" :: Sample
dr_31__Sample = Sample "dr_31" :: Sample
dr_32__Sample = Sample "dr_32" :: Sample
dr_33__Sample = Sample "dr_33" :: Sample
dr_34__Sample = Sample "dr_34" :: Sample
dr_35__Sample = Sample "dr_35" :: Sample
dr_36__Sample = Sample "dr_36" :: Sample
dr_37__Sample = Sample "dr_37" :: Sample
dr_38__Sample = Sample "dr_38" :: Sample
dr_39__Sample = Sample "dr_39" :: Sample
dr_40__Sample = Sample "dr_40" :: Sample
dr_41__Sample = Sample "dr_41" :: Sample
dr55_0__Sample = Sample "dr55_0" :: Sample
dr55_1__Sample = Sample "dr55_1" :: Sample
dr55_2__Sample = Sample "dr55_2" :: Sample
dr55_3__Sample = Sample "dr55_3" :: Sample
bass_0__Sample = Sample "bass_0" :: Sample
bass_1__Sample = Sample "bass_1" :: Sample
bass_2__Sample = Sample "bass_2" :: Sample
bass_3__Sample = Sample "bass_3" :: Sample
ho_0__Sample = Sample "ho_0" :: Sample
ho_1__Sample = Sample "ho_1" :: Sample
ho_2__Sample = Sample "ho_2" :: Sample
ho_3__Sample = Sample "ho_3" :: Sample
ho_4__Sample = Sample "ho_4" :: Sample
ho_5__Sample = Sample "ho_5" :: Sample
hardkick_0__Sample = Sample "hardkick_0" :: Sample
hardkick_1__Sample = Sample "hardkick_1" :: Sample
hardkick_2__Sample = Sample "hardkick_2" :: Sample
hardkick_3__Sample = Sample "hardkick_3" :: Sample
hardkick_4__Sample = Sample "hardkick_4" :: Sample
hardkick_5__Sample = Sample "hardkick_5" :: Sample
x_808hc_0__Sample = Sample "x_808hc_0" :: Sample
x_808hc_1__Sample = Sample "x_808hc_1" :: Sample
x_808hc_2__Sample = Sample "x_808hc_2" :: Sample
x_808hc_3__Sample = Sample "x_808hc_3" :: Sample
x_808hc_4__Sample = Sample "x_808hc_4" :: Sample
hit_0__Sample = Sample "hit_0" :: Sample
hit_1__Sample = Sample "hit_1" :: Sample
hit_2__Sample = Sample "hit_2" :: Sample
hit_3__Sample = Sample "hit_3" :: Sample
hit_4__Sample = Sample "hit_4" :: Sample
hit_5__Sample = Sample "hit_5" :: Sample
breaks165_0__Sample = Sample "breaks165_0" :: Sample
dr2_0__Sample = Sample "dr2_0" :: Sample
dr2_1__Sample = Sample "dr2_1" :: Sample
dr2_2__Sample = Sample "dr2_2" :: Sample
dr2_3__Sample = Sample "dr2_3" :: Sample
dr2_4__Sample = Sample "dr2_4" :: Sample
dr2_5__Sample = Sample "dr2_5" :: Sample
tabla_0__Sample = Sample "tabla_0" :: Sample
tabla_1__Sample = Sample "tabla_1" :: Sample
tabla_2__Sample = Sample "tabla_2" :: Sample
tabla_3__Sample = Sample "tabla_3" :: Sample
tabla_4__Sample = Sample "tabla_4" :: Sample
tabla_5__Sample = Sample "tabla_5" :: Sample
tabla_6__Sample = Sample "tabla_6" :: Sample
tabla_7__Sample = Sample "tabla_7" :: Sample
tabla_8__Sample = Sample "tabla_8" :: Sample
tabla_9__Sample = Sample "tabla_9" :: Sample
tabla_10__Sample = Sample "tabla_10" :: Sample
tabla_11__Sample = Sample "tabla_11" :: Sample
tabla_12__Sample = Sample "tabla_12" :: Sample
tabla_13__Sample = Sample "tabla_13" :: Sample
tabla_14__Sample = Sample "tabla_14" :: Sample
tabla_15__Sample = Sample "tabla_15" :: Sample
tabla_16__Sample = Sample "tabla_16" :: Sample
tabla_17__Sample = Sample "tabla_17" :: Sample
tabla_18__Sample = Sample "tabla_18" :: Sample
tabla_19__Sample = Sample "tabla_19" :: Sample
tabla_20__Sample = Sample "tabla_20" :: Sample
tabla_21__Sample = Sample "tabla_21" :: Sample
tabla_22__Sample = Sample "tabla_22" :: Sample
tabla_23__Sample = Sample "tabla_23" :: Sample
tabla_24__Sample = Sample "tabla_24" :: Sample
tabla_25__Sample = Sample "tabla_25" :: Sample
dork2_0__Sample = Sample "dork2_0" :: Sample
dork2_1__Sample = Sample "dork2_1" :: Sample
dork2_2__Sample = Sample "dork2_2" :: Sample
dork2_3__Sample = Sample "dork2_3" :: Sample
hc_0__Sample = Sample "hc_0" :: Sample
hc_1__Sample = Sample "hc_1" :: Sample
hc_2__Sample = Sample "hc_2" :: Sample
hc_3__Sample = Sample "hc_3" :: Sample
hc_4__Sample = Sample "hc_4" :: Sample
hc_5__Sample = Sample "hc_5" :: Sample
bassfoo_0__Sample = Sample "bassfoo_0" :: Sample
bassfoo_1__Sample = Sample "bassfoo_1" :: Sample
bassfoo_2__Sample = Sample "bassfoo_2" :: Sample
seawolf_0__Sample = Sample "seawolf_0" :: Sample
seawolf_1__Sample = Sample "seawolf_1" :: Sample
seawolf_2__Sample = Sample "seawolf_2" :: Sample
cp_0__Sample = Sample "cp_0" :: Sample
cp_1__Sample = Sample "cp_1" :: Sample
jazz_0__Sample = Sample "jazz_0" :: Sample
jazz_1__Sample = Sample "jazz_1" :: Sample
jazz_2__Sample = Sample "jazz_2" :: Sample
jazz_3__Sample = Sample "jazz_3" :: Sample
jazz_4__Sample = Sample "jazz_4" :: Sample
jazz_5__Sample = Sample "jazz_5" :: Sample
jazz_6__Sample = Sample "jazz_6" :: Sample
jazz_7__Sample = Sample "jazz_7" :: Sample
juno_0__Sample = Sample "juno_0" :: Sample
juno_1__Sample = Sample "juno_1" :: Sample
juno_2__Sample = Sample "juno_2" :: Sample
juno_3__Sample = Sample "juno_3" :: Sample
juno_4__Sample = Sample "juno_4" :: Sample
juno_5__Sample = Sample "juno_5" :: Sample
juno_6__Sample = Sample "juno_6" :: Sample
juno_7__Sample = Sample "juno_7" :: Sample
juno_8__Sample = Sample "juno_8" :: Sample
juno_9__Sample = Sample "juno_9" :: Sample
juno_10__Sample = Sample "juno_10" :: Sample
juno_11__Sample = Sample "juno_11" :: Sample
birds_0__Sample = Sample "birds_0" :: Sample
birds_1__Sample = Sample "birds_1" :: Sample
birds_2__Sample = Sample "birds_2" :: Sample
birds_3__Sample = Sample "birds_3" :: Sample
birds_4__Sample = Sample "birds_4" :: Sample
birds_5__Sample = Sample "birds_5" :: Sample
birds_6__Sample = Sample "birds_6" :: Sample
birds_7__Sample = Sample "birds_7" :: Sample
birds_8__Sample = Sample "birds_8" :: Sample
birds_9__Sample = Sample "birds_9" :: Sample
glasstap_0__Sample = Sample "glasstap_0" :: Sample
glasstap_1__Sample = Sample "glasstap_1" :: Sample
glasstap_2__Sample = Sample "glasstap_2" :: Sample
bass1_0__Sample = Sample "bass1_0" :: Sample
bass1_1__Sample = Sample "bass1_1" :: Sample
bass1_2__Sample = Sample "bass1_2" :: Sample
bass1_3__Sample = Sample "bass1_3" :: Sample
bass1_4__Sample = Sample "bass1_4" :: Sample
bass1_5__Sample = Sample "bass1_5" :: Sample
bass1_6__Sample = Sample "bass1_6" :: Sample
bass1_7__Sample = Sample "bass1_7" :: Sample
bass1_8__Sample = Sample "bass1_8" :: Sample
bass1_9__Sample = Sample "bass1_9" :: Sample
bass1_10__Sample = Sample "bass1_10" :: Sample
bass1_11__Sample = Sample "bass1_11" :: Sample
bass1_12__Sample = Sample "bass1_12" :: Sample
bass1_13__Sample = Sample "bass1_13" :: Sample
bass1_14__Sample = Sample "bass1_14" :: Sample
bass1_15__Sample = Sample "bass1_15" :: Sample
bass1_16__Sample = Sample "bass1_16" :: Sample
bass1_17__Sample = Sample "bass1_17" :: Sample
bass1_18__Sample = Sample "bass1_18" :: Sample
bass1_19__Sample = Sample "bass1_19" :: Sample
bass1_20__Sample = Sample "bass1_20" :: Sample
bass1_21__Sample = Sample "bass1_21" :: Sample
bass1_22__Sample = Sample "bass1_22" :: Sample
bass1_23__Sample = Sample "bass1_23" :: Sample
bass1_24__Sample = Sample "bass1_24" :: Sample
bass1_25__Sample = Sample "bass1_25" :: Sample
bass1_26__Sample = Sample "bass1_26" :: Sample
bass1_27__Sample = Sample "bass1_27" :: Sample
bass1_28__Sample = Sample "bass1_28" :: Sample
bass1_29__Sample = Sample "bass1_29" :: Sample
hh27_0__Sample = Sample "hh27_0" :: Sample
hh27_1__Sample = Sample "hh27_1" :: Sample
hh27_2__Sample = Sample "hh27_2" :: Sample
hh27_3__Sample = Sample "hh27_3" :: Sample
hh27_4__Sample = Sample "hh27_4" :: Sample
hh27_5__Sample = Sample "hh27_5" :: Sample
hh27_6__Sample = Sample "hh27_6" :: Sample
hh27_7__Sample = Sample "hh27_7" :: Sample
hh27_8__Sample = Sample "hh27_8" :: Sample
hh27_9__Sample = Sample "hh27_9" :: Sample
hh27_10__Sample = Sample "hh27_10" :: Sample
hh27_11__Sample = Sample "hh27_11" :: Sample
hh27_12__Sample = Sample "hh27_12" :: Sample
x_808_0__Sample = Sample "x_808_0" :: Sample
x_808_1__Sample = Sample "x_808_1" :: Sample
x_808_2__Sample = Sample "x_808_2" :: Sample
x_808_3__Sample = Sample "x_808_3" :: Sample
x_808_4__Sample = Sample "x_808_4" :: Sample
x_808_5__Sample = Sample "x_808_5" :: Sample
notes_0__Sample = Sample "notes_0" :: Sample
notes_1__Sample = Sample "notes_1" :: Sample
notes_2__Sample = Sample "notes_2" :: Sample
notes_3__Sample = Sample "notes_3" :: Sample
notes_4__Sample = Sample "notes_4" :: Sample
notes_5__Sample = Sample "notes_5" :: Sample
notes_6__Sample = Sample "notes_6" :: Sample
notes_7__Sample = Sample "notes_7" :: Sample
notes_8__Sample = Sample "notes_8" :: Sample
notes_9__Sample = Sample "notes_9" :: Sample
notes_10__Sample = Sample "notes_10" :: Sample
notes_11__Sample = Sample "notes_11" :: Sample
notes_12__Sample = Sample "notes_12" :: Sample
notes_13__Sample = Sample "notes_13" :: Sample
notes_14__Sample = Sample "notes_14" :: Sample
xmas_0__Sample = Sample "xmas_0" :: Sample
erk_0__Sample = Sample "erk_0" :: Sample
x_808mt_0__Sample = Sample "x_808mt_0" :: Sample
x_808mt_1__Sample = Sample "x_808mt_1" :: Sample
x_808mt_2__Sample = Sample "x_808mt_2" :: Sample
x_808mt_3__Sample = Sample "x_808mt_3" :: Sample
x_808mt_4__Sample = Sample "x_808mt_4" :: Sample
lighter_0__Sample = Sample "lighter_0" :: Sample
lighter_1__Sample = Sample "lighter_1" :: Sample
lighter_2__Sample = Sample "lighter_2" :: Sample
lighter_3__Sample = Sample "lighter_3" :: Sample
lighter_4__Sample = Sample "lighter_4" :: Sample
lighter_5__Sample = Sample "lighter_5" :: Sample
lighter_6__Sample = Sample "lighter_6" :: Sample
lighter_7__Sample = Sample "lighter_7" :: Sample
lighter_8__Sample = Sample "lighter_8" :: Sample
lighter_9__Sample = Sample "lighter_9" :: Sample
lighter_10__Sample = Sample "lighter_10" :: Sample
lighter_11__Sample = Sample "lighter_11" :: Sample
lighter_12__Sample = Sample "lighter_12" :: Sample
lighter_13__Sample = Sample "lighter_13" :: Sample
lighter_14__Sample = Sample "lighter_14" :: Sample
lighter_15__Sample = Sample "lighter_15" :: Sample
lighter_16__Sample = Sample "lighter_16" :: Sample
lighter_17__Sample = Sample "lighter_17" :: Sample
lighter_18__Sample = Sample "lighter_18" :: Sample
lighter_19__Sample = Sample "lighter_19" :: Sample
lighter_20__Sample = Sample "lighter_20" :: Sample
lighter_21__Sample = Sample "lighter_21" :: Sample
lighter_22__Sample = Sample "lighter_22" :: Sample
lighter_23__Sample = Sample "lighter_23" :: Sample
lighter_24__Sample = Sample "lighter_24" :: Sample
lighter_25__Sample = Sample "lighter_25" :: Sample
lighter_26__Sample = Sample "lighter_26" :: Sample
lighter_27__Sample = Sample "lighter_27" :: Sample
lighter_28__Sample = Sample "lighter_28" :: Sample
lighter_29__Sample = Sample "lighter_29" :: Sample
lighter_30__Sample = Sample "lighter_30" :: Sample
lighter_31__Sample = Sample "lighter_31" :: Sample
lighter_32__Sample = Sample "lighter_32" :: Sample
cb_0__Sample = Sample "cb_0" :: Sample
subroc3d_0__Sample = Sample "subroc3d_0" :: Sample
subroc3d_1__Sample = Sample "subroc3d_1" :: Sample
subroc3d_2__Sample = Sample "subroc3d_2" :: Sample
subroc3d_3__Sample = Sample "subroc3d_3" :: Sample
subroc3d_4__Sample = Sample "subroc3d_4" :: Sample
subroc3d_5__Sample = Sample "subroc3d_5" :: Sample
subroc3d_6__Sample = Sample "subroc3d_6" :: Sample
subroc3d_7__Sample = Sample "subroc3d_7" :: Sample
subroc3d_8__Sample = Sample "subroc3d_8" :: Sample
subroc3d_9__Sample = Sample "subroc3d_9" :: Sample
subroc3d_10__Sample = Sample "subroc3d_10" :: Sample
ul_0__Sample = Sample "ul_0" :: Sample
ul_1__Sample = Sample "ul_1" :: Sample
ul_2__Sample = Sample "ul_2" :: Sample
ul_3__Sample = Sample "ul_3" :: Sample
ul_4__Sample = Sample "ul_4" :: Sample
ul_5__Sample = Sample "ul_5" :: Sample
ul_6__Sample = Sample "ul_6" :: Sample
ul_7__Sample = Sample "ul_7" :: Sample
ul_8__Sample = Sample "ul_8" :: Sample
ul_9__Sample = Sample "ul_9" :: Sample
gab_0__Sample = Sample "gab_0" :: Sample
gab_1__Sample = Sample "gab_1" :: Sample
gab_2__Sample = Sample "gab_2" :: Sample
gab_3__Sample = Sample "gab_3" :: Sample
gab_4__Sample = Sample "gab_4" :: Sample
gab_5__Sample = Sample "gab_5" :: Sample
gab_6__Sample = Sample "gab_6" :: Sample
gab_7__Sample = Sample "gab_7" :: Sample
gab_8__Sample = Sample "gab_8" :: Sample
gab_9__Sample = Sample "gab_9" :: Sample
monsterb_0__Sample = Sample "monsterb_0" :: Sample
monsterb_1__Sample = Sample "monsterb_1" :: Sample
monsterb_2__Sample = Sample "monsterb_2" :: Sample
monsterb_3__Sample = Sample "monsterb_3" :: Sample
monsterb_4__Sample = Sample "monsterb_4" :: Sample
monsterb_5__Sample = Sample "monsterb_5" :: Sample
diphone_0__Sample = Sample "diphone_0" :: Sample
diphone_1__Sample = Sample "diphone_1" :: Sample
diphone_2__Sample = Sample "diphone_2" :: Sample
diphone_3__Sample = Sample "diphone_3" :: Sample
diphone_4__Sample = Sample "diphone_4" :: Sample
diphone_5__Sample = Sample "diphone_5" :: Sample
diphone_6__Sample = Sample "diphone_6" :: Sample
diphone_7__Sample = Sample "diphone_7" :: Sample
diphone_8__Sample = Sample "diphone_8" :: Sample
diphone_9__Sample = Sample "diphone_9" :: Sample
diphone_10__Sample = Sample "diphone_10" :: Sample
diphone_11__Sample = Sample "diphone_11" :: Sample
diphone_12__Sample = Sample "diphone_12" :: Sample
diphone_13__Sample = Sample "diphone_13" :: Sample
diphone_14__Sample = Sample "diphone_14" :: Sample
diphone_15__Sample = Sample "diphone_15" :: Sample
diphone_16__Sample = Sample "diphone_16" :: Sample
diphone_17__Sample = Sample "diphone_17" :: Sample
diphone_18__Sample = Sample "diphone_18" :: Sample
diphone_19__Sample = Sample "diphone_19" :: Sample
diphone_20__Sample = Sample "diphone_20" :: Sample
diphone_21__Sample = Sample "diphone_21" :: Sample
diphone_22__Sample = Sample "diphone_22" :: Sample
diphone_23__Sample = Sample "diphone_23" :: Sample
diphone_24__Sample = Sample "diphone_24" :: Sample
diphone_25__Sample = Sample "diphone_25" :: Sample
diphone_26__Sample = Sample "diphone_26" :: Sample
diphone_27__Sample = Sample "diphone_27" :: Sample
diphone_28__Sample = Sample "diphone_28" :: Sample
diphone_29__Sample = Sample "diphone_29" :: Sample
diphone_30__Sample = Sample "diphone_30" :: Sample
diphone_31__Sample = Sample "diphone_31" :: Sample
diphone_32__Sample = Sample "diphone_32" :: Sample
diphone_33__Sample = Sample "diphone_33" :: Sample
diphone_34__Sample = Sample "diphone_34" :: Sample
diphone_35__Sample = Sample "diphone_35" :: Sample
diphone_36__Sample = Sample "diphone_36" :: Sample
diphone_37__Sample = Sample "diphone_37" :: Sample
clak_0__Sample = Sample "clak_0" :: Sample
clak_1__Sample = Sample "clak_1" :: Sample
sitar_0__Sample = Sample "sitar_0" :: Sample
sitar_1__Sample = Sample "sitar_1" :: Sample
sitar_2__Sample = Sample "sitar_2" :: Sample
sitar_3__Sample = Sample "sitar_3" :: Sample
sitar_4__Sample = Sample "sitar_4" :: Sample
sitar_5__Sample = Sample "sitar_5" :: Sample
sitar_6__Sample = Sample "sitar_6" :: Sample
sitar_7__Sample = Sample "sitar_7" :: Sample
ab_0__Sample = Sample "ab_0" :: Sample
ab_1__Sample = Sample "ab_1" :: Sample
ab_2__Sample = Sample "ab_2" :: Sample
ab_3__Sample = Sample "ab_3" :: Sample
ab_4__Sample = Sample "ab_4" :: Sample
ab_5__Sample = Sample "ab_5" :: Sample
ab_6__Sample = Sample "ab_6" :: Sample
ab_7__Sample = Sample "ab_7" :: Sample
ab_8__Sample = Sample "ab_8" :: Sample
ab_9__Sample = Sample "ab_9" :: Sample
ab_10__Sample = Sample "ab_10" :: Sample
ab_11__Sample = Sample "ab_11" :: Sample
cr_0__Sample = Sample "cr_0" :: Sample
cr_1__Sample = Sample "cr_1" :: Sample
cr_2__Sample = Sample "cr_2" :: Sample
cr_3__Sample = Sample "cr_3" :: Sample
cr_4__Sample = Sample "cr_4" :: Sample
cr_5__Sample = Sample "cr_5" :: Sample
tacscan_0__Sample = Sample "tacscan_0" :: Sample
tacscan_1__Sample = Sample "tacscan_1" :: Sample
tacscan_2__Sample = Sample "tacscan_2" :: Sample
tacscan_3__Sample = Sample "tacscan_3" :: Sample
tacscan_4__Sample = Sample "tacscan_4" :: Sample
tacscan_5__Sample = Sample "tacscan_5" :: Sample
tacscan_6__Sample = Sample "tacscan_6" :: Sample
tacscan_7__Sample = Sample "tacscan_7" :: Sample
tacscan_8__Sample = Sample "tacscan_8" :: Sample
tacscan_9__Sample = Sample "tacscan_9" :: Sample
tacscan_10__Sample = Sample "tacscan_10" :: Sample
tacscan_11__Sample = Sample "tacscan_11" :: Sample
tacscan_12__Sample = Sample "tacscan_12" :: Sample
tacscan_13__Sample = Sample "tacscan_13" :: Sample
tacscan_14__Sample = Sample "tacscan_14" :: Sample
tacscan_15__Sample = Sample "tacscan_15" :: Sample
tacscan_16__Sample = Sample "tacscan_16" :: Sample
tacscan_17__Sample = Sample "tacscan_17" :: Sample
tacscan_18__Sample = Sample "tacscan_18" :: Sample
tacscan_19__Sample = Sample "tacscan_19" :: Sample
tacscan_20__Sample = Sample "tacscan_20" :: Sample
tacscan_21__Sample = Sample "tacscan_21" :: Sample
v_0__Sample = Sample "v_0" :: Sample
v_1__Sample = Sample "v_1" :: Sample
v_2__Sample = Sample "v_2" :: Sample
v_3__Sample = Sample "v_3" :: Sample
v_4__Sample = Sample "v_4" :: Sample
v_5__Sample = Sample "v_5" :: Sample
bd_0__Sample = Sample "bd_0" :: Sample
bd_1__Sample = Sample "bd_1" :: Sample
bd_2__Sample = Sample "bd_2" :: Sample
bd_3__Sample = Sample "bd_3" :: Sample
bd_4__Sample = Sample "bd_4" :: Sample
bd_5__Sample = Sample "bd_5" :: Sample
bd_6__Sample = Sample "bd_6" :: Sample
bd_7__Sample = Sample "bd_7" :: Sample
bd_8__Sample = Sample "bd_8" :: Sample
bd_9__Sample = Sample "bd_9" :: Sample
bd_10__Sample = Sample "bd_10" :: Sample
bd_11__Sample = Sample "bd_11" :: Sample
bd_12__Sample = Sample "bd_12" :: Sample
bd_13__Sample = Sample "bd_13" :: Sample
bd_14__Sample = Sample "bd_14" :: Sample
bd_15__Sample = Sample "bd_15" :: Sample
bd_16__Sample = Sample "bd_16" :: Sample
bd_17__Sample = Sample "bd_17" :: Sample
bd_18__Sample = Sample "bd_18" :: Sample
bd_19__Sample = Sample "bd_19" :: Sample
bd_20__Sample = Sample "bd_20" :: Sample
bd_21__Sample = Sample "bd_21" :: Sample
bd_22__Sample = Sample "bd_22" :: Sample
bd_23__Sample = Sample "bd_23" :: Sample
rm_0__Sample = Sample "rm_0" :: Sample
rm_1__Sample = Sample "rm_1" :: Sample
blue_0__Sample = Sample "blue_0" :: Sample
blue_1__Sample = Sample "blue_1" :: Sample
latibro_0__Sample = Sample "latibro_0" :: Sample
latibro_1__Sample = Sample "latibro_1" :: Sample
latibro_2__Sample = Sample "latibro_2" :: Sample
latibro_3__Sample = Sample "latibro_3" :: Sample
latibro_4__Sample = Sample "latibro_4" :: Sample
latibro_5__Sample = Sample "latibro_5" :: Sample
latibro_6__Sample = Sample "latibro_6" :: Sample
latibro_7__Sample = Sample "latibro_7" :: Sample
dr_few_0__Sample = Sample "dr_few_0" :: Sample
dr_few_1__Sample = Sample "dr_few_1" :: Sample
dr_few_2__Sample = Sample "dr_few_2" :: Sample
dr_few_3__Sample = Sample "dr_few_3" :: Sample
dr_few_4__Sample = Sample "dr_few_4" :: Sample
dr_few_5__Sample = Sample "dr_few_5" :: Sample
dr_few_6__Sample = Sample "dr_few_6" :: Sample
dr_few_7__Sample = Sample "dr_few_7" :: Sample
rave2_0__Sample = Sample "rave2_0" :: Sample
rave2_1__Sample = Sample "rave2_1" :: Sample
rave2_2__Sample = Sample "rave2_2" :: Sample
rave2_3__Sample = Sample "rave2_3" :: Sample
rave2_4__Sample = Sample "rave2_4" :: Sample
rave2_5__Sample = Sample "rave2_5" :: Sample
koy_0__Sample = Sample "koy_0" :: Sample
koy_1__Sample = Sample "koy_1" :: Sample
glitch2_0__Sample = Sample "glitch2_0" :: Sample
glitch2_1__Sample = Sample "glitch2_1" :: Sample
glitch2_2__Sample = Sample "glitch2_2" :: Sample
glitch2_3__Sample = Sample "glitch2_3" :: Sample
glitch2_4__Sample = Sample "glitch2_4" :: Sample
glitch2_5__Sample = Sample "glitch2_5" :: Sample
glitch2_6__Sample = Sample "glitch2_6" :: Sample
glitch2_7__Sample = Sample "glitch2_7" :: Sample
hmm_0__Sample = Sample "hmm_0" :: Sample
arp_0__Sample = Sample "arp_0" :: Sample
arp_1__Sample = Sample "arp_1" :: Sample
made2_0__Sample = Sample "made2_0" :: Sample
uxay_0__Sample = Sample "uxay_0" :: Sample
uxay_1__Sample = Sample "uxay_1" :: Sample
uxay_2__Sample = Sample "uxay_2" :: Sample
stomp_0__Sample = Sample "stomp_0" :: Sample
stomp_1__Sample = Sample "stomp_1" :: Sample
stomp_2__Sample = Sample "stomp_2" :: Sample
stomp_3__Sample = Sample "stomp_3" :: Sample
stomp_4__Sample = Sample "stomp_4" :: Sample
stomp_5__Sample = Sample "stomp_5" :: Sample
stomp_6__Sample = Sample "stomp_6" :: Sample
stomp_7__Sample = Sample "stomp_7" :: Sample
stomp_8__Sample = Sample "stomp_8" :: Sample
stomp_9__Sample = Sample "stomp_9" :: Sample
tech_0__Sample = Sample "tech_0" :: Sample
tech_1__Sample = Sample "tech_1" :: Sample
tech_2__Sample = Sample "tech_2" :: Sample
tech_3__Sample = Sample "tech_3" :: Sample
tech_4__Sample = Sample "tech_4" :: Sample
tech_5__Sample = Sample "tech_5" :: Sample
tech_6__Sample = Sample "tech_6" :: Sample
tech_7__Sample = Sample "tech_7" :: Sample
tech_8__Sample = Sample "tech_8" :: Sample
tech_9__Sample = Sample "tech_9" :: Sample
tech_10__Sample = Sample "tech_10" :: Sample
tech_11__Sample = Sample "tech_11" :: Sample
tech_12__Sample = Sample "tech_12" :: Sample
sn_0__Sample = Sample "sn_0" :: Sample
sn_1__Sample = Sample "sn_1" :: Sample
sn_2__Sample = Sample "sn_2" :: Sample
sn_3__Sample = Sample "sn_3" :: Sample
sn_4__Sample = Sample "sn_4" :: Sample
sn_5__Sample = Sample "sn_5" :: Sample
sn_6__Sample = Sample "sn_6" :: Sample
sn_7__Sample = Sample "sn_7" :: Sample
sn_8__Sample = Sample "sn_8" :: Sample
sn_9__Sample = Sample "sn_9" :: Sample
sn_10__Sample = Sample "sn_10" :: Sample
sn_11__Sample = Sample "sn_11" :: Sample
sn_12__Sample = Sample "sn_12" :: Sample
sn_13__Sample = Sample "sn_13" :: Sample
sn_14__Sample = Sample "sn_14" :: Sample
sn_15__Sample = Sample "sn_15" :: Sample
sn_16__Sample = Sample "sn_16" :: Sample
sn_17__Sample = Sample "sn_17" :: Sample
sn_18__Sample = Sample "sn_18" :: Sample
sn_19__Sample = Sample "sn_19" :: Sample
sn_20__Sample = Sample "sn_20" :: Sample
sn_21__Sample = Sample "sn_21" :: Sample
sn_22__Sample = Sample "sn_22" :: Sample
sn_23__Sample = Sample "sn_23" :: Sample
sn_24__Sample = Sample "sn_24" :: Sample
sn_25__Sample = Sample "sn_25" :: Sample
sn_26__Sample = Sample "sn_26" :: Sample
sn_27__Sample = Sample "sn_27" :: Sample
sn_28__Sample = Sample "sn_28" :: Sample
sn_29__Sample = Sample "sn_29" :: Sample
sn_30__Sample = Sample "sn_30" :: Sample
sn_31__Sample = Sample "sn_31" :: Sample
sn_32__Sample = Sample "sn_32" :: Sample
sn_33__Sample = Sample "sn_33" :: Sample
sn_34__Sample = Sample "sn_34" :: Sample
sn_35__Sample = Sample "sn_35" :: Sample
sn_36__Sample = Sample "sn_36" :: Sample
sn_37__Sample = Sample "sn_37" :: Sample
sn_38__Sample = Sample "sn_38" :: Sample
sn_39__Sample = Sample "sn_39" :: Sample
sn_40__Sample = Sample "sn_40" :: Sample
sn_41__Sample = Sample "sn_41" :: Sample
sn_42__Sample = Sample "sn_42" :: Sample
sn_43__Sample = Sample "sn_43" :: Sample
sn_44__Sample = Sample "sn_44" :: Sample
sn_45__Sample = Sample "sn_45" :: Sample
sn_46__Sample = Sample "sn_46" :: Sample
sn_47__Sample = Sample "sn_47" :: Sample
sn_48__Sample = Sample "sn_48" :: Sample
sn_49__Sample = Sample "sn_49" :: Sample
sn_50__Sample = Sample "sn_50" :: Sample
sn_51__Sample = Sample "sn_51" :: Sample
less_0__Sample = Sample "less_0" :: Sample
less_1__Sample = Sample "less_1" :: Sample
less_2__Sample = Sample "less_2" :: Sample
less_3__Sample = Sample "less_3" :: Sample
off_0__Sample = Sample "off_0" :: Sample
x_808sd_0__Sample = Sample "x_808sd_0" :: Sample
x_808sd_1__Sample = Sample "x_808sd_1" :: Sample
x_808sd_2__Sample = Sample "x_808sd_2" :: Sample
x_808sd_3__Sample = Sample "x_808sd_3" :: Sample
x_808sd_4__Sample = Sample "x_808sd_4" :: Sample
x_808sd_5__Sample = Sample "x_808sd_5" :: Sample
x_808sd_6__Sample = Sample "x_808sd_6" :: Sample
x_808sd_7__Sample = Sample "x_808sd_7" :: Sample
x_808sd_8__Sample = Sample "x_808sd_8" :: Sample
x_808sd_9__Sample = Sample "x_808sd_9" :: Sample
x_808sd_10__Sample = Sample "x_808sd_10" :: Sample
x_808sd_11__Sample = Sample "x_808sd_11" :: Sample
x_808sd_12__Sample = Sample "x_808sd_12" :: Sample
x_808sd_13__Sample = Sample "x_808sd_13" :: Sample
x_808sd_14__Sample = Sample "x_808sd_14" :: Sample
x_808sd_15__Sample = Sample "x_808sd_15" :: Sample
x_808sd_16__Sample = Sample "x_808sd_16" :: Sample
x_808sd_17__Sample = Sample "x_808sd_17" :: Sample
x_808sd_18__Sample = Sample "x_808sd_18" :: Sample
x_808sd_19__Sample = Sample "x_808sd_19" :: Sample
x_808sd_20__Sample = Sample "x_808sd_20" :: Sample
x_808sd_21__Sample = Sample "x_808sd_21" :: Sample
x_808sd_22__Sample = Sample "x_808sd_22" :: Sample
x_808sd_23__Sample = Sample "x_808sd_23" :: Sample
x_808sd_24__Sample = Sample "x_808sd_24" :: Sample
trump_0__Sample = Sample "trump_0" :: Sample
trump_1__Sample = Sample "trump_1" :: Sample
trump_2__Sample = Sample "trump_2" :: Sample
trump_3__Sample = Sample "trump_3" :: Sample
trump_4__Sample = Sample "trump_4" :: Sample
trump_5__Sample = Sample "trump_5" :: Sample
trump_6__Sample = Sample "trump_6" :: Sample
trump_7__Sample = Sample "trump_7" :: Sample
trump_8__Sample = Sample "trump_8" :: Sample
trump_9__Sample = Sample "trump_9" :: Sample
trump_10__Sample = Sample "trump_10" :: Sample
bev_0__Sample = Sample "bev_0" :: Sample
bev_1__Sample = Sample "bev_1" :: Sample
pad_0__Sample = Sample "pad_0" :: Sample
pad_1__Sample = Sample "pad_1" :: Sample
pad_2__Sample = Sample "pad_2" :: Sample
led_0__Sample = Sample "led_0" :: Sample
perc_0__Sample = Sample "perc_0" :: Sample
perc_1__Sample = Sample "perc_1" :: Sample
perc_2__Sample = Sample "perc_2" :: Sample
perc_3__Sample = Sample "perc_3" :: Sample
perc_4__Sample = Sample "perc_4" :: Sample
perc_5__Sample = Sample "perc_5" :: Sample
pluck_0__Sample = Sample "pluck_0" :: Sample
pluck_1__Sample = Sample "pluck_1" :: Sample
pluck_2__Sample = Sample "pluck_2" :: Sample
pluck_3__Sample = Sample "pluck_3" :: Sample
pluck_4__Sample = Sample "pluck_4" :: Sample
pluck_5__Sample = Sample "pluck_5" :: Sample
pluck_6__Sample = Sample "pluck_6" :: Sample
pluck_7__Sample = Sample "pluck_7" :: Sample
pluck_8__Sample = Sample "pluck_8" :: Sample
pluck_9__Sample = Sample "pluck_9" :: Sample
pluck_10__Sample = Sample "pluck_10" :: Sample
pluck_11__Sample = Sample "pluck_11" :: Sample
pluck_12__Sample = Sample "pluck_12" :: Sample
pluck_13__Sample = Sample "pluck_13" :: Sample
pluck_14__Sample = Sample "pluck_14" :: Sample
pluck_15__Sample = Sample "pluck_15" :: Sample
pluck_16__Sample = Sample "pluck_16" :: Sample
bleep_0__Sample = Sample "bleep_0" :: Sample
bleep_1__Sample = Sample "bleep_1" :: Sample
bleep_2__Sample = Sample "bleep_2" :: Sample
bleep_3__Sample = Sample "bleep_3" :: Sample
bleep_4__Sample = Sample "bleep_4" :: Sample
bleep_5__Sample = Sample "bleep_5" :: Sample
bleep_6__Sample = Sample "bleep_6" :: Sample
bleep_7__Sample = Sample "bleep_7" :: Sample
bleep_8__Sample = Sample "bleep_8" :: Sample
bleep_9__Sample = Sample "bleep_9" :: Sample
bleep_10__Sample = Sample "bleep_10" :: Sample
bleep_11__Sample = Sample "bleep_11" :: Sample
bleep_12__Sample = Sample "bleep_12" :: Sample
ht_0__Sample = Sample "ht_0" :: Sample
ht_1__Sample = Sample "ht_1" :: Sample
ht_2__Sample = Sample "ht_2" :: Sample
ht_3__Sample = Sample "ht_3" :: Sample
ht_4__Sample = Sample "ht_4" :: Sample
ht_5__Sample = Sample "ht_5" :: Sample
ht_6__Sample = Sample "ht_6" :: Sample
ht_7__Sample = Sample "ht_7" :: Sample
ht_8__Sample = Sample "ht_8" :: Sample
ht_9__Sample = Sample "ht_9" :: Sample
ht_10__Sample = Sample "ht_10" :: Sample
ht_11__Sample = Sample "ht_11" :: Sample
ht_12__Sample = Sample "ht_12" :: Sample
ht_13__Sample = Sample "ht_13" :: Sample
ht_14__Sample = Sample "ht_14" :: Sample
ht_15__Sample = Sample "ht_15" :: Sample
ades4_0__Sample = Sample "ades4_0" :: Sample
ades4_1__Sample = Sample "ades4_1" :: Sample
ades4_2__Sample = Sample "ades4_2" :: Sample
ades4_3__Sample = Sample "ades4_3" :: Sample
ades4_4__Sample = Sample "ades4_4" :: Sample
ades4_5__Sample = Sample "ades4_5" :: Sample
proc_0__Sample = Sample "proc_0" :: Sample
proc_1__Sample = Sample "proc_1" :: Sample
gretsch_0__Sample = Sample "gretsch_0" :: Sample
gretsch_1__Sample = Sample "gretsch_1" :: Sample
gretsch_2__Sample = Sample "gretsch_2" :: Sample
gretsch_3__Sample = Sample "gretsch_3" :: Sample
gretsch_4__Sample = Sample "gretsch_4" :: Sample
gretsch_5__Sample = Sample "gretsch_5" :: Sample
gretsch_6__Sample = Sample "gretsch_6" :: Sample
gretsch_7__Sample = Sample "gretsch_7" :: Sample
gretsch_8__Sample = Sample "gretsch_8" :: Sample
gretsch_9__Sample = Sample "gretsch_9" :: Sample
gretsch_10__Sample = Sample "gretsch_10" :: Sample
gretsch_11__Sample = Sample "gretsch_11" :: Sample
gretsch_12__Sample = Sample "gretsch_12" :: Sample
gretsch_13__Sample = Sample "gretsch_13" :: Sample
gretsch_14__Sample = Sample "gretsch_14" :: Sample
gretsch_15__Sample = Sample "gretsch_15" :: Sample
gretsch_16__Sample = Sample "gretsch_16" :: Sample
gretsch_17__Sample = Sample "gretsch_17" :: Sample
gretsch_18__Sample = Sample "gretsch_18" :: Sample
gretsch_19__Sample = Sample "gretsch_19" :: Sample
gretsch_20__Sample = Sample "gretsch_20" :: Sample
gretsch_21__Sample = Sample "gretsch_21" :: Sample
gretsch_22__Sample = Sample "gretsch_22" :: Sample
gretsch_23__Sample = Sample "gretsch_23" :: Sample
outdoor_0__Sample = Sample "outdoor_0" :: Sample
outdoor_1__Sample = Sample "outdoor_1" :: Sample
outdoor_2__Sample = Sample "outdoor_2" :: Sample
outdoor_3__Sample = Sample "outdoor_3" :: Sample
outdoor_4__Sample = Sample "outdoor_4" :: Sample
outdoor_5__Sample = Sample "outdoor_5" :: Sample
techno_0__Sample = Sample "techno_0" :: Sample
techno_1__Sample = Sample "techno_1" :: Sample
techno_2__Sample = Sample "techno_2" :: Sample
techno_3__Sample = Sample "techno_3" :: Sample
techno_4__Sample = Sample "techno_4" :: Sample
techno_5__Sample = Sample "techno_5" :: Sample
techno_6__Sample = Sample "techno_6" :: Sample
ulgab_0__Sample = Sample "ulgab_0" :: Sample
ulgab_1__Sample = Sample "ulgab_1" :: Sample
ulgab_2__Sample = Sample "ulgab_2" :: Sample
ulgab_3__Sample = Sample "ulgab_3" :: Sample
ulgab_4__Sample = Sample "ulgab_4" :: Sample
breaks125_0__Sample = Sample "breaks125_0" :: Sample
breaks125_1__Sample = Sample "breaks125_1" :: Sample
bin_0__Sample = Sample "bin_0" :: Sample
bin_1__Sample = Sample "bin_1" :: Sample
x_808mc_0__Sample = Sample "x_808mc_0" :: Sample
x_808mc_1__Sample = Sample "x_808mc_1" :: Sample
x_808mc_2__Sample = Sample "x_808mc_2" :: Sample
x_808mc_3__Sample = Sample "x_808mc_3" :: Sample
x_808mc_4__Sample = Sample "x_808mc_4" :: Sample
lt_0__Sample = Sample "lt_0" :: Sample
lt_1__Sample = Sample "lt_1" :: Sample
lt_2__Sample = Sample "lt_2" :: Sample
lt_3__Sample = Sample "lt_3" :: Sample
lt_4__Sample = Sample "lt_4" :: Sample
lt_5__Sample = Sample "lt_5" :: Sample
lt_6__Sample = Sample "lt_6" :: Sample
lt_7__Sample = Sample "lt_7" :: Sample
lt_8__Sample = Sample "lt_8" :: Sample
lt_9__Sample = Sample "lt_9" :: Sample
lt_10__Sample = Sample "lt_10" :: Sample
lt_11__Sample = Sample "lt_11" :: Sample
lt_12__Sample = Sample "lt_12" :: Sample
lt_13__Sample = Sample "lt_13" :: Sample
lt_14__Sample = Sample "lt_14" :: Sample
lt_15__Sample = Sample "lt_15" :: Sample
amencutup_0__Sample = Sample "amencutup_0" :: Sample
amencutup_1__Sample = Sample "amencutup_1" :: Sample
amencutup_2__Sample = Sample "amencutup_2" :: Sample
amencutup_3__Sample = Sample "amencutup_3" :: Sample
amencutup_4__Sample = Sample "amencutup_4" :: Sample
amencutup_5__Sample = Sample "amencutup_5" :: Sample
amencutup_6__Sample = Sample "amencutup_6" :: Sample
amencutup_7__Sample = Sample "amencutup_7" :: Sample
amencutup_8__Sample = Sample "amencutup_8" :: Sample
amencutup_9__Sample = Sample "amencutup_9" :: Sample
amencutup_10__Sample = Sample "amencutup_10" :: Sample
amencutup_11__Sample = Sample "amencutup_11" :: Sample
amencutup_12__Sample = Sample "amencutup_12" :: Sample
amencutup_13__Sample = Sample "amencutup_13" :: Sample
amencutup_14__Sample = Sample "amencutup_14" :: Sample
amencutup_15__Sample = Sample "amencutup_15" :: Sample
amencutup_16__Sample = Sample "amencutup_16" :: Sample
amencutup_17__Sample = Sample "amencutup_17" :: Sample
amencutup_18__Sample = Sample "amencutup_18" :: Sample
amencutup_19__Sample = Sample "amencutup_19" :: Sample
amencutup_20__Sample = Sample "amencutup_20" :: Sample
amencutup_21__Sample = Sample "amencutup_21" :: Sample
amencutup_22__Sample = Sample "amencutup_22" :: Sample
amencutup_23__Sample = Sample "amencutup_23" :: Sample
amencutup_24__Sample = Sample "amencutup_24" :: Sample
amencutup_25__Sample = Sample "amencutup_25" :: Sample
amencutup_26__Sample = Sample "amencutup_26" :: Sample
amencutup_27__Sample = Sample "amencutup_27" :: Sample
amencutup_28__Sample = Sample "amencutup_28" :: Sample
amencutup_29__Sample = Sample "amencutup_29" :: Sample
amencutup_30__Sample = Sample "amencutup_30" :: Sample
amencutup_31__Sample = Sample "amencutup_31" :: Sample
drum_0__Sample = Sample "drum_0" :: Sample
drum_1__Sample = Sample "drum_1" :: Sample
drum_2__Sample = Sample "drum_2" :: Sample
drum_3__Sample = Sample "drum_3" :: Sample
drum_4__Sample = Sample "drum_4" :: Sample
drum_5__Sample = Sample "drum_5" :: Sample
coins_0__Sample = Sample "coins_0" :: Sample
industrial_0__Sample = Sample "industrial_0" :: Sample
industrial_1__Sample = Sample "industrial_1" :: Sample
industrial_2__Sample = Sample "industrial_2" :: Sample
industrial_3__Sample = Sample "industrial_3" :: Sample
industrial_4__Sample = Sample "industrial_4" :: Sample
industrial_5__Sample = Sample "industrial_5" :: Sample
industrial_6__Sample = Sample "industrial_6" :: Sample
industrial_7__Sample = Sample "industrial_7" :: Sample
industrial_8__Sample = Sample "industrial_8" :: Sample
industrial_9__Sample = Sample "industrial_9" :: Sample
industrial_10__Sample = Sample "industrial_10" :: Sample
industrial_11__Sample = Sample "industrial_11" :: Sample
industrial_12__Sample = Sample "industrial_12" :: Sample
industrial_13__Sample = Sample "industrial_13" :: Sample
industrial_14__Sample = Sample "industrial_14" :: Sample
industrial_15__Sample = Sample "industrial_15" :: Sample
industrial_16__Sample = Sample "industrial_16" :: Sample
industrial_17__Sample = Sample "industrial_17" :: Sample
industrial_18__Sample = Sample "industrial_18" :: Sample
industrial_19__Sample = Sample "industrial_19" :: Sample
industrial_20__Sample = Sample "industrial_20" :: Sample
industrial_21__Sample = Sample "industrial_21" :: Sample
industrial_22__Sample = Sample "industrial_22" :: Sample
industrial_23__Sample = Sample "industrial_23" :: Sample
industrial_24__Sample = Sample "industrial_24" :: Sample
industrial_25__Sample = Sample "industrial_25" :: Sample
industrial_26__Sample = Sample "industrial_26" :: Sample
industrial_27__Sample = Sample "industrial_27" :: Sample
industrial_28__Sample = Sample "industrial_28" :: Sample
industrial_29__Sample = Sample "industrial_29" :: Sample
industrial_30__Sample = Sample "industrial_30" :: Sample
industrial_31__Sample = Sample "industrial_31" :: Sample
tink_0__Sample = Sample "tink_0" :: Sample
tink_1__Sample = Sample "tink_1" :: Sample
tink_2__Sample = Sample "tink_2" :: Sample
tink_3__Sample = Sample "tink_3" :: Sample
tink_4__Sample = Sample "tink_4" :: Sample
co_0__Sample = Sample "co_0" :: Sample
co_1__Sample = Sample "co_1" :: Sample
co_2__Sample = Sample "co_2" :: Sample
co_3__Sample = Sample "co_3" :: Sample
fest_0__Sample = Sample "fest_0" :: Sample
feelfx_0__Sample = Sample "feelfx_0" :: Sample
feelfx_1__Sample = Sample "feelfx_1" :: Sample
feelfx_2__Sample = Sample "feelfx_2" :: Sample
feelfx_3__Sample = Sample "feelfx_3" :: Sample
feelfx_4__Sample = Sample "feelfx_4" :: Sample
feelfx_5__Sample = Sample "feelfx_5" :: Sample
feelfx_6__Sample = Sample "feelfx_6" :: Sample
feelfx_7__Sample = Sample "feelfx_7" :: Sample
x_808cy_0__Sample = Sample "x_808cy_0" :: Sample
x_808cy_1__Sample = Sample "x_808cy_1" :: Sample
x_808cy_2__Sample = Sample "x_808cy_2" :: Sample
x_808cy_3__Sample = Sample "x_808cy_3" :: Sample
x_808cy_4__Sample = Sample "x_808cy_4" :: Sample
x_808cy_5__Sample = Sample "x_808cy_5" :: Sample
x_808cy_6__Sample = Sample "x_808cy_6" :: Sample
x_808cy_7__Sample = Sample "x_808cy_7" :: Sample
x_808cy_8__Sample = Sample "x_808cy_8" :: Sample
x_808cy_9__Sample = Sample "x_808cy_9" :: Sample
x_808cy_10__Sample = Sample "x_808cy_10" :: Sample
x_808cy_11__Sample = Sample "x_808cy_11" :: Sample
x_808cy_12__Sample = Sample "x_808cy_12" :: Sample
x_808cy_13__Sample = Sample "x_808cy_13" :: Sample
x_808cy_14__Sample = Sample "x_808cy_14" :: Sample
x_808cy_15__Sample = Sample "x_808cy_15" :: Sample
x_808cy_16__Sample = Sample "x_808cy_16" :: Sample
x_808cy_17__Sample = Sample "x_808cy_17" :: Sample
x_808cy_18__Sample = Sample "x_808cy_18" :: Sample
x_808cy_19__Sample = Sample "x_808cy_19" :: Sample
x_808cy_20__Sample = Sample "x_808cy_20" :: Sample
x_808cy_21__Sample = Sample "x_808cy_21" :: Sample
x_808cy_22__Sample = Sample "x_808cy_22" :: Sample
x_808cy_23__Sample = Sample "x_808cy_23" :: Sample
x_808cy_24__Sample = Sample "x_808cy_24" :: Sample
world_0__Sample = Sample "world_0" :: Sample
world_1__Sample = Sample "world_1" :: Sample
world_2__Sample = Sample "world_2" :: Sample
f_0__Sample = Sample "f_0" :: Sample
numbers_0__Sample = Sample "numbers_0" :: Sample
numbers_1__Sample = Sample "numbers_1" :: Sample
numbers_2__Sample = Sample "numbers_2" :: Sample
numbers_3__Sample = Sample "numbers_3" :: Sample
numbers_4__Sample = Sample "numbers_4" :: Sample
numbers_5__Sample = Sample "numbers_5" :: Sample
numbers_6__Sample = Sample "numbers_6" :: Sample
numbers_7__Sample = Sample "numbers_7" :: Sample
numbers_8__Sample = Sample "numbers_8" :: Sample
d_0__Sample = Sample "d_0" :: Sample
d_1__Sample = Sample "d_1" :: Sample
d_2__Sample = Sample "d_2" :: Sample
d_3__Sample = Sample "d_3" :: Sample
padlong_0__Sample = Sample "padlong_0" :: Sample
sequential_0__Sample = Sample "sequential_0" :: Sample
sequential_1__Sample = Sample "sequential_1" :: Sample
sequential_2__Sample = Sample "sequential_2" :: Sample
sequential_3__Sample = Sample "sequential_3" :: Sample
sequential_4__Sample = Sample "sequential_4" :: Sample
sequential_5__Sample = Sample "sequential_5" :: Sample
sequential_6__Sample = Sample "sequential_6" :: Sample
sequential_7__Sample = Sample "sequential_7" :: Sample
stab_0__Sample = Sample "stab_0" :: Sample
stab_1__Sample = Sample "stab_1" :: Sample
stab_2__Sample = Sample "stab_2" :: Sample
stab_3__Sample = Sample "stab_3" :: Sample
stab_4__Sample = Sample "stab_4" :: Sample
stab_5__Sample = Sample "stab_5" :: Sample
stab_6__Sample = Sample "stab_6" :: Sample
stab_7__Sample = Sample "stab_7" :: Sample
stab_8__Sample = Sample "stab_8" :: Sample
stab_9__Sample = Sample "stab_9" :: Sample
stab_10__Sample = Sample "stab_10" :: Sample
stab_11__Sample = Sample "stab_11" :: Sample
stab_12__Sample = Sample "stab_12" :: Sample
stab_13__Sample = Sample "stab_13" :: Sample
stab_14__Sample = Sample "stab_14" :: Sample
stab_15__Sample = Sample "stab_15" :: Sample
stab_16__Sample = Sample "stab_16" :: Sample
stab_17__Sample = Sample "stab_17" :: Sample
stab_18__Sample = Sample "stab_18" :: Sample
stab_19__Sample = Sample "stab_19" :: Sample
stab_20__Sample = Sample "stab_20" :: Sample
stab_21__Sample = Sample "stab_21" :: Sample
stab_22__Sample = Sample "stab_22" :: Sample
electro1_0__Sample = Sample "electro1_0" :: Sample
electro1_1__Sample = Sample "electro1_1" :: Sample
electro1_2__Sample = Sample "electro1_2" :: Sample
electro1_3__Sample = Sample "electro1_3" :: Sample
electro1_4__Sample = Sample "electro1_4" :: Sample
electro1_5__Sample = Sample "electro1_5" :: Sample
electro1_6__Sample = Sample "electro1_6" :: Sample
electro1_7__Sample = Sample "electro1_7" :: Sample
electro1_8__Sample = Sample "electro1_8" :: Sample
electro1_9__Sample = Sample "electro1_9" :: Sample
electro1_10__Sample = Sample "electro1_10" :: Sample
electro1_11__Sample = Sample "electro1_11" :: Sample
electro1_12__Sample = Sample "electro1_12" :: Sample
ifdrums_0__Sample = Sample "ifdrums_0" :: Sample
ifdrums_1__Sample = Sample "ifdrums_1" :: Sample
ifdrums_2__Sample = Sample "ifdrums_2" :: Sample
invaders_0__Sample = Sample "invaders_0" :: Sample
invaders_1__Sample = Sample "invaders_1" :: Sample
invaders_2__Sample = Sample "invaders_2" :: Sample
invaders_3__Sample = Sample "invaders_3" :: Sample
invaders_4__Sample = Sample "invaders_4" :: Sample
invaders_5__Sample = Sample "invaders_5" :: Sample
invaders_6__Sample = Sample "invaders_6" :: Sample
invaders_7__Sample = Sample "invaders_7" :: Sample
invaders_8__Sample = Sample "invaders_8" :: Sample
invaders_9__Sample = Sample "invaders_9" :: Sample
invaders_10__Sample = Sample "invaders_10" :: Sample
invaders_11__Sample = Sample "invaders_11" :: Sample
invaders_12__Sample = Sample "invaders_12" :: Sample
invaders_13__Sample = Sample "invaders_13" :: Sample
invaders_14__Sample = Sample "invaders_14" :: Sample
invaders_15__Sample = Sample "invaders_15" :: Sample
invaders_16__Sample = Sample "invaders_16" :: Sample
invaders_17__Sample = Sample "invaders_17" :: Sample
dist_0__Sample = Sample "dist_0" :: Sample
dist_1__Sample = Sample "dist_1" :: Sample
dist_2__Sample = Sample "dist_2" :: Sample
dist_3__Sample = Sample "dist_3" :: Sample
dist_4__Sample = Sample "dist_4" :: Sample
dist_5__Sample = Sample "dist_5" :: Sample
dist_6__Sample = Sample "dist_6" :: Sample
dist_7__Sample = Sample "dist_7" :: Sample
dist_8__Sample = Sample "dist_8" :: Sample
dist_9__Sample = Sample "dist_9" :: Sample
dist_10__Sample = Sample "dist_10" :: Sample
dist_11__Sample = Sample "dist_11" :: Sample
dist_12__Sample = Sample "dist_12" :: Sample
dist_13__Sample = Sample "dist_13" :: Sample
dist_14__Sample = Sample "dist_14" :: Sample
dist_15__Sample = Sample "dist_15" :: Sample
sundance_0__Sample = Sample "sundance_0" :: Sample
sundance_1__Sample = Sample "sundance_1" :: Sample
sundance_2__Sample = Sample "sundance_2" :: Sample
sundance_3__Sample = Sample "sundance_3" :: Sample
sundance_4__Sample = Sample "sundance_4" :: Sample
sundance_5__Sample = Sample "sundance_5" :: Sample
speech_0__Sample = Sample "speech_0" :: Sample
speech_1__Sample = Sample "speech_1" :: Sample
speech_2__Sample = Sample "speech_2" :: Sample
speech_3__Sample = Sample "speech_3" :: Sample
speech_4__Sample = Sample "speech_4" :: Sample
speech_5__Sample = Sample "speech_5" :: Sample
speech_6__Sample = Sample "speech_6" :: Sample
toys_0__Sample = Sample "toys_0" :: Sample
toys_1__Sample = Sample "toys_1" :: Sample
toys_2__Sample = Sample "toys_2" :: Sample
toys_3__Sample = Sample "toys_3" :: Sample
toys_4__Sample = Sample "toys_4" :: Sample
toys_5__Sample = Sample "toys_5" :: Sample
toys_6__Sample = Sample "toys_6" :: Sample
toys_7__Sample = Sample "toys_7" :: Sample
toys_8__Sample = Sample "toys_8" :: Sample
toys_9__Sample = Sample "toys_9" :: Sample
toys_10__Sample = Sample "toys_10" :: Sample
toys_11__Sample = Sample "toys_11" :: Sample
toys_12__Sample = Sample "toys_12" :: Sample
bass0_0__Sample = Sample "bass0_0" :: Sample
bass0_1__Sample = Sample "bass0_1" :: Sample
bass0_2__Sample = Sample "bass0_2" :: Sample
realclaps_0__Sample = Sample "realclaps_0" :: Sample
realclaps_1__Sample = Sample "realclaps_1" :: Sample
realclaps_2__Sample = Sample "realclaps_2" :: Sample
realclaps_3__Sample = Sample "realclaps_3" :: Sample
dorkbot_0__Sample = Sample "dorkbot_0" :: Sample
dorkbot_1__Sample = Sample "dorkbot_1" :: Sample
arpy_0__Sample = Sample "arpy_0" :: Sample
arpy_1__Sample = Sample "arpy_1" :: Sample
arpy_2__Sample = Sample "arpy_2" :: Sample
arpy_3__Sample = Sample "arpy_3" :: Sample
arpy_4__Sample = Sample "arpy_4" :: Sample
arpy_5__Sample = Sample "arpy_5" :: Sample
arpy_6__Sample = Sample "arpy_6" :: Sample
arpy_7__Sample = Sample "arpy_7" :: Sample
arpy_8__Sample = Sample "arpy_8" :: Sample
arpy_9__Sample = Sample "arpy_9" :: Sample
arpy_10__Sample = Sample "arpy_10" :: Sample
fire_0__Sample = Sample "fire_0" :: Sample
hoover_0__Sample = Sample "hoover_0" :: Sample
hoover_1__Sample = Sample "hoover_1" :: Sample
hoover_2__Sample = Sample "hoover_2" :: Sample
hoover_3__Sample = Sample "hoover_3" :: Sample
hoover_4__Sample = Sample "hoover_4" :: Sample
hoover_5__Sample = Sample "hoover_5" :: Sample
breath_0__Sample = Sample "breath_0" :: Sample
rave_0__Sample = Sample "rave_0" :: Sample
rave_1__Sample = Sample "rave_1" :: Sample
rave_2__Sample = Sample "rave_2" :: Sample
rave_3__Sample = Sample "rave_3" :: Sample
rave_4__Sample = Sample "rave_4" :: Sample
rave_5__Sample = Sample "rave_5" :: Sample
rave_6__Sample = Sample "rave_6" :: Sample
rave_7__Sample = Sample "rave_7" :: Sample
bottle_0__Sample = Sample "bottle_0" :: Sample
bottle_1__Sample = Sample "bottle_1" :: Sample
bottle_2__Sample = Sample "bottle_2" :: Sample
bottle_3__Sample = Sample "bottle_3" :: Sample
bottle_4__Sample = Sample "bottle_4" :: Sample
bottle_5__Sample = Sample "bottle_5" :: Sample
bottle_6__Sample = Sample "bottle_6" :: Sample
bottle_7__Sample = Sample "bottle_7" :: Sample
bottle_8__Sample = Sample "bottle_8" :: Sample
bottle_9__Sample = Sample "bottle_9" :: Sample
bottle_10__Sample = Sample "bottle_10" :: Sample
bottle_11__Sample = Sample "bottle_11" :: Sample
bottle_12__Sample = Sample "bottle_12" :: Sample
east_0__Sample = Sample "east_0" :: Sample
east_1__Sample = Sample "east_1" :: Sample
east_2__Sample = Sample "east_2" :: Sample
east_3__Sample = Sample "east_3" :: Sample
east_4__Sample = Sample "east_4" :: Sample
east_5__Sample = Sample "east_5" :: Sample
east_6__Sample = Sample "east_6" :: Sample
east_7__Sample = Sample "east_7" :: Sample
east_8__Sample = Sample "east_8" :: Sample
linnhats_0__Sample = Sample "linnhats_0" :: Sample
linnhats_1__Sample = Sample "linnhats_1" :: Sample
linnhats_2__Sample = Sample "linnhats_2" :: Sample
linnhats_3__Sample = Sample "linnhats_3" :: Sample
linnhats_4__Sample = Sample "linnhats_4" :: Sample
linnhats_5__Sample = Sample "linnhats_5" :: Sample
speedupdown_0__Sample = Sample "speedupdown_0" :: Sample
speedupdown_1__Sample = Sample "speedupdown_1" :: Sample
speedupdown_2__Sample = Sample "speedupdown_2" :: Sample
speedupdown_3__Sample = Sample "speedupdown_3" :: Sample
speedupdown_4__Sample = Sample "speedupdown_4" :: Sample
speedupdown_5__Sample = Sample "speedupdown_5" :: Sample
speedupdown_6__Sample = Sample "speedupdown_6" :: Sample
speedupdown_7__Sample = Sample "speedupdown_7" :: Sample
speedupdown_8__Sample = Sample "speedupdown_8" :: Sample
cosmicg_0__Sample = Sample "cosmicg_0" :: Sample
cosmicg_1__Sample = Sample "cosmicg_1" :: Sample
cosmicg_2__Sample = Sample "cosmicg_2" :: Sample
cosmicg_3__Sample = Sample "cosmicg_3" :: Sample
cosmicg_4__Sample = Sample "cosmicg_4" :: Sample
cosmicg_5__Sample = Sample "cosmicg_5" :: Sample
cosmicg_6__Sample = Sample "cosmicg_6" :: Sample
cosmicg_7__Sample = Sample "cosmicg_7" :: Sample
cosmicg_8__Sample = Sample "cosmicg_8" :: Sample
cosmicg_9__Sample = Sample "cosmicg_9" :: Sample
cosmicg_10__Sample = Sample "cosmicg_10" :: Sample
cosmicg_11__Sample = Sample "cosmicg_11" :: Sample
cosmicg_12__Sample = Sample "cosmicg_12" :: Sample
cosmicg_13__Sample = Sample "cosmicg_13" :: Sample
cosmicg_14__Sample = Sample "cosmicg_14" :: Sample
jvbass_0__Sample = Sample "jvbass_0" :: Sample
jvbass_1__Sample = Sample "jvbass_1" :: Sample
jvbass_2__Sample = Sample "jvbass_2" :: Sample
jvbass_3__Sample = Sample "jvbass_3" :: Sample
jvbass_4__Sample = Sample "jvbass_4" :: Sample
jvbass_5__Sample = Sample "jvbass_5" :: Sample
jvbass_6__Sample = Sample "jvbass_6" :: Sample
jvbass_7__Sample = Sample "jvbass_7" :: Sample
jvbass_8__Sample = Sample "jvbass_8" :: Sample
jvbass_9__Sample = Sample "jvbass_9" :: Sample
jvbass_10__Sample = Sample "jvbass_10" :: Sample
jvbass_11__Sample = Sample "jvbass_11" :: Sample
jvbass_12__Sample = Sample "jvbass_12" :: Sample
mash_0__Sample = Sample "mash_0" :: Sample
mash_1__Sample = Sample "mash_1" :: Sample
feel_0__Sample = Sample "feel_0" :: Sample
feel_1__Sample = Sample "feel_1" :: Sample
feel_2__Sample = Sample "feel_2" :: Sample
feel_3__Sample = Sample "feel_3" :: Sample
feel_4__Sample = Sample "feel_4" :: Sample
feel_5__Sample = Sample "feel_5" :: Sample
feel_6__Sample = Sample "feel_6" :: Sample
short_0__Sample = Sample "short_0" :: Sample
short_1__Sample = Sample "short_1" :: Sample
short_2__Sample = Sample "short_2" :: Sample
short_3__Sample = Sample "short_3" :: Sample
short_4__Sample = Sample "short_4" :: Sample
incoming_0__Sample = Sample "incoming_0" :: Sample
incoming_1__Sample = Sample "incoming_1" :: Sample
incoming_2__Sample = Sample "incoming_2" :: Sample
incoming_3__Sample = Sample "incoming_3" :: Sample
incoming_4__Sample = Sample "incoming_4" :: Sample
incoming_5__Sample = Sample "incoming_5" :: Sample
incoming_6__Sample = Sample "incoming_6" :: Sample
incoming_7__Sample = Sample "incoming_7" :: Sample
flick_0__Sample = Sample "flick_0" :: Sample
flick_1__Sample = Sample "flick_1" :: Sample
flick_2__Sample = Sample "flick_2" :: Sample
flick_3__Sample = Sample "flick_3" :: Sample
flick_4__Sample = Sample "flick_4" :: Sample
flick_5__Sample = Sample "flick_5" :: Sample
flick_6__Sample = Sample "flick_6" :: Sample
flick_7__Sample = Sample "flick_7" :: Sample
flick_8__Sample = Sample "flick_8" :: Sample
flick_9__Sample = Sample "flick_9" :: Sample
flick_10__Sample = Sample "flick_10" :: Sample
flick_11__Sample = Sample "flick_11" :: Sample
flick_12__Sample = Sample "flick_12" :: Sample
flick_13__Sample = Sample "flick_13" :: Sample
flick_14__Sample = Sample "flick_14" :: Sample
flick_15__Sample = Sample "flick_15" :: Sample
flick_16__Sample = Sample "flick_16" :: Sample
reverbkick_0__Sample = Sample "reverbkick_0" :: Sample
bass2_0__Sample = Sample "bass2_0" :: Sample
bass2_1__Sample = Sample "bass2_1" :: Sample
bass2_2__Sample = Sample "bass2_2" :: Sample
bass2_3__Sample = Sample "bass2_3" :: Sample
bass2_4__Sample = Sample "bass2_4" :: Sample
baa_0__Sample = Sample "baa_0" :: Sample
baa_1__Sample = Sample "baa_1" :: Sample
baa_2__Sample = Sample "baa_2" :: Sample
baa_3__Sample = Sample "baa_3" :: Sample
baa_4__Sample = Sample "baa_4" :: Sample
baa_5__Sample = Sample "baa_5" :: Sample
baa_6__Sample = Sample "baa_6" :: Sample
fm_0__Sample = Sample "fm_0" :: Sample
fm_1__Sample = Sample "fm_1" :: Sample
fm_2__Sample = Sample "fm_2" :: Sample
fm_3__Sample = Sample "fm_3" :: Sample
fm_4__Sample = Sample "fm_4" :: Sample
fm_5__Sample = Sample "fm_5" :: Sample
fm_6__Sample = Sample "fm_6" :: Sample
fm_7__Sample = Sample "fm_7" :: Sample
fm_8__Sample = Sample "fm_8" :: Sample
fm_9__Sample = Sample "fm_9" :: Sample
fm_10__Sample = Sample "fm_10" :: Sample
fm_11__Sample = Sample "fm_11" :: Sample
fm_12__Sample = Sample "fm_12" :: Sample
fm_13__Sample = Sample "fm_13" :: Sample
fm_14__Sample = Sample "fm_14" :: Sample
fm_15__Sample = Sample "fm_15" :: Sample
fm_16__Sample = Sample "fm_16" :: Sample
click_0__Sample = Sample "click_0" :: Sample
click_1__Sample = Sample "click_1" :: Sample
click_2__Sample = Sample "click_2" :: Sample
click_3__Sample = Sample "click_3" :: Sample
control_0__Sample = Sample "control_0" :: Sample
control_1__Sample = Sample "control_1" :: Sample
peri_0__Sample = Sample "peri_0" :: Sample
peri_1__Sample = Sample "peri_1" :: Sample
peri_2__Sample = Sample "peri_2" :: Sample
peri_3__Sample = Sample "peri_3" :: Sample
peri_4__Sample = Sample "peri_4" :: Sample
peri_5__Sample = Sample "peri_5" :: Sample
peri_6__Sample = Sample "peri_6" :: Sample
peri_7__Sample = Sample "peri_7" :: Sample
peri_8__Sample = Sample "peri_8" :: Sample
peri_9__Sample = Sample "peri_9" :: Sample
peri_10__Sample = Sample "peri_10" :: Sample
peri_11__Sample = Sample "peri_11" :: Sample
peri_12__Sample = Sample "peri_12" :: Sample
peri_13__Sample = Sample "peri_13" :: Sample
peri_14__Sample = Sample "peri_14" :: Sample
procshort_0__Sample = Sample "procshort_0" :: Sample
procshort_1__Sample = Sample "procshort_1" :: Sample
procshort_2__Sample = Sample "procshort_2" :: Sample
procshort_3__Sample = Sample "procshort_3" :: Sample
procshort_4__Sample = Sample "procshort_4" :: Sample
procshort_5__Sample = Sample "procshort_5" :: Sample
procshort_6__Sample = Sample "procshort_6" :: Sample
procshort_7__Sample = Sample "procshort_7" :: Sample
hand_0__Sample = Sample "hand_0" :: Sample
hand_1__Sample = Sample "hand_1" :: Sample
hand_2__Sample = Sample "hand_2" :: Sample
hand_3__Sample = Sample "hand_3" :: Sample
hand_4__Sample = Sample "hand_4" :: Sample
hand_5__Sample = Sample "hand_5" :: Sample
hand_6__Sample = Sample "hand_6" :: Sample
hand_7__Sample = Sample "hand_7" :: Sample
hand_8__Sample = Sample "hand_8" :: Sample
hand_9__Sample = Sample "hand_9" :: Sample
hand_10__Sample = Sample "hand_10" :: Sample
hand_11__Sample = Sample "hand_11" :: Sample
hand_12__Sample = Sample "hand_12" :: Sample
hand_13__Sample = Sample "hand_13" :: Sample
hand_14__Sample = Sample "hand_14" :: Sample
hand_15__Sample = Sample "hand_15" :: Sample
hand_16__Sample = Sample "hand_16" :: Sample
future_0__Sample = Sample "future_0" :: Sample
future_1__Sample = Sample "future_1" :: Sample
future_2__Sample = Sample "future_2" :: Sample
future_3__Sample = Sample "future_3" :: Sample
future_4__Sample = Sample "future_4" :: Sample
future_5__Sample = Sample "future_5" :: Sample
future_6__Sample = Sample "future_6" :: Sample
future_7__Sample = Sample "future_7" :: Sample
future_8__Sample = Sample "future_8" :: Sample
future_9__Sample = Sample "future_9" :: Sample
future_10__Sample = Sample "future_10" :: Sample
future_11__Sample = Sample "future_11" :: Sample
future_12__Sample = Sample "future_12" :: Sample
future_13__Sample = Sample "future_13" :: Sample
future_14__Sample = Sample "future_14" :: Sample
future_15__Sample = Sample "future_15" :: Sample
future_16__Sample = Sample "future_16" :: Sample
hh_0__Sample = Sample "hh_0" :: Sample
hh_1__Sample = Sample "hh_1" :: Sample
hh_2__Sample = Sample "hh_2" :: Sample
hh_3__Sample = Sample "hh_3" :: Sample
hh_4__Sample = Sample "hh_4" :: Sample
hh_5__Sample = Sample "hh_5" :: Sample
hh_6__Sample = Sample "hh_6" :: Sample
hh_7__Sample = Sample "hh_7" :: Sample
hh_8__Sample = Sample "hh_8" :: Sample
hh_9__Sample = Sample "hh_9" :: Sample
hh_10__Sample = Sample "hh_10" :: Sample
hh_11__Sample = Sample "hh_11" :: Sample
hh_12__Sample = Sample "hh_12" :: Sample
x_808ht_0__Sample = Sample "x_808ht_0" :: Sample
x_808ht_1__Sample = Sample "x_808ht_1" :: Sample
x_808ht_2__Sample = Sample "x_808ht_2" :: Sample
x_808ht_3__Sample = Sample "x_808ht_3" :: Sample
x_808ht_4__Sample = Sample "x_808ht_4" :: Sample
db_0__Sample = Sample "db_0" :: Sample
db_1__Sample = Sample "db_1" :: Sample
db_2__Sample = Sample "db_2" :: Sample
db_3__Sample = Sample "db_3" :: Sample
db_4__Sample = Sample "db_4" :: Sample
db_5__Sample = Sample "db_5" :: Sample
db_6__Sample = Sample "db_6" :: Sample
db_7__Sample = Sample "db_7" :: Sample
db_8__Sample = Sample "db_8" :: Sample
db_9__Sample = Sample "db_9" :: Sample
db_10__Sample = Sample "db_10" :: Sample
db_11__Sample = Sample "db_11" :: Sample
db_12__Sample = Sample "db_12" :: Sample

nameToSampleO :: Object Sample
nameToSampleO = Object.fromFoldable nameToSample

nameToSampleMO :: Object (Maybe Sample)
nameToSampleMO = Object.union (map Just nameToSampleO) (Object.singleton "~" Nothing)

nameToSampleMNO :: Object (Maybe Note)
nameToSampleMNO = (map <<< map) (Note <<< { sample: _, rateFoT: const 1.0, volumeFoT: const 1.0 }) nameToSampleMO

nameToSample :: Array (String /\ Sample)
nameToSample =
  [ "intentionalSilenceForInternalUseOnly" /\ intentionalSilenceForInternalUseOnly__Sample
  , "kicklinn" /\ kicklinn_0__Sample
  , "kicklinn:0" /\ kicklinn_0__Sample
  , "msg" /\ msg_0__Sample
  , "msg:0" /\ msg_0__Sample
  , "msg:1" /\ msg_1__Sample
  , "msg:2" /\ msg_2__Sample
  , "msg:3" /\ msg_3__Sample
  , "msg:4" /\ msg_4__Sample
  , "msg:5" /\ msg_5__Sample
  , "msg:6" /\ msg_6__Sample
  , "msg:7" /\ msg_7__Sample
  , "msg:8" /\ msg_8__Sample
  , "gabbalouder" /\ gabbalouder_0__Sample
  , "gabbalouder:0" /\ gabbalouder_0__Sample
  , "gabbalouder:1" /\ gabbalouder_1__Sample
  , "gabbalouder:2" /\ gabbalouder_2__Sample
  , "gabbalouder:3" /\ gabbalouder_3__Sample
  , "kurt" /\ kurt_0__Sample
  , "kurt:0" /\ kurt_0__Sample
  , "kurt:1" /\ kurt_1__Sample
  , "kurt:2" /\ kurt_2__Sample
  , "kurt:3" /\ kurt_3__Sample
  , "kurt:4" /\ kurt_4__Sample
  , "kurt:5" /\ kurt_5__Sample
  , "kurt:6" /\ kurt_6__Sample
  , "bassdm" /\ bassdm_0__Sample
  , "bassdm:0" /\ bassdm_0__Sample
  , "bassdm:1" /\ bassdm_1__Sample
  , "bassdm:2" /\ bassdm_2__Sample
  , "bassdm:3" /\ bassdm_3__Sample
  , "bassdm:4" /\ bassdm_4__Sample
  , "bassdm:5" /\ bassdm_5__Sample
  , "bassdm:6" /\ bassdm_6__Sample
  , "bassdm:7" /\ bassdm_7__Sample
  , "bassdm:8" /\ bassdm_8__Sample
  , "bassdm:9" /\ bassdm_9__Sample
  , "bassdm:10" /\ bassdm_10__Sample
  , "bassdm:11" /\ bassdm_11__Sample
  , "bassdm:12" /\ bassdm_12__Sample
  , "bassdm:13" /\ bassdm_13__Sample
  , "bassdm:14" /\ bassdm_14__Sample
  , "bassdm:15" /\ bassdm_15__Sample
  , "bassdm:16" /\ bassdm_16__Sample
  , "bassdm:17" /\ bassdm_17__Sample
  , "bassdm:18" /\ bassdm_18__Sample
  , "bassdm:19" /\ bassdm_19__Sample
  , "bassdm:20" /\ bassdm_20__Sample
  , "bassdm:21" /\ bassdm_21__Sample
  , "bassdm:22" /\ bassdm_22__Sample
  , "bassdm:23" /\ bassdm_23__Sample
  , "tabla2" /\ tabla2_0__Sample
  , "tabla2:0" /\ tabla2_0__Sample
  , "tabla2:1" /\ tabla2_1__Sample
  , "tabla2:2" /\ tabla2_2__Sample
  , "tabla2:3" /\ tabla2_3__Sample
  , "tabla2:4" /\ tabla2_4__Sample
  , "tabla2:5" /\ tabla2_5__Sample
  , "tabla2:6" /\ tabla2_6__Sample
  , "tabla2:7" /\ tabla2_7__Sample
  , "tabla2:8" /\ tabla2_8__Sample
  , "tabla2:9" /\ tabla2_9__Sample
  , "tabla2:10" /\ tabla2_10__Sample
  , "tabla2:11" /\ tabla2_11__Sample
  , "tabla2:12" /\ tabla2_12__Sample
  , "tabla2:13" /\ tabla2_13__Sample
  , "tabla2:14" /\ tabla2_14__Sample
  , "tabla2:15" /\ tabla2_15__Sample
  , "tabla2:16" /\ tabla2_16__Sample
  , "tabla2:17" /\ tabla2_17__Sample
  , "tabla2:18" /\ tabla2_18__Sample
  , "tabla2:19" /\ tabla2_19__Sample
  , "tabla2:20" /\ tabla2_20__Sample
  , "tabla2:21" /\ tabla2_21__Sample
  , "tabla2:22" /\ tabla2_22__Sample
  , "tabla2:23" /\ tabla2_23__Sample
  , "tabla2:24" /\ tabla2_24__Sample
  , "tabla2:25" /\ tabla2_25__Sample
  , "tabla2:26" /\ tabla2_26__Sample
  , "tabla2:27" /\ tabla2_27__Sample
  , "tabla2:28" /\ tabla2_28__Sample
  , "tabla2:29" /\ tabla2_29__Sample
  , "tabla2:30" /\ tabla2_30__Sample
  , "tabla2:31" /\ tabla2_31__Sample
  , "tabla2:32" /\ tabla2_32__Sample
  , "tabla2:33" /\ tabla2_33__Sample
  , "tabla2:34" /\ tabla2_34__Sample
  , "tabla2:35" /\ tabla2_35__Sample
  , "tabla2:36" /\ tabla2_36__Sample
  , "tabla2:37" /\ tabla2_37__Sample
  , "tabla2:38" /\ tabla2_38__Sample
  , "tabla2:39" /\ tabla2_39__Sample
  , "tabla2:40" /\ tabla2_40__Sample
  , "tabla2:41" /\ tabla2_41__Sample
  , "tabla2:42" /\ tabla2_42__Sample
  , "tabla2:43" /\ tabla2_43__Sample
  , "tabla2:44" /\ tabla2_44__Sample
  , "tabla2:45" /\ tabla2_45__Sample
  , "chin" /\ chin_0__Sample
  , "chin:0" /\ chin_0__Sample
  , "chin:1" /\ chin_1__Sample
  , "chin:2" /\ chin_2__Sample
  , "chin:3" /\ chin_3__Sample
  , "mp3" /\ mp3_0__Sample
  , "mp3:0" /\ mp3_0__Sample
  , "mp3:1" /\ mp3_1__Sample
  , "mp3:2" /\ mp3_2__Sample
  , "mp3:3" /\ mp3_3__Sample
  , "tablex" /\ tablex_0__Sample
  , "tablex:0" /\ tablex_0__Sample
  , "tablex:1" /\ tablex_1__Sample
  , "tablex:2" /\ tablex_2__Sample
  , "sf" /\ sf_0__Sample
  , "sf:0" /\ sf_0__Sample
  , "sf:1" /\ sf_1__Sample
  , "sf:2" /\ sf_2__Sample
  , "sf:3" /\ sf_3__Sample
  , "sf:4" /\ sf_4__Sample
  , "sf:5" /\ sf_5__Sample
  , "sf:6" /\ sf_6__Sample
  , "sf:7" /\ sf_7__Sample
  , "sf:8" /\ sf_8__Sample
  , "sf:9" /\ sf_9__Sample
  , "sf:10" /\ sf_10__Sample
  , "sf:11" /\ sf_11__Sample
  , "sf:12" /\ sf_12__Sample
  , "sf:13" /\ sf_13__Sample
  , "sf:14" /\ sf_14__Sample
  , "sf:15" /\ sf_15__Sample
  , "sf:16" /\ sf_16__Sample
  , "sf:17" /\ sf_17__Sample
  , "speakspell" /\ speakspell_0__Sample
  , "speakspell:0" /\ speakspell_0__Sample
  , "speakspell:1" /\ speakspell_1__Sample
  , "speakspell:2" /\ speakspell_2__Sample
  , "speakspell:3" /\ speakspell_3__Sample
  , "speakspell:4" /\ speakspell_4__Sample
  , "speakspell:5" /\ speakspell_5__Sample
  , "speakspell:6" /\ speakspell_6__Sample
  , "speakspell:7" /\ speakspell_7__Sample
  , "speakspell:8" /\ speakspell_8__Sample
  , "speakspell:9" /\ speakspell_9__Sample
  , "speakspell:10" /\ speakspell_10__Sample
  , "speakspell:11" /\ speakspell_11__Sample
  , "cc" /\ cc_0__Sample
  , "cc:0" /\ cc_0__Sample
  , "cc:1" /\ cc_1__Sample
  , "cc:2" /\ cc_2__Sample
  , "cc:3" /\ cc_3__Sample
  , "cc:4" /\ cc_4__Sample
  , "cc:5" /\ cc_5__Sample
  , "gabbaloud" /\ gabbaloud_0__Sample
  , "gabbaloud:0" /\ gabbaloud_0__Sample
  , "gabbaloud:1" /\ gabbaloud_1__Sample
  , "gabbaloud:2" /\ gabbaloud_2__Sample
  , "gabbaloud:3" /\ gabbaloud_3__Sample
  , "ades2" /\ ades2_0__Sample
  , "ades2:0" /\ ades2_0__Sample
  , "ades2:1" /\ ades2_1__Sample
  , "ades2:2" /\ ades2_2__Sample
  , "ades2:3" /\ ades2_3__Sample
  , "ades2:4" /\ ades2_4__Sample
  , "ades2:5" /\ ades2_5__Sample
  , "ades2:6" /\ ades2_6__Sample
  , "ades2:7" /\ ades2_7__Sample
  , "ades2:8" /\ ades2_8__Sample
  , "space" /\ space_0__Sample
  , "space:0" /\ space_0__Sample
  , "space:1" /\ space_1__Sample
  , "space:2" /\ space_2__Sample
  , "space:3" /\ space_3__Sample
  , "space:4" /\ space_4__Sample
  , "space:5" /\ space_5__Sample
  , "space:6" /\ space_6__Sample
  , "space:7" /\ space_7__Sample
  , "space:8" /\ space_8__Sample
  , "space:9" /\ space_9__Sample
  , "space:10" /\ space_10__Sample
  , "space:11" /\ space_11__Sample
  , "space:12" /\ space_12__Sample
  , "space:13" /\ space_13__Sample
  , "space:14" /\ space_14__Sample
  , "space:15" /\ space_15__Sample
  , "space:16" /\ space_16__Sample
  , "space:17" /\ space_17__Sample
  , "battles" /\ battles_0__Sample
  , "battles:0" /\ battles_0__Sample
  , "battles:1" /\ battles_1__Sample
  , "voodoo" /\ voodoo_0__Sample
  , "voodoo:0" /\ voodoo_0__Sample
  , "voodoo:1" /\ voodoo_1__Sample
  , "voodoo:2" /\ voodoo_2__Sample
  , "voodoo:3" /\ voodoo_3__Sample
  , "voodoo:4" /\ voodoo_4__Sample
  , "ravemono" /\ ravemono_0__Sample
  , "ravemono:0" /\ ravemono_0__Sample
  , "ravemono:1" /\ ravemono_1__Sample
  , "psr" /\ psr_0__Sample
  , "psr:0" /\ psr_0__Sample
  , "psr:1" /\ psr_1__Sample
  , "psr:2" /\ psr_2__Sample
  , "psr:3" /\ psr_3__Sample
  , "psr:4" /\ psr_4__Sample
  , "psr:5" /\ psr_5__Sample
  , "psr:6" /\ psr_6__Sample
  , "psr:7" /\ psr_7__Sample
  , "psr:8" /\ psr_8__Sample
  , "psr:9" /\ psr_9__Sample
  , "psr:10" /\ psr_10__Sample
  , "psr:11" /\ psr_11__Sample
  , "psr:12" /\ psr_12__Sample
  , "psr:13" /\ psr_13__Sample
  , "psr:14" /\ psr_14__Sample
  , "psr:15" /\ psr_15__Sample
  , "psr:16" /\ psr_16__Sample
  , "psr:17" /\ psr_17__Sample
  , "psr:18" /\ psr_18__Sample
  , "psr:19" /\ psr_19__Sample
  , "psr:20" /\ psr_20__Sample
  , "psr:21" /\ psr_21__Sample
  , "psr:22" /\ psr_22__Sample
  , "psr:23" /\ psr_23__Sample
  , "psr:24" /\ psr_24__Sample
  , "psr:25" /\ psr_25__Sample
  , "psr:26" /\ psr_26__Sample
  , "psr:27" /\ psr_27__Sample
  , "psr:28" /\ psr_28__Sample
  , "psr:29" /\ psr_29__Sample
  , "metal" /\ metal_0__Sample
  , "metal:0" /\ metal_0__Sample
  , "metal:1" /\ metal_1__Sample
  , "metal:2" /\ metal_2__Sample
  , "metal:3" /\ metal_3__Sample
  , "metal:4" /\ metal_4__Sample
  , "metal:5" /\ metal_5__Sample
  , "metal:6" /\ metal_6__Sample
  , "metal:7" /\ metal_7__Sample
  , "metal:8" /\ metal_8__Sample
  , "metal:9" /\ metal_9__Sample
  , "hardcore" /\ hardcore_0__Sample
  , "hardcore:0" /\ hardcore_0__Sample
  , "hardcore:1" /\ hardcore_1__Sample
  , "hardcore:2" /\ hardcore_2__Sample
  , "hardcore:3" /\ hardcore_3__Sample
  , "hardcore:4" /\ hardcore_4__Sample
  , "hardcore:5" /\ hardcore_5__Sample
  , "hardcore:6" /\ hardcore_6__Sample
  , "hardcore:7" /\ hardcore_7__Sample
  , "hardcore:8" /\ hardcore_8__Sample
  , "hardcore:9" /\ hardcore_9__Sample
  , "hardcore:10" /\ hardcore_10__Sample
  , "hardcore:11" /\ hardcore_11__Sample
  , "mouth" /\ mouth_0__Sample
  , "mouth:0" /\ mouth_0__Sample
  , "mouth:1" /\ mouth_1__Sample
  , "mouth:2" /\ mouth_2__Sample
  , "mouth:3" /\ mouth_3__Sample
  , "mouth:4" /\ mouth_4__Sample
  , "mouth:5" /\ mouth_5__Sample
  , "mouth:6" /\ mouth_6__Sample
  , "mouth:7" /\ mouth_7__Sample
  , "mouth:8" /\ mouth_8__Sample
  , "mouth:9" /\ mouth_9__Sample
  , "mouth:10" /\ mouth_10__Sample
  , "mouth:11" /\ mouth_11__Sample
  , "mouth:12" /\ mouth_12__Sample
  , "mouth:13" /\ mouth_13__Sample
  , "mouth:14" /\ mouth_14__Sample
  , "sugar" /\ sugar_0__Sample
  , "sugar:0" /\ sugar_0__Sample
  , "sugar:1" /\ sugar_1__Sample
  , "odx" /\ odx_0__Sample
  , "odx:0" /\ odx_0__Sample
  , "odx:1" /\ odx_1__Sample
  , "odx:2" /\ odx_2__Sample
  , "odx:3" /\ odx_3__Sample
  , "odx:4" /\ odx_4__Sample
  , "odx:5" /\ odx_5__Sample
  , "odx:6" /\ odx_6__Sample
  , "odx:7" /\ odx_7__Sample
  , "odx:8" /\ odx_8__Sample
  , "odx:9" /\ odx_9__Sample
  , "odx:10" /\ odx_10__Sample
  , "odx:11" /\ odx_11__Sample
  , "odx:12" /\ odx_12__Sample
  , "odx:13" /\ odx_13__Sample
  , "odx:14" /\ odx_14__Sample
  , "x_808lc" /\ x_808lc_0__Sample
  , "x_808lc:0" /\ x_808lc_0__Sample
  , "x_808lc:1" /\ x_808lc_1__Sample
  , "x_808lc:2" /\ x_808lc_2__Sample
  , "x_808lc:3" /\ x_808lc_3__Sample
  , "x_808lc:4" /\ x_808lc_4__Sample
  , "mt" /\ mt_0__Sample
  , "mt:0" /\ mt_0__Sample
  , "mt:1" /\ mt_1__Sample
  , "mt:2" /\ mt_2__Sample
  , "mt:3" /\ mt_3__Sample
  , "mt:4" /\ mt_4__Sample
  , "mt:5" /\ mt_5__Sample
  , "mt:6" /\ mt_6__Sample
  , "mt:7" /\ mt_7__Sample
  , "mt:8" /\ mt_8__Sample
  , "mt:9" /\ mt_9__Sample
  , "mt:10" /\ mt_10__Sample
  , "mt:11" /\ mt_11__Sample
  , "mt:12" /\ mt_12__Sample
  , "mt:13" /\ mt_13__Sample
  , "mt:14" /\ mt_14__Sample
  , "mt:15" /\ mt_15__Sample
  , "drumtraks" /\ drumtraks_0__Sample
  , "drumtraks:0" /\ drumtraks_0__Sample
  , "drumtraks:1" /\ drumtraks_1__Sample
  , "drumtraks:2" /\ drumtraks_2__Sample
  , "drumtraks:3" /\ drumtraks_3__Sample
  , "drumtraks:4" /\ drumtraks_4__Sample
  , "drumtraks:5" /\ drumtraks_5__Sample
  , "drumtraks:6" /\ drumtraks_6__Sample
  , "drumtraks:7" /\ drumtraks_7__Sample
  , "drumtraks:8" /\ drumtraks_8__Sample
  , "drumtraks:9" /\ drumtraks_9__Sample
  , "drumtraks:10" /\ drumtraks_10__Sample
  , "drumtraks:11" /\ drumtraks_11__Sample
  , "drumtraks:12" /\ drumtraks_12__Sample
  , "print" /\ print_0__Sample
  , "print:0" /\ print_0__Sample
  , "print:1" /\ print_1__Sample
  , "print:2" /\ print_2__Sample
  , "print:3" /\ print_3__Sample
  , "print:4" /\ print_4__Sample
  , "print:5" /\ print_5__Sample
  , "print:6" /\ print_6__Sample
  , "print:7" /\ print_7__Sample
  , "print:8" /\ print_8__Sample
  , "print:9" /\ print_9__Sample
  , "print:10" /\ print_10__Sample
  , "blip" /\ blip_0__Sample
  , "blip:0" /\ blip_0__Sample
  , "blip:1" /\ blip_1__Sample
  , "wobble" /\ wobble_0__Sample
  , "wobble:0" /\ wobble_0__Sample
  , "made" /\ made_0__Sample
  , "made:0" /\ made_0__Sample
  , "made:1" /\ made_1__Sample
  , "made:2" /\ made_2__Sample
  , "made:3" /\ made_3__Sample
  , "made:4" /\ made_4__Sample
  , "made:5" /\ made_5__Sample
  , "made:6" /\ made_6__Sample
  , "bass3" /\ bass3_0__Sample
  , "bass3:0" /\ bass3_0__Sample
  , "bass3:1" /\ bass3_1__Sample
  , "bass3:2" /\ bass3_2__Sample
  , "bass3:3" /\ bass3_3__Sample
  , "bass3:4" /\ bass3_4__Sample
  , "bass3:5" /\ bass3_5__Sample
  , "bass3:6" /\ bass3_6__Sample
  , "bass3:7" /\ bass3_7__Sample
  , "bass3:8" /\ bass3_8__Sample
  , "bass3:9" /\ bass3_9__Sample
  , "bass3:10" /\ bass3_10__Sample
  , "speechless" /\ speechless_0__Sample
  , "speechless:0" /\ speechless_0__Sample
  , "speechless:1" /\ speechless_1__Sample
  , "speechless:2" /\ speechless_2__Sample
  , "speechless:3" /\ speechless_3__Sample
  , "speechless:4" /\ speechless_4__Sample
  , "speechless:5" /\ speechless_5__Sample
  , "speechless:6" /\ speechless_6__Sample
  , "speechless:7" /\ speechless_7__Sample
  , "speechless:8" /\ speechless_8__Sample
  , "speechless:9" /\ speechless_9__Sample
  , "sine" /\ sine_0__Sample
  , "sine:0" /\ sine_0__Sample
  , "sine:1" /\ sine_1__Sample
  , "sine:2" /\ sine_2__Sample
  , "sine:3" /\ sine_3__Sample
  , "sine:4" /\ sine_4__Sample
  , "sine:5" /\ sine_5__Sample
  , "noise" /\ noise_0__Sample
  , "noise:0" /\ noise_0__Sample
  , "x_808lt" /\ x_808lt_0__Sample
  , "x_808lt:0" /\ x_808lt_0__Sample
  , "x_808lt:1" /\ x_808lt_1__Sample
  , "x_808lt:2" /\ x_808lt_2__Sample
  , "x_808lt:3" /\ x_808lt_3__Sample
  , "x_808lt:4" /\ x_808lt_4__Sample
  , "sd" /\ sd_0__Sample
  , "sd:0" /\ sd_0__Sample
  , "sd:1" /\ sd_1__Sample
  , "alphabet" /\ alphabet_0__Sample
  , "alphabet:0" /\ alphabet_0__Sample
  , "alphabet:1" /\ alphabet_1__Sample
  , "alphabet:2" /\ alphabet_2__Sample
  , "alphabet:3" /\ alphabet_3__Sample
  , "alphabet:4" /\ alphabet_4__Sample
  , "alphabet:5" /\ alphabet_5__Sample
  , "alphabet:6" /\ alphabet_6__Sample
  , "alphabet:7" /\ alphabet_7__Sample
  , "alphabet:8" /\ alphabet_8__Sample
  , "alphabet:9" /\ alphabet_9__Sample
  , "alphabet:10" /\ alphabet_10__Sample
  , "alphabet:11" /\ alphabet_11__Sample
  , "alphabet:12" /\ alphabet_12__Sample
  , "alphabet:13" /\ alphabet_13__Sample
  , "alphabet:14" /\ alphabet_14__Sample
  , "alphabet:15" /\ alphabet_15__Sample
  , "alphabet:16" /\ alphabet_16__Sample
  , "alphabet:17" /\ alphabet_17__Sample
  , "alphabet:18" /\ alphabet_18__Sample
  , "alphabet:19" /\ alphabet_19__Sample
  , "alphabet:20" /\ alphabet_20__Sample
  , "alphabet:21" /\ alphabet_21__Sample
  , "alphabet:22" /\ alphabet_22__Sample
  , "alphabet:23" /\ alphabet_23__Sample
  , "alphabet:24" /\ alphabet_24__Sample
  , "alphabet:25" /\ alphabet_25__Sample
  , "baa2" /\ baa2_0__Sample
  , "baa2:0" /\ baa2_0__Sample
  , "baa2:1" /\ baa2_1__Sample
  , "baa2:2" /\ baa2_2__Sample
  , "baa2:3" /\ baa2_3__Sample
  , "baa2:4" /\ baa2_4__Sample
  , "baa2:5" /\ baa2_5__Sample
  , "baa2:6" /\ baa2_6__Sample
  , "tok" /\ tok_0__Sample
  , "tok:0" /\ tok_0__Sample
  , "tok:1" /\ tok_1__Sample
  , "tok:2" /\ tok_2__Sample
  , "tok:3" /\ tok_3__Sample
  , "ades3" /\ ades3_0__Sample
  , "ades3:0" /\ ades3_0__Sample
  , "ades3:1" /\ ades3_1__Sample
  , "ades3:2" /\ ades3_2__Sample
  , "ades3:3" /\ ades3_3__Sample
  , "ades3:4" /\ ades3_4__Sample
  , "ades3:5" /\ ades3_5__Sample
  , "ades3:6" /\ ades3_6__Sample
  , "x_909" /\ x_909_0__Sample
  , "x_909:0" /\ x_909_0__Sample
  , "sid" /\ sid_0__Sample
  , "sid:0" /\ sid_0__Sample
  , "sid:1" /\ sid_1__Sample
  , "sid:2" /\ sid_2__Sample
  , "sid:3" /\ sid_3__Sample
  , "sid:4" /\ sid_4__Sample
  , "sid:5" /\ sid_5__Sample
  , "sid:6" /\ sid_6__Sample
  , "sid:7" /\ sid_7__Sample
  , "sid:8" /\ sid_8__Sample
  , "sid:9" /\ sid_9__Sample
  , "sid:10" /\ sid_10__Sample
  , "sid:11" /\ sid_11__Sample
  , "jungbass" /\ jungbass_0__Sample
  , "jungbass:0" /\ jungbass_0__Sample
  , "jungbass:1" /\ jungbass_1__Sample
  , "jungbass:2" /\ jungbass_2__Sample
  , "jungbass:3" /\ jungbass_3__Sample
  , "jungbass:4" /\ jungbass_4__Sample
  , "jungbass:5" /\ jungbass_5__Sample
  , "jungbass:6" /\ jungbass_6__Sample
  , "jungbass:7" /\ jungbass_7__Sample
  , "jungbass:8" /\ jungbass_8__Sample
  , "jungbass:9" /\ jungbass_9__Sample
  , "jungbass:10" /\ jungbass_10__Sample
  , "jungbass:11" /\ jungbass_11__Sample
  , "jungbass:12" /\ jungbass_12__Sample
  , "jungbass:13" /\ jungbass_13__Sample
  , "jungbass:14" /\ jungbass_14__Sample
  , "jungbass:15" /\ jungbass_15__Sample
  , "jungbass:16" /\ jungbass_16__Sample
  , "jungbass:17" /\ jungbass_17__Sample
  , "jungbass:18" /\ jungbass_18__Sample
  , "jungbass:19" /\ jungbass_19__Sample
  , "gabba" /\ gabba_0__Sample
  , "gabba:0" /\ gabba_0__Sample
  , "gabba:1" /\ gabba_1__Sample
  , "gabba:2" /\ gabba_2__Sample
  , "gabba:3" /\ gabba_3__Sample
  , "crow" /\ crow_0__Sample
  , "crow:0" /\ crow_0__Sample
  , "crow:1" /\ crow_1__Sample
  , "crow:2" /\ crow_2__Sample
  , "crow:3" /\ crow_3__Sample
  , "birds3" /\ birds3_0__Sample
  , "birds3:0" /\ birds3_0__Sample
  , "birds3:1" /\ birds3_1__Sample
  , "birds3:2" /\ birds3_2__Sample
  , "birds3:3" /\ birds3_3__Sample
  , "birds3:4" /\ birds3_4__Sample
  , "birds3:5" /\ birds3_5__Sample
  , "birds3:6" /\ birds3_6__Sample
  , "birds3:7" /\ birds3_7__Sample
  , "birds3:8" /\ birds3_8__Sample
  , "birds3:9" /\ birds3_9__Sample
  , "birds3:10" /\ birds3_10__Sample
  , "birds3:11" /\ birds3_11__Sample
  , "birds3:12" /\ birds3_12__Sample
  , "birds3:13" /\ birds3_13__Sample
  , "birds3:14" /\ birds3_14__Sample
  , "birds3:15" /\ birds3_15__Sample
  , "birds3:16" /\ birds3_16__Sample
  , "birds3:17" /\ birds3_17__Sample
  , "birds3:18" /\ birds3_18__Sample
  , "auto" /\ auto_0__Sample
  , "auto:0" /\ auto_0__Sample
  , "auto:1" /\ auto_1__Sample
  , "auto:2" /\ auto_2__Sample
  , "auto:3" /\ auto_3__Sample
  , "auto:4" /\ auto_4__Sample
  , "auto:5" /\ auto_5__Sample
  , "auto:6" /\ auto_6__Sample
  , "auto:7" /\ auto_7__Sample
  , "auto:8" /\ auto_8__Sample
  , "auto:9" /\ auto_9__Sample
  , "auto:10" /\ auto_10__Sample
  , "mute" /\ mute_0__Sample
  , "mute:0" /\ mute_0__Sample
  , "mute:1" /\ mute_1__Sample
  , "mute:2" /\ mute_2__Sample
  , "mute:3" /\ mute_3__Sample
  , "mute:4" /\ mute_4__Sample
  , "mute:5" /\ mute_5__Sample
  , "mute:6" /\ mute_6__Sample
  , "mute:7" /\ mute_7__Sample
  , "mute:8" /\ mute_8__Sample
  , "mute:9" /\ mute_9__Sample
  , "mute:10" /\ mute_10__Sample
  , "mute:11" /\ mute_11__Sample
  , "mute:12" /\ mute_12__Sample
  , "mute:13" /\ mute_13__Sample
  , "mute:14" /\ mute_14__Sample
  , "mute:15" /\ mute_15__Sample
  , "mute:16" /\ mute_16__Sample
  , "mute:17" /\ mute_17__Sample
  , "mute:18" /\ mute_18__Sample
  , "mute:19" /\ mute_19__Sample
  , "mute:20" /\ mute_20__Sample
  , "mute:21" /\ mute_21__Sample
  , "mute:22" /\ mute_22__Sample
  , "mute:23" /\ mute_23__Sample
  , "mute:24" /\ mute_24__Sample
  , "mute:25" /\ mute_25__Sample
  , "mute:26" /\ mute_26__Sample
  , "mute:27" /\ mute_27__Sample
  , "sheffield" /\ sheffield_0__Sample
  , "sheffield:0" /\ sheffield_0__Sample
  , "casio" /\ casio_0__Sample
  , "casio:0" /\ casio_0__Sample
  , "casio:1" /\ casio_1__Sample
  , "casio:2" /\ casio_2__Sample
  , "sax" /\ sax_0__Sample
  , "sax:0" /\ sax_0__Sample
  , "sax:1" /\ sax_1__Sample
  , "sax:2" /\ sax_2__Sample
  , "sax:3" /\ sax_3__Sample
  , "sax:4" /\ sax_4__Sample
  , "sax:5" /\ sax_5__Sample
  , "sax:6" /\ sax_6__Sample
  , "sax:7" /\ sax_7__Sample
  , "sax:8" /\ sax_8__Sample
  , "sax:9" /\ sax_9__Sample
  , "sax:10" /\ sax_10__Sample
  , "sax:11" /\ sax_11__Sample
  , "sax:12" /\ sax_12__Sample
  , "sax:13" /\ sax_13__Sample
  , "sax:14" /\ sax_14__Sample
  , "sax:15" /\ sax_15__Sample
  , "sax:16" /\ sax_16__Sample
  , "sax:17" /\ sax_17__Sample
  , "sax:18" /\ sax_18__Sample
  , "sax:19" /\ sax_19__Sample
  , "sax:20" /\ sax_20__Sample
  , "sax:21" /\ sax_21__Sample
  , "circus" /\ circus_0__Sample
  , "circus:0" /\ circus_0__Sample
  , "circus:1" /\ circus_1__Sample
  , "circus:2" /\ circus_2__Sample
  , "yeah" /\ yeah_0__Sample
  , "yeah:0" /\ yeah_0__Sample
  , "yeah:1" /\ yeah_1__Sample
  , "yeah:2" /\ yeah_2__Sample
  , "yeah:3" /\ yeah_3__Sample
  , "yeah:4" /\ yeah_4__Sample
  , "yeah:5" /\ yeah_5__Sample
  , "yeah:6" /\ yeah_6__Sample
  , "yeah:7" /\ yeah_7__Sample
  , "yeah:8" /\ yeah_8__Sample
  , "yeah:9" /\ yeah_9__Sample
  , "yeah:10" /\ yeah_10__Sample
  , "yeah:11" /\ yeah_11__Sample
  , "yeah:12" /\ yeah_12__Sample
  , "yeah:13" /\ yeah_13__Sample
  , "yeah:14" /\ yeah_14__Sample
  , "yeah:15" /\ yeah_15__Sample
  , "yeah:16" /\ yeah_16__Sample
  , "yeah:17" /\ yeah_17__Sample
  , "yeah:18" /\ yeah_18__Sample
  , "yeah:19" /\ yeah_19__Sample
  , "yeah:20" /\ yeah_20__Sample
  , "yeah:21" /\ yeah_21__Sample
  , "yeah:22" /\ yeah_22__Sample
  , "yeah:23" /\ yeah_23__Sample
  , "yeah:24" /\ yeah_24__Sample
  , "yeah:25" /\ yeah_25__Sample
  , "yeah:26" /\ yeah_26__Sample
  , "yeah:27" /\ yeah_27__Sample
  , "yeah:28" /\ yeah_28__Sample
  , "yeah:29" /\ yeah_29__Sample
  , "yeah:30" /\ yeah_30__Sample
  , "oc" /\ oc_0__Sample
  , "oc:0" /\ oc_0__Sample
  , "oc:1" /\ oc_1__Sample
  , "oc:2" /\ oc_2__Sample
  , "oc:3" /\ oc_3__Sample
  , "alex" /\ alex_0__Sample
  , "alex:0" /\ alex_0__Sample
  , "alex:1" /\ alex_1__Sample
  , "can" /\ can_0__Sample
  , "can:0" /\ can_0__Sample
  , "can:1" /\ can_1__Sample
  , "can:2" /\ can_2__Sample
  , "can:3" /\ can_3__Sample
  , "can:4" /\ can_4__Sample
  , "can:5" /\ can_5__Sample
  , "can:6" /\ can_6__Sample
  , "can:7" /\ can_7__Sample
  , "can:8" /\ can_8__Sample
  , "can:9" /\ can_9__Sample
  , "can:10" /\ can_10__Sample
  , "can:11" /\ can_11__Sample
  , "can:12" /\ can_12__Sample
  , "can:13" /\ can_13__Sample
  , "jungle" /\ jungle_0__Sample
  , "jungle:0" /\ jungle_0__Sample
  , "jungle:1" /\ jungle_1__Sample
  , "jungle:2" /\ jungle_2__Sample
  , "jungle:3" /\ jungle_3__Sample
  , "jungle:4" /\ jungle_4__Sample
  , "jungle:5" /\ jungle_5__Sample
  , "jungle:6" /\ jungle_6__Sample
  , "jungle:7" /\ jungle_7__Sample
  , "jungle:8" /\ jungle_8__Sample
  , "jungle:9" /\ jungle_9__Sample
  , "jungle:10" /\ jungle_10__Sample
  , "jungle:11" /\ jungle_11__Sample
  , "jungle:12" /\ jungle_12__Sample
  , "moog" /\ moog_0__Sample
  , "moog:0" /\ moog_0__Sample
  , "moog:1" /\ moog_1__Sample
  , "moog:2" /\ moog_2__Sample
  , "moog:3" /\ moog_3__Sample
  , "moog:4" /\ moog_4__Sample
  , "moog:5" /\ moog_5__Sample
  , "moog:6" /\ moog_6__Sample
  , "h" /\ h_0__Sample
  , "h:0" /\ h_0__Sample
  , "h:1" /\ h_1__Sample
  , "h:2" /\ h_2__Sample
  , "h:3" /\ h_3__Sample
  , "h:4" /\ h_4__Sample
  , "h:5" /\ h_5__Sample
  , "h:6" /\ h_6__Sample
  , "wind" /\ wind_0__Sample
  , "wind:0" /\ wind_0__Sample
  , "wind:1" /\ wind_1__Sample
  , "wind:2" /\ wind_2__Sample
  , "wind:3" /\ wind_3__Sample
  , "wind:4" /\ wind_4__Sample
  , "wind:5" /\ wind_5__Sample
  , "wind:6" /\ wind_6__Sample
  , "wind:7" /\ wind_7__Sample
  , "wind:8" /\ wind_8__Sample
  , "wind:9" /\ wind_9__Sample
  , "rs" /\ rs_0__Sample
  , "rs:0" /\ rs_0__Sample
  , "em2" /\ em2_0__Sample
  , "em2:0" /\ em2_0__Sample
  , "em2:1" /\ em2_1__Sample
  , "em2:2" /\ em2_2__Sample
  , "em2:3" /\ em2_3__Sample
  , "em2:4" /\ em2_4__Sample
  , "em2:5" /\ em2_5__Sample
  , "noise2" /\ noise2_0__Sample
  , "noise2:0" /\ noise2_0__Sample
  , "noise2:1" /\ noise2_1__Sample
  , "noise2:2" /\ noise2_2__Sample
  , "noise2:3" /\ noise2_3__Sample
  , "noise2:4" /\ noise2_4__Sample
  , "noise2:5" /\ noise2_5__Sample
  , "noise2:6" /\ noise2_6__Sample
  , "noise2:7" /\ noise2_7__Sample
  , "foo" /\ foo_0__Sample
  , "foo:0" /\ foo_0__Sample
  , "foo:1" /\ foo_1__Sample
  , "foo:2" /\ foo_2__Sample
  , "foo:3" /\ foo_3__Sample
  , "foo:4" /\ foo_4__Sample
  , "foo:5" /\ foo_5__Sample
  , "foo:6" /\ foo_6__Sample
  , "foo:7" /\ foo_7__Sample
  , "foo:8" /\ foo_8__Sample
  , "foo:9" /\ foo_9__Sample
  , "foo:10" /\ foo_10__Sample
  , "foo:11" /\ foo_11__Sample
  , "foo:12" /\ foo_12__Sample
  , "foo:13" /\ foo_13__Sample
  , "foo:14" /\ foo_14__Sample
  , "foo:15" /\ foo_15__Sample
  , "foo:16" /\ foo_16__Sample
  , "foo:17" /\ foo_17__Sample
  , "foo:18" /\ foo_18__Sample
  , "foo:19" /\ foo_19__Sample
  , "foo:20" /\ foo_20__Sample
  , "foo:21" /\ foo_21__Sample
  , "foo:22" /\ foo_22__Sample
  , "foo:23" /\ foo_23__Sample
  , "foo:24" /\ foo_24__Sample
  , "foo:25" /\ foo_25__Sample
  , "foo:26" /\ foo_26__Sample
  , "armora" /\ armora_0__Sample
  , "armora:0" /\ armora_0__Sample
  , "armora:1" /\ armora_1__Sample
  , "armora:2" /\ armora_2__Sample
  , "armora:3" /\ armora_3__Sample
  , "armora:4" /\ armora_4__Sample
  , "armora:5" /\ armora_5__Sample
  , "armora:6" /\ armora_6__Sample
  , "bend" /\ bend_0__Sample
  , "bend:0" /\ bend_0__Sample
  , "bend:1" /\ bend_1__Sample
  , "bend:2" /\ bend_2__Sample
  , "bend:3" /\ bend_3__Sample
  , "newnotes" /\ newnotes_0__Sample
  , "newnotes:0" /\ newnotes_0__Sample
  , "newnotes:1" /\ newnotes_1__Sample
  , "newnotes:2" /\ newnotes_2__Sample
  , "newnotes:3" /\ newnotes_3__Sample
  , "newnotes:4" /\ newnotes_4__Sample
  , "newnotes:5" /\ newnotes_5__Sample
  , "newnotes:6" /\ newnotes_6__Sample
  , "newnotes:7" /\ newnotes_7__Sample
  , "newnotes:8" /\ newnotes_8__Sample
  , "newnotes:9" /\ newnotes_9__Sample
  , "newnotes:10" /\ newnotes_10__Sample
  , "newnotes:11" /\ newnotes_11__Sample
  , "newnotes:12" /\ newnotes_12__Sample
  , "newnotes:13" /\ newnotes_13__Sample
  , "newnotes:14" /\ newnotes_14__Sample
  , "pebbles" /\ pebbles_0__Sample
  , "pebbles:0" /\ pebbles_0__Sample
  , "mash2" /\ mash2_0__Sample
  , "mash2:0" /\ mash2_0__Sample
  , "mash2:1" /\ mash2_1__Sample
  , "mash2:2" /\ mash2_2__Sample
  , "mash2:3" /\ mash2_3__Sample
  , "diphone2" /\ diphone2_0__Sample
  , "diphone2:0" /\ diphone2_0__Sample
  , "diphone2:1" /\ diphone2_1__Sample
  , "diphone2:2" /\ diphone2_2__Sample
  , "diphone2:3" /\ diphone2_3__Sample
  , "diphone2:4" /\ diphone2_4__Sample
  , "diphone2:5" /\ diphone2_5__Sample
  , "diphone2:6" /\ diphone2_6__Sample
  , "diphone2:7" /\ diphone2_7__Sample
  , "diphone2:8" /\ diphone2_8__Sample
  , "diphone2:9" /\ diphone2_9__Sample
  , "diphone2:10" /\ diphone2_10__Sample
  , "diphone2:11" /\ diphone2_11__Sample
  , "e" /\ e_0__Sample
  , "e:0" /\ e_0__Sample
  , "e:1" /\ e_1__Sample
  , "e:2" /\ e_2__Sample
  , "e:3" /\ e_3__Sample
  , "e:4" /\ e_4__Sample
  , "e:5" /\ e_5__Sample
  , "e:6" /\ e_6__Sample
  , "e:7" /\ e_7__Sample
  , "bubble" /\ bubble_0__Sample
  , "bubble:0" /\ bubble_0__Sample
  , "bubble:1" /\ bubble_1__Sample
  , "bubble:2" /\ bubble_2__Sample
  , "bubble:3" /\ bubble_3__Sample
  , "bubble:4" /\ bubble_4__Sample
  , "bubble:5" /\ bubble_5__Sample
  , "bubble:6" /\ bubble_6__Sample
  , "bubble:7" /\ bubble_7__Sample
  , "insect" /\ insect_0__Sample
  , "insect:0" /\ insect_0__Sample
  , "insect:1" /\ insect_1__Sample
  , "insect:2" /\ insect_2__Sample
  , "ade" /\ ade_0__Sample
  , "ade:0" /\ ade_0__Sample
  , "ade:1" /\ ade_1__Sample
  , "ade:2" /\ ade_2__Sample
  , "ade:3" /\ ade_3__Sample
  , "ade:4" /\ ade_4__Sample
  , "ade:5" /\ ade_5__Sample
  , "ade:6" /\ ade_6__Sample
  , "ade:7" /\ ade_7__Sample
  , "ade:8" /\ ade_8__Sample
  , "ade:9" /\ ade_9__Sample
  , "glitch" /\ glitch_0__Sample
  , "glitch:0" /\ glitch_0__Sample
  , "glitch:1" /\ glitch_1__Sample
  , "glitch:2" /\ glitch_2__Sample
  , "glitch:3" /\ glitch_3__Sample
  , "glitch:4" /\ glitch_4__Sample
  , "glitch:5" /\ glitch_5__Sample
  , "glitch:6" /\ glitch_6__Sample
  , "glitch:7" /\ glitch_7__Sample
  , "haw" /\ haw_0__Sample
  , "haw:0" /\ haw_0__Sample
  , "haw:1" /\ haw_1__Sample
  , "haw:2" /\ haw_2__Sample
  , "haw:3" /\ haw_3__Sample
  , "haw:4" /\ haw_4__Sample
  , "haw:5" /\ haw_5__Sample
  , "popkick" /\ popkick_0__Sample
  , "popkick:0" /\ popkick_0__Sample
  , "popkick:1" /\ popkick_1__Sample
  , "popkick:2" /\ popkick_2__Sample
  , "popkick:3" /\ popkick_3__Sample
  , "popkick:4" /\ popkick_4__Sample
  , "popkick:5" /\ popkick_5__Sample
  , "popkick:6" /\ popkick_6__Sample
  , "popkick:7" /\ popkick_7__Sample
  , "popkick:8" /\ popkick_8__Sample
  , "popkick:9" /\ popkick_9__Sample
  , "breaks157" /\ breaks157_0__Sample
  , "breaks157:0" /\ breaks157_0__Sample
  , "gtr" /\ gtr_0__Sample
  , "gtr:0" /\ gtr_0__Sample
  , "gtr:1" /\ gtr_1__Sample
  , "gtr:2" /\ gtr_2__Sample
  , "clubkick" /\ clubkick_0__Sample
  , "clubkick:0" /\ clubkick_0__Sample
  , "clubkick:1" /\ clubkick_1__Sample
  , "clubkick:2" /\ clubkick_2__Sample
  , "clubkick:3" /\ clubkick_3__Sample
  , "clubkick:4" /\ clubkick_4__Sample
  , "breaks152" /\ breaks152_0__Sample
  , "breaks152:0" /\ breaks152_0__Sample
  , "x_808bd" /\ x_808bd_0__Sample
  , "x_808bd:0" /\ x_808bd_0__Sample
  , "x_808bd:1" /\ x_808bd_1__Sample
  , "x_808bd:2" /\ x_808bd_2__Sample
  , "x_808bd:3" /\ x_808bd_3__Sample
  , "x_808bd:4" /\ x_808bd_4__Sample
  , "x_808bd:5" /\ x_808bd_5__Sample
  , "x_808bd:6" /\ x_808bd_6__Sample
  , "x_808bd:7" /\ x_808bd_7__Sample
  , "x_808bd:8" /\ x_808bd_8__Sample
  , "x_808bd:9" /\ x_808bd_9__Sample
  , "x_808bd:10" /\ x_808bd_10__Sample
  , "x_808bd:11" /\ x_808bd_11__Sample
  , "x_808bd:12" /\ x_808bd_12__Sample
  , "x_808bd:13" /\ x_808bd_13__Sample
  , "x_808bd:14" /\ x_808bd_14__Sample
  , "x_808bd:15" /\ x_808bd_15__Sample
  , "x_808bd:16" /\ x_808bd_16__Sample
  , "x_808bd:17" /\ x_808bd_17__Sample
  , "x_808bd:18" /\ x_808bd_18__Sample
  , "x_808bd:19" /\ x_808bd_19__Sample
  , "x_808bd:20" /\ x_808bd_20__Sample
  , "x_808bd:21" /\ x_808bd_21__Sample
  , "x_808bd:22" /\ x_808bd_22__Sample
  , "x_808bd:23" /\ x_808bd_23__Sample
  , "x_808bd:24" /\ x_808bd_24__Sample
  , "miniyeah" /\ miniyeah_0__Sample
  , "miniyeah:0" /\ miniyeah_0__Sample
  , "miniyeah:1" /\ miniyeah_1__Sample
  , "miniyeah:2" /\ miniyeah_2__Sample
  , "miniyeah:3" /\ miniyeah_3__Sample
  , "if" /\ if_0__Sample
  , "if:0" /\ if_0__Sample
  , "if:1" /\ if_1__Sample
  , "if:2" /\ if_2__Sample
  , "if:3" /\ if_3__Sample
  , "if:4" /\ if_4__Sample
  , "x_808oh" /\ x_808oh_0__Sample
  , "x_808oh:0" /\ x_808oh_0__Sample
  , "x_808oh:1" /\ x_808oh_1__Sample
  , "x_808oh:2" /\ x_808oh_2__Sample
  , "x_808oh:3" /\ x_808oh_3__Sample
  , "x_808oh:4" /\ x_808oh_4__Sample
  , "house" /\ house_0__Sample
  , "house:0" /\ house_0__Sample
  , "house:1" /\ house_1__Sample
  , "house:2" /\ house_2__Sample
  , "house:3" /\ house_3__Sample
  , "house:4" /\ house_4__Sample
  , "house:5" /\ house_5__Sample
  , "house:6" /\ house_6__Sample
  , "house:7" /\ house_7__Sample
  , "dr" /\ dr_0__Sample
  , "dr:0" /\ dr_0__Sample
  , "dr:1" /\ dr_1__Sample
  , "dr:2" /\ dr_2__Sample
  , "dr:3" /\ dr_3__Sample
  , "dr:4" /\ dr_4__Sample
  , "dr:5" /\ dr_5__Sample
  , "dr:6" /\ dr_6__Sample
  , "dr:7" /\ dr_7__Sample
  , "dr:8" /\ dr_8__Sample
  , "dr:9" /\ dr_9__Sample
  , "dr:10" /\ dr_10__Sample
  , "dr:11" /\ dr_11__Sample
  , "dr:12" /\ dr_12__Sample
  , "dr:13" /\ dr_13__Sample
  , "dr:14" /\ dr_14__Sample
  , "dr:15" /\ dr_15__Sample
  , "dr:16" /\ dr_16__Sample
  , "dr:17" /\ dr_17__Sample
  , "dr:18" /\ dr_18__Sample
  , "dr:19" /\ dr_19__Sample
  , "dr:20" /\ dr_20__Sample
  , "dr:21" /\ dr_21__Sample
  , "dr:22" /\ dr_22__Sample
  , "dr:23" /\ dr_23__Sample
  , "dr:24" /\ dr_24__Sample
  , "dr:25" /\ dr_25__Sample
  , "dr:26" /\ dr_26__Sample
  , "dr:27" /\ dr_27__Sample
  , "dr:28" /\ dr_28__Sample
  , "dr:29" /\ dr_29__Sample
  , "dr:30" /\ dr_30__Sample
  , "dr:31" /\ dr_31__Sample
  , "dr:32" /\ dr_32__Sample
  , "dr:33" /\ dr_33__Sample
  , "dr:34" /\ dr_34__Sample
  , "dr:35" /\ dr_35__Sample
  , "dr:36" /\ dr_36__Sample
  , "dr:37" /\ dr_37__Sample
  , "dr:38" /\ dr_38__Sample
  , "dr:39" /\ dr_39__Sample
  , "dr:40" /\ dr_40__Sample
  , "dr:41" /\ dr_41__Sample
  , "dr55" /\ dr55_0__Sample
  , "dr55:0" /\ dr55_0__Sample
  , "dr55:1" /\ dr55_1__Sample
  , "dr55:2" /\ dr55_2__Sample
  , "dr55:3" /\ dr55_3__Sample
  , "bass" /\ bass_0__Sample
  , "bass:0" /\ bass_0__Sample
  , "bass:1" /\ bass_1__Sample
  , "bass:2" /\ bass_2__Sample
  , "bass:3" /\ bass_3__Sample
  , "ho" /\ ho_0__Sample
  , "ho:0" /\ ho_0__Sample
  , "ho:1" /\ ho_1__Sample
  , "ho:2" /\ ho_2__Sample
  , "ho:3" /\ ho_3__Sample
  , "ho:4" /\ ho_4__Sample
  , "ho:5" /\ ho_5__Sample
  , "hardkick" /\ hardkick_0__Sample
  , "hardkick:0" /\ hardkick_0__Sample
  , "hardkick:1" /\ hardkick_1__Sample
  , "hardkick:2" /\ hardkick_2__Sample
  , "hardkick:3" /\ hardkick_3__Sample
  , "hardkick:4" /\ hardkick_4__Sample
  , "hardkick:5" /\ hardkick_5__Sample
  , "x_808hc" /\ x_808hc_0__Sample
  , "x_808hc:0" /\ x_808hc_0__Sample
  , "x_808hc:1" /\ x_808hc_1__Sample
  , "x_808hc:2" /\ x_808hc_2__Sample
  , "x_808hc:3" /\ x_808hc_3__Sample
  , "x_808hc:4" /\ x_808hc_4__Sample
  , "hit" /\ hit_0__Sample
  , "hit:0" /\ hit_0__Sample
  , "hit:1" /\ hit_1__Sample
  , "hit:2" /\ hit_2__Sample
  , "hit:3" /\ hit_3__Sample
  , "hit:4" /\ hit_4__Sample
  , "hit:5" /\ hit_5__Sample
  , "breaks165" /\ breaks165_0__Sample
  , "breaks165:0" /\ breaks165_0__Sample
  , "dr2" /\ dr2_0__Sample
  , "dr2:0" /\ dr2_0__Sample
  , "dr2:1" /\ dr2_1__Sample
  , "dr2:2" /\ dr2_2__Sample
  , "dr2:3" /\ dr2_3__Sample
  , "dr2:4" /\ dr2_4__Sample
  , "dr2:5" /\ dr2_5__Sample
  , "tabla" /\ tabla_0__Sample
  , "tabla:0" /\ tabla_0__Sample
  , "tabla:1" /\ tabla_1__Sample
  , "tabla:2" /\ tabla_2__Sample
  , "tabla:3" /\ tabla_3__Sample
  , "tabla:4" /\ tabla_4__Sample
  , "tabla:5" /\ tabla_5__Sample
  , "tabla:6" /\ tabla_6__Sample
  , "tabla:7" /\ tabla_7__Sample
  , "tabla:8" /\ tabla_8__Sample
  , "tabla:9" /\ tabla_9__Sample
  , "tabla:10" /\ tabla_10__Sample
  , "tabla:11" /\ tabla_11__Sample
  , "tabla:12" /\ tabla_12__Sample
  , "tabla:13" /\ tabla_13__Sample
  , "tabla:14" /\ tabla_14__Sample
  , "tabla:15" /\ tabla_15__Sample
  , "tabla:16" /\ tabla_16__Sample
  , "tabla:17" /\ tabla_17__Sample
  , "tabla:18" /\ tabla_18__Sample
  , "tabla:19" /\ tabla_19__Sample
  , "tabla:20" /\ tabla_20__Sample
  , "tabla:21" /\ tabla_21__Sample
  , "tabla:22" /\ tabla_22__Sample
  , "tabla:23" /\ tabla_23__Sample
  , "tabla:24" /\ tabla_24__Sample
  , "tabla:25" /\ tabla_25__Sample
  , "dork2" /\ dork2_0__Sample
  , "dork2:0" /\ dork2_0__Sample
  , "dork2:1" /\ dork2_1__Sample
  , "dork2:2" /\ dork2_2__Sample
  , "dork2:3" /\ dork2_3__Sample
  , "hc" /\ hc_0__Sample
  , "hc:0" /\ hc_0__Sample
  , "hc:1" /\ hc_1__Sample
  , "hc:2" /\ hc_2__Sample
  , "hc:3" /\ hc_3__Sample
  , "hc:4" /\ hc_4__Sample
  , "hc:5" /\ hc_5__Sample
  , "bassfoo" /\ bassfoo_0__Sample
  , "bassfoo:0" /\ bassfoo_0__Sample
  , "bassfoo:1" /\ bassfoo_1__Sample
  , "bassfoo:2" /\ bassfoo_2__Sample
  , "seawolf" /\ seawolf_0__Sample
  , "seawolf:0" /\ seawolf_0__Sample
  , "seawolf:1" /\ seawolf_1__Sample
  , "seawolf:2" /\ seawolf_2__Sample
  , "cp" /\ cp_0__Sample
  , "cp:0" /\ cp_0__Sample
  , "cp:1" /\ cp_1__Sample
  , "jazz" /\ jazz_0__Sample
  , "jazz:0" /\ jazz_0__Sample
  , "jazz:1" /\ jazz_1__Sample
  , "jazz:2" /\ jazz_2__Sample
  , "jazz:3" /\ jazz_3__Sample
  , "jazz:4" /\ jazz_4__Sample
  , "jazz:5" /\ jazz_5__Sample
  , "jazz:6" /\ jazz_6__Sample
  , "jazz:7" /\ jazz_7__Sample
  , "juno" /\ juno_0__Sample
  , "juno:0" /\ juno_0__Sample
  , "juno:1" /\ juno_1__Sample
  , "juno:2" /\ juno_2__Sample
  , "juno:3" /\ juno_3__Sample
  , "juno:4" /\ juno_4__Sample
  , "juno:5" /\ juno_5__Sample
  , "juno:6" /\ juno_6__Sample
  , "juno:7" /\ juno_7__Sample
  , "juno:8" /\ juno_8__Sample
  , "juno:9" /\ juno_9__Sample
  , "juno:10" /\ juno_10__Sample
  , "juno:11" /\ juno_11__Sample
  , "birds" /\ birds_0__Sample
  , "birds:0" /\ birds_0__Sample
  , "birds:1" /\ birds_1__Sample
  , "birds:2" /\ birds_2__Sample
  , "birds:3" /\ birds_3__Sample
  , "birds:4" /\ birds_4__Sample
  , "birds:5" /\ birds_5__Sample
  , "birds:6" /\ birds_6__Sample
  , "birds:7" /\ birds_7__Sample
  , "birds:8" /\ birds_8__Sample
  , "birds:9" /\ birds_9__Sample
  , "glasstap" /\ glasstap_0__Sample
  , "glasstap:0" /\ glasstap_0__Sample
  , "glasstap:1" /\ glasstap_1__Sample
  , "glasstap:2" /\ glasstap_2__Sample
  , "bass1" /\ bass1_0__Sample
  , "bass1:0" /\ bass1_0__Sample
  , "bass1:1" /\ bass1_1__Sample
  , "bass1:2" /\ bass1_2__Sample
  , "bass1:3" /\ bass1_3__Sample
  , "bass1:4" /\ bass1_4__Sample
  , "bass1:5" /\ bass1_5__Sample
  , "bass1:6" /\ bass1_6__Sample
  , "bass1:7" /\ bass1_7__Sample
  , "bass1:8" /\ bass1_8__Sample
  , "bass1:9" /\ bass1_9__Sample
  , "bass1:10" /\ bass1_10__Sample
  , "bass1:11" /\ bass1_11__Sample
  , "bass1:12" /\ bass1_12__Sample
  , "bass1:13" /\ bass1_13__Sample
  , "bass1:14" /\ bass1_14__Sample
  , "bass1:15" /\ bass1_15__Sample
  , "bass1:16" /\ bass1_16__Sample
  , "bass1:17" /\ bass1_17__Sample
  , "bass1:18" /\ bass1_18__Sample
  , "bass1:19" /\ bass1_19__Sample
  , "bass1:20" /\ bass1_20__Sample
  , "bass1:21" /\ bass1_21__Sample
  , "bass1:22" /\ bass1_22__Sample
  , "bass1:23" /\ bass1_23__Sample
  , "bass1:24" /\ bass1_24__Sample
  , "bass1:25" /\ bass1_25__Sample
  , "bass1:26" /\ bass1_26__Sample
  , "bass1:27" /\ bass1_27__Sample
  , "bass1:28" /\ bass1_28__Sample
  , "bass1:29" /\ bass1_29__Sample
  , "hh27" /\ hh27_0__Sample
  , "hh27:0" /\ hh27_0__Sample
  , "hh27:1" /\ hh27_1__Sample
  , "hh27:2" /\ hh27_2__Sample
  , "hh27:3" /\ hh27_3__Sample
  , "hh27:4" /\ hh27_4__Sample
  , "hh27:5" /\ hh27_5__Sample
  , "hh27:6" /\ hh27_6__Sample
  , "hh27:7" /\ hh27_7__Sample
  , "hh27:8" /\ hh27_8__Sample
  , "hh27:9" /\ hh27_9__Sample
  , "hh27:10" /\ hh27_10__Sample
  , "hh27:11" /\ hh27_11__Sample
  , "hh27:12" /\ hh27_12__Sample
  , "x_808" /\ x_808_0__Sample
  , "x_808:0" /\ x_808_0__Sample
  , "x_808:1" /\ x_808_1__Sample
  , "x_808:2" /\ x_808_2__Sample
  , "x_808:3" /\ x_808_3__Sample
  , "x_808:4" /\ x_808_4__Sample
  , "x_808:5" /\ x_808_5__Sample
  , "notes" /\ notes_0__Sample
  , "notes:0" /\ notes_0__Sample
  , "notes:1" /\ notes_1__Sample
  , "notes:2" /\ notes_2__Sample
  , "notes:3" /\ notes_3__Sample
  , "notes:4" /\ notes_4__Sample
  , "notes:5" /\ notes_5__Sample
  , "notes:6" /\ notes_6__Sample
  , "notes:7" /\ notes_7__Sample
  , "notes:8" /\ notes_8__Sample
  , "notes:9" /\ notes_9__Sample
  , "notes:10" /\ notes_10__Sample
  , "notes:11" /\ notes_11__Sample
  , "notes:12" /\ notes_12__Sample
  , "notes:13" /\ notes_13__Sample
  , "notes:14" /\ notes_14__Sample
  , "xmas" /\ xmas_0__Sample
  , "xmas:0" /\ xmas_0__Sample
  , "erk" /\ erk_0__Sample
  , "erk:0" /\ erk_0__Sample
  , "x_808mt" /\ x_808mt_0__Sample
  , "x_808mt:0" /\ x_808mt_0__Sample
  , "x_808mt:1" /\ x_808mt_1__Sample
  , "x_808mt:2" /\ x_808mt_2__Sample
  , "x_808mt:3" /\ x_808mt_3__Sample
  , "x_808mt:4" /\ x_808mt_4__Sample
  , "lighter" /\ lighter_0__Sample
  , "lighter:0" /\ lighter_0__Sample
  , "lighter:1" /\ lighter_1__Sample
  , "lighter:2" /\ lighter_2__Sample
  , "lighter:3" /\ lighter_3__Sample
  , "lighter:4" /\ lighter_4__Sample
  , "lighter:5" /\ lighter_5__Sample
  , "lighter:6" /\ lighter_6__Sample
  , "lighter:7" /\ lighter_7__Sample
  , "lighter:8" /\ lighter_8__Sample
  , "lighter:9" /\ lighter_9__Sample
  , "lighter:10" /\ lighter_10__Sample
  , "lighter:11" /\ lighter_11__Sample
  , "lighter:12" /\ lighter_12__Sample
  , "lighter:13" /\ lighter_13__Sample
  , "lighter:14" /\ lighter_14__Sample
  , "lighter:15" /\ lighter_15__Sample
  , "lighter:16" /\ lighter_16__Sample
  , "lighter:17" /\ lighter_17__Sample
  , "lighter:18" /\ lighter_18__Sample
  , "lighter:19" /\ lighter_19__Sample
  , "lighter:20" /\ lighter_20__Sample
  , "lighter:21" /\ lighter_21__Sample
  , "lighter:22" /\ lighter_22__Sample
  , "lighter:23" /\ lighter_23__Sample
  , "lighter:24" /\ lighter_24__Sample
  , "lighter:25" /\ lighter_25__Sample
  , "lighter:26" /\ lighter_26__Sample
  , "lighter:27" /\ lighter_27__Sample
  , "lighter:28" /\ lighter_28__Sample
  , "lighter:29" /\ lighter_29__Sample
  , "lighter:30" /\ lighter_30__Sample
  , "lighter:31" /\ lighter_31__Sample
  , "lighter:32" /\ lighter_32__Sample
  , "cb" /\ cb_0__Sample
  , "cb:0" /\ cb_0__Sample
  , "subroc3d" /\ subroc3d_0__Sample
  , "subroc3d:0" /\ subroc3d_0__Sample
  , "subroc3d:1" /\ subroc3d_1__Sample
  , "subroc3d:2" /\ subroc3d_2__Sample
  , "subroc3d:3" /\ subroc3d_3__Sample
  , "subroc3d:4" /\ subroc3d_4__Sample
  , "subroc3d:5" /\ subroc3d_5__Sample
  , "subroc3d:6" /\ subroc3d_6__Sample
  , "subroc3d:7" /\ subroc3d_7__Sample
  , "subroc3d:8" /\ subroc3d_8__Sample
  , "subroc3d:9" /\ subroc3d_9__Sample
  , "subroc3d:10" /\ subroc3d_10__Sample
  , "ul" /\ ul_0__Sample
  , "ul:0" /\ ul_0__Sample
  , "ul:1" /\ ul_1__Sample
  , "ul:2" /\ ul_2__Sample
  , "ul:3" /\ ul_3__Sample
  , "ul:4" /\ ul_4__Sample
  , "ul:5" /\ ul_5__Sample
  , "ul:6" /\ ul_6__Sample
  , "ul:7" /\ ul_7__Sample
  , "ul:8" /\ ul_8__Sample
  , "ul:9" /\ ul_9__Sample
  , "gab" /\ gab_0__Sample
  , "gab:0" /\ gab_0__Sample
  , "gab:1" /\ gab_1__Sample
  , "gab:2" /\ gab_2__Sample
  , "gab:3" /\ gab_3__Sample
  , "gab:4" /\ gab_4__Sample
  , "gab:5" /\ gab_5__Sample
  , "gab:6" /\ gab_6__Sample
  , "gab:7" /\ gab_7__Sample
  , "gab:8" /\ gab_8__Sample
  , "gab:9" /\ gab_9__Sample
  , "monsterb" /\ monsterb_0__Sample
  , "monsterb:0" /\ monsterb_0__Sample
  , "monsterb:1" /\ monsterb_1__Sample
  , "monsterb:2" /\ monsterb_2__Sample
  , "monsterb:3" /\ monsterb_3__Sample
  , "monsterb:4" /\ monsterb_4__Sample
  , "monsterb:5" /\ monsterb_5__Sample
  , "diphone" /\ diphone_0__Sample
  , "diphone:0" /\ diphone_0__Sample
  , "diphone:1" /\ diphone_1__Sample
  , "diphone:2" /\ diphone_2__Sample
  , "diphone:3" /\ diphone_3__Sample
  , "diphone:4" /\ diphone_4__Sample
  , "diphone:5" /\ diphone_5__Sample
  , "diphone:6" /\ diphone_6__Sample
  , "diphone:7" /\ diphone_7__Sample
  , "diphone:8" /\ diphone_8__Sample
  , "diphone:9" /\ diphone_9__Sample
  , "diphone:10" /\ diphone_10__Sample
  , "diphone:11" /\ diphone_11__Sample
  , "diphone:12" /\ diphone_12__Sample
  , "diphone:13" /\ diphone_13__Sample
  , "diphone:14" /\ diphone_14__Sample
  , "diphone:15" /\ diphone_15__Sample
  , "diphone:16" /\ diphone_16__Sample
  , "diphone:17" /\ diphone_17__Sample
  , "diphone:18" /\ diphone_18__Sample
  , "diphone:19" /\ diphone_19__Sample
  , "diphone:20" /\ diphone_20__Sample
  , "diphone:21" /\ diphone_21__Sample
  , "diphone:22" /\ diphone_22__Sample
  , "diphone:23" /\ diphone_23__Sample
  , "diphone:24" /\ diphone_24__Sample
  , "diphone:25" /\ diphone_25__Sample
  , "diphone:26" /\ diphone_26__Sample
  , "diphone:27" /\ diphone_27__Sample
  , "diphone:28" /\ diphone_28__Sample
  , "diphone:29" /\ diphone_29__Sample
  , "diphone:30" /\ diphone_30__Sample
  , "diphone:31" /\ diphone_31__Sample
  , "diphone:32" /\ diphone_32__Sample
  , "diphone:33" /\ diphone_33__Sample
  , "diphone:34" /\ diphone_34__Sample
  , "diphone:35" /\ diphone_35__Sample
  , "diphone:36" /\ diphone_36__Sample
  , "diphone:37" /\ diphone_37__Sample
  , "clak" /\ clak_0__Sample
  , "clak:0" /\ clak_0__Sample
  , "clak:1" /\ clak_1__Sample
  , "sitar" /\ sitar_0__Sample
  , "sitar:0" /\ sitar_0__Sample
  , "sitar:1" /\ sitar_1__Sample
  , "sitar:2" /\ sitar_2__Sample
  , "sitar:3" /\ sitar_3__Sample
  , "sitar:4" /\ sitar_4__Sample
  , "sitar:5" /\ sitar_5__Sample
  , "sitar:6" /\ sitar_6__Sample
  , "sitar:7" /\ sitar_7__Sample
  , "ab" /\ ab_0__Sample
  , "ab:0" /\ ab_0__Sample
  , "ab:1" /\ ab_1__Sample
  , "ab:2" /\ ab_2__Sample
  , "ab:3" /\ ab_3__Sample
  , "ab:4" /\ ab_4__Sample
  , "ab:5" /\ ab_5__Sample
  , "ab:6" /\ ab_6__Sample
  , "ab:7" /\ ab_7__Sample
  , "ab:8" /\ ab_8__Sample
  , "ab:9" /\ ab_9__Sample
  , "ab:10" /\ ab_10__Sample
  , "ab:11" /\ ab_11__Sample
  , "cr" /\ cr_0__Sample
  , "cr:0" /\ cr_0__Sample
  , "cr:1" /\ cr_1__Sample
  , "cr:2" /\ cr_2__Sample
  , "cr:3" /\ cr_3__Sample
  , "cr:4" /\ cr_4__Sample
  , "cr:5" /\ cr_5__Sample
  , "tacscan" /\ tacscan_0__Sample
  , "tacscan:0" /\ tacscan_0__Sample
  , "tacscan:1" /\ tacscan_1__Sample
  , "tacscan:2" /\ tacscan_2__Sample
  , "tacscan:3" /\ tacscan_3__Sample
  , "tacscan:4" /\ tacscan_4__Sample
  , "tacscan:5" /\ tacscan_5__Sample
  , "tacscan:6" /\ tacscan_6__Sample
  , "tacscan:7" /\ tacscan_7__Sample
  , "tacscan:8" /\ tacscan_8__Sample
  , "tacscan:9" /\ tacscan_9__Sample
  , "tacscan:10" /\ tacscan_10__Sample
  , "tacscan:11" /\ tacscan_11__Sample
  , "tacscan:12" /\ tacscan_12__Sample
  , "tacscan:13" /\ tacscan_13__Sample
  , "tacscan:14" /\ tacscan_14__Sample
  , "tacscan:15" /\ tacscan_15__Sample
  , "tacscan:16" /\ tacscan_16__Sample
  , "tacscan:17" /\ tacscan_17__Sample
  , "tacscan:18" /\ tacscan_18__Sample
  , "tacscan:19" /\ tacscan_19__Sample
  , "tacscan:20" /\ tacscan_20__Sample
  , "tacscan:21" /\ tacscan_21__Sample
  , "v" /\ v_0__Sample
  , "v:0" /\ v_0__Sample
  , "v:1" /\ v_1__Sample
  , "v:2" /\ v_2__Sample
  , "v:3" /\ v_3__Sample
  , "v:4" /\ v_4__Sample
  , "v:5" /\ v_5__Sample
  , "bd" /\ bd_0__Sample
  , "bd:0" /\ bd_0__Sample
  , "bd:1" /\ bd_1__Sample
  , "bd:2" /\ bd_2__Sample
  , "bd:3" /\ bd_3__Sample
  , "bd:4" /\ bd_4__Sample
  , "bd:5" /\ bd_5__Sample
  , "bd:6" /\ bd_6__Sample
  , "bd:7" /\ bd_7__Sample
  , "bd:8" /\ bd_8__Sample
  , "bd:9" /\ bd_9__Sample
  , "bd:10" /\ bd_10__Sample
  , "bd:11" /\ bd_11__Sample
  , "bd:12" /\ bd_12__Sample
  , "bd:13" /\ bd_13__Sample
  , "bd:14" /\ bd_14__Sample
  , "bd:15" /\ bd_15__Sample
  , "bd:16" /\ bd_16__Sample
  , "bd:17" /\ bd_17__Sample
  , "bd:18" /\ bd_18__Sample
  , "bd:19" /\ bd_19__Sample
  , "bd:20" /\ bd_20__Sample
  , "bd:21" /\ bd_21__Sample
  , "bd:22" /\ bd_22__Sample
  , "bd:23" /\ bd_23__Sample
  , "rm" /\ rm_0__Sample
  , "rm:0" /\ rm_0__Sample
  , "rm:1" /\ rm_1__Sample
  , "blue" /\ blue_0__Sample
  , "blue:0" /\ blue_0__Sample
  , "blue:1" /\ blue_1__Sample
  , "latibro" /\ latibro_0__Sample
  , "latibro:0" /\ latibro_0__Sample
  , "latibro:1" /\ latibro_1__Sample
  , "latibro:2" /\ latibro_2__Sample
  , "latibro:3" /\ latibro_3__Sample
  , "latibro:4" /\ latibro_4__Sample
  , "latibro:5" /\ latibro_5__Sample
  , "latibro:6" /\ latibro_6__Sample
  , "latibro:7" /\ latibro_7__Sample
  , "dr_few" /\ dr_few_0__Sample
  , "dr_few:0" /\ dr_few_0__Sample
  , "dr_few:1" /\ dr_few_1__Sample
  , "dr_few:2" /\ dr_few_2__Sample
  , "dr_few:3" /\ dr_few_3__Sample
  , "dr_few:4" /\ dr_few_4__Sample
  , "dr_few:5" /\ dr_few_5__Sample
  , "dr_few:6" /\ dr_few_6__Sample
  , "dr_few:7" /\ dr_few_7__Sample
  , "rave2" /\ rave2_0__Sample
  , "rave2:0" /\ rave2_0__Sample
  , "rave2:1" /\ rave2_1__Sample
  , "rave2:2" /\ rave2_2__Sample
  , "rave2:3" /\ rave2_3__Sample
  , "rave2:4" /\ rave2_4__Sample
  , "rave2:5" /\ rave2_5__Sample
  , "koy" /\ koy_0__Sample
  , "koy:0" /\ koy_0__Sample
  , "koy:1" /\ koy_1__Sample
  , "glitch2" /\ glitch2_0__Sample
  , "glitch2:0" /\ glitch2_0__Sample
  , "glitch2:1" /\ glitch2_1__Sample
  , "glitch2:2" /\ glitch2_2__Sample
  , "glitch2:3" /\ glitch2_3__Sample
  , "glitch2:4" /\ glitch2_4__Sample
  , "glitch2:5" /\ glitch2_5__Sample
  , "glitch2:6" /\ glitch2_6__Sample
  , "glitch2:7" /\ glitch2_7__Sample
  , "hmm" /\ hmm_0__Sample
  , "hmm:0" /\ hmm_0__Sample
  , "arp" /\ arp_0__Sample
  , "arp:0" /\ arp_0__Sample
  , "arp:1" /\ arp_1__Sample
  , "made2" /\ made2_0__Sample
  , "made2:0" /\ made2_0__Sample
  , "uxay" /\ uxay_0__Sample
  , "uxay:0" /\ uxay_0__Sample
  , "uxay:1" /\ uxay_1__Sample
  , "uxay:2" /\ uxay_2__Sample
  , "stomp" /\ stomp_0__Sample
  , "stomp:0" /\ stomp_0__Sample
  , "stomp:1" /\ stomp_1__Sample
  , "stomp:2" /\ stomp_2__Sample
  , "stomp:3" /\ stomp_3__Sample
  , "stomp:4" /\ stomp_4__Sample
  , "stomp:5" /\ stomp_5__Sample
  , "stomp:6" /\ stomp_6__Sample
  , "stomp:7" /\ stomp_7__Sample
  , "stomp:8" /\ stomp_8__Sample
  , "stomp:9" /\ stomp_9__Sample
  , "tech" /\ tech_0__Sample
  , "tech:0" /\ tech_0__Sample
  , "tech:1" /\ tech_1__Sample
  , "tech:2" /\ tech_2__Sample
  , "tech:3" /\ tech_3__Sample
  , "tech:4" /\ tech_4__Sample
  , "tech:5" /\ tech_5__Sample
  , "tech:6" /\ tech_6__Sample
  , "tech:7" /\ tech_7__Sample
  , "tech:8" /\ tech_8__Sample
  , "tech:9" /\ tech_9__Sample
  , "tech:10" /\ tech_10__Sample
  , "tech:11" /\ tech_11__Sample
  , "tech:12" /\ tech_12__Sample
  , "sn" /\ sn_0__Sample
  , "sn:0" /\ sn_0__Sample
  , "sn:1" /\ sn_1__Sample
  , "sn:2" /\ sn_2__Sample
  , "sn:3" /\ sn_3__Sample
  , "sn:4" /\ sn_4__Sample
  , "sn:5" /\ sn_5__Sample
  , "sn:6" /\ sn_6__Sample
  , "sn:7" /\ sn_7__Sample
  , "sn:8" /\ sn_8__Sample
  , "sn:9" /\ sn_9__Sample
  , "sn:10" /\ sn_10__Sample
  , "sn:11" /\ sn_11__Sample
  , "sn:12" /\ sn_12__Sample
  , "sn:13" /\ sn_13__Sample
  , "sn:14" /\ sn_14__Sample
  , "sn:15" /\ sn_15__Sample
  , "sn:16" /\ sn_16__Sample
  , "sn:17" /\ sn_17__Sample
  , "sn:18" /\ sn_18__Sample
  , "sn:19" /\ sn_19__Sample
  , "sn:20" /\ sn_20__Sample
  , "sn:21" /\ sn_21__Sample
  , "sn:22" /\ sn_22__Sample
  , "sn:23" /\ sn_23__Sample
  , "sn:24" /\ sn_24__Sample
  , "sn:25" /\ sn_25__Sample
  , "sn:26" /\ sn_26__Sample
  , "sn:27" /\ sn_27__Sample
  , "sn:28" /\ sn_28__Sample
  , "sn:29" /\ sn_29__Sample
  , "sn:30" /\ sn_30__Sample
  , "sn:31" /\ sn_31__Sample
  , "sn:32" /\ sn_32__Sample
  , "sn:33" /\ sn_33__Sample
  , "sn:34" /\ sn_34__Sample
  , "sn:35" /\ sn_35__Sample
  , "sn:36" /\ sn_36__Sample
  , "sn:37" /\ sn_37__Sample
  , "sn:38" /\ sn_38__Sample
  , "sn:39" /\ sn_39__Sample
  , "sn:40" /\ sn_40__Sample
  , "sn:41" /\ sn_41__Sample
  , "sn:42" /\ sn_42__Sample
  , "sn:43" /\ sn_43__Sample
  , "sn:44" /\ sn_44__Sample
  , "sn:45" /\ sn_45__Sample
  , "sn:46" /\ sn_46__Sample
  , "sn:47" /\ sn_47__Sample
  , "sn:48" /\ sn_48__Sample
  , "sn:49" /\ sn_49__Sample
  , "sn:50" /\ sn_50__Sample
  , "sn:51" /\ sn_51__Sample
  , "less" /\ less_0__Sample
  , "less:0" /\ less_0__Sample
  , "less:1" /\ less_1__Sample
  , "less:2" /\ less_2__Sample
  , "less:3" /\ less_3__Sample
  , "off" /\ off_0__Sample
  , "off:0" /\ off_0__Sample
  , "x_808sd" /\ x_808sd_0__Sample
  , "x_808sd:0" /\ x_808sd_0__Sample
  , "x_808sd:1" /\ x_808sd_1__Sample
  , "x_808sd:2" /\ x_808sd_2__Sample
  , "x_808sd:3" /\ x_808sd_3__Sample
  , "x_808sd:4" /\ x_808sd_4__Sample
  , "x_808sd:5" /\ x_808sd_5__Sample
  , "x_808sd:6" /\ x_808sd_6__Sample
  , "x_808sd:7" /\ x_808sd_7__Sample
  , "x_808sd:8" /\ x_808sd_8__Sample
  , "x_808sd:9" /\ x_808sd_9__Sample
  , "x_808sd:10" /\ x_808sd_10__Sample
  , "x_808sd:11" /\ x_808sd_11__Sample
  , "x_808sd:12" /\ x_808sd_12__Sample
  , "x_808sd:13" /\ x_808sd_13__Sample
  , "x_808sd:14" /\ x_808sd_14__Sample
  , "x_808sd:15" /\ x_808sd_15__Sample
  , "x_808sd:16" /\ x_808sd_16__Sample
  , "x_808sd:17" /\ x_808sd_17__Sample
  , "x_808sd:18" /\ x_808sd_18__Sample
  , "x_808sd:19" /\ x_808sd_19__Sample
  , "x_808sd:20" /\ x_808sd_20__Sample
  , "x_808sd:21" /\ x_808sd_21__Sample
  , "x_808sd:22" /\ x_808sd_22__Sample
  , "x_808sd:23" /\ x_808sd_23__Sample
  , "x_808sd:24" /\ x_808sd_24__Sample
  , "trump" /\ trump_0__Sample
  , "trump:0" /\ trump_0__Sample
  , "trump:1" /\ trump_1__Sample
  , "trump:2" /\ trump_2__Sample
  , "trump:3" /\ trump_3__Sample
  , "trump:4" /\ trump_4__Sample
  , "trump:5" /\ trump_5__Sample
  , "trump:6" /\ trump_6__Sample
  , "trump:7" /\ trump_7__Sample
  , "trump:8" /\ trump_8__Sample
  , "trump:9" /\ trump_9__Sample
  , "trump:10" /\ trump_10__Sample
  , "bev" /\ bev_0__Sample
  , "bev:0" /\ bev_0__Sample
  , "bev:1" /\ bev_1__Sample
  , "pad" /\ pad_0__Sample
  , "pad:0" /\ pad_0__Sample
  , "pad:1" /\ pad_1__Sample
  , "pad:2" /\ pad_2__Sample
  , "led" /\ led_0__Sample
  , "led:0" /\ led_0__Sample
  , "perc" /\ perc_0__Sample
  , "perc:0" /\ perc_0__Sample
  , "perc:1" /\ perc_1__Sample
  , "perc:2" /\ perc_2__Sample
  , "perc:3" /\ perc_3__Sample
  , "perc:4" /\ perc_4__Sample
  , "perc:5" /\ perc_5__Sample
  , "pluck" /\ pluck_0__Sample
  , "pluck:0" /\ pluck_0__Sample
  , "pluck:1" /\ pluck_1__Sample
  , "pluck:2" /\ pluck_2__Sample
  , "pluck:3" /\ pluck_3__Sample
  , "pluck:4" /\ pluck_4__Sample
  , "pluck:5" /\ pluck_5__Sample
  , "pluck:6" /\ pluck_6__Sample
  , "pluck:7" /\ pluck_7__Sample
  , "pluck:8" /\ pluck_8__Sample
  , "pluck:9" /\ pluck_9__Sample
  , "pluck:10" /\ pluck_10__Sample
  , "pluck:11" /\ pluck_11__Sample
  , "pluck:12" /\ pluck_12__Sample
  , "pluck:13" /\ pluck_13__Sample
  , "pluck:14" /\ pluck_14__Sample
  , "pluck:15" /\ pluck_15__Sample
  , "pluck:16" /\ pluck_16__Sample
  , "bleep" /\ bleep_0__Sample
  , "bleep:0" /\ bleep_0__Sample
  , "bleep:1" /\ bleep_1__Sample
  , "bleep:2" /\ bleep_2__Sample
  , "bleep:3" /\ bleep_3__Sample
  , "bleep:4" /\ bleep_4__Sample
  , "bleep:5" /\ bleep_5__Sample
  , "bleep:6" /\ bleep_6__Sample
  , "bleep:7" /\ bleep_7__Sample
  , "bleep:8" /\ bleep_8__Sample
  , "bleep:9" /\ bleep_9__Sample
  , "bleep:10" /\ bleep_10__Sample
  , "bleep:11" /\ bleep_11__Sample
  , "bleep:12" /\ bleep_12__Sample
  , "ht" /\ ht_0__Sample
  , "ht:0" /\ ht_0__Sample
  , "ht:1" /\ ht_1__Sample
  , "ht:2" /\ ht_2__Sample
  , "ht:3" /\ ht_3__Sample
  , "ht:4" /\ ht_4__Sample
  , "ht:5" /\ ht_5__Sample
  , "ht:6" /\ ht_6__Sample
  , "ht:7" /\ ht_7__Sample
  , "ht:8" /\ ht_8__Sample
  , "ht:9" /\ ht_9__Sample
  , "ht:10" /\ ht_10__Sample
  , "ht:11" /\ ht_11__Sample
  , "ht:12" /\ ht_12__Sample
  , "ht:13" /\ ht_13__Sample
  , "ht:14" /\ ht_14__Sample
  , "ht:15" /\ ht_15__Sample
  , "ades4" /\ ades4_0__Sample
  , "ades4:0" /\ ades4_0__Sample
  , "ades4:1" /\ ades4_1__Sample
  , "ades4:2" /\ ades4_2__Sample
  , "ades4:3" /\ ades4_3__Sample
  , "ades4:4" /\ ades4_4__Sample
  , "ades4:5" /\ ades4_5__Sample
  , "proc" /\ proc_0__Sample
  , "proc:0" /\ proc_0__Sample
  , "proc:1" /\ proc_1__Sample
  , "gretsch" /\ gretsch_0__Sample
  , "gretsch:0" /\ gretsch_0__Sample
  , "gretsch:1" /\ gretsch_1__Sample
  , "gretsch:2" /\ gretsch_2__Sample
  , "gretsch:3" /\ gretsch_3__Sample
  , "gretsch:4" /\ gretsch_4__Sample
  , "gretsch:5" /\ gretsch_5__Sample
  , "gretsch:6" /\ gretsch_6__Sample
  , "gretsch:7" /\ gretsch_7__Sample
  , "gretsch:8" /\ gretsch_8__Sample
  , "gretsch:9" /\ gretsch_9__Sample
  , "gretsch:10" /\ gretsch_10__Sample
  , "gretsch:11" /\ gretsch_11__Sample
  , "gretsch:12" /\ gretsch_12__Sample
  , "gretsch:13" /\ gretsch_13__Sample
  , "gretsch:14" /\ gretsch_14__Sample
  , "gretsch:15" /\ gretsch_15__Sample
  , "gretsch:16" /\ gretsch_16__Sample
  , "gretsch:17" /\ gretsch_17__Sample
  , "gretsch:18" /\ gretsch_18__Sample
  , "gretsch:19" /\ gretsch_19__Sample
  , "gretsch:20" /\ gretsch_20__Sample
  , "gretsch:21" /\ gretsch_21__Sample
  , "gretsch:22" /\ gretsch_22__Sample
  , "gretsch:23" /\ gretsch_23__Sample
  , "outdoor" /\ outdoor_0__Sample
  , "outdoor:0" /\ outdoor_0__Sample
  , "outdoor:1" /\ outdoor_1__Sample
  , "outdoor:2" /\ outdoor_2__Sample
  , "outdoor:3" /\ outdoor_3__Sample
  , "outdoor:4" /\ outdoor_4__Sample
  , "outdoor:5" /\ outdoor_5__Sample
  , "techno" /\ techno_0__Sample
  , "techno:0" /\ techno_0__Sample
  , "techno:1" /\ techno_1__Sample
  , "techno:2" /\ techno_2__Sample
  , "techno:3" /\ techno_3__Sample
  , "techno:4" /\ techno_4__Sample
  , "techno:5" /\ techno_5__Sample
  , "techno:6" /\ techno_6__Sample
  , "ulgab" /\ ulgab_0__Sample
  , "ulgab:0" /\ ulgab_0__Sample
  , "ulgab:1" /\ ulgab_1__Sample
  , "ulgab:2" /\ ulgab_2__Sample
  , "ulgab:3" /\ ulgab_3__Sample
  , "ulgab:4" /\ ulgab_4__Sample
  , "breaks125" /\ breaks125_0__Sample
  , "breaks125:0" /\ breaks125_0__Sample
  , "breaks125:1" /\ breaks125_1__Sample
  , "bin" /\ bin_0__Sample
  , "bin:0" /\ bin_0__Sample
  , "bin:1" /\ bin_1__Sample
  , "x_808mc" /\ x_808mc_0__Sample
  , "x_808mc:0" /\ x_808mc_0__Sample
  , "x_808mc:1" /\ x_808mc_1__Sample
  , "x_808mc:2" /\ x_808mc_2__Sample
  , "x_808mc:3" /\ x_808mc_3__Sample
  , "x_808mc:4" /\ x_808mc_4__Sample
  , "lt" /\ lt_0__Sample
  , "lt:0" /\ lt_0__Sample
  , "lt:1" /\ lt_1__Sample
  , "lt:2" /\ lt_2__Sample
  , "lt:3" /\ lt_3__Sample
  , "lt:4" /\ lt_4__Sample
  , "lt:5" /\ lt_5__Sample
  , "lt:6" /\ lt_6__Sample
  , "lt:7" /\ lt_7__Sample
  , "lt:8" /\ lt_8__Sample
  , "lt:9" /\ lt_9__Sample
  , "lt:10" /\ lt_10__Sample
  , "lt:11" /\ lt_11__Sample
  , "lt:12" /\ lt_12__Sample
  , "lt:13" /\ lt_13__Sample
  , "lt:14" /\ lt_14__Sample
  , "lt:15" /\ lt_15__Sample
  , "amencutup" /\ amencutup_0__Sample
  , "amencutup:0" /\ amencutup_0__Sample
  , "amencutup:1" /\ amencutup_1__Sample
  , "amencutup:2" /\ amencutup_2__Sample
  , "amencutup:3" /\ amencutup_3__Sample
  , "amencutup:4" /\ amencutup_4__Sample
  , "amencutup:5" /\ amencutup_5__Sample
  , "amencutup:6" /\ amencutup_6__Sample
  , "amencutup:7" /\ amencutup_7__Sample
  , "amencutup:8" /\ amencutup_8__Sample
  , "amencutup:9" /\ amencutup_9__Sample
  , "amencutup:10" /\ amencutup_10__Sample
  , "amencutup:11" /\ amencutup_11__Sample
  , "amencutup:12" /\ amencutup_12__Sample
  , "amencutup:13" /\ amencutup_13__Sample
  , "amencutup:14" /\ amencutup_14__Sample
  , "amencutup:15" /\ amencutup_15__Sample
  , "amencutup:16" /\ amencutup_16__Sample
  , "amencutup:17" /\ amencutup_17__Sample
  , "amencutup:18" /\ amencutup_18__Sample
  , "amencutup:19" /\ amencutup_19__Sample
  , "amencutup:20" /\ amencutup_20__Sample
  , "amencutup:21" /\ amencutup_21__Sample
  , "amencutup:22" /\ amencutup_22__Sample
  , "amencutup:23" /\ amencutup_23__Sample
  , "amencutup:24" /\ amencutup_24__Sample
  , "amencutup:25" /\ amencutup_25__Sample
  , "amencutup:26" /\ amencutup_26__Sample
  , "amencutup:27" /\ amencutup_27__Sample
  , "amencutup:28" /\ amencutup_28__Sample
  , "amencutup:29" /\ amencutup_29__Sample
  , "amencutup:30" /\ amencutup_30__Sample
  , "amencutup:31" /\ amencutup_31__Sample
  , "drum" /\ drum_0__Sample
  , "drum:0" /\ drum_0__Sample
  , "drum:1" /\ drum_1__Sample
  , "drum:2" /\ drum_2__Sample
  , "drum:3" /\ drum_3__Sample
  , "drum:4" /\ drum_4__Sample
  , "drum:5" /\ drum_5__Sample
  , "coins" /\ coins_0__Sample
  , "coins:0" /\ coins_0__Sample
  , "industrial" /\ industrial_0__Sample
  , "industrial:0" /\ industrial_0__Sample
  , "industrial:1" /\ industrial_1__Sample
  , "industrial:2" /\ industrial_2__Sample
  , "industrial:3" /\ industrial_3__Sample
  , "industrial:4" /\ industrial_4__Sample
  , "industrial:5" /\ industrial_5__Sample
  , "industrial:6" /\ industrial_6__Sample
  , "industrial:7" /\ industrial_7__Sample
  , "industrial:8" /\ industrial_8__Sample
  , "industrial:9" /\ industrial_9__Sample
  , "industrial:10" /\ industrial_10__Sample
  , "industrial:11" /\ industrial_11__Sample
  , "industrial:12" /\ industrial_12__Sample
  , "industrial:13" /\ industrial_13__Sample
  , "industrial:14" /\ industrial_14__Sample
  , "industrial:15" /\ industrial_15__Sample
  , "industrial:16" /\ industrial_16__Sample
  , "industrial:17" /\ industrial_17__Sample
  , "industrial:18" /\ industrial_18__Sample
  , "industrial:19" /\ industrial_19__Sample
  , "industrial:20" /\ industrial_20__Sample
  , "industrial:21" /\ industrial_21__Sample
  , "industrial:22" /\ industrial_22__Sample
  , "industrial:23" /\ industrial_23__Sample
  , "industrial:24" /\ industrial_24__Sample
  , "industrial:25" /\ industrial_25__Sample
  , "industrial:26" /\ industrial_26__Sample
  , "industrial:27" /\ industrial_27__Sample
  , "industrial:28" /\ industrial_28__Sample
  , "industrial:29" /\ industrial_29__Sample
  , "industrial:30" /\ industrial_30__Sample
  , "industrial:31" /\ industrial_31__Sample
  , "tink" /\ tink_0__Sample
  , "tink:0" /\ tink_0__Sample
  , "tink:1" /\ tink_1__Sample
  , "tink:2" /\ tink_2__Sample
  , "tink:3" /\ tink_3__Sample
  , "tink:4" /\ tink_4__Sample
  , "co" /\ co_0__Sample
  , "co:0" /\ co_0__Sample
  , "co:1" /\ co_1__Sample
  , "co:2" /\ co_2__Sample
  , "co:3" /\ co_3__Sample
  , "fest" /\ fest_0__Sample
  , "fest:0" /\ fest_0__Sample
  , "feelfx" /\ feelfx_0__Sample
  , "feelfx:0" /\ feelfx_0__Sample
  , "feelfx:1" /\ feelfx_1__Sample
  , "feelfx:2" /\ feelfx_2__Sample
  , "feelfx:3" /\ feelfx_3__Sample
  , "feelfx:4" /\ feelfx_4__Sample
  , "feelfx:5" /\ feelfx_5__Sample
  , "feelfx:6" /\ feelfx_6__Sample
  , "feelfx:7" /\ feelfx_7__Sample
  , "x_808cy" /\ x_808cy_0__Sample
  , "x_808cy:0" /\ x_808cy_0__Sample
  , "x_808cy:1" /\ x_808cy_1__Sample
  , "x_808cy:2" /\ x_808cy_2__Sample
  , "x_808cy:3" /\ x_808cy_3__Sample
  , "x_808cy:4" /\ x_808cy_4__Sample
  , "x_808cy:5" /\ x_808cy_5__Sample
  , "x_808cy:6" /\ x_808cy_6__Sample
  , "x_808cy:7" /\ x_808cy_7__Sample
  , "x_808cy:8" /\ x_808cy_8__Sample
  , "x_808cy:9" /\ x_808cy_9__Sample
  , "x_808cy:10" /\ x_808cy_10__Sample
  , "x_808cy:11" /\ x_808cy_11__Sample
  , "x_808cy:12" /\ x_808cy_12__Sample
  , "x_808cy:13" /\ x_808cy_13__Sample
  , "x_808cy:14" /\ x_808cy_14__Sample
  , "x_808cy:15" /\ x_808cy_15__Sample
  , "x_808cy:16" /\ x_808cy_16__Sample
  , "x_808cy:17" /\ x_808cy_17__Sample
  , "x_808cy:18" /\ x_808cy_18__Sample
  , "x_808cy:19" /\ x_808cy_19__Sample
  , "x_808cy:20" /\ x_808cy_20__Sample
  , "x_808cy:21" /\ x_808cy_21__Sample
  , "x_808cy:22" /\ x_808cy_22__Sample
  , "x_808cy:23" /\ x_808cy_23__Sample
  , "x_808cy:24" /\ x_808cy_24__Sample
  , "world" /\ world_0__Sample
  , "world:0" /\ world_0__Sample
  , "world:1" /\ world_1__Sample
  , "world:2" /\ world_2__Sample
  , "f" /\ f_0__Sample
  , "f:0" /\ f_0__Sample
  , "numbers" /\ numbers_0__Sample
  , "numbers:0" /\ numbers_0__Sample
  , "numbers:1" /\ numbers_1__Sample
  , "numbers:2" /\ numbers_2__Sample
  , "numbers:3" /\ numbers_3__Sample
  , "numbers:4" /\ numbers_4__Sample
  , "numbers:5" /\ numbers_5__Sample
  , "numbers:6" /\ numbers_6__Sample
  , "numbers:7" /\ numbers_7__Sample
  , "numbers:8" /\ numbers_8__Sample
  , "d" /\ d_0__Sample
  , "d:0" /\ d_0__Sample
  , "d:1" /\ d_1__Sample
  , "d:2" /\ d_2__Sample
  , "d:3" /\ d_3__Sample
  , "padlong" /\ padlong_0__Sample
  , "padlong:0" /\ padlong_0__Sample
  , "sequential" /\ sequential_0__Sample
  , "sequential:0" /\ sequential_0__Sample
  , "sequential:1" /\ sequential_1__Sample
  , "sequential:2" /\ sequential_2__Sample
  , "sequential:3" /\ sequential_3__Sample
  , "sequential:4" /\ sequential_4__Sample
  , "sequential:5" /\ sequential_5__Sample
  , "sequential:6" /\ sequential_6__Sample
  , "sequential:7" /\ sequential_7__Sample
  , "stab" /\ stab_0__Sample
  , "stab:0" /\ stab_0__Sample
  , "stab:1" /\ stab_1__Sample
  , "stab:2" /\ stab_2__Sample
  , "stab:3" /\ stab_3__Sample
  , "stab:4" /\ stab_4__Sample
  , "stab:5" /\ stab_5__Sample
  , "stab:6" /\ stab_6__Sample
  , "stab:7" /\ stab_7__Sample
  , "stab:8" /\ stab_8__Sample
  , "stab:9" /\ stab_9__Sample
  , "stab:10" /\ stab_10__Sample
  , "stab:11" /\ stab_11__Sample
  , "stab:12" /\ stab_12__Sample
  , "stab:13" /\ stab_13__Sample
  , "stab:14" /\ stab_14__Sample
  , "stab:15" /\ stab_15__Sample
  , "stab:16" /\ stab_16__Sample
  , "stab:17" /\ stab_17__Sample
  , "stab:18" /\ stab_18__Sample
  , "stab:19" /\ stab_19__Sample
  , "stab:20" /\ stab_20__Sample
  , "stab:21" /\ stab_21__Sample
  , "stab:22" /\ stab_22__Sample
  , "electro1" /\ electro1_0__Sample
  , "electro1:0" /\ electro1_0__Sample
  , "electro1:1" /\ electro1_1__Sample
  , "electro1:2" /\ electro1_2__Sample
  , "electro1:3" /\ electro1_3__Sample
  , "electro1:4" /\ electro1_4__Sample
  , "electro1:5" /\ electro1_5__Sample
  , "electro1:6" /\ electro1_6__Sample
  , "electro1:7" /\ electro1_7__Sample
  , "electro1:8" /\ electro1_8__Sample
  , "electro1:9" /\ electro1_9__Sample
  , "electro1:10" /\ electro1_10__Sample
  , "electro1:11" /\ electro1_11__Sample
  , "electro1:12" /\ electro1_12__Sample
  , "ifdrums" /\ ifdrums_0__Sample
  , "ifdrums:0" /\ ifdrums_0__Sample
  , "ifdrums:1" /\ ifdrums_1__Sample
  , "ifdrums:2" /\ ifdrums_2__Sample
  , "invaders" /\ invaders_0__Sample
  , "invaders:0" /\ invaders_0__Sample
  , "invaders:1" /\ invaders_1__Sample
  , "invaders:2" /\ invaders_2__Sample
  , "invaders:3" /\ invaders_3__Sample
  , "invaders:4" /\ invaders_4__Sample
  , "invaders:5" /\ invaders_5__Sample
  , "invaders:6" /\ invaders_6__Sample
  , "invaders:7" /\ invaders_7__Sample
  , "invaders:8" /\ invaders_8__Sample
  , "invaders:9" /\ invaders_9__Sample
  , "invaders:10" /\ invaders_10__Sample
  , "invaders:11" /\ invaders_11__Sample
  , "invaders:12" /\ invaders_12__Sample
  , "invaders:13" /\ invaders_13__Sample
  , "invaders:14" /\ invaders_14__Sample
  , "invaders:15" /\ invaders_15__Sample
  , "invaders:16" /\ invaders_16__Sample
  , "invaders:17" /\ invaders_17__Sample
  , "dist" /\ dist_0__Sample
  , "dist:0" /\ dist_0__Sample
  , "dist:1" /\ dist_1__Sample
  , "dist:2" /\ dist_2__Sample
  , "dist:3" /\ dist_3__Sample
  , "dist:4" /\ dist_4__Sample
  , "dist:5" /\ dist_5__Sample
  , "dist:6" /\ dist_6__Sample
  , "dist:7" /\ dist_7__Sample
  , "dist:8" /\ dist_8__Sample
  , "dist:9" /\ dist_9__Sample
  , "dist:10" /\ dist_10__Sample
  , "dist:11" /\ dist_11__Sample
  , "dist:12" /\ dist_12__Sample
  , "dist:13" /\ dist_13__Sample
  , "dist:14" /\ dist_14__Sample
  , "dist:15" /\ dist_15__Sample
  , "sundance" /\ sundance_0__Sample
  , "sundance:0" /\ sundance_0__Sample
  , "sundance:1" /\ sundance_1__Sample
  , "sundance:2" /\ sundance_2__Sample
  , "sundance:3" /\ sundance_3__Sample
  , "sundance:4" /\ sundance_4__Sample
  , "sundance:5" /\ sundance_5__Sample
  , "speech" /\ speech_0__Sample
  , "speech:0" /\ speech_0__Sample
  , "speech:1" /\ speech_1__Sample
  , "speech:2" /\ speech_2__Sample
  , "speech:3" /\ speech_3__Sample
  , "speech:4" /\ speech_4__Sample
  , "speech:5" /\ speech_5__Sample
  , "speech:6" /\ speech_6__Sample
  , "toys" /\ toys_0__Sample
  , "toys:0" /\ toys_0__Sample
  , "toys:1" /\ toys_1__Sample
  , "toys:2" /\ toys_2__Sample
  , "toys:3" /\ toys_3__Sample
  , "toys:4" /\ toys_4__Sample
  , "toys:5" /\ toys_5__Sample
  , "toys:6" /\ toys_6__Sample
  , "toys:7" /\ toys_7__Sample
  , "toys:8" /\ toys_8__Sample
  , "toys:9" /\ toys_9__Sample
  , "toys:10" /\ toys_10__Sample
  , "toys:11" /\ toys_11__Sample
  , "toys:12" /\ toys_12__Sample
  , "bass0" /\ bass0_0__Sample
  , "bass0:0" /\ bass0_0__Sample
  , "bass0:1" /\ bass0_1__Sample
  , "bass0:2" /\ bass0_2__Sample
  , "realclaps" /\ realclaps_0__Sample
  , "realclaps:0" /\ realclaps_0__Sample
  , "realclaps:1" /\ realclaps_1__Sample
  , "realclaps:2" /\ realclaps_2__Sample
  , "realclaps:3" /\ realclaps_3__Sample
  , "dorkbot" /\ dorkbot_0__Sample
  , "dorkbot:0" /\ dorkbot_0__Sample
  , "dorkbot:1" /\ dorkbot_1__Sample
  , "arpy" /\ arpy_0__Sample
  , "arpy:0" /\ arpy_0__Sample
  , "arpy:1" /\ arpy_1__Sample
  , "arpy:2" /\ arpy_2__Sample
  , "arpy:3" /\ arpy_3__Sample
  , "arpy:4" /\ arpy_4__Sample
  , "arpy:5" /\ arpy_5__Sample
  , "arpy:6" /\ arpy_6__Sample
  , "arpy:7" /\ arpy_7__Sample
  , "arpy:8" /\ arpy_8__Sample
  , "arpy:9" /\ arpy_9__Sample
  , "arpy:10" /\ arpy_10__Sample
  , "fire" /\ fire_0__Sample
  , "fire:0" /\ fire_0__Sample
  , "hoover" /\ hoover_0__Sample
  , "hoover:0" /\ hoover_0__Sample
  , "hoover:1" /\ hoover_1__Sample
  , "hoover:2" /\ hoover_2__Sample
  , "hoover:3" /\ hoover_3__Sample
  , "hoover:4" /\ hoover_4__Sample
  , "hoover:5" /\ hoover_5__Sample
  , "breath" /\ breath_0__Sample
  , "breath:0" /\ breath_0__Sample
  , "rave" /\ rave_0__Sample
  , "rave:0" /\ rave_0__Sample
  , "rave:1" /\ rave_1__Sample
  , "rave:2" /\ rave_2__Sample
  , "rave:3" /\ rave_3__Sample
  , "rave:4" /\ rave_4__Sample
  , "rave:5" /\ rave_5__Sample
  , "rave:6" /\ rave_6__Sample
  , "rave:7" /\ rave_7__Sample
  , "bottle" /\ bottle_0__Sample
  , "bottle:0" /\ bottle_0__Sample
  , "bottle:1" /\ bottle_1__Sample
  , "bottle:2" /\ bottle_2__Sample
  , "bottle:3" /\ bottle_3__Sample
  , "bottle:4" /\ bottle_4__Sample
  , "bottle:5" /\ bottle_5__Sample
  , "bottle:6" /\ bottle_6__Sample
  , "bottle:7" /\ bottle_7__Sample
  , "bottle:8" /\ bottle_8__Sample
  , "bottle:9" /\ bottle_9__Sample
  , "bottle:10" /\ bottle_10__Sample
  , "bottle:11" /\ bottle_11__Sample
  , "bottle:12" /\ bottle_12__Sample
  , "east" /\ east_0__Sample
  , "east:0" /\ east_0__Sample
  , "east:1" /\ east_1__Sample
  , "east:2" /\ east_2__Sample
  , "east:3" /\ east_3__Sample
  , "east:4" /\ east_4__Sample
  , "east:5" /\ east_5__Sample
  , "east:6" /\ east_6__Sample
  , "east:7" /\ east_7__Sample
  , "east:8" /\ east_8__Sample
  , "linnhats" /\ linnhats_0__Sample
  , "linnhats:0" /\ linnhats_0__Sample
  , "linnhats:1" /\ linnhats_1__Sample
  , "linnhats:2" /\ linnhats_2__Sample
  , "linnhats:3" /\ linnhats_3__Sample
  , "linnhats:4" /\ linnhats_4__Sample
  , "linnhats:5" /\ linnhats_5__Sample
  , "speedupdown" /\ speedupdown_0__Sample
  , "speedupdown:0" /\ speedupdown_0__Sample
  , "speedupdown:1" /\ speedupdown_1__Sample
  , "speedupdown:2" /\ speedupdown_2__Sample
  , "speedupdown:3" /\ speedupdown_3__Sample
  , "speedupdown:4" /\ speedupdown_4__Sample
  , "speedupdown:5" /\ speedupdown_5__Sample
  , "speedupdown:6" /\ speedupdown_6__Sample
  , "speedupdown:7" /\ speedupdown_7__Sample
  , "speedupdown:8" /\ speedupdown_8__Sample
  , "cosmicg" /\ cosmicg_0__Sample
  , "cosmicg:0" /\ cosmicg_0__Sample
  , "cosmicg:1" /\ cosmicg_1__Sample
  , "cosmicg:2" /\ cosmicg_2__Sample
  , "cosmicg:3" /\ cosmicg_3__Sample
  , "cosmicg:4" /\ cosmicg_4__Sample
  , "cosmicg:5" /\ cosmicg_5__Sample
  , "cosmicg:6" /\ cosmicg_6__Sample
  , "cosmicg:7" /\ cosmicg_7__Sample
  , "cosmicg:8" /\ cosmicg_8__Sample
  , "cosmicg:9" /\ cosmicg_9__Sample
  , "cosmicg:10" /\ cosmicg_10__Sample
  , "cosmicg:11" /\ cosmicg_11__Sample
  , "cosmicg:12" /\ cosmicg_12__Sample
  , "cosmicg:13" /\ cosmicg_13__Sample
  , "cosmicg:14" /\ cosmicg_14__Sample
  , "jvbass" /\ jvbass_0__Sample
  , "jvbass:0" /\ jvbass_0__Sample
  , "jvbass:1" /\ jvbass_1__Sample
  , "jvbass:2" /\ jvbass_2__Sample
  , "jvbass:3" /\ jvbass_3__Sample
  , "jvbass:4" /\ jvbass_4__Sample
  , "jvbass:5" /\ jvbass_5__Sample
  , "jvbass:6" /\ jvbass_6__Sample
  , "jvbass:7" /\ jvbass_7__Sample
  , "jvbass:8" /\ jvbass_8__Sample
  , "jvbass:9" /\ jvbass_9__Sample
  , "jvbass:10" /\ jvbass_10__Sample
  , "jvbass:11" /\ jvbass_11__Sample
  , "jvbass:12" /\ jvbass_12__Sample
  , "mash" /\ mash_0__Sample
  , "mash:0" /\ mash_0__Sample
  , "mash:1" /\ mash_1__Sample
  , "feel" /\ feel_0__Sample
  , "feel:0" /\ feel_0__Sample
  , "feel:1" /\ feel_1__Sample
  , "feel:2" /\ feel_2__Sample
  , "feel:3" /\ feel_3__Sample
  , "feel:4" /\ feel_4__Sample
  , "feel:5" /\ feel_5__Sample
  , "feel:6" /\ feel_6__Sample
  , "short" /\ short_0__Sample
  , "short:0" /\ short_0__Sample
  , "short:1" /\ short_1__Sample
  , "short:2" /\ short_2__Sample
  , "short:3" /\ short_3__Sample
  , "short:4" /\ short_4__Sample
  , "incoming" /\ incoming_0__Sample
  , "incoming:0" /\ incoming_0__Sample
  , "incoming:1" /\ incoming_1__Sample
  , "incoming:2" /\ incoming_2__Sample
  , "incoming:3" /\ incoming_3__Sample
  , "incoming:4" /\ incoming_4__Sample
  , "incoming:5" /\ incoming_5__Sample
  , "incoming:6" /\ incoming_6__Sample
  , "incoming:7" /\ incoming_7__Sample
  , "flick" /\ flick_0__Sample
  , "flick:0" /\ flick_0__Sample
  , "flick:1" /\ flick_1__Sample
  , "flick:2" /\ flick_2__Sample
  , "flick:3" /\ flick_3__Sample
  , "flick:4" /\ flick_4__Sample
  , "flick:5" /\ flick_5__Sample
  , "flick:6" /\ flick_6__Sample
  , "flick:7" /\ flick_7__Sample
  , "flick:8" /\ flick_8__Sample
  , "flick:9" /\ flick_9__Sample
  , "flick:10" /\ flick_10__Sample
  , "flick:11" /\ flick_11__Sample
  , "flick:12" /\ flick_12__Sample
  , "flick:13" /\ flick_13__Sample
  , "flick:14" /\ flick_14__Sample
  , "flick:15" /\ flick_15__Sample
  , "flick:16" /\ flick_16__Sample
  , "reverbkick" /\ reverbkick_0__Sample
  , "reverbkick:0" /\ reverbkick_0__Sample
  , "bass2" /\ bass2_0__Sample
  , "bass2:0" /\ bass2_0__Sample
  , "bass2:1" /\ bass2_1__Sample
  , "bass2:2" /\ bass2_2__Sample
  , "bass2:3" /\ bass2_3__Sample
  , "bass2:4" /\ bass2_4__Sample
  , "baa" /\ baa_0__Sample
  , "baa:0" /\ baa_0__Sample
  , "baa:1" /\ baa_1__Sample
  , "baa:2" /\ baa_2__Sample
  , "baa:3" /\ baa_3__Sample
  , "baa:4" /\ baa_4__Sample
  , "baa:5" /\ baa_5__Sample
  , "baa:6" /\ baa_6__Sample
  , "fm" /\ fm_0__Sample
  , "fm:0" /\ fm_0__Sample
  , "fm:1" /\ fm_1__Sample
  , "fm:2" /\ fm_2__Sample
  , "fm:3" /\ fm_3__Sample
  , "fm:4" /\ fm_4__Sample
  , "fm:5" /\ fm_5__Sample
  , "fm:6" /\ fm_6__Sample
  , "fm:7" /\ fm_7__Sample
  , "fm:8" /\ fm_8__Sample
  , "fm:9" /\ fm_9__Sample
  , "fm:10" /\ fm_10__Sample
  , "fm:11" /\ fm_11__Sample
  , "fm:12" /\ fm_12__Sample
  , "fm:13" /\ fm_13__Sample
  , "fm:14" /\ fm_14__Sample
  , "fm:15" /\ fm_15__Sample
  , "fm:16" /\ fm_16__Sample
  , "click" /\ click_0__Sample
  , "click:0" /\ click_0__Sample
  , "click:1" /\ click_1__Sample
  , "click:2" /\ click_2__Sample
  , "click:3" /\ click_3__Sample
  , "control" /\ control_0__Sample
  , "control:0" /\ control_0__Sample
  , "control:1" /\ control_1__Sample
  , "peri" /\ peri_0__Sample
  , "peri:0" /\ peri_0__Sample
  , "peri:1" /\ peri_1__Sample
  , "peri:2" /\ peri_2__Sample
  , "peri:3" /\ peri_3__Sample
  , "peri:4" /\ peri_4__Sample
  , "peri:5" /\ peri_5__Sample
  , "peri:6" /\ peri_6__Sample
  , "peri:7" /\ peri_7__Sample
  , "peri:8" /\ peri_8__Sample
  , "peri:9" /\ peri_9__Sample
  , "peri:10" /\ peri_10__Sample
  , "peri:11" /\ peri_11__Sample
  , "peri:12" /\ peri_12__Sample
  , "peri:13" /\ peri_13__Sample
  , "peri:14" /\ peri_14__Sample
  , "procshort" /\ procshort_0__Sample
  , "procshort:0" /\ procshort_0__Sample
  , "procshort:1" /\ procshort_1__Sample
  , "procshort:2" /\ procshort_2__Sample
  , "procshort:3" /\ procshort_3__Sample
  , "procshort:4" /\ procshort_4__Sample
  , "procshort:5" /\ procshort_5__Sample
  , "procshort:6" /\ procshort_6__Sample
  , "procshort:7" /\ procshort_7__Sample
  , "hand" /\ hand_0__Sample
  , "hand:0" /\ hand_0__Sample
  , "hand:1" /\ hand_1__Sample
  , "hand:2" /\ hand_2__Sample
  , "hand:3" /\ hand_3__Sample
  , "hand:4" /\ hand_4__Sample
  , "hand:5" /\ hand_5__Sample
  , "hand:6" /\ hand_6__Sample
  , "hand:7" /\ hand_7__Sample
  , "hand:8" /\ hand_8__Sample
  , "hand:9" /\ hand_9__Sample
  , "hand:10" /\ hand_10__Sample
  , "hand:11" /\ hand_11__Sample
  , "hand:12" /\ hand_12__Sample
  , "hand:13" /\ hand_13__Sample
  , "hand:14" /\ hand_14__Sample
  , "hand:15" /\ hand_15__Sample
  , "hand:16" /\ hand_16__Sample
  , "future" /\ future_0__Sample
  , "future:0" /\ future_0__Sample
  , "future:1" /\ future_1__Sample
  , "future:2" /\ future_2__Sample
  , "future:3" /\ future_3__Sample
  , "future:4" /\ future_4__Sample
  , "future:5" /\ future_5__Sample
  , "future:6" /\ future_6__Sample
  , "future:7" /\ future_7__Sample
  , "future:8" /\ future_8__Sample
  , "future:9" /\ future_9__Sample
  , "future:10" /\ future_10__Sample
  , "future:11" /\ future_11__Sample
  , "future:12" /\ future_12__Sample
  , "future:13" /\ future_13__Sample
  , "future:14" /\ future_14__Sample
  , "future:15" /\ future_15__Sample
  , "future:16" /\ future_16__Sample
  , "hh" /\ hh_0__Sample
  , "hh:0" /\ hh_0__Sample
  , "hh:1" /\ hh_1__Sample
  , "hh:2" /\ hh_2__Sample
  , "hh:3" /\ hh_3__Sample
  , "hh:4" /\ hh_4__Sample
  , "hh:5" /\ hh_5__Sample
  , "hh:6" /\ hh_6__Sample
  , "hh:7" /\ hh_7__Sample
  , "hh:8" /\ hh_8__Sample
  , "hh:9" /\ hh_9__Sample
  , "hh:10" /\ hh_10__Sample
  , "hh:11" /\ hh_11__Sample
  , "hh:12" /\ hh_12__Sample
  , "x_808ht" /\ x_808ht_0__Sample
  , "x_808ht:0" /\ x_808ht_0__Sample
  , "x_808ht:1" /\ x_808ht_1__Sample
  , "x_808ht:2" /\ x_808ht_2__Sample
  , "x_808ht:3" /\ x_808ht_3__Sample
  , "x_808ht:4" /\ x_808ht_4__Sample
  , "db" /\ db_0__Sample
  , "db:0" /\ db_0__Sample
  , "db:1" /\ db_1__Sample
  , "db:2" /\ db_2__Sample
  , "db:3" /\ db_3__Sample
  , "db:4" /\ db_4__Sample
  , "db:5" /\ db_5__Sample
  , "db:6" /\ db_6__Sample
  , "db:7" /\ db_7__Sample
  , "db:8" /\ db_8__Sample
  , "db:9" /\ db_9__Sample
  , "db:10" /\ db_10__Sample
  , "db:11" /\ db_11__Sample
  , "db:12" /\ db_12__Sample
  ]

type SampleGetter a = { | Samples a } -> a

-- we need this dog and pony show because otherwise the type-checker tries to check 2000+
-- SampleGetter functions and explodes
foreign import unsafeSampleGetter :: forall a. String -> SampleGetter a

samplesToSampleGetter :: forall a. Array (Sample /\ SampleGetter a)
samplesToSampleGetter = (map <<< map) unsafeSampleGetter samplesToString

sampleToBuffers' :: Map Sample (SampleGetter BrowserAudioBuffer)
sampleToBuffers' = Map.fromFoldable samplesToSampleGetter

sampleToBuffers :: Sample -> SampleGetter BrowserAudioBuffer
sampleToBuffers sampy = fromMaybe
  (unsafeSampleGetter "intentionalSilenceForInternalUseOnly")
  (Map.lookup sampy sampleToBuffers')

samplesToString :: Array (Sample /\ String)
samplesToString =
  [ intentionalSilenceForInternalUseOnly__Sample /\ "intentionalSilenceForInternalUseOnly"
  , kicklinn_0__Sample /\ "kicklinn_0"
  , msg_0__Sample /\ "msg_0"
  , msg_1__Sample /\ "msg_1"
  , msg_2__Sample /\ "msg_2"
  , msg_3__Sample /\ "msg_3"
  , msg_4__Sample /\ "msg_4"
  , msg_5__Sample /\ "msg_5"
  , msg_6__Sample /\ "msg_6"
  , msg_7__Sample /\ "msg_7"
  , msg_8__Sample /\ "msg_8"
  , gabbalouder_0__Sample /\ "gabbalouder_0"
  , gabbalouder_1__Sample /\ "gabbalouder_1"
  , gabbalouder_2__Sample /\ "gabbalouder_2"
  , gabbalouder_3__Sample /\ "gabbalouder_3"
  , kurt_0__Sample /\ "kurt_0"
  , kurt_1__Sample /\ "kurt_1"
  , kurt_2__Sample /\ "kurt_2"
  , kurt_3__Sample /\ "kurt_3"
  , kurt_4__Sample /\ "kurt_4"
  , kurt_5__Sample /\ "kurt_5"
  , kurt_6__Sample /\ "kurt_6"
  , bassdm_0__Sample /\ "bassdm_0"
  , bassdm_1__Sample /\ "bassdm_1"
  , bassdm_2__Sample /\ "bassdm_2"
  , bassdm_3__Sample /\ "bassdm_3"
  , bassdm_4__Sample /\ "bassdm_4"
  , bassdm_5__Sample /\ "bassdm_5"
  , bassdm_6__Sample /\ "bassdm_6"
  , bassdm_7__Sample /\ "bassdm_7"
  , bassdm_8__Sample /\ "bassdm_8"
  , bassdm_9__Sample /\ "bassdm_9"
  , bassdm_10__Sample /\ "bassdm_10"
  , bassdm_11__Sample /\ "bassdm_11"
  , bassdm_12__Sample /\ "bassdm_12"
  , bassdm_13__Sample /\ "bassdm_13"
  , bassdm_14__Sample /\ "bassdm_14"
  , bassdm_15__Sample /\ "bassdm_15"
  , bassdm_16__Sample /\ "bassdm_16"
  , bassdm_17__Sample /\ "bassdm_17"
  , bassdm_18__Sample /\ "bassdm_18"
  , bassdm_19__Sample /\ "bassdm_19"
  , bassdm_20__Sample /\ "bassdm_20"
  , bassdm_21__Sample /\ "bassdm_21"
  , bassdm_22__Sample /\ "bassdm_22"
  , bassdm_23__Sample /\ "bassdm_23"
  , tabla2_0__Sample /\ "tabla2_0"
  , tabla2_1__Sample /\ "tabla2_1"
  , tabla2_2__Sample /\ "tabla2_2"
  , tabla2_3__Sample /\ "tabla2_3"
  , tabla2_4__Sample /\ "tabla2_4"
  , tabla2_5__Sample /\ "tabla2_5"
  , tabla2_6__Sample /\ "tabla2_6"
  , tabla2_7__Sample /\ "tabla2_7"
  , tabla2_8__Sample /\ "tabla2_8"
  , tabla2_9__Sample /\ "tabla2_9"
  , tabla2_10__Sample /\ "tabla2_10"
  , tabla2_11__Sample /\ "tabla2_11"
  , tabla2_12__Sample /\ "tabla2_12"
  , tabla2_13__Sample /\ "tabla2_13"
  , tabla2_14__Sample /\ "tabla2_14"
  , tabla2_15__Sample /\ "tabla2_15"
  , tabla2_16__Sample /\ "tabla2_16"
  , tabla2_17__Sample /\ "tabla2_17"
  , tabla2_18__Sample /\ "tabla2_18"
  , tabla2_19__Sample /\ "tabla2_19"
  , tabla2_20__Sample /\ "tabla2_20"
  , tabla2_21__Sample /\ "tabla2_21"
  , tabla2_22__Sample /\ "tabla2_22"
  , tabla2_23__Sample /\ "tabla2_23"
  , tabla2_24__Sample /\ "tabla2_24"
  , tabla2_25__Sample /\ "tabla2_25"
  , tabla2_26__Sample /\ "tabla2_26"
  , tabla2_27__Sample /\ "tabla2_27"
  , tabla2_28__Sample /\ "tabla2_28"
  , tabla2_29__Sample /\ "tabla2_29"
  , tabla2_30__Sample /\ "tabla2_30"
  , tabla2_31__Sample /\ "tabla2_31"
  , tabla2_32__Sample /\ "tabla2_32"
  , tabla2_33__Sample /\ "tabla2_33"
  , tabla2_34__Sample /\ "tabla2_34"
  , tabla2_35__Sample /\ "tabla2_35"
  , tabla2_36__Sample /\ "tabla2_36"
  , tabla2_37__Sample /\ "tabla2_37"
  , tabla2_38__Sample /\ "tabla2_38"
  , tabla2_39__Sample /\ "tabla2_39"
  , tabla2_40__Sample /\ "tabla2_40"
  , tabla2_41__Sample /\ "tabla2_41"
  , tabla2_42__Sample /\ "tabla2_42"
  , tabla2_43__Sample /\ "tabla2_43"
  , tabla2_44__Sample /\ "tabla2_44"
  , tabla2_45__Sample /\ "tabla2_45"
  , chin_0__Sample /\ "chin_0"
  , chin_1__Sample /\ "chin_1"
  , chin_2__Sample /\ "chin_2"
  , chin_3__Sample /\ "chin_3"
  , mp3_0__Sample /\ "mp3_0"
  , mp3_1__Sample /\ "mp3_1"
  , mp3_2__Sample /\ "mp3_2"
  , mp3_3__Sample /\ "mp3_3"
  , tablex_0__Sample /\ "tablex_0"
  , tablex_1__Sample /\ "tablex_1"
  , tablex_2__Sample /\ "tablex_2"
  , sf_0__Sample /\ "sf_0"
  , sf_1__Sample /\ "sf_1"
  , sf_2__Sample /\ "sf_2"
  , sf_3__Sample /\ "sf_3"
  , sf_4__Sample /\ "sf_4"
  , sf_5__Sample /\ "sf_5"
  , sf_6__Sample /\ "sf_6"
  , sf_7__Sample /\ "sf_7"
  , sf_8__Sample /\ "sf_8"
  , sf_9__Sample /\ "sf_9"
  , sf_10__Sample /\ "sf_10"
  , sf_11__Sample /\ "sf_11"
  , sf_12__Sample /\ "sf_12"
  , sf_13__Sample /\ "sf_13"
  , sf_14__Sample /\ "sf_14"
  , sf_15__Sample /\ "sf_15"
  , sf_16__Sample /\ "sf_16"
  , sf_17__Sample /\ "sf_17"
  , speakspell_0__Sample /\ "speakspell_0"
  , speakspell_1__Sample /\ "speakspell_1"
  , speakspell_2__Sample /\ "speakspell_2"
  , speakspell_3__Sample /\ "speakspell_3"
  , speakspell_4__Sample /\ "speakspell_4"
  , speakspell_5__Sample /\ "speakspell_5"
  , speakspell_6__Sample /\ "speakspell_6"
  , speakspell_7__Sample /\ "speakspell_7"
  , speakspell_8__Sample /\ "speakspell_8"
  , speakspell_9__Sample /\ "speakspell_9"
  , speakspell_10__Sample /\ "speakspell_10"
  , speakspell_11__Sample /\ "speakspell_11"
  , cc_0__Sample /\ "cc_0"
  , cc_1__Sample /\ "cc_1"
  , cc_2__Sample /\ "cc_2"
  , cc_3__Sample /\ "cc_3"
  , cc_4__Sample /\ "cc_4"
  , cc_5__Sample /\ "cc_5"
  , gabbaloud_0__Sample /\ "gabbaloud_0"
  , gabbaloud_1__Sample /\ "gabbaloud_1"
  , gabbaloud_2__Sample /\ "gabbaloud_2"
  , gabbaloud_3__Sample /\ "gabbaloud_3"
  , ades2_0__Sample /\ "ades2_0"
  , ades2_1__Sample /\ "ades2_1"
  , ades2_2__Sample /\ "ades2_2"
  , ades2_3__Sample /\ "ades2_3"
  , ades2_4__Sample /\ "ades2_4"
  , ades2_5__Sample /\ "ades2_5"
  , ades2_6__Sample /\ "ades2_6"
  , ades2_7__Sample /\ "ades2_7"
  , ades2_8__Sample /\ "ades2_8"
  , space_0__Sample /\ "space_0"
  , space_1__Sample /\ "space_1"
  , space_2__Sample /\ "space_2"
  , space_3__Sample /\ "space_3"
  , space_4__Sample /\ "space_4"
  , space_5__Sample /\ "space_5"
  , space_6__Sample /\ "space_6"
  , space_7__Sample /\ "space_7"
  , space_8__Sample /\ "space_8"
  , space_9__Sample /\ "space_9"
  , space_10__Sample /\ "space_10"
  , space_11__Sample /\ "space_11"
  , space_12__Sample /\ "space_12"
  , space_13__Sample /\ "space_13"
  , space_14__Sample /\ "space_14"
  , space_15__Sample /\ "space_15"
  , space_16__Sample /\ "space_16"
  , space_17__Sample /\ "space_17"
  , battles_0__Sample /\ "battles_0"
  , battles_1__Sample /\ "battles_1"
  , voodoo_0__Sample /\ "voodoo_0"
  , voodoo_1__Sample /\ "voodoo_1"
  , voodoo_2__Sample /\ "voodoo_2"
  , voodoo_3__Sample /\ "voodoo_3"
  , voodoo_4__Sample /\ "voodoo_4"
  , ravemono_0__Sample /\ "ravemono_0"
  , ravemono_1__Sample /\ "ravemono_1"
  , psr_0__Sample /\ "psr_0"
  , psr_1__Sample /\ "psr_1"
  , psr_2__Sample /\ "psr_2"
  , psr_3__Sample /\ "psr_3"
  , psr_4__Sample /\ "psr_4"
  , psr_5__Sample /\ "psr_5"
  , psr_6__Sample /\ "psr_6"
  , psr_7__Sample /\ "psr_7"
  , psr_8__Sample /\ "psr_8"
  , psr_9__Sample /\ "psr_9"
  , psr_10__Sample /\ "psr_10"
  , psr_11__Sample /\ "psr_11"
  , psr_12__Sample /\ "psr_12"
  , psr_13__Sample /\ "psr_13"
  , psr_14__Sample /\ "psr_14"
  , psr_15__Sample /\ "psr_15"
  , psr_16__Sample /\ "psr_16"
  , psr_17__Sample /\ "psr_17"
  , psr_18__Sample /\ "psr_18"
  , psr_19__Sample /\ "psr_19"
  , psr_20__Sample /\ "psr_20"
  , psr_21__Sample /\ "psr_21"
  , psr_22__Sample /\ "psr_22"
  , psr_23__Sample /\ "psr_23"
  , psr_24__Sample /\ "psr_24"
  , psr_25__Sample /\ "psr_25"
  , psr_26__Sample /\ "psr_26"
  , psr_27__Sample /\ "psr_27"
  , psr_28__Sample /\ "psr_28"
  , psr_29__Sample /\ "psr_29"
  , metal_0__Sample /\ "metal_0"
  , metal_1__Sample /\ "metal_1"
  , metal_2__Sample /\ "metal_2"
  , metal_3__Sample /\ "metal_3"
  , metal_4__Sample /\ "metal_4"
  , metal_5__Sample /\ "metal_5"
  , metal_6__Sample /\ "metal_6"
  , metal_7__Sample /\ "metal_7"
  , metal_8__Sample /\ "metal_8"
  , metal_9__Sample /\ "metal_9"
  , hardcore_0__Sample /\ "hardcore_0"
  , hardcore_1__Sample /\ "hardcore_1"
  , hardcore_2__Sample /\ "hardcore_2"
  , hardcore_3__Sample /\ "hardcore_3"
  , hardcore_4__Sample /\ "hardcore_4"
  , hardcore_5__Sample /\ "hardcore_5"
  , hardcore_6__Sample /\ "hardcore_6"
  , hardcore_7__Sample /\ "hardcore_7"
  , hardcore_8__Sample /\ "hardcore_8"
  , hardcore_9__Sample /\ "hardcore_9"
  , hardcore_10__Sample /\ "hardcore_10"
  , hardcore_11__Sample /\ "hardcore_11"
  , mouth_0__Sample /\ "mouth_0"
  , mouth_1__Sample /\ "mouth_1"
  , mouth_2__Sample /\ "mouth_2"
  , mouth_3__Sample /\ "mouth_3"
  , mouth_4__Sample /\ "mouth_4"
  , mouth_5__Sample /\ "mouth_5"
  , mouth_6__Sample /\ "mouth_6"
  , mouth_7__Sample /\ "mouth_7"
  , mouth_8__Sample /\ "mouth_8"
  , mouth_9__Sample /\ "mouth_9"
  , mouth_10__Sample /\ "mouth_10"
  , mouth_11__Sample /\ "mouth_11"
  , mouth_12__Sample /\ "mouth_12"
  , mouth_13__Sample /\ "mouth_13"
  , mouth_14__Sample /\ "mouth_14"
  , sugar_0__Sample /\ "sugar_0"
  , sugar_1__Sample /\ "sugar_1"
  , odx_0__Sample /\ "odx_0"
  , odx_1__Sample /\ "odx_1"
  , odx_2__Sample /\ "odx_2"
  , odx_3__Sample /\ "odx_3"
  , odx_4__Sample /\ "odx_4"
  , odx_5__Sample /\ "odx_5"
  , odx_6__Sample /\ "odx_6"
  , odx_7__Sample /\ "odx_7"
  , odx_8__Sample /\ "odx_8"
  , odx_9__Sample /\ "odx_9"
  , odx_10__Sample /\ "odx_10"
  , odx_11__Sample /\ "odx_11"
  , odx_12__Sample /\ "odx_12"
  , odx_13__Sample /\ "odx_13"
  , odx_14__Sample /\ "odx_14"
  , x_808lc_0__Sample /\ "x_808lc_0"
  , x_808lc_1__Sample /\ "x_808lc_1"
  , x_808lc_2__Sample /\ "x_808lc_2"
  , x_808lc_3__Sample /\ "x_808lc_3"
  , x_808lc_4__Sample /\ "x_808lc_4"
  , mt_0__Sample /\ "mt_0"
  , mt_1__Sample /\ "mt_1"
  , mt_2__Sample /\ "mt_2"
  , mt_3__Sample /\ "mt_3"
  , mt_4__Sample /\ "mt_4"
  , mt_5__Sample /\ "mt_5"
  , mt_6__Sample /\ "mt_6"
  , mt_7__Sample /\ "mt_7"
  , mt_8__Sample /\ "mt_8"
  , mt_9__Sample /\ "mt_9"
  , mt_10__Sample /\ "mt_10"
  , mt_11__Sample /\ "mt_11"
  , mt_12__Sample /\ "mt_12"
  , mt_13__Sample /\ "mt_13"
  , mt_14__Sample /\ "mt_14"
  , mt_15__Sample /\ "mt_15"
  , drumtraks_0__Sample /\ "drumtraks_0"
  , drumtraks_1__Sample /\ "drumtraks_1"
  , drumtraks_2__Sample /\ "drumtraks_2"
  , drumtraks_3__Sample /\ "drumtraks_3"
  , drumtraks_4__Sample /\ "drumtraks_4"
  , drumtraks_5__Sample /\ "drumtraks_5"
  , drumtraks_6__Sample /\ "drumtraks_6"
  , drumtraks_7__Sample /\ "drumtraks_7"
  , drumtraks_8__Sample /\ "drumtraks_8"
  , drumtraks_9__Sample /\ "drumtraks_9"
  , drumtraks_10__Sample /\ "drumtraks_10"
  , drumtraks_11__Sample /\ "drumtraks_11"
  , drumtraks_12__Sample /\ "drumtraks_12"
  , print_0__Sample /\ "print_0"
  , print_1__Sample /\ "print_1"
  , print_2__Sample /\ "print_2"
  , print_3__Sample /\ "print_3"
  , print_4__Sample /\ "print_4"
  , print_5__Sample /\ "print_5"
  , print_6__Sample /\ "print_6"
  , print_7__Sample /\ "print_7"
  , print_8__Sample /\ "print_8"
  , print_9__Sample /\ "print_9"
  , print_10__Sample /\ "print_10"
  , blip_0__Sample /\ "blip_0"
  , blip_1__Sample /\ "blip_1"
  , wobble_0__Sample /\ "wobble_0"
  , made_0__Sample /\ "made_0"
  , made_1__Sample /\ "made_1"
  , made_2__Sample /\ "made_2"
  , made_3__Sample /\ "made_3"
  , made_4__Sample /\ "made_4"
  , made_5__Sample /\ "made_5"
  , made_6__Sample /\ "made_6"
  , bass3_0__Sample /\ "bass3_0"
  , bass3_1__Sample /\ "bass3_1"
  , bass3_2__Sample /\ "bass3_2"
  , bass3_3__Sample /\ "bass3_3"
  , bass3_4__Sample /\ "bass3_4"
  , bass3_5__Sample /\ "bass3_5"
  , bass3_6__Sample /\ "bass3_6"
  , bass3_7__Sample /\ "bass3_7"
  , bass3_8__Sample /\ "bass3_8"
  , bass3_9__Sample /\ "bass3_9"
  , bass3_10__Sample /\ "bass3_10"
  , speechless_0__Sample /\ "speechless_0"
  , speechless_1__Sample /\ "speechless_1"
  , speechless_2__Sample /\ "speechless_2"
  , speechless_3__Sample /\ "speechless_3"
  , speechless_4__Sample /\ "speechless_4"
  , speechless_5__Sample /\ "speechless_5"
  , speechless_6__Sample /\ "speechless_6"
  , speechless_7__Sample /\ "speechless_7"
  , speechless_8__Sample /\ "speechless_8"
  , speechless_9__Sample /\ "speechless_9"
  , sine_0__Sample /\ "sine_0"
  , sine_1__Sample /\ "sine_1"
  , sine_2__Sample /\ "sine_2"
  , sine_3__Sample /\ "sine_3"
  , sine_4__Sample /\ "sine_4"
  , sine_5__Sample /\ "sine_5"
  , noise_0__Sample /\ "noise_0"
  , x_808lt_0__Sample /\ "x_808lt_0"
  , x_808lt_1__Sample /\ "x_808lt_1"
  , x_808lt_2__Sample /\ "x_808lt_2"
  , x_808lt_3__Sample /\ "x_808lt_3"
  , x_808lt_4__Sample /\ "x_808lt_4"
  , sd_0__Sample /\ "sd_0"
  , sd_1__Sample /\ "sd_1"
  , alphabet_0__Sample /\ "alphabet_0"
  , alphabet_1__Sample /\ "alphabet_1"
  , alphabet_2__Sample /\ "alphabet_2"
  , alphabet_3__Sample /\ "alphabet_3"
  , alphabet_4__Sample /\ "alphabet_4"
  , alphabet_5__Sample /\ "alphabet_5"
  , alphabet_6__Sample /\ "alphabet_6"
  , alphabet_7__Sample /\ "alphabet_7"
  , alphabet_8__Sample /\ "alphabet_8"
  , alphabet_9__Sample /\ "alphabet_9"
  , alphabet_10__Sample /\ "alphabet_10"
  , alphabet_11__Sample /\ "alphabet_11"
  , alphabet_12__Sample /\ "alphabet_12"
  , alphabet_13__Sample /\ "alphabet_13"
  , alphabet_14__Sample /\ "alphabet_14"
  , alphabet_15__Sample /\ "alphabet_15"
  , alphabet_16__Sample /\ "alphabet_16"
  , alphabet_17__Sample /\ "alphabet_17"
  , alphabet_18__Sample /\ "alphabet_18"
  , alphabet_19__Sample /\ "alphabet_19"
  , alphabet_20__Sample /\ "alphabet_20"
  , alphabet_21__Sample /\ "alphabet_21"
  , alphabet_22__Sample /\ "alphabet_22"
  , alphabet_23__Sample /\ "alphabet_23"
  , alphabet_24__Sample /\ "alphabet_24"
  , alphabet_25__Sample /\ "alphabet_25"
  , baa2_0__Sample /\ "baa2_0"
  , baa2_1__Sample /\ "baa2_1"
  , baa2_2__Sample /\ "baa2_2"
  , baa2_3__Sample /\ "baa2_3"
  , baa2_4__Sample /\ "baa2_4"
  , baa2_5__Sample /\ "baa2_5"
  , baa2_6__Sample /\ "baa2_6"
  , tok_0__Sample /\ "tok_0"
  , tok_1__Sample /\ "tok_1"
  , tok_2__Sample /\ "tok_2"
  , tok_3__Sample /\ "tok_3"
  , ades3_0__Sample /\ "ades3_0"
  , ades3_1__Sample /\ "ades3_1"
  , ades3_2__Sample /\ "ades3_2"
  , ades3_3__Sample /\ "ades3_3"
  , ades3_4__Sample /\ "ades3_4"
  , ades3_5__Sample /\ "ades3_5"
  , ades3_6__Sample /\ "ades3_6"
  , x_909_0__Sample /\ "x_909_0"
  , sid_0__Sample /\ "sid_0"
  , sid_1__Sample /\ "sid_1"
  , sid_2__Sample /\ "sid_2"
  , sid_3__Sample /\ "sid_3"
  , sid_4__Sample /\ "sid_4"
  , sid_5__Sample /\ "sid_5"
  , sid_6__Sample /\ "sid_6"
  , sid_7__Sample /\ "sid_7"
  , sid_8__Sample /\ "sid_8"
  , sid_9__Sample /\ "sid_9"
  , sid_10__Sample /\ "sid_10"
  , sid_11__Sample /\ "sid_11"
  , jungbass_0__Sample /\ "jungbass_0"
  , jungbass_1__Sample /\ "jungbass_1"
  , jungbass_2__Sample /\ "jungbass_2"
  , jungbass_3__Sample /\ "jungbass_3"
  , jungbass_4__Sample /\ "jungbass_4"
  , jungbass_5__Sample /\ "jungbass_5"
  , jungbass_6__Sample /\ "jungbass_6"
  , jungbass_7__Sample /\ "jungbass_7"
  , jungbass_8__Sample /\ "jungbass_8"
  , jungbass_9__Sample /\ "jungbass_9"
  , jungbass_10__Sample /\ "jungbass_10"
  , jungbass_11__Sample /\ "jungbass_11"
  , jungbass_12__Sample /\ "jungbass_12"
  , jungbass_13__Sample /\ "jungbass_13"
  , jungbass_14__Sample /\ "jungbass_14"
  , jungbass_15__Sample /\ "jungbass_15"
  , jungbass_16__Sample /\ "jungbass_16"
  , jungbass_17__Sample /\ "jungbass_17"
  , jungbass_18__Sample /\ "jungbass_18"
  , jungbass_19__Sample /\ "jungbass_19"
  , gabba_0__Sample /\ "gabba_0"
  , gabba_1__Sample /\ "gabba_1"
  , gabba_2__Sample /\ "gabba_2"
  , gabba_3__Sample /\ "gabba_3"
  , crow_0__Sample /\ "crow_0"
  , crow_1__Sample /\ "crow_1"
  , crow_2__Sample /\ "crow_2"
  , crow_3__Sample /\ "crow_3"
  , birds3_0__Sample /\ "birds3_0"
  , birds3_1__Sample /\ "birds3_1"
  , birds3_2__Sample /\ "birds3_2"
  , birds3_3__Sample /\ "birds3_3"
  , birds3_4__Sample /\ "birds3_4"
  , birds3_5__Sample /\ "birds3_5"
  , birds3_6__Sample /\ "birds3_6"
  , birds3_7__Sample /\ "birds3_7"
  , birds3_8__Sample /\ "birds3_8"
  , birds3_9__Sample /\ "birds3_9"
  , birds3_10__Sample /\ "birds3_10"
  , birds3_11__Sample /\ "birds3_11"
  , birds3_12__Sample /\ "birds3_12"
  , birds3_13__Sample /\ "birds3_13"
  , birds3_14__Sample /\ "birds3_14"
  , birds3_15__Sample /\ "birds3_15"
  , birds3_16__Sample /\ "birds3_16"
  , birds3_17__Sample /\ "birds3_17"
  , birds3_18__Sample /\ "birds3_18"
  , auto_0__Sample /\ "auto_0"
  , auto_1__Sample /\ "auto_1"
  , auto_2__Sample /\ "auto_2"
  , auto_3__Sample /\ "auto_3"
  , auto_4__Sample /\ "auto_4"
  , auto_5__Sample /\ "auto_5"
  , auto_6__Sample /\ "auto_6"
  , auto_7__Sample /\ "auto_7"
  , auto_8__Sample /\ "auto_8"
  , auto_9__Sample /\ "auto_9"
  , auto_10__Sample /\ "auto_10"
  , mute_0__Sample /\ "mute_0"
  , mute_1__Sample /\ "mute_1"
  , mute_2__Sample /\ "mute_2"
  , mute_3__Sample /\ "mute_3"
  , mute_4__Sample /\ "mute_4"
  , mute_5__Sample /\ "mute_5"
  , mute_6__Sample /\ "mute_6"
  , mute_7__Sample /\ "mute_7"
  , mute_8__Sample /\ "mute_8"
  , mute_9__Sample /\ "mute_9"
  , mute_10__Sample /\ "mute_10"
  , mute_11__Sample /\ "mute_11"
  , mute_12__Sample /\ "mute_12"
  , mute_13__Sample /\ "mute_13"
  , mute_14__Sample /\ "mute_14"
  , mute_15__Sample /\ "mute_15"
  , mute_16__Sample /\ "mute_16"
  , mute_17__Sample /\ "mute_17"
  , mute_18__Sample /\ "mute_18"
  , mute_19__Sample /\ "mute_19"
  , mute_20__Sample /\ "mute_20"
  , mute_21__Sample /\ "mute_21"
  , mute_22__Sample /\ "mute_22"
  , mute_23__Sample /\ "mute_23"
  , mute_24__Sample /\ "mute_24"
  , mute_25__Sample /\ "mute_25"
  , mute_26__Sample /\ "mute_26"
  , mute_27__Sample /\ "mute_27"
  , sheffield_0__Sample /\ "sheffield_0"
  , casio_0__Sample /\ "casio_0"
  , casio_1__Sample /\ "casio_1"
  , casio_2__Sample /\ "casio_2"
  , sax_0__Sample /\ "sax_0"
  , sax_1__Sample /\ "sax_1"
  , sax_2__Sample /\ "sax_2"
  , sax_3__Sample /\ "sax_3"
  , sax_4__Sample /\ "sax_4"
  , sax_5__Sample /\ "sax_5"
  , sax_6__Sample /\ "sax_6"
  , sax_7__Sample /\ "sax_7"
  , sax_8__Sample /\ "sax_8"
  , sax_9__Sample /\ "sax_9"
  , sax_10__Sample /\ "sax_10"
  , sax_11__Sample /\ "sax_11"
  , sax_12__Sample /\ "sax_12"
  , sax_13__Sample /\ "sax_13"
  , sax_14__Sample /\ "sax_14"
  , sax_15__Sample /\ "sax_15"
  , sax_16__Sample /\ "sax_16"
  , sax_17__Sample /\ "sax_17"
  , sax_18__Sample /\ "sax_18"
  , sax_19__Sample /\ "sax_19"
  , sax_20__Sample /\ "sax_20"
  , sax_21__Sample /\ "sax_21"
  , circus_0__Sample /\ "circus_0"
  , circus_1__Sample /\ "circus_1"
  , circus_2__Sample /\ "circus_2"
  , yeah_0__Sample /\ "yeah_0"
  , yeah_1__Sample /\ "yeah_1"
  , yeah_2__Sample /\ "yeah_2"
  , yeah_3__Sample /\ "yeah_3"
  , yeah_4__Sample /\ "yeah_4"
  , yeah_5__Sample /\ "yeah_5"
  , yeah_6__Sample /\ "yeah_6"
  , yeah_7__Sample /\ "yeah_7"
  , yeah_8__Sample /\ "yeah_8"
  , yeah_9__Sample /\ "yeah_9"
  , yeah_10__Sample /\ "yeah_10"
  , yeah_11__Sample /\ "yeah_11"
  , yeah_12__Sample /\ "yeah_12"
  , yeah_13__Sample /\ "yeah_13"
  , yeah_14__Sample /\ "yeah_14"
  , yeah_15__Sample /\ "yeah_15"
  , yeah_16__Sample /\ "yeah_16"
  , yeah_17__Sample /\ "yeah_17"
  , yeah_18__Sample /\ "yeah_18"
  , yeah_19__Sample /\ "yeah_19"
  , yeah_20__Sample /\ "yeah_20"
  , yeah_21__Sample /\ "yeah_21"
  , yeah_22__Sample /\ "yeah_22"
  , yeah_23__Sample /\ "yeah_23"
  , yeah_24__Sample /\ "yeah_24"
  , yeah_25__Sample /\ "yeah_25"
  , yeah_26__Sample /\ "yeah_26"
  , yeah_27__Sample /\ "yeah_27"
  , yeah_28__Sample /\ "yeah_28"
  , yeah_29__Sample /\ "yeah_29"
  , yeah_30__Sample /\ "yeah_30"
  , oc_0__Sample /\ "oc_0"
  , oc_1__Sample /\ "oc_1"
  , oc_2__Sample /\ "oc_2"
  , oc_3__Sample /\ "oc_3"
  , alex_0__Sample /\ "alex_0"
  , alex_1__Sample /\ "alex_1"
  , can_0__Sample /\ "can_0"
  , can_1__Sample /\ "can_1"
  , can_2__Sample /\ "can_2"
  , can_3__Sample /\ "can_3"
  , can_4__Sample /\ "can_4"
  , can_5__Sample /\ "can_5"
  , can_6__Sample /\ "can_6"
  , can_7__Sample /\ "can_7"
  , can_8__Sample /\ "can_8"
  , can_9__Sample /\ "can_9"
  , can_10__Sample /\ "can_10"
  , can_11__Sample /\ "can_11"
  , can_12__Sample /\ "can_12"
  , can_13__Sample /\ "can_13"
  , jungle_0__Sample /\ "jungle_0"
  , jungle_1__Sample /\ "jungle_1"
  , jungle_2__Sample /\ "jungle_2"
  , jungle_3__Sample /\ "jungle_3"
  , jungle_4__Sample /\ "jungle_4"
  , jungle_5__Sample /\ "jungle_5"
  , jungle_6__Sample /\ "jungle_6"
  , jungle_7__Sample /\ "jungle_7"
  , jungle_8__Sample /\ "jungle_8"
  , jungle_9__Sample /\ "jungle_9"
  , jungle_10__Sample /\ "jungle_10"
  , jungle_11__Sample /\ "jungle_11"
  , jungle_12__Sample /\ "jungle_12"
  , moog_0__Sample /\ "moog_0"
  , moog_1__Sample /\ "moog_1"
  , moog_2__Sample /\ "moog_2"
  , moog_3__Sample /\ "moog_3"
  , moog_4__Sample /\ "moog_4"
  , moog_5__Sample /\ "moog_5"
  , moog_6__Sample /\ "moog_6"
  , h_0__Sample /\ "h_0"
  , h_1__Sample /\ "h_1"
  , h_2__Sample /\ "h_2"
  , h_3__Sample /\ "h_3"
  , h_4__Sample /\ "h_4"
  , h_5__Sample /\ "h_5"
  , h_6__Sample /\ "h_6"
  , wind_0__Sample /\ "wind_0"
  , wind_1__Sample /\ "wind_1"
  , wind_2__Sample /\ "wind_2"
  , wind_3__Sample /\ "wind_3"
  , wind_4__Sample /\ "wind_4"
  , wind_5__Sample /\ "wind_5"
  , wind_6__Sample /\ "wind_6"
  , wind_7__Sample /\ "wind_7"
  , wind_8__Sample /\ "wind_8"
  , wind_9__Sample /\ "wind_9"
  , rs_0__Sample /\ "rs_0"
  , em2_0__Sample /\ "em2_0"
  , em2_1__Sample /\ "em2_1"
  , em2_2__Sample /\ "em2_2"
  , em2_3__Sample /\ "em2_3"
  , em2_4__Sample /\ "em2_4"
  , em2_5__Sample /\ "em2_5"
  , noise2_0__Sample /\ "noise2_0"
  , noise2_1__Sample /\ "noise2_1"
  , noise2_2__Sample /\ "noise2_2"
  , noise2_3__Sample /\ "noise2_3"
  , noise2_4__Sample /\ "noise2_4"
  , noise2_5__Sample /\ "noise2_5"
  , noise2_6__Sample /\ "noise2_6"
  , noise2_7__Sample /\ "noise2_7"
  , foo_0__Sample /\ "foo_0"
  , foo_1__Sample /\ "foo_1"
  , foo_2__Sample /\ "foo_2"
  , foo_3__Sample /\ "foo_3"
  , foo_4__Sample /\ "foo_4"
  , foo_5__Sample /\ "foo_5"
  , foo_6__Sample /\ "foo_6"
  , foo_7__Sample /\ "foo_7"
  , foo_8__Sample /\ "foo_8"
  , foo_9__Sample /\ "foo_9"
  , foo_10__Sample /\ "foo_10"
  , foo_11__Sample /\ "foo_11"
  , foo_12__Sample /\ "foo_12"
  , foo_13__Sample /\ "foo_13"
  , foo_14__Sample /\ "foo_14"
  , foo_15__Sample /\ "foo_15"
  , foo_16__Sample /\ "foo_16"
  , foo_17__Sample /\ "foo_17"
  , foo_18__Sample /\ "foo_18"
  , foo_19__Sample /\ "foo_19"
  , foo_20__Sample /\ "foo_20"
  , foo_21__Sample /\ "foo_21"
  , foo_22__Sample /\ "foo_22"
  , foo_23__Sample /\ "foo_23"
  , foo_24__Sample /\ "foo_24"
  , foo_25__Sample /\ "foo_25"
  , foo_26__Sample /\ "foo_26"
  , armora_0__Sample /\ "armora_0"
  , armora_1__Sample /\ "armora_1"
  , armora_2__Sample /\ "armora_2"
  , armora_3__Sample /\ "armora_3"
  , armora_4__Sample /\ "armora_4"
  , armora_5__Sample /\ "armora_5"
  , armora_6__Sample /\ "armora_6"
  , bend_0__Sample /\ "bend_0"
  , bend_1__Sample /\ "bend_1"
  , bend_2__Sample /\ "bend_2"
  , bend_3__Sample /\ "bend_3"
  , newnotes_0__Sample /\ "newnotes_0"
  , newnotes_1__Sample /\ "newnotes_1"
  , newnotes_2__Sample /\ "newnotes_2"
  , newnotes_3__Sample /\ "newnotes_3"
  , newnotes_4__Sample /\ "newnotes_4"
  , newnotes_5__Sample /\ "newnotes_5"
  , newnotes_6__Sample /\ "newnotes_6"
  , newnotes_7__Sample /\ "newnotes_7"
  , newnotes_8__Sample /\ "newnotes_8"
  , newnotes_9__Sample /\ "newnotes_9"
  , newnotes_10__Sample /\ "newnotes_10"
  , newnotes_11__Sample /\ "newnotes_11"
  , newnotes_12__Sample /\ "newnotes_12"
  , newnotes_13__Sample /\ "newnotes_13"
  , newnotes_14__Sample /\ "newnotes_14"
  , pebbles_0__Sample /\ "pebbles_0"
  , mash2_0__Sample /\ "mash2_0"
  , mash2_1__Sample /\ "mash2_1"
  , mash2_2__Sample /\ "mash2_2"
  , mash2_3__Sample /\ "mash2_3"
  , diphone2_0__Sample /\ "diphone2_0"
  , diphone2_1__Sample /\ "diphone2_1"
  , diphone2_2__Sample /\ "diphone2_2"
  , diphone2_3__Sample /\ "diphone2_3"
  , diphone2_4__Sample /\ "diphone2_4"
  , diphone2_5__Sample /\ "diphone2_5"
  , diphone2_6__Sample /\ "diphone2_6"
  , diphone2_7__Sample /\ "diphone2_7"
  , diphone2_8__Sample /\ "diphone2_8"
  , diphone2_9__Sample /\ "diphone2_9"
  , diphone2_10__Sample /\ "diphone2_10"
  , diphone2_11__Sample /\ "diphone2_11"
  , e_0__Sample /\ "e_0"
  , e_1__Sample /\ "e_1"
  , e_2__Sample /\ "e_2"
  , e_3__Sample /\ "e_3"
  , e_4__Sample /\ "e_4"
  , e_5__Sample /\ "e_5"
  , e_6__Sample /\ "e_6"
  , e_7__Sample /\ "e_7"
  , bubble_0__Sample /\ "bubble_0"
  , bubble_1__Sample /\ "bubble_1"
  , bubble_2__Sample /\ "bubble_2"
  , bubble_3__Sample /\ "bubble_3"
  , bubble_4__Sample /\ "bubble_4"
  , bubble_5__Sample /\ "bubble_5"
  , bubble_6__Sample /\ "bubble_6"
  , bubble_7__Sample /\ "bubble_7"
  , insect_0__Sample /\ "insect_0"
  , insect_1__Sample /\ "insect_1"
  , insect_2__Sample /\ "insect_2"
  , ade_0__Sample /\ "ade_0"
  , ade_1__Sample /\ "ade_1"
  , ade_2__Sample /\ "ade_2"
  , ade_3__Sample /\ "ade_3"
  , ade_4__Sample /\ "ade_4"
  , ade_5__Sample /\ "ade_5"
  , ade_6__Sample /\ "ade_6"
  , ade_7__Sample /\ "ade_7"
  , ade_8__Sample /\ "ade_8"
  , ade_9__Sample /\ "ade_9"
  , glitch_0__Sample /\ "glitch_0"
  , glitch_1__Sample /\ "glitch_1"
  , glitch_2__Sample /\ "glitch_2"
  , glitch_3__Sample /\ "glitch_3"
  , glitch_4__Sample /\ "glitch_4"
  , glitch_5__Sample /\ "glitch_5"
  , glitch_6__Sample /\ "glitch_6"
  , glitch_7__Sample /\ "glitch_7"
  , haw_0__Sample /\ "haw_0"
  , haw_1__Sample /\ "haw_1"
  , haw_2__Sample /\ "haw_2"
  , haw_3__Sample /\ "haw_3"
  , haw_4__Sample /\ "haw_4"
  , haw_5__Sample /\ "haw_5"
  , popkick_0__Sample /\ "popkick_0"
  , popkick_1__Sample /\ "popkick_1"
  , popkick_2__Sample /\ "popkick_2"
  , popkick_3__Sample /\ "popkick_3"
  , popkick_4__Sample /\ "popkick_4"
  , popkick_5__Sample /\ "popkick_5"
  , popkick_6__Sample /\ "popkick_6"
  , popkick_7__Sample /\ "popkick_7"
  , popkick_8__Sample /\ "popkick_8"
  , popkick_9__Sample /\ "popkick_9"
  , breaks157_0__Sample /\ "breaks157_0"
  , gtr_0__Sample /\ "gtr_0"
  , gtr_1__Sample /\ "gtr_1"
  , gtr_2__Sample /\ "gtr_2"
  , clubkick_0__Sample /\ "clubkick_0"
  , clubkick_1__Sample /\ "clubkick_1"
  , clubkick_2__Sample /\ "clubkick_2"
  , clubkick_3__Sample /\ "clubkick_3"
  , clubkick_4__Sample /\ "clubkick_4"
  , breaks152_0__Sample /\ "breaks152_0"
  , x_808bd_0__Sample /\ "x_808bd_0"
  , x_808bd_1__Sample /\ "x_808bd_1"
  , x_808bd_2__Sample /\ "x_808bd_2"
  , x_808bd_3__Sample /\ "x_808bd_3"
  , x_808bd_4__Sample /\ "x_808bd_4"
  , x_808bd_5__Sample /\ "x_808bd_5"
  , x_808bd_6__Sample /\ "x_808bd_6"
  , x_808bd_7__Sample /\ "x_808bd_7"
  , x_808bd_8__Sample /\ "x_808bd_8"
  , x_808bd_9__Sample /\ "x_808bd_9"
  , x_808bd_10__Sample /\ "x_808bd_10"
  , x_808bd_11__Sample /\ "x_808bd_11"
  , x_808bd_12__Sample /\ "x_808bd_12"
  , x_808bd_13__Sample /\ "x_808bd_13"
  , x_808bd_14__Sample /\ "x_808bd_14"
  , x_808bd_15__Sample /\ "x_808bd_15"
  , x_808bd_16__Sample /\ "x_808bd_16"
  , x_808bd_17__Sample /\ "x_808bd_17"
  , x_808bd_18__Sample /\ "x_808bd_18"
  , x_808bd_19__Sample /\ "x_808bd_19"
  , x_808bd_20__Sample /\ "x_808bd_20"
  , x_808bd_21__Sample /\ "x_808bd_21"
  , x_808bd_22__Sample /\ "x_808bd_22"
  , x_808bd_23__Sample /\ "x_808bd_23"
  , x_808bd_24__Sample /\ "x_808bd_24"
  , miniyeah_0__Sample /\ "miniyeah_0"
  , miniyeah_1__Sample /\ "miniyeah_1"
  , miniyeah_2__Sample /\ "miniyeah_2"
  , miniyeah_3__Sample /\ "miniyeah_3"
  , if_0__Sample /\ "if_0"
  , if_1__Sample /\ "if_1"
  , if_2__Sample /\ "if_2"
  , if_3__Sample /\ "if_3"
  , if_4__Sample /\ "if_4"
  , x_808oh_0__Sample /\ "x_808oh_0"
  , x_808oh_1__Sample /\ "x_808oh_1"
  , x_808oh_2__Sample /\ "x_808oh_2"
  , x_808oh_3__Sample /\ "x_808oh_3"
  , x_808oh_4__Sample /\ "x_808oh_4"
  , house_0__Sample /\ "house_0"
  , house_1__Sample /\ "house_1"
  , house_2__Sample /\ "house_2"
  , house_3__Sample /\ "house_3"
  , house_4__Sample /\ "house_4"
  , house_5__Sample /\ "house_5"
  , house_6__Sample /\ "house_6"
  , house_7__Sample /\ "house_7"
  , dr_0__Sample /\ "dr_0"
  , dr_1__Sample /\ "dr_1"
  , dr_2__Sample /\ "dr_2"
  , dr_3__Sample /\ "dr_3"
  , dr_4__Sample /\ "dr_4"
  , dr_5__Sample /\ "dr_5"
  , dr_6__Sample /\ "dr_6"
  , dr_7__Sample /\ "dr_7"
  , dr_8__Sample /\ "dr_8"
  , dr_9__Sample /\ "dr_9"
  , dr_10__Sample /\ "dr_10"
  , dr_11__Sample /\ "dr_11"
  , dr_12__Sample /\ "dr_12"
  , dr_13__Sample /\ "dr_13"
  , dr_14__Sample /\ "dr_14"
  , dr_15__Sample /\ "dr_15"
  , dr_16__Sample /\ "dr_16"
  , dr_17__Sample /\ "dr_17"
  , dr_18__Sample /\ "dr_18"
  , dr_19__Sample /\ "dr_19"
  , dr_20__Sample /\ "dr_20"
  , dr_21__Sample /\ "dr_21"
  , dr_22__Sample /\ "dr_22"
  , dr_23__Sample /\ "dr_23"
  , dr_24__Sample /\ "dr_24"
  , dr_25__Sample /\ "dr_25"
  , dr_26__Sample /\ "dr_26"
  , dr_27__Sample /\ "dr_27"
  , dr_28__Sample /\ "dr_28"
  , dr_29__Sample /\ "dr_29"
  , dr_30__Sample /\ "dr_30"
  , dr_31__Sample /\ "dr_31"
  , dr_32__Sample /\ "dr_32"
  , dr_33__Sample /\ "dr_33"
  , dr_34__Sample /\ "dr_34"
  , dr_35__Sample /\ "dr_35"
  , dr_36__Sample /\ "dr_36"
  , dr_37__Sample /\ "dr_37"
  , dr_38__Sample /\ "dr_38"
  , dr_39__Sample /\ "dr_39"
  , dr_40__Sample /\ "dr_40"
  , dr_41__Sample /\ "dr_41"
  , dr55_0__Sample /\ "dr55_0"
  , dr55_1__Sample /\ "dr55_1"
  , dr55_2__Sample /\ "dr55_2"
  , dr55_3__Sample /\ "dr55_3"
  , bass_0__Sample /\ "bass_0"
  , bass_1__Sample /\ "bass_1"
  , bass_2__Sample /\ "bass_2"
  , bass_3__Sample /\ "bass_3"
  , ho_0__Sample /\ "ho_0"
  , ho_1__Sample /\ "ho_1"
  , ho_2__Sample /\ "ho_2"
  , ho_3__Sample /\ "ho_3"
  , ho_4__Sample /\ "ho_4"
  , ho_5__Sample /\ "ho_5"
  , hardkick_0__Sample /\ "hardkick_0"
  , hardkick_1__Sample /\ "hardkick_1"
  , hardkick_2__Sample /\ "hardkick_2"
  , hardkick_3__Sample /\ "hardkick_3"
  , hardkick_4__Sample /\ "hardkick_4"
  , hardkick_5__Sample /\ "hardkick_5"
  , x_808hc_0__Sample /\ "x_808hc_0"
  , x_808hc_1__Sample /\ "x_808hc_1"
  , x_808hc_2__Sample /\ "x_808hc_2"
  , x_808hc_3__Sample /\ "x_808hc_3"
  , x_808hc_4__Sample /\ "x_808hc_4"
  , hit_0__Sample /\ "hit_0"
  , hit_1__Sample /\ "hit_1"
  , hit_2__Sample /\ "hit_2"
  , hit_3__Sample /\ "hit_3"
  , hit_4__Sample /\ "hit_4"
  , hit_5__Sample /\ "hit_5"
  , breaks165_0__Sample /\ "breaks165_0"
  , dr2_0__Sample /\ "dr2_0"
  , dr2_1__Sample /\ "dr2_1"
  , dr2_2__Sample /\ "dr2_2"
  , dr2_3__Sample /\ "dr2_3"
  , dr2_4__Sample /\ "dr2_4"
  , dr2_5__Sample /\ "dr2_5"
  , tabla_0__Sample /\ "tabla_0"
  , tabla_1__Sample /\ "tabla_1"
  , tabla_2__Sample /\ "tabla_2"
  , tabla_3__Sample /\ "tabla_3"
  , tabla_4__Sample /\ "tabla_4"
  , tabla_5__Sample /\ "tabla_5"
  , tabla_6__Sample /\ "tabla_6"
  , tabla_7__Sample /\ "tabla_7"
  , tabla_8__Sample /\ "tabla_8"
  , tabla_9__Sample /\ "tabla_9"
  , tabla_10__Sample /\ "tabla_10"
  , tabla_11__Sample /\ "tabla_11"
  , tabla_12__Sample /\ "tabla_12"
  , tabla_13__Sample /\ "tabla_13"
  , tabla_14__Sample /\ "tabla_14"
  , tabla_15__Sample /\ "tabla_15"
  , tabla_16__Sample /\ "tabla_16"
  , tabla_17__Sample /\ "tabla_17"
  , tabla_18__Sample /\ "tabla_18"
  , tabla_19__Sample /\ "tabla_19"
  , tabla_20__Sample /\ "tabla_20"
  , tabla_21__Sample /\ "tabla_21"
  , tabla_22__Sample /\ "tabla_22"
  , tabla_23__Sample /\ "tabla_23"
  , tabla_24__Sample /\ "tabla_24"
  , tabla_25__Sample /\ "tabla_25"
  , dork2_0__Sample /\ "dork2_0"
  , dork2_1__Sample /\ "dork2_1"
  , dork2_2__Sample /\ "dork2_2"
  , dork2_3__Sample /\ "dork2_3"
  , hc_0__Sample /\ "hc_0"
  , hc_1__Sample /\ "hc_1"
  , hc_2__Sample /\ "hc_2"
  , hc_3__Sample /\ "hc_3"
  , hc_4__Sample /\ "hc_4"
  , hc_5__Sample /\ "hc_5"
  , bassfoo_0__Sample /\ "bassfoo_0"
  , bassfoo_1__Sample /\ "bassfoo_1"
  , bassfoo_2__Sample /\ "bassfoo_2"
  , seawolf_0__Sample /\ "seawolf_0"
  , seawolf_1__Sample /\ "seawolf_1"
  , seawolf_2__Sample /\ "seawolf_2"
  , cp_0__Sample /\ "cp_0"
  , cp_1__Sample /\ "cp_1"
  , jazz_0__Sample /\ "jazz_0"
  , jazz_1__Sample /\ "jazz_1"
  , jazz_2__Sample /\ "jazz_2"
  , jazz_3__Sample /\ "jazz_3"
  , jazz_4__Sample /\ "jazz_4"
  , jazz_5__Sample /\ "jazz_5"
  , jazz_6__Sample /\ "jazz_6"
  , jazz_7__Sample /\ "jazz_7"
  , juno_0__Sample /\ "juno_0"
  , juno_1__Sample /\ "juno_1"
  , juno_2__Sample /\ "juno_2"
  , juno_3__Sample /\ "juno_3"
  , juno_4__Sample /\ "juno_4"
  , juno_5__Sample /\ "juno_5"
  , juno_6__Sample /\ "juno_6"
  , juno_7__Sample /\ "juno_7"
  , juno_8__Sample /\ "juno_8"
  , juno_9__Sample /\ "juno_9"
  , juno_10__Sample /\ "juno_10"
  , juno_11__Sample /\ "juno_11"
  , birds_0__Sample /\ "birds_0"
  , birds_1__Sample /\ "birds_1"
  , birds_2__Sample /\ "birds_2"
  , birds_3__Sample /\ "birds_3"
  , birds_4__Sample /\ "birds_4"
  , birds_5__Sample /\ "birds_5"
  , birds_6__Sample /\ "birds_6"
  , birds_7__Sample /\ "birds_7"
  , birds_8__Sample /\ "birds_8"
  , birds_9__Sample /\ "birds_9"
  , glasstap_0__Sample /\ "glasstap_0"
  , glasstap_1__Sample /\ "glasstap_1"
  , glasstap_2__Sample /\ "glasstap_2"
  , bass1_0__Sample /\ "bass1_0"
  , bass1_1__Sample /\ "bass1_1"
  , bass1_2__Sample /\ "bass1_2"
  , bass1_3__Sample /\ "bass1_3"
  , bass1_4__Sample /\ "bass1_4"
  , bass1_5__Sample /\ "bass1_5"
  , bass1_6__Sample /\ "bass1_6"
  , bass1_7__Sample /\ "bass1_7"
  , bass1_8__Sample /\ "bass1_8"
  , bass1_9__Sample /\ "bass1_9"
  , bass1_10__Sample /\ "bass1_10"
  , bass1_11__Sample /\ "bass1_11"
  , bass1_12__Sample /\ "bass1_12"
  , bass1_13__Sample /\ "bass1_13"
  , bass1_14__Sample /\ "bass1_14"
  , bass1_15__Sample /\ "bass1_15"
  , bass1_16__Sample /\ "bass1_16"
  , bass1_17__Sample /\ "bass1_17"
  , bass1_18__Sample /\ "bass1_18"
  , bass1_19__Sample /\ "bass1_19"
  , bass1_20__Sample /\ "bass1_20"
  , bass1_21__Sample /\ "bass1_21"
  , bass1_22__Sample /\ "bass1_22"
  , bass1_23__Sample /\ "bass1_23"
  , bass1_24__Sample /\ "bass1_24"
  , bass1_25__Sample /\ "bass1_25"
  , bass1_26__Sample /\ "bass1_26"
  , bass1_27__Sample /\ "bass1_27"
  , bass1_28__Sample /\ "bass1_28"
  , bass1_29__Sample /\ "bass1_29"
  , hh27_0__Sample /\ "hh27_0"
  , hh27_1__Sample /\ "hh27_1"
  , hh27_2__Sample /\ "hh27_2"
  , hh27_3__Sample /\ "hh27_3"
  , hh27_4__Sample /\ "hh27_4"
  , hh27_5__Sample /\ "hh27_5"
  , hh27_6__Sample /\ "hh27_6"
  , hh27_7__Sample /\ "hh27_7"
  , hh27_8__Sample /\ "hh27_8"
  , hh27_9__Sample /\ "hh27_9"
  , hh27_10__Sample /\ "hh27_10"
  , hh27_11__Sample /\ "hh27_11"
  , hh27_12__Sample /\ "hh27_12"
  , x_808_0__Sample /\ "x_808_0"
  , x_808_1__Sample /\ "x_808_1"
  , x_808_2__Sample /\ "x_808_2"
  , x_808_3__Sample /\ "x_808_3"
  , x_808_4__Sample /\ "x_808_4"
  , x_808_5__Sample /\ "x_808_5"
  , notes_0__Sample /\ "notes_0"
  , notes_1__Sample /\ "notes_1"
  , notes_2__Sample /\ "notes_2"
  , notes_3__Sample /\ "notes_3"
  , notes_4__Sample /\ "notes_4"
  , notes_5__Sample /\ "notes_5"
  , notes_6__Sample /\ "notes_6"
  , notes_7__Sample /\ "notes_7"
  , notes_8__Sample /\ "notes_8"
  , notes_9__Sample /\ "notes_9"
  , notes_10__Sample /\ "notes_10"
  , notes_11__Sample /\ "notes_11"
  , notes_12__Sample /\ "notes_12"
  , notes_13__Sample /\ "notes_13"
  , notes_14__Sample /\ "notes_14"
  , xmas_0__Sample /\ "xmas_0"
  , erk_0__Sample /\ "erk_0"
  , x_808mt_0__Sample /\ "x_808mt_0"
  , x_808mt_1__Sample /\ "x_808mt_1"
  , x_808mt_2__Sample /\ "x_808mt_2"
  , x_808mt_3__Sample /\ "x_808mt_3"
  , x_808mt_4__Sample /\ "x_808mt_4"
  , lighter_0__Sample /\ "lighter_0"
  , lighter_1__Sample /\ "lighter_1"
  , lighter_2__Sample /\ "lighter_2"
  , lighter_3__Sample /\ "lighter_3"
  , lighter_4__Sample /\ "lighter_4"
  , lighter_5__Sample /\ "lighter_5"
  , lighter_6__Sample /\ "lighter_6"
  , lighter_7__Sample /\ "lighter_7"
  , lighter_8__Sample /\ "lighter_8"
  , lighter_9__Sample /\ "lighter_9"
  , lighter_10__Sample /\ "lighter_10"
  , lighter_11__Sample /\ "lighter_11"
  , lighter_12__Sample /\ "lighter_12"
  , lighter_13__Sample /\ "lighter_13"
  , lighter_14__Sample /\ "lighter_14"
  , lighter_15__Sample /\ "lighter_15"
  , lighter_16__Sample /\ "lighter_16"
  , lighter_17__Sample /\ "lighter_17"
  , lighter_18__Sample /\ "lighter_18"
  , lighter_19__Sample /\ "lighter_19"
  , lighter_20__Sample /\ "lighter_20"
  , lighter_21__Sample /\ "lighter_21"
  , lighter_22__Sample /\ "lighter_22"
  , lighter_23__Sample /\ "lighter_23"
  , lighter_24__Sample /\ "lighter_24"
  , lighter_25__Sample /\ "lighter_25"
  , lighter_26__Sample /\ "lighter_26"
  , lighter_27__Sample /\ "lighter_27"
  , lighter_28__Sample /\ "lighter_28"
  , lighter_29__Sample /\ "lighter_29"
  , lighter_30__Sample /\ "lighter_30"
  , lighter_31__Sample /\ "lighter_31"
  , lighter_32__Sample /\ "lighter_32"
  , cb_0__Sample /\ "cb_0"
  , subroc3d_0__Sample /\ "subroc3d_0"
  , subroc3d_1__Sample /\ "subroc3d_1"
  , subroc3d_2__Sample /\ "subroc3d_2"
  , subroc3d_3__Sample /\ "subroc3d_3"
  , subroc3d_4__Sample /\ "subroc3d_4"
  , subroc3d_5__Sample /\ "subroc3d_5"
  , subroc3d_6__Sample /\ "subroc3d_6"
  , subroc3d_7__Sample /\ "subroc3d_7"
  , subroc3d_8__Sample /\ "subroc3d_8"
  , subroc3d_9__Sample /\ "subroc3d_9"
  , subroc3d_10__Sample /\ "subroc3d_10"
  , ul_0__Sample /\ "ul_0"
  , ul_1__Sample /\ "ul_1"
  , ul_2__Sample /\ "ul_2"
  , ul_3__Sample /\ "ul_3"
  , ul_4__Sample /\ "ul_4"
  , ul_5__Sample /\ "ul_5"
  , ul_6__Sample /\ "ul_6"
  , ul_7__Sample /\ "ul_7"
  , ul_8__Sample /\ "ul_8"
  , ul_9__Sample /\ "ul_9"
  , gab_0__Sample /\ "gab_0"
  , gab_1__Sample /\ "gab_1"
  , gab_2__Sample /\ "gab_2"
  , gab_3__Sample /\ "gab_3"
  , gab_4__Sample /\ "gab_4"
  , gab_5__Sample /\ "gab_5"
  , gab_6__Sample /\ "gab_6"
  , gab_7__Sample /\ "gab_7"
  , gab_8__Sample /\ "gab_8"
  , gab_9__Sample /\ "gab_9"
  , monsterb_0__Sample /\ "monsterb_0"
  , monsterb_1__Sample /\ "monsterb_1"
  , monsterb_2__Sample /\ "monsterb_2"
  , monsterb_3__Sample /\ "monsterb_3"
  , monsterb_4__Sample /\ "monsterb_4"
  , monsterb_5__Sample /\ "monsterb_5"
  , diphone_0__Sample /\ "diphone_0"
  , diphone_1__Sample /\ "diphone_1"
  , diphone_2__Sample /\ "diphone_2"
  , diphone_3__Sample /\ "diphone_3"
  , diphone_4__Sample /\ "diphone_4"
  , diphone_5__Sample /\ "diphone_5"
  , diphone_6__Sample /\ "diphone_6"
  , diphone_7__Sample /\ "diphone_7"
  , diphone_8__Sample /\ "diphone_8"
  , diphone_9__Sample /\ "diphone_9"
  , diphone_10__Sample /\ "diphone_10"
  , diphone_11__Sample /\ "diphone_11"
  , diphone_12__Sample /\ "diphone_12"
  , diphone_13__Sample /\ "diphone_13"
  , diphone_14__Sample /\ "diphone_14"
  , diphone_15__Sample /\ "diphone_15"
  , diphone_16__Sample /\ "diphone_16"
  , diphone_17__Sample /\ "diphone_17"
  , diphone_18__Sample /\ "diphone_18"
  , diphone_19__Sample /\ "diphone_19"
  , diphone_20__Sample /\ "diphone_20"
  , diphone_21__Sample /\ "diphone_21"
  , diphone_22__Sample /\ "diphone_22"
  , diphone_23__Sample /\ "diphone_23"
  , diphone_24__Sample /\ "diphone_24"
  , diphone_25__Sample /\ "diphone_25"
  , diphone_26__Sample /\ "diphone_26"
  , diphone_27__Sample /\ "diphone_27"
  , diphone_28__Sample /\ "diphone_28"
  , diphone_29__Sample /\ "diphone_29"
  , diphone_30__Sample /\ "diphone_30"
  , diphone_31__Sample /\ "diphone_31"
  , diphone_32__Sample /\ "diphone_32"
  , diphone_33__Sample /\ "diphone_33"
  , diphone_34__Sample /\ "diphone_34"
  , diphone_35__Sample /\ "diphone_35"
  , diphone_36__Sample /\ "diphone_36"
  , diphone_37__Sample /\ "diphone_37"
  , clak_0__Sample /\ "clak_0"
  , clak_1__Sample /\ "clak_1"
  , sitar_0__Sample /\ "sitar_0"
  , sitar_1__Sample /\ "sitar_1"
  , sitar_2__Sample /\ "sitar_2"
  , sitar_3__Sample /\ "sitar_3"
  , sitar_4__Sample /\ "sitar_4"
  , sitar_5__Sample /\ "sitar_5"
  , sitar_6__Sample /\ "sitar_6"
  , sitar_7__Sample /\ "sitar_7"
  , ab_0__Sample /\ "ab_0"
  , ab_1__Sample /\ "ab_1"
  , ab_2__Sample /\ "ab_2"
  , ab_3__Sample /\ "ab_3"
  , ab_4__Sample /\ "ab_4"
  , ab_5__Sample /\ "ab_5"
  , ab_6__Sample /\ "ab_6"
  , ab_7__Sample /\ "ab_7"
  , ab_8__Sample /\ "ab_8"
  , ab_9__Sample /\ "ab_9"
  , ab_10__Sample /\ "ab_10"
  , ab_11__Sample /\ "ab_11"
  , cr_0__Sample /\ "cr_0"
  , cr_1__Sample /\ "cr_1"
  , cr_2__Sample /\ "cr_2"
  , cr_3__Sample /\ "cr_3"
  , cr_4__Sample /\ "cr_4"
  , cr_5__Sample /\ "cr_5"
  , tacscan_0__Sample /\ "tacscan_0"
  , tacscan_1__Sample /\ "tacscan_1"
  , tacscan_2__Sample /\ "tacscan_2"
  , tacscan_3__Sample /\ "tacscan_3"
  , tacscan_4__Sample /\ "tacscan_4"
  , tacscan_5__Sample /\ "tacscan_5"
  , tacscan_6__Sample /\ "tacscan_6"
  , tacscan_7__Sample /\ "tacscan_7"
  , tacscan_8__Sample /\ "tacscan_8"
  , tacscan_9__Sample /\ "tacscan_9"
  , tacscan_10__Sample /\ "tacscan_10"
  , tacscan_11__Sample /\ "tacscan_11"
  , tacscan_12__Sample /\ "tacscan_12"
  , tacscan_13__Sample /\ "tacscan_13"
  , tacscan_14__Sample /\ "tacscan_14"
  , tacscan_15__Sample /\ "tacscan_15"
  , tacscan_16__Sample /\ "tacscan_16"
  , tacscan_17__Sample /\ "tacscan_17"
  , tacscan_18__Sample /\ "tacscan_18"
  , tacscan_19__Sample /\ "tacscan_19"
  , tacscan_20__Sample /\ "tacscan_20"
  , tacscan_21__Sample /\ "tacscan_21"
  , v_0__Sample /\ "v_0"
  , v_1__Sample /\ "v_1"
  , v_2__Sample /\ "v_2"
  , v_3__Sample /\ "v_3"
  , v_4__Sample /\ "v_4"
  , v_5__Sample /\ "v_5"
  , bd_0__Sample /\ "bd_0"
  , bd_1__Sample /\ "bd_1"
  , bd_2__Sample /\ "bd_2"
  , bd_3__Sample /\ "bd_3"
  , bd_4__Sample /\ "bd_4"
  , bd_5__Sample /\ "bd_5"
  , bd_6__Sample /\ "bd_6"
  , bd_7__Sample /\ "bd_7"
  , bd_8__Sample /\ "bd_8"
  , bd_9__Sample /\ "bd_9"
  , bd_10__Sample /\ "bd_10"
  , bd_11__Sample /\ "bd_11"
  , bd_12__Sample /\ "bd_12"
  , bd_13__Sample /\ "bd_13"
  , bd_14__Sample /\ "bd_14"
  , bd_15__Sample /\ "bd_15"
  , bd_16__Sample /\ "bd_16"
  , bd_17__Sample /\ "bd_17"
  , bd_18__Sample /\ "bd_18"
  , bd_19__Sample /\ "bd_19"
  , bd_20__Sample /\ "bd_20"
  , bd_21__Sample /\ "bd_21"
  , bd_22__Sample /\ "bd_22"
  , bd_23__Sample /\ "bd_23"
  , rm_0__Sample /\ "rm_0"
  , rm_1__Sample /\ "rm_1"
  , blue_0__Sample /\ "blue_0"
  , blue_1__Sample /\ "blue_1"
  , latibro_0__Sample /\ "latibro_0"
  , latibro_1__Sample /\ "latibro_1"
  , latibro_2__Sample /\ "latibro_2"
  , latibro_3__Sample /\ "latibro_3"
  , latibro_4__Sample /\ "latibro_4"
  , latibro_5__Sample /\ "latibro_5"
  , latibro_6__Sample /\ "latibro_6"
  , latibro_7__Sample /\ "latibro_7"
  , dr_few_0__Sample /\ "dr_few_0"
  , dr_few_1__Sample /\ "dr_few_1"
  , dr_few_2__Sample /\ "dr_few_2"
  , dr_few_3__Sample /\ "dr_few_3"
  , dr_few_4__Sample /\ "dr_few_4"
  , dr_few_5__Sample /\ "dr_few_5"
  , dr_few_6__Sample /\ "dr_few_6"
  , dr_few_7__Sample /\ "dr_few_7"
  , rave2_0__Sample /\ "rave2_0"
  , rave2_1__Sample /\ "rave2_1"
  , rave2_2__Sample /\ "rave2_2"
  , rave2_3__Sample /\ "rave2_3"
  , rave2_4__Sample /\ "rave2_4"
  , rave2_5__Sample /\ "rave2_5"
  , koy_0__Sample /\ "koy_0"
  , koy_1__Sample /\ "koy_1"
  , glitch2_0__Sample /\ "glitch2_0"
  , glitch2_1__Sample /\ "glitch2_1"
  , glitch2_2__Sample /\ "glitch2_2"
  , glitch2_3__Sample /\ "glitch2_3"
  , glitch2_4__Sample /\ "glitch2_4"
  , glitch2_5__Sample /\ "glitch2_5"
  , glitch2_6__Sample /\ "glitch2_6"
  , glitch2_7__Sample /\ "glitch2_7"
  , hmm_0__Sample /\ "hmm_0"
  , arp_0__Sample /\ "arp_0"
  , arp_1__Sample /\ "arp_1"
  , made2_0__Sample /\ "made2_0"
  , uxay_0__Sample /\ "uxay_0"
  , uxay_1__Sample /\ "uxay_1"
  , uxay_2__Sample /\ "uxay_2"
  , stomp_0__Sample /\ "stomp_0"
  , stomp_1__Sample /\ "stomp_1"
  , stomp_2__Sample /\ "stomp_2"
  , stomp_3__Sample /\ "stomp_3"
  , stomp_4__Sample /\ "stomp_4"
  , stomp_5__Sample /\ "stomp_5"
  , stomp_6__Sample /\ "stomp_6"
  , stomp_7__Sample /\ "stomp_7"
  , stomp_8__Sample /\ "stomp_8"
  , stomp_9__Sample /\ "stomp_9"
  , tech_0__Sample /\ "tech_0"
  , tech_1__Sample /\ "tech_1"
  , tech_2__Sample /\ "tech_2"
  , tech_3__Sample /\ "tech_3"
  , tech_4__Sample /\ "tech_4"
  , tech_5__Sample /\ "tech_5"
  , tech_6__Sample /\ "tech_6"
  , tech_7__Sample /\ "tech_7"
  , tech_8__Sample /\ "tech_8"
  , tech_9__Sample /\ "tech_9"
  , tech_10__Sample /\ "tech_10"
  , tech_11__Sample /\ "tech_11"
  , tech_12__Sample /\ "tech_12"
  , sn_0__Sample /\ "sn_0"
  , sn_1__Sample /\ "sn_1"
  , sn_2__Sample /\ "sn_2"
  , sn_3__Sample /\ "sn_3"
  , sn_4__Sample /\ "sn_4"
  , sn_5__Sample /\ "sn_5"
  , sn_6__Sample /\ "sn_6"
  , sn_7__Sample /\ "sn_7"
  , sn_8__Sample /\ "sn_8"
  , sn_9__Sample /\ "sn_9"
  , sn_10__Sample /\ "sn_10"
  , sn_11__Sample /\ "sn_11"
  , sn_12__Sample /\ "sn_12"
  , sn_13__Sample /\ "sn_13"
  , sn_14__Sample /\ "sn_14"
  , sn_15__Sample /\ "sn_15"
  , sn_16__Sample /\ "sn_16"
  , sn_17__Sample /\ "sn_17"
  , sn_18__Sample /\ "sn_18"
  , sn_19__Sample /\ "sn_19"
  , sn_20__Sample /\ "sn_20"
  , sn_21__Sample /\ "sn_21"
  , sn_22__Sample /\ "sn_22"
  , sn_23__Sample /\ "sn_23"
  , sn_24__Sample /\ "sn_24"
  , sn_25__Sample /\ "sn_25"
  , sn_26__Sample /\ "sn_26"
  , sn_27__Sample /\ "sn_27"
  , sn_28__Sample /\ "sn_28"
  , sn_29__Sample /\ "sn_29"
  , sn_30__Sample /\ "sn_30"
  , sn_31__Sample /\ "sn_31"
  , sn_32__Sample /\ "sn_32"
  , sn_33__Sample /\ "sn_33"
  , sn_34__Sample /\ "sn_34"
  , sn_35__Sample /\ "sn_35"
  , sn_36__Sample /\ "sn_36"
  , sn_37__Sample /\ "sn_37"
  , sn_38__Sample /\ "sn_38"
  , sn_39__Sample /\ "sn_39"
  , sn_40__Sample /\ "sn_40"
  , sn_41__Sample /\ "sn_41"
  , sn_42__Sample /\ "sn_42"
  , sn_43__Sample /\ "sn_43"
  , sn_44__Sample /\ "sn_44"
  , sn_45__Sample /\ "sn_45"
  , sn_46__Sample /\ "sn_46"
  , sn_47__Sample /\ "sn_47"
  , sn_48__Sample /\ "sn_48"
  , sn_49__Sample /\ "sn_49"
  , sn_50__Sample /\ "sn_50"
  , sn_51__Sample /\ "sn_51"
  , less_0__Sample /\ "less_0"
  , less_1__Sample /\ "less_1"
  , less_2__Sample /\ "less_2"
  , less_3__Sample /\ "less_3"
  , off_0__Sample /\ "off_0"
  , x_808sd_0__Sample /\ "x_808sd_0"
  , x_808sd_1__Sample /\ "x_808sd_1"
  , x_808sd_2__Sample /\ "x_808sd_2"
  , x_808sd_3__Sample /\ "x_808sd_3"
  , x_808sd_4__Sample /\ "x_808sd_4"
  , x_808sd_5__Sample /\ "x_808sd_5"
  , x_808sd_6__Sample /\ "x_808sd_6"
  , x_808sd_7__Sample /\ "x_808sd_7"
  , x_808sd_8__Sample /\ "x_808sd_8"
  , x_808sd_9__Sample /\ "x_808sd_9"
  , x_808sd_10__Sample /\ "x_808sd_10"
  , x_808sd_11__Sample /\ "x_808sd_11"
  , x_808sd_12__Sample /\ "x_808sd_12"
  , x_808sd_13__Sample /\ "x_808sd_13"
  , x_808sd_14__Sample /\ "x_808sd_14"
  , x_808sd_15__Sample /\ "x_808sd_15"
  , x_808sd_16__Sample /\ "x_808sd_16"
  , x_808sd_17__Sample /\ "x_808sd_17"
  , x_808sd_18__Sample /\ "x_808sd_18"
  , x_808sd_19__Sample /\ "x_808sd_19"
  , x_808sd_20__Sample /\ "x_808sd_20"
  , x_808sd_21__Sample /\ "x_808sd_21"
  , x_808sd_22__Sample /\ "x_808sd_22"
  , x_808sd_23__Sample /\ "x_808sd_23"
  , x_808sd_24__Sample /\ "x_808sd_24"
  , trump_0__Sample /\ "trump_0"
  , trump_1__Sample /\ "trump_1"
  , trump_2__Sample /\ "trump_2"
  , trump_3__Sample /\ "trump_3"
  , trump_4__Sample /\ "trump_4"
  , trump_5__Sample /\ "trump_5"
  , trump_6__Sample /\ "trump_6"
  , trump_7__Sample /\ "trump_7"
  , trump_8__Sample /\ "trump_8"
  , trump_9__Sample /\ "trump_9"
  , trump_10__Sample /\ "trump_10"
  , bev_0__Sample /\ "bev_0"
  , bev_1__Sample /\ "bev_1"
  , pad_0__Sample /\ "pad_0"
  , pad_1__Sample /\ "pad_1"
  , pad_2__Sample /\ "pad_2"
  , led_0__Sample /\ "led_0"
  , perc_0__Sample /\ "perc_0"
  , perc_1__Sample /\ "perc_1"
  , perc_2__Sample /\ "perc_2"
  , perc_3__Sample /\ "perc_3"
  , perc_4__Sample /\ "perc_4"
  , perc_5__Sample /\ "perc_5"
  , pluck_0__Sample /\ "pluck_0"
  , pluck_1__Sample /\ "pluck_1"
  , pluck_2__Sample /\ "pluck_2"
  , pluck_3__Sample /\ "pluck_3"
  , pluck_4__Sample /\ "pluck_4"
  , pluck_5__Sample /\ "pluck_5"
  , pluck_6__Sample /\ "pluck_6"
  , pluck_7__Sample /\ "pluck_7"
  , pluck_8__Sample /\ "pluck_8"
  , pluck_9__Sample /\ "pluck_9"
  , pluck_10__Sample /\ "pluck_10"
  , pluck_11__Sample /\ "pluck_11"
  , pluck_12__Sample /\ "pluck_12"
  , pluck_13__Sample /\ "pluck_13"
  , pluck_14__Sample /\ "pluck_14"
  , pluck_15__Sample /\ "pluck_15"
  , pluck_16__Sample /\ "pluck_16"
  , bleep_0__Sample /\ "bleep_0"
  , bleep_1__Sample /\ "bleep_1"
  , bleep_2__Sample /\ "bleep_2"
  , bleep_3__Sample /\ "bleep_3"
  , bleep_4__Sample /\ "bleep_4"
  , bleep_5__Sample /\ "bleep_5"
  , bleep_6__Sample /\ "bleep_6"
  , bleep_7__Sample /\ "bleep_7"
  , bleep_8__Sample /\ "bleep_8"
  , bleep_9__Sample /\ "bleep_9"
  , bleep_10__Sample /\ "bleep_10"
  , bleep_11__Sample /\ "bleep_11"
  , bleep_12__Sample /\ "bleep_12"
  , ht_0__Sample /\ "ht_0"
  , ht_1__Sample /\ "ht_1"
  , ht_2__Sample /\ "ht_2"
  , ht_3__Sample /\ "ht_3"
  , ht_4__Sample /\ "ht_4"
  , ht_5__Sample /\ "ht_5"
  , ht_6__Sample /\ "ht_6"
  , ht_7__Sample /\ "ht_7"
  , ht_8__Sample /\ "ht_8"
  , ht_9__Sample /\ "ht_9"
  , ht_10__Sample /\ "ht_10"
  , ht_11__Sample /\ "ht_11"
  , ht_12__Sample /\ "ht_12"
  , ht_13__Sample /\ "ht_13"
  , ht_14__Sample /\ "ht_14"
  , ht_15__Sample /\ "ht_15"
  , ades4_0__Sample /\ "ades4_0"
  , ades4_1__Sample /\ "ades4_1"
  , ades4_2__Sample /\ "ades4_2"
  , ades4_3__Sample /\ "ades4_3"
  , ades4_4__Sample /\ "ades4_4"
  , ades4_5__Sample /\ "ades4_5"
  , proc_0__Sample /\ "proc_0"
  , proc_1__Sample /\ "proc_1"
  , gretsch_0__Sample /\ "gretsch_0"
  , gretsch_1__Sample /\ "gretsch_1"
  , gretsch_2__Sample /\ "gretsch_2"
  , gretsch_3__Sample /\ "gretsch_3"
  , gretsch_4__Sample /\ "gretsch_4"
  , gretsch_5__Sample /\ "gretsch_5"
  , gretsch_6__Sample /\ "gretsch_6"
  , gretsch_7__Sample /\ "gretsch_7"
  , gretsch_8__Sample /\ "gretsch_8"
  , gretsch_9__Sample /\ "gretsch_9"
  , gretsch_10__Sample /\ "gretsch_10"
  , gretsch_11__Sample /\ "gretsch_11"
  , gretsch_12__Sample /\ "gretsch_12"
  , gretsch_13__Sample /\ "gretsch_13"
  , gretsch_14__Sample /\ "gretsch_14"
  , gretsch_15__Sample /\ "gretsch_15"
  , gretsch_16__Sample /\ "gretsch_16"
  , gretsch_17__Sample /\ "gretsch_17"
  , gretsch_18__Sample /\ "gretsch_18"
  , gretsch_19__Sample /\ "gretsch_19"
  , gretsch_20__Sample /\ "gretsch_20"
  , gretsch_21__Sample /\ "gretsch_21"
  , gretsch_22__Sample /\ "gretsch_22"
  , gretsch_23__Sample /\ "gretsch_23"
  , outdoor_0__Sample /\ "outdoor_0"
  , outdoor_1__Sample /\ "outdoor_1"
  , outdoor_2__Sample /\ "outdoor_2"
  , outdoor_3__Sample /\ "outdoor_3"
  , outdoor_4__Sample /\ "outdoor_4"
  , outdoor_5__Sample /\ "outdoor_5"
  , techno_0__Sample /\ "techno_0"
  , techno_1__Sample /\ "techno_1"
  , techno_2__Sample /\ "techno_2"
  , techno_3__Sample /\ "techno_3"
  , techno_4__Sample /\ "techno_4"
  , techno_5__Sample /\ "techno_5"
  , techno_6__Sample /\ "techno_6"
  , ulgab_0__Sample /\ "ulgab_0"
  , ulgab_1__Sample /\ "ulgab_1"
  , ulgab_2__Sample /\ "ulgab_2"
  , ulgab_3__Sample /\ "ulgab_3"
  , ulgab_4__Sample /\ "ulgab_4"
  , breaks125_0__Sample /\ "breaks125_0"
  , breaks125_1__Sample /\ "breaks125_1"
  , bin_0__Sample /\ "bin_0"
  , bin_1__Sample /\ "bin_1"
  , x_808mc_0__Sample /\ "x_808mc_0"
  , x_808mc_1__Sample /\ "x_808mc_1"
  , x_808mc_2__Sample /\ "x_808mc_2"
  , x_808mc_3__Sample /\ "x_808mc_3"
  , x_808mc_4__Sample /\ "x_808mc_4"
  , lt_0__Sample /\ "lt_0"
  , lt_1__Sample /\ "lt_1"
  , lt_2__Sample /\ "lt_2"
  , lt_3__Sample /\ "lt_3"
  , lt_4__Sample /\ "lt_4"
  , lt_5__Sample /\ "lt_5"
  , lt_6__Sample /\ "lt_6"
  , lt_7__Sample /\ "lt_7"
  , lt_8__Sample /\ "lt_8"
  , lt_9__Sample /\ "lt_9"
  , lt_10__Sample /\ "lt_10"
  , lt_11__Sample /\ "lt_11"
  , lt_12__Sample /\ "lt_12"
  , lt_13__Sample /\ "lt_13"
  , lt_14__Sample /\ "lt_14"
  , lt_15__Sample /\ "lt_15"
  , amencutup_0__Sample /\ "amencutup_0"
  , amencutup_1__Sample /\ "amencutup_1"
  , amencutup_2__Sample /\ "amencutup_2"
  , amencutup_3__Sample /\ "amencutup_3"
  , amencutup_4__Sample /\ "amencutup_4"
  , amencutup_5__Sample /\ "amencutup_5"
  , amencutup_6__Sample /\ "amencutup_6"
  , amencutup_7__Sample /\ "amencutup_7"
  , amencutup_8__Sample /\ "amencutup_8"
  , amencutup_9__Sample /\ "amencutup_9"
  , amencutup_10__Sample /\ "amencutup_10"
  , amencutup_11__Sample /\ "amencutup_11"
  , amencutup_12__Sample /\ "amencutup_12"
  , amencutup_13__Sample /\ "amencutup_13"
  , amencutup_14__Sample /\ "amencutup_14"
  , amencutup_15__Sample /\ "amencutup_15"
  , amencutup_16__Sample /\ "amencutup_16"
  , amencutup_17__Sample /\ "amencutup_17"
  , amencutup_18__Sample /\ "amencutup_18"
  , amencutup_19__Sample /\ "amencutup_19"
  , amencutup_20__Sample /\ "amencutup_20"
  , amencutup_21__Sample /\ "amencutup_21"
  , amencutup_22__Sample /\ "amencutup_22"
  , amencutup_23__Sample /\ "amencutup_23"
  , amencutup_24__Sample /\ "amencutup_24"
  , amencutup_25__Sample /\ "amencutup_25"
  , amencutup_26__Sample /\ "amencutup_26"
  , amencutup_27__Sample /\ "amencutup_27"
  , amencutup_28__Sample /\ "amencutup_28"
  , amencutup_29__Sample /\ "amencutup_29"
  , amencutup_30__Sample /\ "amencutup_30"
  , amencutup_31__Sample /\ "amencutup_31"
  , drum_0__Sample /\ "drum_0"
  , drum_1__Sample /\ "drum_1"
  , drum_2__Sample /\ "drum_2"
  , drum_3__Sample /\ "drum_3"
  , drum_4__Sample /\ "drum_4"
  , drum_5__Sample /\ "drum_5"
  , coins_0__Sample /\ "coins_0"
  , industrial_0__Sample /\ "industrial_0"
  , industrial_1__Sample /\ "industrial_1"
  , industrial_2__Sample /\ "industrial_2"
  , industrial_3__Sample /\ "industrial_3"
  , industrial_4__Sample /\ "industrial_4"
  , industrial_5__Sample /\ "industrial_5"
  , industrial_6__Sample /\ "industrial_6"
  , industrial_7__Sample /\ "industrial_7"
  , industrial_8__Sample /\ "industrial_8"
  , industrial_9__Sample /\ "industrial_9"
  , industrial_10__Sample /\ "industrial_10"
  , industrial_11__Sample /\ "industrial_11"
  , industrial_12__Sample /\ "industrial_12"
  , industrial_13__Sample /\ "industrial_13"
  , industrial_14__Sample /\ "industrial_14"
  , industrial_15__Sample /\ "industrial_15"
  , industrial_16__Sample /\ "industrial_16"
  , industrial_17__Sample /\ "industrial_17"
  , industrial_18__Sample /\ "industrial_18"
  , industrial_19__Sample /\ "industrial_19"
  , industrial_20__Sample /\ "industrial_20"
  , industrial_21__Sample /\ "industrial_21"
  , industrial_22__Sample /\ "industrial_22"
  , industrial_23__Sample /\ "industrial_23"
  , industrial_24__Sample /\ "industrial_24"
  , industrial_25__Sample /\ "industrial_25"
  , industrial_26__Sample /\ "industrial_26"
  , industrial_27__Sample /\ "industrial_27"
  , industrial_28__Sample /\ "industrial_28"
  , industrial_29__Sample /\ "industrial_29"
  , industrial_30__Sample /\ "industrial_30"
  , industrial_31__Sample /\ "industrial_31"
  , tink_0__Sample /\ "tink_0"
  , tink_1__Sample /\ "tink_1"
  , tink_2__Sample /\ "tink_2"
  , tink_3__Sample /\ "tink_3"
  , tink_4__Sample /\ "tink_4"
  , co_0__Sample /\ "co_0"
  , co_1__Sample /\ "co_1"
  , co_2__Sample /\ "co_2"
  , co_3__Sample /\ "co_3"
  , fest_0__Sample /\ "fest_0"
  , feelfx_0__Sample /\ "feelfx_0"
  , feelfx_1__Sample /\ "feelfx_1"
  , feelfx_2__Sample /\ "feelfx_2"
  , feelfx_3__Sample /\ "feelfx_3"
  , feelfx_4__Sample /\ "feelfx_4"
  , feelfx_5__Sample /\ "feelfx_5"
  , feelfx_6__Sample /\ "feelfx_6"
  , feelfx_7__Sample /\ "feelfx_7"
  , x_808cy_0__Sample /\ "x_808cy_0"
  , x_808cy_1__Sample /\ "x_808cy_1"
  , x_808cy_2__Sample /\ "x_808cy_2"
  , x_808cy_3__Sample /\ "x_808cy_3"
  , x_808cy_4__Sample /\ "x_808cy_4"
  , x_808cy_5__Sample /\ "x_808cy_5"
  , x_808cy_6__Sample /\ "x_808cy_6"
  , x_808cy_7__Sample /\ "x_808cy_7"
  , x_808cy_8__Sample /\ "x_808cy_8"
  , x_808cy_9__Sample /\ "x_808cy_9"
  , x_808cy_10__Sample /\ "x_808cy_10"
  , x_808cy_11__Sample /\ "x_808cy_11"
  , x_808cy_12__Sample /\ "x_808cy_12"
  , x_808cy_13__Sample /\ "x_808cy_13"
  , x_808cy_14__Sample /\ "x_808cy_14"
  , x_808cy_15__Sample /\ "x_808cy_15"
  , x_808cy_16__Sample /\ "x_808cy_16"
  , x_808cy_17__Sample /\ "x_808cy_17"
  , x_808cy_18__Sample /\ "x_808cy_18"
  , x_808cy_19__Sample /\ "x_808cy_19"
  , x_808cy_20__Sample /\ "x_808cy_20"
  , x_808cy_21__Sample /\ "x_808cy_21"
  , x_808cy_22__Sample /\ "x_808cy_22"
  , x_808cy_23__Sample /\ "x_808cy_23"
  , x_808cy_24__Sample /\ "x_808cy_24"
  , world_0__Sample /\ "world_0"
  , world_1__Sample /\ "world_1"
  , world_2__Sample /\ "world_2"
  , f_0__Sample /\ "f_0"
  , numbers_0__Sample /\ "numbers_0"
  , numbers_1__Sample /\ "numbers_1"
  , numbers_2__Sample /\ "numbers_2"
  , numbers_3__Sample /\ "numbers_3"
  , numbers_4__Sample /\ "numbers_4"
  , numbers_5__Sample /\ "numbers_5"
  , numbers_6__Sample /\ "numbers_6"
  , numbers_7__Sample /\ "numbers_7"
  , numbers_8__Sample /\ "numbers_8"
  , d_0__Sample /\ "d_0"
  , d_1__Sample /\ "d_1"
  , d_2__Sample /\ "d_2"
  , d_3__Sample /\ "d_3"
  , padlong_0__Sample /\ "padlong_0"
  , sequential_0__Sample /\ "sequential_0"
  , sequential_1__Sample /\ "sequential_1"
  , sequential_2__Sample /\ "sequential_2"
  , sequential_3__Sample /\ "sequential_3"
  , sequential_4__Sample /\ "sequential_4"
  , sequential_5__Sample /\ "sequential_5"
  , sequential_6__Sample /\ "sequential_6"
  , sequential_7__Sample /\ "sequential_7"
  , stab_0__Sample /\ "stab_0"
  , stab_1__Sample /\ "stab_1"
  , stab_2__Sample /\ "stab_2"
  , stab_3__Sample /\ "stab_3"
  , stab_4__Sample /\ "stab_4"
  , stab_5__Sample /\ "stab_5"
  , stab_6__Sample /\ "stab_6"
  , stab_7__Sample /\ "stab_7"
  , stab_8__Sample /\ "stab_8"
  , stab_9__Sample /\ "stab_9"
  , stab_10__Sample /\ "stab_10"
  , stab_11__Sample /\ "stab_11"
  , stab_12__Sample /\ "stab_12"
  , stab_13__Sample /\ "stab_13"
  , stab_14__Sample /\ "stab_14"
  , stab_15__Sample /\ "stab_15"
  , stab_16__Sample /\ "stab_16"
  , stab_17__Sample /\ "stab_17"
  , stab_18__Sample /\ "stab_18"
  , stab_19__Sample /\ "stab_19"
  , stab_20__Sample /\ "stab_20"
  , stab_21__Sample /\ "stab_21"
  , stab_22__Sample /\ "stab_22"
  , electro1_0__Sample /\ "electro1_0"
  , electro1_1__Sample /\ "electro1_1"
  , electro1_2__Sample /\ "electro1_2"
  , electro1_3__Sample /\ "electro1_3"
  , electro1_4__Sample /\ "electro1_4"
  , electro1_5__Sample /\ "electro1_5"
  , electro1_6__Sample /\ "electro1_6"
  , electro1_7__Sample /\ "electro1_7"
  , electro1_8__Sample /\ "electro1_8"
  , electro1_9__Sample /\ "electro1_9"
  , electro1_10__Sample /\ "electro1_10"
  , electro1_11__Sample /\ "electro1_11"
  , electro1_12__Sample /\ "electro1_12"
  , ifdrums_0__Sample /\ "ifdrums_0"
  , ifdrums_1__Sample /\ "ifdrums_1"
  , ifdrums_2__Sample /\ "ifdrums_2"
  , invaders_0__Sample /\ "invaders_0"
  , invaders_1__Sample /\ "invaders_1"
  , invaders_2__Sample /\ "invaders_2"
  , invaders_3__Sample /\ "invaders_3"
  , invaders_4__Sample /\ "invaders_4"
  , invaders_5__Sample /\ "invaders_5"
  , invaders_6__Sample /\ "invaders_6"
  , invaders_7__Sample /\ "invaders_7"
  , invaders_8__Sample /\ "invaders_8"
  , invaders_9__Sample /\ "invaders_9"
  , invaders_10__Sample /\ "invaders_10"
  , invaders_11__Sample /\ "invaders_11"
  , invaders_12__Sample /\ "invaders_12"
  , invaders_13__Sample /\ "invaders_13"
  , invaders_14__Sample /\ "invaders_14"
  , invaders_15__Sample /\ "invaders_15"
  , invaders_16__Sample /\ "invaders_16"
  , invaders_17__Sample /\ "invaders_17"
  , dist_0__Sample /\ "dist_0"
  , dist_1__Sample /\ "dist_1"
  , dist_2__Sample /\ "dist_2"
  , dist_3__Sample /\ "dist_3"
  , dist_4__Sample /\ "dist_4"
  , dist_5__Sample /\ "dist_5"
  , dist_6__Sample /\ "dist_6"
  , dist_7__Sample /\ "dist_7"
  , dist_8__Sample /\ "dist_8"
  , dist_9__Sample /\ "dist_9"
  , dist_10__Sample /\ "dist_10"
  , dist_11__Sample /\ "dist_11"
  , dist_12__Sample /\ "dist_12"
  , dist_13__Sample /\ "dist_13"
  , dist_14__Sample /\ "dist_14"
  , dist_15__Sample /\ "dist_15"
  , sundance_0__Sample /\ "sundance_0"
  , sundance_1__Sample /\ "sundance_1"
  , sundance_2__Sample /\ "sundance_2"
  , sundance_3__Sample /\ "sundance_3"
  , sundance_4__Sample /\ "sundance_4"
  , sundance_5__Sample /\ "sundance_5"
  , speech_0__Sample /\ "speech_0"
  , speech_1__Sample /\ "speech_1"
  , speech_2__Sample /\ "speech_2"
  , speech_3__Sample /\ "speech_3"
  , speech_4__Sample /\ "speech_4"
  , speech_5__Sample /\ "speech_5"
  , speech_6__Sample /\ "speech_6"
  , toys_0__Sample /\ "toys_0"
  , toys_1__Sample /\ "toys_1"
  , toys_2__Sample /\ "toys_2"
  , toys_3__Sample /\ "toys_3"
  , toys_4__Sample /\ "toys_4"
  , toys_5__Sample /\ "toys_5"
  , toys_6__Sample /\ "toys_6"
  , toys_7__Sample /\ "toys_7"
  , toys_8__Sample /\ "toys_8"
  , toys_9__Sample /\ "toys_9"
  , toys_10__Sample /\ "toys_10"
  , toys_11__Sample /\ "toys_11"
  , toys_12__Sample /\ "toys_12"
  , bass0_0__Sample /\ "bass0_0"
  , bass0_1__Sample /\ "bass0_1"
  , bass0_2__Sample /\ "bass0_2"
  , realclaps_0__Sample /\ "realclaps_0"
  , realclaps_1__Sample /\ "realclaps_1"
  , realclaps_2__Sample /\ "realclaps_2"
  , realclaps_3__Sample /\ "realclaps_3"
  , dorkbot_0__Sample /\ "dorkbot_0"
  , dorkbot_1__Sample /\ "dorkbot_1"
  , arpy_0__Sample /\ "arpy_0"
  , arpy_1__Sample /\ "arpy_1"
  , arpy_2__Sample /\ "arpy_2"
  , arpy_3__Sample /\ "arpy_3"
  , arpy_4__Sample /\ "arpy_4"
  , arpy_5__Sample /\ "arpy_5"
  , arpy_6__Sample /\ "arpy_6"
  , arpy_7__Sample /\ "arpy_7"
  , arpy_8__Sample /\ "arpy_8"
  , arpy_9__Sample /\ "arpy_9"
  , arpy_10__Sample /\ "arpy_10"
  , fire_0__Sample /\ "fire_0"
  , hoover_0__Sample /\ "hoover_0"
  , hoover_1__Sample /\ "hoover_1"
  , hoover_2__Sample /\ "hoover_2"
  , hoover_3__Sample /\ "hoover_3"
  , hoover_4__Sample /\ "hoover_4"
  , hoover_5__Sample /\ "hoover_5"
  , breath_0__Sample /\ "breath_0"
  , rave_0__Sample /\ "rave_0"
  , rave_1__Sample /\ "rave_1"
  , rave_2__Sample /\ "rave_2"
  , rave_3__Sample /\ "rave_3"
  , rave_4__Sample /\ "rave_4"
  , rave_5__Sample /\ "rave_5"
  , rave_6__Sample /\ "rave_6"
  , rave_7__Sample /\ "rave_7"
  , bottle_0__Sample /\ "bottle_0"
  , bottle_1__Sample /\ "bottle_1"
  , bottle_2__Sample /\ "bottle_2"
  , bottle_3__Sample /\ "bottle_3"
  , bottle_4__Sample /\ "bottle_4"
  , bottle_5__Sample /\ "bottle_5"
  , bottle_6__Sample /\ "bottle_6"
  , bottle_7__Sample /\ "bottle_7"
  , bottle_8__Sample /\ "bottle_8"
  , bottle_9__Sample /\ "bottle_9"
  , bottle_10__Sample /\ "bottle_10"
  , bottle_11__Sample /\ "bottle_11"
  , bottle_12__Sample /\ "bottle_12"
  , east_0__Sample /\ "east_0"
  , east_1__Sample /\ "east_1"
  , east_2__Sample /\ "east_2"
  , east_3__Sample /\ "east_3"
  , east_4__Sample /\ "east_4"
  , east_5__Sample /\ "east_5"
  , east_6__Sample /\ "east_6"
  , east_7__Sample /\ "east_7"
  , east_8__Sample /\ "east_8"
  , linnhats_0__Sample /\ "linnhats_0"
  , linnhats_1__Sample /\ "linnhats_1"
  , linnhats_2__Sample /\ "linnhats_2"
  , linnhats_3__Sample /\ "linnhats_3"
  , linnhats_4__Sample /\ "linnhats_4"
  , linnhats_5__Sample /\ "linnhats_5"
  , speedupdown_0__Sample /\ "speedupdown_0"
  , speedupdown_1__Sample /\ "speedupdown_1"
  , speedupdown_2__Sample /\ "speedupdown_2"
  , speedupdown_3__Sample /\ "speedupdown_3"
  , speedupdown_4__Sample /\ "speedupdown_4"
  , speedupdown_5__Sample /\ "speedupdown_5"
  , speedupdown_6__Sample /\ "speedupdown_6"
  , speedupdown_7__Sample /\ "speedupdown_7"
  , speedupdown_8__Sample /\ "speedupdown_8"
  , cosmicg_0__Sample /\ "cosmicg_0"
  , cosmicg_1__Sample /\ "cosmicg_1"
  , cosmicg_2__Sample /\ "cosmicg_2"
  , cosmicg_3__Sample /\ "cosmicg_3"
  , cosmicg_4__Sample /\ "cosmicg_4"
  , cosmicg_5__Sample /\ "cosmicg_5"
  , cosmicg_6__Sample /\ "cosmicg_6"
  , cosmicg_7__Sample /\ "cosmicg_7"
  , cosmicg_8__Sample /\ "cosmicg_8"
  , cosmicg_9__Sample /\ "cosmicg_9"
  , cosmicg_10__Sample /\ "cosmicg_10"
  , cosmicg_11__Sample /\ "cosmicg_11"
  , cosmicg_12__Sample /\ "cosmicg_12"
  , cosmicg_13__Sample /\ "cosmicg_13"
  , cosmicg_14__Sample /\ "cosmicg_14"
  , jvbass_0__Sample /\ "jvbass_0"
  , jvbass_1__Sample /\ "jvbass_1"
  , jvbass_2__Sample /\ "jvbass_2"
  , jvbass_3__Sample /\ "jvbass_3"
  , jvbass_4__Sample /\ "jvbass_4"
  , jvbass_5__Sample /\ "jvbass_5"
  , jvbass_6__Sample /\ "jvbass_6"
  , jvbass_7__Sample /\ "jvbass_7"
  , jvbass_8__Sample /\ "jvbass_8"
  , jvbass_9__Sample /\ "jvbass_9"
  , jvbass_10__Sample /\ "jvbass_10"
  , jvbass_11__Sample /\ "jvbass_11"
  , jvbass_12__Sample /\ "jvbass_12"
  , mash_0__Sample /\ "mash_0"
  , mash_1__Sample /\ "mash_1"
  , feel_0__Sample /\ "feel_0"
  , feel_1__Sample /\ "feel_1"
  , feel_2__Sample /\ "feel_2"
  , feel_3__Sample /\ "feel_3"
  , feel_4__Sample /\ "feel_4"
  , feel_5__Sample /\ "feel_5"
  , feel_6__Sample /\ "feel_6"
  , short_0__Sample /\ "short_0"
  , short_1__Sample /\ "short_1"
  , short_2__Sample /\ "short_2"
  , short_3__Sample /\ "short_3"
  , short_4__Sample /\ "short_4"
  , incoming_0__Sample /\ "incoming_0"
  , incoming_1__Sample /\ "incoming_1"
  , incoming_2__Sample /\ "incoming_2"
  , incoming_3__Sample /\ "incoming_3"
  , incoming_4__Sample /\ "incoming_4"
  , incoming_5__Sample /\ "incoming_5"
  , incoming_6__Sample /\ "incoming_6"
  , incoming_7__Sample /\ "incoming_7"
  , flick_0__Sample /\ "flick_0"
  , flick_1__Sample /\ "flick_1"
  , flick_2__Sample /\ "flick_2"
  , flick_3__Sample /\ "flick_3"
  , flick_4__Sample /\ "flick_4"
  , flick_5__Sample /\ "flick_5"
  , flick_6__Sample /\ "flick_6"
  , flick_7__Sample /\ "flick_7"
  , flick_8__Sample /\ "flick_8"
  , flick_9__Sample /\ "flick_9"
  , flick_10__Sample /\ "flick_10"
  , flick_11__Sample /\ "flick_11"
  , flick_12__Sample /\ "flick_12"
  , flick_13__Sample /\ "flick_13"
  , flick_14__Sample /\ "flick_14"
  , flick_15__Sample /\ "flick_15"
  , flick_16__Sample /\ "flick_16"
  , reverbkick_0__Sample /\ "reverbkick_0"
  , bass2_0__Sample /\ "bass2_0"
  , bass2_1__Sample /\ "bass2_1"
  , bass2_2__Sample /\ "bass2_2"
  , bass2_3__Sample /\ "bass2_3"
  , bass2_4__Sample /\ "bass2_4"
  , baa_0__Sample /\ "baa_0"
  , baa_1__Sample /\ "baa_1"
  , baa_2__Sample /\ "baa_2"
  , baa_3__Sample /\ "baa_3"
  , baa_4__Sample /\ "baa_4"
  , baa_5__Sample /\ "baa_5"
  , baa_6__Sample /\ "baa_6"
  , fm_0__Sample /\ "fm_0"
  , fm_1__Sample /\ "fm_1"
  , fm_2__Sample /\ "fm_2"
  , fm_3__Sample /\ "fm_3"
  , fm_4__Sample /\ "fm_4"
  , fm_5__Sample /\ "fm_5"
  , fm_6__Sample /\ "fm_6"
  , fm_7__Sample /\ "fm_7"
  , fm_8__Sample /\ "fm_8"
  , fm_9__Sample /\ "fm_9"
  , fm_10__Sample /\ "fm_10"
  , fm_11__Sample /\ "fm_11"
  , fm_12__Sample /\ "fm_12"
  , fm_13__Sample /\ "fm_13"
  , fm_14__Sample /\ "fm_14"
  , fm_15__Sample /\ "fm_15"
  , fm_16__Sample /\ "fm_16"
  , click_0__Sample /\ "click_0"
  , click_1__Sample /\ "click_1"
  , click_2__Sample /\ "click_2"
  , click_3__Sample /\ "click_3"
  , control_0__Sample /\ "control_0"
  , control_1__Sample /\ "control_1"
  , peri_0__Sample /\ "peri_0"
  , peri_1__Sample /\ "peri_1"
  , peri_2__Sample /\ "peri_2"
  , peri_3__Sample /\ "peri_3"
  , peri_4__Sample /\ "peri_4"
  , peri_5__Sample /\ "peri_5"
  , peri_6__Sample /\ "peri_6"
  , peri_7__Sample /\ "peri_7"
  , peri_8__Sample /\ "peri_8"
  , peri_9__Sample /\ "peri_9"
  , peri_10__Sample /\ "peri_10"
  , peri_11__Sample /\ "peri_11"
  , peri_12__Sample /\ "peri_12"
  , peri_13__Sample /\ "peri_13"
  , peri_14__Sample /\ "peri_14"
  , procshort_0__Sample /\ "procshort_0"
  , procshort_1__Sample /\ "procshort_1"
  , procshort_2__Sample /\ "procshort_2"
  , procshort_3__Sample /\ "procshort_3"
  , procshort_4__Sample /\ "procshort_4"
  , procshort_5__Sample /\ "procshort_5"
  , procshort_6__Sample /\ "procshort_6"
  , procshort_7__Sample /\ "procshort_7"
  , hand_0__Sample /\ "hand_0"
  , hand_1__Sample /\ "hand_1"
  , hand_2__Sample /\ "hand_2"
  , hand_3__Sample /\ "hand_3"
  , hand_4__Sample /\ "hand_4"
  , hand_5__Sample /\ "hand_5"
  , hand_6__Sample /\ "hand_6"
  , hand_7__Sample /\ "hand_7"
  , hand_8__Sample /\ "hand_8"
  , hand_9__Sample /\ "hand_9"
  , hand_10__Sample /\ "hand_10"
  , hand_11__Sample /\ "hand_11"
  , hand_12__Sample /\ "hand_12"
  , hand_13__Sample /\ "hand_13"
  , hand_14__Sample /\ "hand_14"
  , hand_15__Sample /\ "hand_15"
  , hand_16__Sample /\ "hand_16"
  , future_0__Sample /\ "future_0"
  , future_1__Sample /\ "future_1"
  , future_2__Sample /\ "future_2"
  , future_3__Sample /\ "future_3"
  , future_4__Sample /\ "future_4"
  , future_5__Sample /\ "future_5"
  , future_6__Sample /\ "future_6"
  , future_7__Sample /\ "future_7"
  , future_8__Sample /\ "future_8"
  , future_9__Sample /\ "future_9"
  , future_10__Sample /\ "future_10"
  , future_11__Sample /\ "future_11"
  , future_12__Sample /\ "future_12"
  , future_13__Sample /\ "future_13"
  , future_14__Sample /\ "future_14"
  , future_15__Sample /\ "future_15"
  , future_16__Sample /\ "future_16"
  , hh_0__Sample /\ "hh_0"
  , hh_1__Sample /\ "hh_1"
  , hh_2__Sample /\ "hh_2"
  , hh_3__Sample /\ "hh_3"
  , hh_4__Sample /\ "hh_4"
  , hh_5__Sample /\ "hh_5"
  , hh_6__Sample /\ "hh_6"
  , hh_7__Sample /\ "hh_7"
  , hh_8__Sample /\ "hh_8"
  , hh_9__Sample /\ "hh_9"
  , hh_10__Sample /\ "hh_10"
  , hh_11__Sample /\ "hh_11"
  , hh_12__Sample /\ "hh_12"
  , x_808ht_0__Sample /\ "x_808ht_0"
  , x_808ht_1__Sample /\ "x_808ht_1"
  , x_808ht_2__Sample /\ "x_808ht_2"
  , x_808ht_3__Sample /\ "x_808ht_3"
  , x_808ht_4__Sample /\ "x_808ht_4"
  , db_0__Sample /\ "db_0"
  , db_1__Sample /\ "db_1"
  , db_2__Sample /\ "db_2"
  , db_3__Sample /\ "db_3"
  , db_4__Sample /\ "db_4"
  , db_5__Sample /\ "db_5"
  , db_6__Sample /\ "db_6"
  , db_7__Sample /\ "db_7"
  , db_8__Sample /\ "db_8"
  , db_9__Sample /\ "db_9"
  , db_10__Sample /\ "db_10"
  , db_11__Sample /\ "db_11"
  , db_12__Sample /\ "db_12"
  ]
