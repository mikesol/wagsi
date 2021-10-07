module WAGSI.Plumbing.Samples
  ( sampleToBuffers
  , sampleToUrls
  , urls
  , note2drone
  , nameToSampleO
  , unsafeSamples
  , nameToSample
  --
  , class ClockTime
  , clockTime
  , class SampleTime
  , sampleTime
  , class BigCycleTime
  , bigCycleTime
  , class LittleCycleTime
  , littleCycleTime
  , class NormalizedClockTime
  , normalizedClockTime
  , class NormalizedSampleTime
  , normalizedSampleTime
  , class NormalizedBigCycleTime
  , normalizedBigCycleTime
  , class NormalizedLittleCycleTime
  , normalizedLittleCycleTime
  , class LittleCycleDuration
  , littleCycleDuration
  , class BigCycleDuration
  , bigCycleDuration
  , class BufferDuration
  , bufferDuration
  --
  , sampleToString
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
  ------ drones
  , spacewind_0__Sample
  , ambienta_0__Sample
  , lowdark_0__Sample
  , harmonium_0__Sample
  , hollowair_0__Sample
  , digeridoo_0__Sample
  ) where

import Prelude

import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Newtype (unwrap)
import Data.Tuple.Nested ((/\), type (/\))
import Foreign.Object (Object)
import Foreign.Object as Object
import Safe.Coerce (coerce)
import Unsafe.Coerce (unsafeCoerce)
import WAGS.WebAPI (BrowserAudioBuffer)
import WAGSI.Plumbing.FX (calm)
import WAGSI.Plumbing.Types (ClockTimeIs, DroneNote(..), Note(..), Sample(..), Samples(..), TimeIs, TimeIsAndWas)

unsafeSamples :: Samples ~> Object
unsafeSamples = unsafeCoerce

urls :: Samples String
urls = Samples
  { intentionalSilenceForInternalUseOnly: "https://freesound.org/data/previews/459/459659_4766646-lq.mp3"
  , "kicklinn:0": "https://klank-share.s3.amazonaws.com/dirt-samples/kicklinn/Linn_Kick_1.ogg"
  , "msg:0": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/007_msg7.ogg"
  , "msg:1": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/003_msg3.ogg"
  , "msg:2": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/002_msg2.ogg"
  , "msg:3": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/001_msg1.ogg"
  , "msg:4": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/004_msg4.ogg"
  , "msg:5": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/008_msg8.ogg"
  , "msg:6": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/000_msg0.ogg"
  , "msg:7": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/006_msg6.ogg"
  , "msg:8": "https://klank-share.s3.amazonaws.com/dirt-samples/msg/005_msg5.ogg"
  , "gabbalouder:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/003_3.ogg"
  , "gabbalouder:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/001_1.ogg"
  , "gabbalouder:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/000_0.ogg"
  , "gabbalouder:3": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbalouder/002_2.ogg"
  , "kurt:0": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/000_kurt01.ogg"
  , "kurt:1": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/001_kurt02.ogg"
  , "kurt:2": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/003_kurt04.ogg"
  , "kurt:3": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/006_kurt07.ogg"
  , "kurt:4": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/004_kurt05.ogg"
  , "kurt:5": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/005_kurt06.ogg"
  , "kurt:6": "https://klank-share.s3.amazonaws.com/dirt-samples/kurt/002_kurt03.ogg"
  , "bassdm:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/003_BT0A0D3.ogg"
  , "bassdm:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/022_BTAA0DA.ogg"
  , "bassdm:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/019_BTAA0D0.ogg"
  , "bassdm:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/018_BT7AADA.ogg"
  , "bassdm:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/024_BTAAADA.ogg"
  , "bassdm:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/008_BT3A0D3.ogg"
  , "bassdm:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/012_BT3AADA.ogg"
  , "bassdm:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/015_BT7A0D7.ogg"
  , "bassdm:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/021_BTAA0D7.ogg"
  , "bassdm:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/017_BT7AAD0.ogg"
  , "bassdm:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/004_BT0A0DA.ogg"
  , "bassdm:11": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/020_BTAA0D3.ogg"
  , "bassdm:12": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/013_BT7A0D0.ogg"
  , "bassdm:13": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/016_BT7A0DA.ogg"
  , "bassdm:14": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/007_BT3A0D0.ogg"
  , "bassdm:15": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/011_BT3AAD0.ogg"
  , "bassdm:16": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/001_BT0A0A7.ogg"
  , "bassdm:17": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/014_BT7A0D3.ogg"
  , "bassdm:18": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/023_BTAAAD0.ogg"
  , "bassdm:19": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/009_BT3A0D7.ogg"
  , "bassdm:20": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/006_BT0AADA.ogg"
  , "bassdm:21": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/002_BT0A0D0.ogg"
  , "bassdm:22": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/005_BT0AAD0.ogg"
  , "bassdm:23": "https://klank-share.s3.amazonaws.com/dirt-samples/bassdm/010_BT3A0DA.ogg"
  , "tabla2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23663_loofa_A_019.ogg"
  , "tabla2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23678_loofa_bahia006.ogg"
  , "tabla2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23671_loofa_A_027.ogg"
  , "tabla2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23688_loofa_bahia016.ogg"
  , "tabla2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23658_loofa_A_014.ogg"
  , "tabla2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23660_loofa_A_016.ogg"
  , "tabla2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23673_loofa_bahia001.ogg"
  , "tabla2:7": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23687_loofa_bahia015.ogg"
  , "tabla2:8": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23664_loofa_A_020.ogg"
  , "tabla2:9": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23674_loofa_bahia002.ogg"
  , "tabla2:10": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23652_loofa_A_008.ogg"
  , "tabla2:11": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23646_loofa_A_002.ogg"
  , "tabla2:12": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23653_loofa_A_009.ogg"
  , "tabla2:13": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23648_loofa_A_004.ogg"
  , "tabla2:14": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23681_loofa_bahia009.ogg"
  , "tabla2:15": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23665_loofa_A_021.ogg"
  , "tabla2:16": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23657_loofa_A_013.ogg"
  , "tabla2:17": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23649_loofa_A_005.ogg"
  , "tabla2:18": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23679_loofa_bahia007.ogg"
  , "tabla2:19": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23677_loofa_bahia005.ogg"
  , "tabla2:20": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23661_loofa_A_017.ogg"
  , "tabla2:21": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23656_loofa_A_012.ogg"
  , "tabla2:22": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23684_loofa_bahia012.ogg"
  , "tabla2:23": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23676_loofa_bahia004.ogg"
  , "tabla2:24": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23682_loofa_bahia010.ogg"
  , "tabla2:25": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23647_loofa_A_003.ogg"
  , "tabla2:26": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23668_loofa_A_024.ogg"
  , "tabla2:27": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23675_loofa_bahia003.ogg"
  , "tabla2:28": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23670_loofa_A_026.ogg"
  , "tabla2:29": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23645_loofa_A_001.ogg"
  , "tabla2:30": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23680_loofa_bahia008.ogg"
  , "tabla2:31": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23689_loofa_bahia017.ogg"
  , "tabla2:32": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23659_loofa_A_015.ogg"
  , "tabla2:33": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23683_loofa_bahia011.ogg"
  , "tabla2:34": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23686_loofa_bahia014.ogg"
  , "tabla2:35": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23655_loofa_A_011.ogg"
  , "tabla2:36": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23667_loofa_A_023.ogg"
  , "tabla2:37": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23662_loofa_A_018.ogg"
  , "tabla2:38": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23654_loofa_A_010.ogg"
  , "tabla2:39": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23690_loofa_bahia018.ogg"
  , "tabla2:40": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23650_loofa_A_006.ogg"
  , "tabla2:41": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23669_loofa_A_025.ogg"
  , "tabla2:42": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23666_loofa_A_022.ogg"
  , "tabla2:43": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23651_loofa_A_007.ogg"
  , "tabla2:44": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23685_loofa_bahia013.ogg"
  , "tabla2:45": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla2/23672_loofa_A_028.ogg"
  , "chin:0": "https://klank-share.s3.amazonaws.com/dirt-samples/chin/001_tik2.ogg"
  , "chin:1": "https://klank-share.s3.amazonaws.com/dirt-samples/chin/003_tik4.ogg"
  , "chin:2": "https://klank-share.s3.amazonaws.com/dirt-samples/chin/000_tik1.ogg"
  , "chin:3": "https://klank-share.s3.amazonaws.com/dirt-samples/chin/002_tik3.ogg"
  , "mp3:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/003_mp33.ogg"
  , "mp3:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/001_mp31.ogg"
  , "mp3:2": "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/000_mp30.ogg"
  , "mp3:3": "https://klank-share.s3.amazonaws.com/dirt-samples/mp3/002_mp32.ogg"
  , "tablex:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/0.ogg"
  , "tablex:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/1.ogg"
  , "tablex:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tablex/fuckable.ogg"
  , "sf:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/010_2.ogg"
  , "sf:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/006_14.ogg"
  , "sf:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/009_17.ogg"
  , "sf:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/012_4.ogg"
  , "sf:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/007_15.ogg"
  , "sf:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/013_5.ogg"
  , "sf:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/001_1.ogg"
  , "sf:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/008_16.ogg"
  , "sf:8": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/004_12.ogg"
  , "sf:9": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/015_7.ogg"
  , "sf:10": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/016_8.ogg"
  , "sf:11": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/002_10.ogg"
  , "sf:12": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/003_11.ogg"
  , "sf:13": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/014_6.ogg"
  , "sf:14": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/017_9.ogg"
  , "sf:15": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/005_13.ogg"
  , "sf:16": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/000_bass.ogg"
  , "sf:17": "https://klank-share.s3.amazonaws.com/dirt-samples/sf/011_3.ogg"
  , "speakspell:0": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/009_7.ogg"
  , "speakspell:1": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/004_2.ogg"
  , "speakspell:2": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/002_11.ogg"
  , "speakspell:3": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/005_3.ogg"
  , "speakspell:4": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/007_5.ogg"
  , "speakspell:5": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/000_1.ogg"
  , "speakspell:6": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/011_9.ogg"
  , "speakspell:7": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/003_12.ogg"
  , "speakspell:8": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/010_8.ogg"
  , "speakspell:9": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/008_6.ogg"
  , "speakspell:10": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/006_4.ogg"
  , "speakspell:11": "https://klank-share.s3.amazonaws.com/dirt-samples/speakspell/001_10.ogg"
  , "cc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHDA.ogg"
  , "cc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD6.ogg"
  , "cc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD4.ogg"
  , "cc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD2.ogg"
  , "cc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD0.ogg"
  , "cc:5": "https://klank-share.s3.amazonaws.com/dirt-samples/cc/CSHD8.ogg"
  , "gabbaloud:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/003_3.ogg"
  , "gabbaloud:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/001_1.ogg"
  , "gabbaloud:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/000_0.ogg"
  , "gabbaloud:3": "https://klank-share.s3.amazonaws.com/dirt-samples/gabbaloud/002_2.ogg"
  , "ades2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/004_05.ogg"
  , "ades2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/002_03.ogg"
  , "ades2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/001_02.ogg"
  , "ades2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/007_08.ogg"
  , "ades2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/006_07.ogg"
  , "ades2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/005_06.ogg"
  , "ades2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/000_01.ogg"
  , "ades2:7": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/003_04.ogg"
  , "ades2:8": "https://klank-share.s3.amazonaws.com/dirt-samples/ades2/008_09.ogg"
  , "space:0": "https://klank-share.s3.amazonaws.com/dirt-samples/space/010_2.ogg"
  , "space:1": "https://klank-share.s3.amazonaws.com/dirt-samples/space/012_4.ogg"
  , "space:2": "https://klank-share.s3.amazonaws.com/dirt-samples/space/006_15.ogg"
  , "space:3": "https://klank-share.s3.amazonaws.com/dirt-samples/space/002_11.ogg"
  , "space:4": "https://klank-share.s3.amazonaws.com/dirt-samples/space/004_13.ogg"
  , "space:5": "https://klank-share.s3.amazonaws.com/dirt-samples/space/013_5.ogg"
  , "space:6": "https://klank-share.s3.amazonaws.com/dirt-samples/space/001_1.ogg"
  , "space:7": "https://klank-share.s3.amazonaws.com/dirt-samples/space/005_14.ogg"
  , "space:8": "https://klank-share.s3.amazonaws.com/dirt-samples/space/015_7.ogg"
  , "space:9": "https://klank-share.s3.amazonaws.com/dirt-samples/space/016_8.ogg"
  , "space:10": "https://klank-share.s3.amazonaws.com/dirt-samples/space/003_12.ogg"
  , "space:11": "https://klank-share.s3.amazonaws.com/dirt-samples/space/007_16.ogg"
  , "space:12": "https://klank-share.s3.amazonaws.com/dirt-samples/space/014_6.ogg"
  , "space:13": "https://klank-share.s3.amazonaws.com/dirt-samples/space/017_9.ogg"
  , "space:14": "https://klank-share.s3.amazonaws.com/dirt-samples/space/009_18.ogg"
  , "space:15": "https://klank-share.s3.amazonaws.com/dirt-samples/space/000_0.ogg"
  , "space:16": "https://klank-share.s3.amazonaws.com/dirt-samples/space/008_17.ogg"
  , "space:17": "https://klank-share.s3.amazonaws.com/dirt-samples/space/011_3.ogg"
  , "battles:0": "https://klank-share.s3.amazonaws.com/dirt-samples/battles/000_explo1.ogg"
  , "battles:1": "https://klank-share.s3.amazonaws.com/dirt-samples/battles/001_explo2.ogg"
  , "voodoo:0": "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/004_VoodooTom.ogg"
  , "voodoo:1": "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/003_VoodooSnare.ogg"
  , "voodoo:2": "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/000_VoodooBass.ogg"
  , "voodoo:3": "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/001_VoodooHihat.ogg"
  , "voodoo:4": "https://klank-share.s3.amazonaws.com/dirt-samples/voodoo/002_VoodooRim.ogg"
  , "ravemono:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ravemono/Babylon.ogg"
  , "ravemono:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ravemono/prodigyloop.ogg"
  , "psr:0": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/020_21.ogg"
  , "psr:1": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/012_13.ogg"
  , "psr:2": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/009_10.ogg"
  , "psr:3": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/004_05.ogg"
  , "psr:4": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/021_22.ogg"
  , "psr:5": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/002_03.ogg"
  , "psr:6": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/026_27.ogg"
  , "psr:7": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/014_15.ogg"
  , "psr:8": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/025_26.ogg"
  , "psr:9": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/027_28.ogg"
  , "psr:10": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/001_02.ogg"
  , "psr:11": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/023_24.ogg"
  , "psr:12": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/007_08.ogg"
  , "psr:13": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/010_11.ogg"
  , "psr:14": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/006_07.ogg"
  , "psr:15": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/013_14.ogg"
  , "psr:16": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/015_16.ogg"
  , "psr:17": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/024_25.ogg"
  , "psr:18": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/022_23.ogg"
  , "psr:19": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/005_06.ogg"
  , "psr:20": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/028_29.ogg"
  , "psr:21": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/019_20.ogg"
  , "psr:22": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/011_12.ogg"
  , "psr:23": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/016_17.ogg"
  , "psr:24": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/017_18.ogg"
  , "psr:25": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/029_30.ogg"
  , "psr:26": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/000_01.ogg"
  , "psr:27": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/003_04.ogg"
  , "psr:28": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/018_19.ogg"
  , "psr:29": "https://klank-share.s3.amazonaws.com/dirt-samples/psr/008_09.ogg"
  , "metal:0": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/007_7.ogg"
  , "metal:1": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/009_9.ogg"
  , "metal:2": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/003_3.ogg"
  , "metal:3": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/001_1.ogg"
  , "metal:4": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/008_8.ogg"
  , "metal:5": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/005_5.ogg"
  , "metal:6": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/006_6.ogg"
  , "metal:7": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/004_4.ogg"
  , "metal:8": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/000_0.ogg"
  , "metal:9": "https://klank-share.s3.amazonaws.com/dirt-samples/metal/002_2.ogg"
  , "hardcore:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/006_hcopenhh.ogg"
  , "hardcore:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/008_hcperc2.ogg"
  , "hardcore:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/004_hckick1.ogg"
  , "hardcore:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/007_hcperc1.ogg"
  , "hardcore:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/003_hchit2.ogg"
  , "hardcore:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/009_hcride.ogg"
  , "hardcore:6": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/000_hcclosedhh.ogg"
  , "hardcore:7": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/002_hccrash.ogg"
  , "hardcore:8": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/005_hckick2.ogg"
  , "hardcore:9": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/010_hcsnare1.ogg"
  , "hardcore:10": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/001_hchit1.ogg"
  , "hardcore:11": "https://klank-share.s3.amazonaws.com/dirt-samples/hardcore/011_hcsnare2.ogg"
  , "mouth:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/006_15.ogg"
  , "mouth:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/002_11.ogg"
  , "mouth:2": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/013_8.ogg"
  , "mouth:3": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/004_13.ogg"
  , "mouth:4": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/007_2.ogg"
  , "mouth:5": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/000_1.ogg"
  , "mouth:6": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/005_14.ogg"
  , "mouth:7": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/003_12.ogg"
  , "mouth:8": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/011_6.ogg"
  , "mouth:9": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/009_4.ogg"
  , "mouth:10": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/010_5.ogg"
  , "mouth:11": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/008_3.ogg"
  , "mouth:12": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/012_7.ogg"
  , "mouth:13": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/001_10.ogg"
  , "mouth:14": "https://klank-share.s3.amazonaws.com/dirt-samples/mouth/014_9.ogg"
  , "sugar:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sugar/000_bark.ogg"
  , "sugar:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sugar/001_crab.ogg"
  , "odx:0": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/007_DX_Med_Crash.ogg"
  , "odx:1": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/005_DX_Open_Hat.ogg"
  , "odx:2": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/002_DXShaker.ogg"
  , "odx:3": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/008_DX_Low_Tom.ogg"
  , "odx:4": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/012_DX_Cl_Hat.ogg"
  , "odx:5": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/014_DX_Ax_Hat.ogg"
  , "odx:6": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/001_DX_Snare_1.ogg"
  , "odx:7": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/010_DX_Hi_Tom.ogg"
  , "odx:8": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/004_DXRide.ogg"
  , "odx:9": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/009_DX_Lo_Crash.ogg"
  , "odx:10": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/006_DX_Mid_Tom.ogg"
  , "odx:11": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/013_DXClap.ogg"
  , "odx:12": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/003_DXRimshot.ogg"
  , "odx:13": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/000_Kick_1.ogg"
  , "odx:14": "https://klank-share.s3.amazonaws.com/dirt-samples/odx/011_DX_High_Crash.ogg"
  , "x_808lc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC10.ogg"
  , "x_808lc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC50.ogg"
  , "x_808lc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC75.ogg"
  , "x_808lc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC00.ogg"
  , "x_808lc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808lc/LC25.ogg"
  , "mt:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D3.ogg"
  , "mt:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0DA.ogg"
  , "mt:2": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D7.ogg"
  , "mt:3": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3DA.ogg"
  , "mt:4": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7D0.ogg"
  , "mt:5": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D0.ogg"
  , "mt:6": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D0.ogg"
  , "mt:7": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D7.ogg"
  , "mt:8": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD0.ogg"
  , "mt:9": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D3.ogg"
  , "mt:10": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD3.ogg"
  , "mt:11": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT0D7.ogg"
  , "mt:12": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTADA.ogg"
  , "mt:13": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT3D3.ogg"
  , "mt:14": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MTAD7.ogg"
  , "mt:15": "https://klank-share.s3.amazonaws.com/dirt-samples/mt/MT7DA.ogg"
  , "drumtraks:0": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/000_DT_Cabasa.ogg"
  , "drumtraks:1": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/009_DT_Snare.ogg"
  , "drumtraks:2": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/003_DT_Crash.ogg"
  , "drumtraks:3": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/007_DT_Ride.ogg"
  , "drumtraks:4": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/011_DT_Tom1.ogg"
  , "drumtraks:5": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/004_DT_Hat_Closed.ogg"
  , "drumtraks:6": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/002_DT_Cowbell.ogg"
  , "drumtraks:7": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/005_DT_Hat_Open.ogg"
  , "drumtraks:8": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/006_DT_Kick.ogg"
  , "drumtraks:9": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/008_DT_Rimshot.ogg"
  , "drumtraks:10": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/012_DT_Tom2.ogg"
  , "drumtraks:11": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/001_DT_Claps.ogg"
  , "drumtraks:12": "https://klank-share.s3.amazonaws.com/dirt-samples/drumtraks/010_DT_Tambourine.ogg"
  , "print:0": "https://klank-share.s3.amazonaws.com/dirt-samples/print/003_2.ogg"
  , "print:1": "https://klank-share.s3.amazonaws.com/dirt-samples/print/006_5.ogg"
  , "print:2": "https://klank-share.s3.amazonaws.com/dirt-samples/print/001_1.ogg"
  , "print:3": "https://klank-share.s3.amazonaws.com/dirt-samples/print/008_7.ogg"
  , "print:4": "https://klank-share.s3.amazonaws.com/dirt-samples/print/002_10.ogg"
  , "print:5": "https://klank-share.s3.amazonaws.com/dirt-samples/print/004_3.ogg"
  , "print:6": "https://klank-share.s3.amazonaws.com/dirt-samples/print/010_9.ogg"
  , "print:7": "https://klank-share.s3.amazonaws.com/dirt-samples/print/009_8.ogg"
  , "print:8": "https://klank-share.s3.amazonaws.com/dirt-samples/print/007_6.ogg"
  , "print:9": "https://klank-share.s3.amazonaws.com/dirt-samples/print/000_0.ogg"
  , "print:10": "https://klank-share.s3.amazonaws.com/dirt-samples/print/005_4.ogg"
  , "blip:0": "https://klank-share.s3.amazonaws.com/dirt-samples/blip/000_blipp01.ogg"
  , "blip:1": "https://klank-share.s3.amazonaws.com/dirt-samples/blip/001_blipp02.ogg"
  , "wobble:0": "https://klank-share.s3.amazonaws.com/dirt-samples/wobble/000_0.ogg"
  , "made:0": "https://klank-share.s3.amazonaws.com/dirt-samples/made/3.ogg"
  , "made:1": "https://klank-share.s3.amazonaws.com/dirt-samples/made/5.ogg"
  , "made:2": "https://klank-share.s3.amazonaws.com/dirt-samples/made/0.ogg"
  , "made:3": "https://klank-share.s3.amazonaws.com/dirt-samples/made/1.ogg"
  , "made:4": "https://klank-share.s3.amazonaws.com/dirt-samples/made/2.ogg"
  , "made:5": "https://klank-share.s3.amazonaws.com/dirt-samples/made/4.ogg"
  , "made:6": "https://klank-share.s3.amazonaws.com/dirt-samples/made/6.ogg"
  , "bass3:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83250__zgump__bass-0206.ogg"
  , "bass3:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83253__zgump__bass-0209.ogg"
  , "bass3:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83249__zgump__bass-0205.ogg"
  , "bass3:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83246__zgump__bass-0202.ogg"
  , "bass3:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83251__zgump__bass-0207.ogg"
  , "bass3:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83247__zgump__bass-0203.ogg"
  , "bass3:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83248__zgump__bass-0204.ogg"
  , "bass3:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/85057__zgump__reverse-bass-02.ogg"
  , "bass3:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83252__zgump__bass-0208.ogg"
  , "bass3:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/83245__zgump__bass-0201.ogg"
  , "bass3:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bass3/85056__zgump__reverse-bass-01.ogg"
  , "speechless:0": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/004_pepper.ogg"
  , "speechless:1": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/000_a.ogg"
  , "speechless:2": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/006_pick.ogg"
  , "speechless:3": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/007_pickle.ogg"
  , "speechless:4": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/009_te.ogg"
  , "speechless:5": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/003_pepepepepe.ogg"
  , "speechless:6": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/002_pepepe.ogg"
  , "speechless:7": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/001_pe.ogg"
  , "speechless:8": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/008_po.ogg"
  , "speechless:9": "https://klank-share.s3.amazonaws.com/dirt-samples/speechless/005_pepperpot.ogg"
  , "sine:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/004_sine5.ogg"
  , "sine:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/000_sine.ogg"
  , "sine:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/005_sine6.ogg"
  , "sine:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/003_sine4.ogg"
  , "sine:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/001_sine2.ogg"
  , "sine:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sine/002_sine3.ogg"
  , "noise:0": "https://klank-share.s3.amazonaws.com/dirt-samples/noise/000_noise.ogg"
  , "x_808lt:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT00.ogg"
  , "x_808lt:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT50.ogg"
  , "x_808lt:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT10.ogg"
  , "x_808lt:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT75.ogg"
  , "x_808lt:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808lt/LT25.ogg"
  , "sd:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sd/rytm-01-classic.ogg"
  , "sd:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sd/rytm-00-hard.ogg"
  , "alphabet:0": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/c.ogg"
  , "alphabet:1": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/e.ogg"
  , "alphabet:2": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/a.ogg"
  , "alphabet:3": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/x.ogg"
  , "alphabet:4": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/g.ogg"
  , "alphabet:5": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/k.ogg"
  , "alphabet:6": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/z.ogg"
  , "alphabet:7": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/i.ogg"
  , "alphabet:8": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/f.ogg"
  , "alphabet:9": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/q.ogg"
  , "alphabet:10": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/b.ogg"
  , "alphabet:11": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/m.ogg"
  , "alphabet:12": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/r.ogg"
  , "alphabet:13": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/n.ogg"
  , "alphabet:14": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/d.ogg"
  , "alphabet:15": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/p.ogg"
  , "alphabet:16": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/j.ogg"
  , "alphabet:17": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/l.ogg"
  , "alphabet:18": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/y.ogg"
  , "alphabet:19": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/w.ogg"
  , "alphabet:20": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/v.ogg"
  , "alphabet:21": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/t.ogg"
  , "alphabet:22": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/u.ogg"
  , "alphabet:23": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/h.ogg"
  , "alphabet:24": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/s.ogg"
  , "alphabet:25": "https://klank-share.s3.amazonaws.com/dirt-samples/alphabet/o.ogg"
  , "baa2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/3.ogg"
  , "baa2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/5.ogg"
  , "baa2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/7.ogg"
  , "baa2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/1.ogg"
  , "baa2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/2.ogg"
  , "baa2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/4.ogg"
  , "baa2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/baa2/6.ogg"
  , "tok:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tok/003_3.ogg"
  , "tok:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tok/001_1.ogg"
  , "tok:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tok/000_0.ogg"
  , "tok:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tok/002_2.ogg"
  , "ades3:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/01.ogg"
  , "ades3:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/07.ogg"
  , "ades3:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/06.ogg"
  , "ades3:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/04.ogg"
  , "ades3:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/03.ogg"
  , "ades3:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/02.ogg"
  , "ades3:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ades3/05.ogg"
  , "x_909:0": "https://klank-share.s3.amazonaws.com/dirt-samples/909/BT0A0A7.ogg"
  , "sid:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/004_blipp02.ogg"
  , "sid:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/011_tdrum.ogg"
  , "sid:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/005_high.ogg"
  , "sid:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/007_hihat01.ogg"
  , "sid:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/009_lofidrums.ogg"
  , "sid:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/006_high2.ogg"
  , "sid:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/008_hihat02.ogg"
  , "sid:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/001_bas.ogg"
  , "sid:8": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/003_blipp01.ogg"
  , "sid:9": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/000_bas2.ogg"
  , "sid:10": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/002_basd.ogg"
  , "sid:11": "https://klank-share.s3.amazonaws.com/dirt-samples/sid/010_sidsnares.ogg"
  , "jungbass:0": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/012_short.ogg"
  , "jungbass:1": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/013_sub_to_open_wah.ogg"
  , "jungbass:2": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/015_sustained_3_octave.ogg"
  , "jungbass:3": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/014_sustained_2_octave.ogg"
  , "jungbass:4": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/001_fat_808_sub.ogg"
  , "jungbass:5": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/009_junglesine3.ogg"
  , "jungbass:6": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/006_junglerevbass.ogg"
  , "jungbass:7": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/003_glide_up_down_sub.ogg"
  , "jungbass:8": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/011_shiphorn_tekstep_bass.ogg"
  , "jungbass:9": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/008_junglesine2.ogg"
  , "jungbass:10": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/018_synthy_round.ogg"
  , "jungbass:11": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/019_thin_808_sub.ogg"
  , "jungbass:12": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/007_junglesine.ogg"
  , "jungbass:13": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/017_sweep_me_low_bass.ogg"
  , "jungbass:14": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/016_sustained_deep_low.ogg"
  , "jungbass:15": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/000_deeep_n_low.ogg"
  , "jungbass:16": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/005_jungasubdown.ogg"
  , "jungbass:17": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/010_mega_jungasubdown.ogg"
  , "jungbass:18": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/002_fukubass2.ogg"
  , "jungbass:19": "https://klank-share.s3.amazonaws.com/dirt-samples/jungbass/004_gliding_808_sub.ogg"
  , "gabba:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/003_3.ogg"
  , "gabba:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/001_1.ogg"
  , "gabba:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/000_0.ogg"
  , "gabba:3": "https://klank-share.s3.amazonaws.com/dirt-samples/gabba/002_2.ogg"
  , "crow:0": "https://klank-share.s3.amazonaws.com/dirt-samples/crow/000_crow.ogg"
  , "crow:1": "https://klank-share.s3.amazonaws.com/dirt-samples/crow/002_crow3.ogg"
  , "crow:2": "https://klank-share.s3.amazonaws.com/dirt-samples/crow/001_crow2.ogg"
  , "crow:3": "https://klank-share.s3.amazonaws.com/dirt-samples/crow/003_crow4.ogg"
  , "birds3:0": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/006_15.ogg"
  , "birds3:1": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/012_3.ogg"
  , "birds3:2": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/002_11.ogg"
  , "birds3:3": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/004_13.ogg"
  , "birds3:4": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/000_1.ogg"
  , "birds3:5": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/017_8.ogg"
  , "birds3:6": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/015_6.ogg"
  , "birds3:7": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/014_5.ogg"
  , "birds3:8": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/005_14.ogg"
  , "birds3:9": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/003_12.ogg"
  , "birds3:10": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/007_16.ogg"
  , "birds3:11": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/011_2.ogg"
  , "birds3:12": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/018_9.ogg"
  , "birds3:13": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/016_7.ogg"
  , "birds3:14": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/013_4.ogg"
  , "birds3:15": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/001_10.ogg"
  , "birds3:16": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/010_19.ogg"
  , "birds3:17": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/009_18.ogg"
  , "birds3:18": "https://klank-share.s3.amazonaws.com/dirt-samples/birds3/008_17.ogg"
  , "auto:0": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/001_break-ride.ogg"
  , "auto:1": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/008_shake1.ogg"
  , "auto:2": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/006_sd.ogg"
  , "auto:3": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/010_shake3.ogg"
  , "auto:4": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/000_break-kick.ogg"
  , "auto:5": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/009_shake2.ogg"
  , "auto:6": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/004_kick.ogg"
  , "auto:7": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/005_kick-ambient.ogg"
  , "auto:8": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/002_break-sd.ogg"
  , "auto:9": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/003_cymrev.ogg"
  , "auto:10": "https://klank-share.s3.amazonaws.com/dirt-samples/auto/007_sd-ambient.ogg"
  , "mute:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/007_FH_C-Sharp-5_SCF.ogg"
  , "mute:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/004_FH_B4_SCF.ogg"
  , "mute:2": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/019_FH_F5_SCF.ogg"
  , "mute:3": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/003_FH_B4_SC.ogg"
  , "mute:4": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/016_FH_F-Sharp-4_SCF.ogg"
  , "mute:5": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/025_FH_G-Sharp-4_SCF.ogg"
  , "mute:6": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/002_FH_B3_SCF.ogg"
  , "mute:7": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/013_FH_E3_SC.ogg"
  , "mute:8": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/009_FH_D-Sharp-4_SCF.ogg"
  , "mute:9": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/011_FH_D3_SC.ogg"
  , "mute:10": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/014_FH_E3_SCF.ogg"
  , "mute:11": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/017_FH_F3_SC.ogg"
  , "mute:12": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/026_FH_G2_SC.ogg"
  , "mute:13": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/006_FH_C-Sharp-3_SCF.ogg"
  , "mute:14": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/023_FH_G-Sharp-3_SCF.ogg"
  , "mute:15": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/008_FH_C4_SCF.ogg"
  , "mute:16": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/021_FH_G-Sharp-2_SCF.ogg"
  , "mute:17": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/020_FH_G-Sharp-2_SC.ogg"
  , "mute:18": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/001_FH_A3_SCF.ogg"
  , "mute:19": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/000_FH_A-Sharp-2_SCF.ogg"
  , "mute:20": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/012_FH_D3_SCF.ogg"
  , "mute:21": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/024_FH_G-Sharp-4_SC.ogg"
  , "mute:22": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/015_FH_F-Sharp-4_SC.ogg"
  , "mute:23": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/005_FH_C-Sharp-3_SC.ogg"
  , "mute:24": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/022_FH_G-Sharp-3_SC.ogg"
  , "mute:25": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/010_FH_D-Sharp-5_SCF.ogg"
  , "mute:26": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/027_FH_G2_SCF.ogg"
  , "mute:27": "https://klank-share.s3.amazonaws.com/dirt-samples/mute/018_FH_F3_SCF.ogg"
  , "sheffield:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sheffield/jakeinsects.ogg"
  , "casio:0": "https://klank-share.s3.amazonaws.com/dirt-samples/casio/high.ogg"
  , "casio:1": "https://klank-share.s3.amazonaws.com/dirt-samples/casio/low.ogg"
  , "casio:2": "https://klank-share.s3.amazonaws.com/dirt-samples/casio/noise.ogg"
  , "sax:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/016_notes121fsharp.ogg"
  , "sax:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/013_notes121eflat2.ogg"
  , "sax:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/018_notes121g.ogg"
  , "sax:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/020_notes121gsharp.ogg"
  , "sax:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/000_notes121a.ogg"
  , "sax:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/019_notes121g2.ogg"
  , "sax:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/005_notes121c.ogg"
  , "sax:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/008_notes121csharp2.ogg"
  , "sax:8": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/015_notes121f2.ogg"
  , "sax:9": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/010_notes121e.ogg"
  , "sax:10": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/006_notes121c2.ogg"
  , "sax:11": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/002_notes121b.ogg"
  , "sax:12": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/021_notes121gsharp2.ogg"
  , "sax:13": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/009_notes121d.ogg"
  , "sax:14": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/004_notes121bflat2.ogg"
  , "sax:15": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/017_notes121fsharp2.ogg"
  , "sax:16": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/014_notes121f.ogg"
  , "sax:17": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/011_notes121e2.ogg"
  , "sax:18": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/001_notes121a2.ogg"
  , "sax:19": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/003_notes121bflat.ogg"
  , "sax:20": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/007_notes121csharp.ogg"
  , "sax:21": "https://klank-share.s3.amazonaws.com/dirt-samples/sax/012_notes121eflat.ogg"
  , "circus:0": "https://klank-share.s3.amazonaws.com/dirt-samples/circus/000_bounce.ogg"
  , "circus:1": "https://klank-share.s3.amazonaws.com/dirt-samples/circus/001_miss.ogg"
  , "circus:2": "https://klank-share.s3.amazonaws.com/dirt-samples/circus/002_pop.ogg"
  , "yeah:0": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/002_Sound11.ogg"
  , "yeah:1": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/009_Sound20.ogg"
  , "yeah:2": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/018_Sound29.ogg"
  , "yeah:3": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/024_Sound36.ogg"
  , "yeah:4": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/000_Sound0.ogg"
  , "yeah:5": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/012_Sound23.ogg"
  , "yeah:6": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/029_Sound8.ogg"
  , "yeah:7": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/001_Sound10.ogg"
  , "yeah:8": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/006_Sound17.ogg"
  , "yeah:9": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/028_Sound7.ogg"
  , "yeah:10": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/015_Sound26.ogg"
  , "yeah:11": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/026_Sound5.ogg"
  , "yeah:12": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/011_Sound22.ogg"
  , "yeah:13": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/003_Sound13.ogg"
  , "yeah:14": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/016_Sound27.ogg"
  , "yeah:15": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/030_Sound9.ogg"
  , "yeah:16": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/020_Sound32.ogg"
  , "yeah:17": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/019_Sound3.ogg"
  , "yeah:18": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/008_Sound19.ogg"
  , "yeah:19": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/007_Sound18.ogg"
  , "yeah:20": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/014_Sound25.ogg"
  , "yeah:21": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/027_Sound6.ogg"
  , "yeah:22": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/017_Sound28.ogg"
  , "yeah:23": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/022_Sound34.ogg"
  , "yeah:24": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/013_Sound24.ogg"
  , "yeah:25": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/023_Sound35.ogg"
  , "yeah:26": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/021_Sound33.ogg"
  , "yeah:27": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/005_Sound15.ogg"
  , "yeah:28": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/010_Sound21.ogg"
  , "yeah:29": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/025_Sound4.ogg"
  , "yeah:30": "https://klank-share.s3.amazonaws.com/dirt-samples/yeah/004_Sound14.ogg"
  , "oc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL2.ogg"
  , "oc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL3.ogg"
  , "oc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL4.ogg"
  , "oc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/oc/OPCL1.ogg"
  , "alex:0": "https://klank-share.s3.amazonaws.com/dirt-samples/alex/000_drumx1.ogg"
  , "alex:1": "https://klank-share.s3.amazonaws.com/dirt-samples/alex/001_drumx2.ogg"
  , "can:0": "https://klank-share.s3.amazonaws.com/dirt-samples/can/002_11.ogg"
  , "can:1": "https://klank-share.s3.amazonaws.com/dirt-samples/can/011_7.ogg"
  , "can:2": "https://klank-share.s3.amazonaws.com/dirt-samples/can/008_4.ogg"
  , "can:3": "https://klank-share.s3.amazonaws.com/dirt-samples/can/004_13.ogg"
  , "can:4": "https://klank-share.s3.amazonaws.com/dirt-samples/can/010_6.ogg"
  , "can:5": "https://klank-share.s3.amazonaws.com/dirt-samples/can/006_2.ogg"
  , "can:6": "https://klank-share.s3.amazonaws.com/dirt-samples/can/000_1.ogg"
  , "can:7": "https://klank-share.s3.amazonaws.com/dirt-samples/can/012_8.ogg"
  , "can:8": "https://klank-share.s3.amazonaws.com/dirt-samples/can/005_14.ogg"
  , "can:9": "https://klank-share.s3.amazonaws.com/dirt-samples/can/003_12.ogg"
  , "can:10": "https://klank-share.s3.amazonaws.com/dirt-samples/can/013_9.ogg"
  , "can:11": "https://klank-share.s3.amazonaws.com/dirt-samples/can/001_10.ogg"
  , "can:12": "https://klank-share.s3.amazonaws.com/dirt-samples/can/009_5.ogg"
  , "can:13": "https://klank-share.s3.amazonaws.com/dirt-samples/can/007_3.ogg"
  , "jungle:0": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit2.ogg"
  , "jungle:1": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4kick1.ogg"
  , "jungle:2": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4closedhh.ogg"
  , "jungle:3": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4snare1.ogg"
  , "jungle:4": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4openhh.ogg"
  , "jungle:5": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit1.ogg"
  , "jungle:6": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4crash.ogg"
  , "jungle:7": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4snare2.ogg"
  , "jungle:8": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4hit3.ogg"
  , "jungle:9": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4kick2.ogg"
  , "jungle:10": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4perc2.ogg"
  , "jungle:11": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4ride.ogg"
  , "jungle:12": "https://klank-share.s3.amazonaws.com/dirt-samples/jungle/jungle4perc1.ogg"
  , "moog:0": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/006_Mighty_Moog_G4.ogg"
  , "moog:1": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/000_Mighty_Moog_C2.ogg"
  , "moog:2": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/004_Mighty_Moog_G2.ogg"
  , "moog:3": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/002_Mighty_Moog_C4.ogg"
  , "moog:4": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/003_Mighty_Moog_G1.ogg"
  , "moog:5": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/005_Mighty_Moog_G3.ogg"
  , "moog:6": "https://klank-share.s3.amazonaws.com/dirt-samples/moog/001_Mighty_Moog_C3.ogg"
  , "h:0": "https://klank-share.s3.amazonaws.com/dirt-samples/h/000_0_da0.ogg"
  , "h:1": "https://klank-share.s3.amazonaws.com/dirt-samples/h/001_0_da0-200-percent-_1000_0_R.ogg"
  , "h:2": "https://klank-share.s3.amazonaws.com/dirt-samples/h/006_4_tock.ogg"
  , "h:3": "https://klank-share.s3.amazonaws.com/dirt-samples/h/004_2_da2.ogg"
  , "h:4": "https://klank-share.s3.amazonaws.com/dirt-samples/h/003_1_da1.ogg"
  , "h:5": "https://klank-share.s3.amazonaws.com/dirt-samples/h/002_0_da0-50-percent-_1000_0_R.ogg"
  , "h:6": "https://klank-share.s3.amazonaws.com/dirt-samples/h/005_3_tick.ogg"
  , "wind:0": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/004_wind4.ogg"
  , "wind:1": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/000_wind1.ogg"
  , "wind:2": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/009_wind9.ogg"
  , "wind:3": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/005_wind5.ogg"
  , "wind:4": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/007_wind7.ogg"
  , "wind:5": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/001_wind10.ogg"
  , "wind:6": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/006_wind6.ogg"
  , "wind:7": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/003_wind3.ogg"
  , "wind:8": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/008_wind8.ogg"
  , "wind:9": "https://klank-share.s3.amazonaws.com/dirt-samples/wind/002_wind2.ogg"
  , "rs:0": "https://klank-share.s3.amazonaws.com/dirt-samples/rs/rytm-rs.ogg"
  , "em2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/3.ogg"
  , "em2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/5.ogg"
  , "em2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/0.ogg"
  , "em2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/1.ogg"
  , "em2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/2.ogg"
  , "em2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/em2/4.ogg"
  , "noise2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/007_7.ogg"
  , "noise2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/003_3.ogg"
  , "noise2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/001_1.ogg"
  , "noise2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/005_5.ogg"
  , "noise2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/006_6.ogg"
  , "noise2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/004_4.ogg"
  , "noise2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/000_0.ogg"
  , "noise2:7": "https://klank-share.s3.amazonaws.com/dirt-samples/noise2/002_2.ogg"
  , "foo:0": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/014_thumpnbr.ogg"
  , "foo:1": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/001_frtwbrak.ogg"
  , "foo:2": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/013_mrestick.ogg"
  , "foo:3": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/023_btstmpbr.ogg"
  , "foo:4": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/009_hrdlvbrk.ogg"
  , "foo:5": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/002_fullbrk.ogg"
  , "foo:6": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/007_lkfnkybr.ogg"
  , "foo:7": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/004_brtalhat.ogg"
  , "foo:8": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/019_crshstmp.ogg"
  , "foo:9": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/020_fststick.ogg"
  , "foo:10": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/008_clnkrbrk.ogg"
  , "foo:11": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/022_cnfssbrk.ogg"
  , "foo:12": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/000_samthfdbrk.ogg"
  , "foo:13": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/005_nicedrop.ogg"
  , "foo:14": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/018_nlzdelit.ogg"
  , "foo:15": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/011_eyebreak.ogg"
  , "foo:16": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/012_vctrybrk.ogg"
  , "foo:17": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/010_dngrsbrk.ogg"
  , "foo:18": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/006_fastfaze.ogg"
  , "foo:19": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/016_bllstmp.ogg"
  , "foo:20": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/025_pssbreak.ogg"
  , "foo:21": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/003_drydrmmr.ogg"
  , "foo:22": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/015_sdstckbr.ogg"
  , "foo:23": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/024_rlltnbrk.ogg"
  , "foo:24": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/026_vintage.ogg"
  , "foo:25": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/021_sqezdbrk.ogg"
  , "foo:26": "https://klank-share.s3.amazonaws.com/dirt-samples/foo/017_gattabrk.ogg"
  , "armora:0": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/001_chopper.ogg"
  , "armora:1": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/000_beep.ogg"
  , "armora:2": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/002_hiexp.ogg"
  , "armora:3": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/006_tankfire.ogg"
  , "armora:4": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/005_tankeng.ogg"
  , "armora:5": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/003_jeepfire.ogg"
  , "armora:6": "https://klank-share.s3.amazonaws.com/dirt-samples/armora/004_loexp.ogg"
  , "bend:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bend/002_6.ogg"
  , "bend:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bend/003_8.ogg"
  , "bend:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bend/001_5.ogg"
  , "bend:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bend/000_2.ogg"
  , "newnotes:0": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/006_14.ogg"
  , "newnotes:1": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/013_8.ogg"
  , "newnotes:2": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/007_2.ogg"
  , "newnotes:3": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/001_1.ogg"
  , "newnotes:4": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/004_12.ogg"
  , "newnotes:5": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/011_6.ogg"
  , "newnotes:6": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/009_4.ogg"
  , "newnotes:7": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/002_10.ogg"
  , "newnotes:8": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/003_11.ogg"
  , "newnotes:9": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/010_5.ogg"
  , "newnotes:10": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/008_3.ogg"
  , "newnotes:11": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/012_7.ogg"
  , "newnotes:12": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/014_9.ogg"
  , "newnotes:13": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/000_0.ogg"
  , "newnotes:14": "https://klank-share.s3.amazonaws.com/dirt-samples/newnotes/005_13.ogg"
  , "pebbles:0": "https://klank-share.s3.amazonaws.com/dirt-samples/pebbles/90788__kmoon__pebbles-scrape-drag-foot.ogg"
  , "mash2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/001_output2.ogg"
  , "mash2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/003_output4.ogg"
  , "mash2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/000_output.ogg"
  , "mash2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/mash2/002_output3.ogg"
  , "diphone2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/001_kd1_400.ogg"
  , "diphone2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/003_kd1_402.ogg"
  , "diphone2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/010_kd3_012.ogg"
  , "diphone2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/008_kd3_010.ogg"
  , "diphone2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/006_kd1_405.ogg"
  , "diphone2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/004_kd1_403.ogg"
  , "diphone2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/005_kd1_404.ogg"
  , "diphone2:7": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/002_kd1_401.ogg"
  , "diphone2:8": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/000_kd1_399.ogg"
  , "diphone2:9": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/007_kd1_406.ogg"
  , "diphone2:10": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/011_kd3_013.ogg"
  , "diphone2:11": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone2/009_kd3_011.ogg"
  , "e:0": "https://klank-share.s3.amazonaws.com/dirt-samples/e/002_e3.ogg"
  , "e:1": "https://klank-share.s3.amazonaws.com/dirt-samples/e/001_e2.ogg"
  , "e:2": "https://klank-share.s3.amazonaws.com/dirt-samples/e/000_e1.ogg"
  , "e:3": "https://klank-share.s3.amazonaws.com/dirt-samples/e/003_e4.ogg"
  , "e:4": "https://klank-share.s3.amazonaws.com/dirt-samples/e/004_e5.ogg"
  , "e:5": "https://klank-share.s3.amazonaws.com/dirt-samples/e/005_e6.ogg"
  , "e:6": "https://klank-share.s3.amazonaws.com/dirt-samples/e/006_e7.ogg"
  , "e:7": "https://klank-share.s3.amazonaws.com/dirt-samples/e/007_e8.ogg"
  , "bubble:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/004_bub4.ogg"
  , "bubble:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/003_bub3.ogg"
  , "bubble:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/002_bub2.ogg"
  , "bubble:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/007_bub7.ogg"
  , "bubble:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/000_bub0.ogg"
  , "bubble:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/006_bub6.ogg"
  , "bubble:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/001_bub1.ogg"
  , "bubble:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bubble/005_bub5.ogg"
  , "insect:0": "https://klank-share.s3.amazonaws.com/dirt-samples/insect/000_everglades_conehead.ogg"
  , "insect:1": "https://klank-share.s3.amazonaws.com/dirt-samples/insect/002_seashore_meadow_katydid.ogg"
  , "insect:2": "https://klank-share.s3.amazonaws.com/dirt-samples/insect/001_robust_shieldback.ogg"
  , "ade:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/007_microsound.ogg"
  , "ade:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/005_fanbass.ogg"
  , "ade:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/004_fan.ogg"
  , "ade:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/009_rise.ogg"
  , "ade:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/006_glass.ogg"
  , "ade:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/008_rhythm.ogg"
  , "ade:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/000_011112-bassline.ogg"
  , "ade:7": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/002_20020506-01.ogg"
  , "ade:8": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/001_011112-melody.ogg"
  , "ade:9": "https://klank-share.s3.amazonaws.com/dirt-samples/ade/003_abt.ogg"
  , "glitch:0": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/000_BD.ogg"
  , "glitch:1": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/004_OH.ogg"
  , "glitch:2": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/001_CB.ogg"
  , "glitch:3": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/006_P2.ogg"
  , "glitch:4": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/002_FX.ogg"
  , "glitch:5": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/005_P1.ogg"
  , "glitch:6": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/007_SN.ogg"
  , "glitch:7": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch/003_HH.ogg"
  , "haw:0": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-kick.ogg"
  , "haw:1": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-hh.ogg"
  , "haw:2": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-sd.ogg"
  , "haw:3": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-short1.ogg"
  , "haw:4": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-pop.ogg"
  , "haw:5": "https://klank-share.s3.amazonaws.com/dirt-samples/haw/hawaiian-short2.ogg"
  , "popkick:0": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/007_7.ogg"
  , "popkick:1": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/009_9.ogg"
  , "popkick:2": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/003_3.ogg"
  , "popkick:3": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/008_8.ogg"
  , "popkick:4": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/005_5.ogg"
  , "popkick:5": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/006_6.ogg"
  , "popkick:6": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/000_1.ogg"
  , "popkick:7": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/004_4.ogg"
  , "popkick:8": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/001_10.ogg"
  , "popkick:9": "https://klank-share.s3.amazonaws.com/dirt-samples/popkick/002_2.ogg"
  , "breaks157:0": "https://klank-share.s3.amazonaws.com/dirt-samples/breaks157/000_PLEAD.ogg"
  , "gtr:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0001_cleanC.ogg"
  , "gtr:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0002_ovrdC.ogg"
  , "gtr:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gtr/0003_distC.ogg"
  , "clubkick:0": "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/3.ogg"
  , "clubkick:1": "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/5.ogg"
  , "clubkick:2": "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/1.ogg"
  , "clubkick:3": "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/2.ogg"
  , "clubkick:4": "https://klank-share.s3.amazonaws.com/dirt-samples/clubkick/4.ogg"
  , "breaks152:0": "https://klank-share.s3.amazonaws.com/dirt-samples/breaks152/000_AMEN.ogg"
  , "x_808bd:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0075.ogg"
  , "x_808bd:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0025.ogg"
  , "x_808bd:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2575.ogg"
  , "x_808bd:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1000.ogg"
  , "x_808bd:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0010.ogg"
  , "x_808bd:5": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2510.ogg"
  , "x_808bd:6": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1025.ogg"
  , "x_808bd:7": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7525.ogg"
  , "x_808bd:8": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5025.ogg"
  , "x_808bd:9": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7500.ogg"
  , "x_808bd:10": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7550.ogg"
  , "x_808bd:11": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5050.ogg"
  , "x_808bd:12": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2550.ogg"
  , "x_808bd:13": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2500.ogg"
  , "x_808bd:14": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1075.ogg"
  , "x_808bd:15": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1010.ogg"
  , "x_808bd:16": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0050.ogg"
  , "x_808bd:17": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD0000.ogg"
  , "x_808bd:18": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7510.ogg"
  , "x_808bd:19": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5000.ogg"
  , "x_808bd:20": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD1050.ogg"
  , "x_808bd:21": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5075.ogg"
  , "x_808bd:22": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD5010.ogg"
  , "x_808bd:23": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD7575.ogg"
  , "x_808bd:24": "https://klank-share.s3.amazonaws.com/dirt-samples/808bd/BD2525.ogg"
  , "miniyeah:0": "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/003_Sound36.ogg"
  , "miniyeah:1": "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/001_Sound11.ogg"
  , "miniyeah:2": "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/000_Sound0.ogg"
  , "miniyeah:3": "https://klank-share.s3.amazonaws.com/dirt-samples/miniyeah/002_Sound23.ogg"
  , "if:0": "https://klank-share.s3.amazonaws.com/dirt-samples/if/003_snarl2b.ogg"
  , "if:1": "https://klank-share.s3.amazonaws.com/dirt-samples/if/004_snarl3b.ogg"
  , "if:2": "https://klank-share.s3.amazonaws.com/dirt-samples/if/000_gab.ogg"
  , "if:3": "https://klank-share.s3.amazonaws.com/dirt-samples/if/001_gab2.ogg"
  , "if:4": "https://klank-share.s3.amazonaws.com/dirt-samples/if/002_snarl1b.ogg"
  , "x_808oh:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH10.ogg"
  , "x_808oh:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH50.ogg"
  , "x_808oh:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH75.ogg"
  , "x_808oh:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH25.ogg"
  , "x_808oh:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808oh/OH00.ogg"
  , "house:0": "https://klank-share.s3.amazonaws.com/dirt-samples/house/000_BD.ogg"
  , "house:1": "https://klank-share.s3.amazonaws.com/dirt-samples/house/004_OH.ogg"
  , "house:2": "https://klank-share.s3.amazonaws.com/dirt-samples/house/001_CB.ogg"
  , "house:3": "https://klank-share.s3.amazonaws.com/dirt-samples/house/006_P2.ogg"
  , "house:4": "https://klank-share.s3.amazonaws.com/dirt-samples/house/002_FX.ogg"
  , "house:5": "https://klank-share.s3.amazonaws.com/dirt-samples/house/005_P1.ogg"
  , "house:6": "https://klank-share.s3.amazonaws.com/dirt-samples/house/007_SN.ogg"
  , "house:7": "https://klank-share.s3.amazonaws.com/dirt-samples/house/003_HH.ogg"
  , "dr:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/039_048.ogg"
  , "dr:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/036_045.ogg"
  , "dr:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/041_050.ogg"
  , "dr:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/027_036.ogg"
  , "dr:4": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/022_031.ogg"
  , "dr:5": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/026_035.ogg"
  , "dr:6": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/023_032.ogg"
  , "dr:7": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/009_014.ogg"
  , "dr:8": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/029_038.ogg"
  , "dr:9": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/037_046.ogg"
  , "dr:10": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/035_044.ogg"
  , "dr:11": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/024_033.ogg"
  , "dr:12": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/006_009.ogg"
  , "dr:13": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/021_030.ogg"
  , "dr:14": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/018_027.ogg"
  , "dr:15": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/008_011.ogg"
  , "dr:16": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/025_034.ogg"
  , "dr:17": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/014_023.ogg"
  , "dr:18": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/020_029.ogg"
  , "dr:19": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/034_043.ogg"
  , "dr:20": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/032_041.ogg"
  , "dr:21": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/011_016.ogg"
  , "dr:22": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/017_026.ogg"
  , "dr:23": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/012_017.ogg"
  , "dr:24": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/028_037.ogg"
  , "dr:25": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/040_049.ogg"
  , "dr:26": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/007_010.ogg"
  , "dr:27": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/010_015.ogg"
  , "dr:28": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/031_040.ogg"
  , "dr:29": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/019_028.ogg"
  , "dr:30": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/030_039.ogg"
  , "dr:31": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/001_003.ogg"
  , "dr:32": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/013_019.ogg"
  , "dr:33": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/038_047.ogg"
  , "dr:34": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/003_005.ogg"
  , "dr:35": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/000_002.ogg"
  , "dr:36": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/004_006.ogg"
  , "dr:37": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/033_042.ogg"
  , "dr:38": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/002_004.ogg"
  , "dr:39": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/005_008.ogg"
  , "dr:40": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/015_024.ogg"
  , "dr:41": "https://klank-share.s3.amazonaws.com/dirt-samples/dr/016_025.ogg"
  , "dr55:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/003_DR55_snare.ogg"
  , "dr55:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/001_DR55_kick.ogg"
  , "dr55:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/002_DR55_rimshot.ogg"
  , "dr55:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dr55/000_DR55_hi_hat.ogg"
  , "bass:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bass/001_bass2.ogg"
  , "bass:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bass/003_bass4.ogg"
  , "bass:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bass/002_bass3.ogg"
  , "bass:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bass/000_bass1.ogg"
  , "ho:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD8.ogg"
  , "ho:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHODA.ogg"
  , "ho:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD2.ogg"
  , "ho:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD6.ogg"
  , "ho:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD0.ogg"
  , "ho:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ho/HHOD4.ogg"
  , "hardkick:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_37.ogg"
  , "hardkick:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_41.ogg"
  , "hardkick:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_53.ogg"
  , "hardkick:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_39.ogg"
  , "hardkick:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_52.ogg"
  , "hardkick:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hardkick/VEC1_BD_Distortion_06.ogg"
  , "x_808hc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC25.ogg"
  , "x_808hc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC75.ogg"
  , "x_808hc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC00.ogg"
  , "x_808hc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC50.ogg"
  , "x_808hc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808hc/HC10.ogg"
  , "hit:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/laser-powered-sword.ogg"
  , "hit:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/ufo-take-me-away.ogg"
  , "hit:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/robot-fart.ogg"
  , "hit:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/zap-to-crack.ogg"
  , "hit:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/bandpass-blart.ogg"
  , "hit:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hit/electro-pling1.ogg"
  , "breaks165:0": "https://klank-share.s3.amazonaws.com/dirt-samples/breaks165/000_RAWCLN.ogg"
  , "dr2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/004_DR110OHT.ogg"
  , "dr2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/002_DR110CYM.ogg"
  , "dr2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/005_DR110SNR.ogg"
  , "dr2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/000_DR110CHT.ogg"
  , "dr2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/003_DR110KIK.ogg"
  , "dr2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/dr2/001_DR110CLP.ogg"
  , "tabla:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/023_lower5_hit.ogg"
  , "tabla:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/024_lower6_hit.ogg"
  , "tabla:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/003_dead_hit1.ogg"
  , "tabla:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/011_hi_hit2.ogg"
  , "tabla:4": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/015_hi_hit6.ogg"
  , "tabla:5": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/001_bass_flick2.ogg"
  , "tabla:6": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/005_dead_hit3.ogg"
  , "tabla:7": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/010_hi_hit10.ogg"
  , "tabla:8": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/020_lower2_hit.ogg"
  , "tabla:9": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/007_hi_flick1.ogg"
  , "tabla:10": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/014_hi_hit5.ogg"
  , "tabla:11": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/013_hi_hit4.ogg"
  , "tabla:12": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/009_hi_hit1.ogg"
  , "tabla:13": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/025_lower_hits_descending.ogg"
  , "tabla:14": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/008_hi_flick2.ogg"
  , "tabla:15": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/021_lower3_hit.ogg"
  , "tabla:16": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/006_d_sharp_hit.ogg"
  , "tabla:17": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/012_hi_hit3.ogg"
  , "tabla:18": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/016_hi_hit7.ogg"
  , "tabla:19": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/017_hi_hit8.ogg"
  , "tabla:20": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/018_hi_hit9.ogg"
  , "tabla:21": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/002_bass_lick1.ogg"
  , "tabla:22": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/000_bass_flick1.ogg"
  , "tabla:23": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/022_lower4_hit.ogg"
  , "tabla:24": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/019_lower1_hit.ogg"
  , "tabla:25": "https://klank-share.s3.amazonaws.com/dirt-samples/tabla/004_dead_hit2.ogg"
  , "dork2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/0.ogg"
  , "dork2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/1.ogg"
  , "dork2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/2.ogg"
  , "dork2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dork2/4.ogg"
  , "hc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD4.ogg"
  , "hc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD2.ogg"
  , "hc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD6.ogg"
  , "hc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCDA.ogg"
  , "hc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD8.ogg"
  , "hc:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hc/HHCD0.ogg"
  , "bassfoo:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/001_1.ogg"
  , "bassfoo:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/000_0.ogg"
  , "bassfoo:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bassfoo/002_2.ogg"
  , "seawolf:0": "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/001_shiphit.ogg"
  , "seawolf:1": "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/000_minehit.ogg"
  , "seawolf:2": "https://klank-share.s3.amazonaws.com/dirt-samples/seawolf/002_torpedo.ogg"
  , "cp:0": "https://klank-share.s3.amazonaws.com/dirt-samples/cp/HANDCLP0.ogg"
  , "cp:1": "https://klank-share.s3.amazonaws.com/dirt-samples/cp/HANDCLPA.ogg"
  , "jazz:0": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/000_BD.ogg"
  , "jazz:1": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/004_OH.ogg"
  , "jazz:2": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/001_CB.ogg"
  , "jazz:3": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/006_P2.ogg"
  , "jazz:4": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/002_FX.ogg"
  , "jazz:5": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/005_P1.ogg"
  , "jazz:6": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/007_SN.ogg"
  , "jazz:7": "https://klank-share.s3.amazonaws.com/dirt-samples/jazz/003_HH.ogg"
  , "juno:0": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/00_juno_raw_low.ogg"
  , "juno:1": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/06_juno_release_low.ogg"
  , "juno:2": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/09_juno_pad_c_minor_filter.ogg"
  , "juno:3": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/02_juno_raw_high.ogg"
  , "juno:4": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/08_juno_release_high.ogg"
  , "juno:5": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/07_juno_release_mid.ogg"
  , "juno:6": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/11_juno_pad_c_minor_noise.ogg"
  , "juno:7": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/04_juno_chorus_mid.ogg"
  , "juno:8": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/10_juno_pad_c_minor_no_filter.ogg"
  , "juno:9": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/03_juno_chorus_low.ogg"
  , "juno:10": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/05_juno_chorus_high.ogg"
  , "juno:11": "https://klank-share.s3.amazonaws.com/dirt-samples/juno/01_juno_raw_mid.ogg"
  , "birds:0": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/007_7.ogg"
  , "birds:1": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/009_9.ogg"
  , "birds:2": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/003_3.ogg"
  , "birds:3": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/008_8.ogg"
  , "birds:4": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/005_5.ogg"
  , "birds:5": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/006_6.ogg"
  , "birds:6": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/000_1.ogg"
  , "birds:7": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/004_4.ogg"
  , "birds:8": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/001_10.ogg"
  , "birds:9": "https://klank-share.s3.amazonaws.com/dirt-samples/birds/002_2.ogg"
  , "glasstap:0": "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/001_1.ogg"
  , "glasstap:1": "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/000_0.ogg"
  , "glasstap:2": "https://klank-share.s3.amazonaws.com/dirt-samples/glasstap/002_2.ogg"
  , "bass1:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18083__daven__08-sb-bass-hit-c.ogg"
  , "bass1:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18101__daven__26-sb-bass-hit-f.ogg"
  , "bass1:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18080__daven__05-sb-bass-hit-c.ogg"
  , "bass1:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18093__daven__18-sb-bass-hit-c.ogg"
  , "bass1:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18099__daven__24-sb-bass-hit-f.ogg"
  , "bass1:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18097__daven__22-sb-bass-hit-f.ogg"
  , "bass1:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18082__daven__07-sb-bass-hit-c.ogg"
  , "bass1:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18100__daven__25-sb-bass-hit-f.ogg"
  , "bass1:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18077__daven__02-sb-bass-hit-c.ogg"
  , "bass1:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18094__daven__19-sb-bass-hit-f.ogg"
  , "bass1:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18089__daven__14-sb-bass-hit-c.ogg"
  , "bass1:11": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18103__daven__28-sb-bass-hit-f.ogg"
  , "bass1:12": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18086__daven__11-sb-bass-hit-c.ogg"
  , "bass1:13": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18088__daven__13-sb-bass-hit-c.ogg"
  , "bass1:14": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18085__daven__10-sb-bass-hit-c.ogg"
  , "bass1:15": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18102__daven__27-sb-bass-hit-f.ogg"
  , "bass1:16": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18096__daven__21-sb-bass-hit-f.ogg"
  , "bass1:17": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18087__daven__12-sb-bass-hit-c.ogg"
  , "bass1:18": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18104__daven__29-sb-bass-hit-f.ogg"
  , "bass1:19": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18081__daven__06-sb-bass-hit-c.ogg"
  , "bass1:20": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18105__daven__30-sb-bass-hit-f.ogg"
  , "bass1:21": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18076__daven__01-sb-bass-hit-c.ogg"
  , "bass1:22": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18078__daven__03-sb-bass-hit-c.ogg"
  , "bass1:23": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18084__daven__09-sb-bass-hit-c.ogg"
  , "bass1:24": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18095__daven__20-sb-bass-hit-f.ogg"
  , "bass1:25": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18090__daven__15-sb-bass-hit-c.ogg"
  , "bass1:26": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18098__daven__23-sb-bass-hit-f.ogg"
  , "bass1:27": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18092__daven__17-sb-bass-hit-c.ogg"
  , "bass1:28": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18091__daven__16-sb-bass-hit-c.ogg"
  , "bass1:29": "https://klank-share.s3.amazonaws.com/dirt-samples/bass1/18079__daven__04-sb-bass-hit-c.ogg"
  , "hh27:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/008_hh27perc1.ogg"
  , "hh27:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/007_hh27opendhh.ogg"
  , "hh27:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/001_hh27crash.ogg"
  , "hh27:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/005_hh27kick1.ogg"
  , "hh27:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/010_hh27ride.ogg"
  , "hh27:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/000_hh27closedhh.ogg"
  , "hh27:6": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/012_hh27snare2.ogg"
  , "hh27:7": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/003_hh27hit2.ogg"
  , "hh27:8": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/002_hh27hit1.ogg"
  , "hh27:9": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/009_hh27perc2.ogg"
  , "hh27:10": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/011_hh27snare1.ogg"
  , "hh27:11": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/004_hh27hit3.ogg"
  , "hh27:12": "https://klank-share.s3.amazonaws.com/dirt-samples/hh27/006_hh27kick2.ogg"
  , "x_808:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808/CP.ogg"
  , "x_808:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808/MA.ogg"
  , "x_808:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808/CB.ogg"
  , "x_808:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808/CH.ogg"
  , "x_808:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808/CL.ogg"
  , "x_808:5": "https://klank-share.s3.amazonaws.com/dirt-samples/808/RS.ogg"
  , "notes:0": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/006_14.ogg"
  , "notes:1": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/013_8.ogg"
  , "notes:2": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/007_2.ogg"
  , "notes:3": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/001_1.ogg"
  , "notes:4": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/004_12.ogg"
  , "notes:5": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/011_6.ogg"
  , "notes:6": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/009_4.ogg"
  , "notes:7": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/002_10.ogg"
  , "notes:8": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/003_11.ogg"
  , "notes:9": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/010_5.ogg"
  , "notes:10": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/008_3.ogg"
  , "notes:11": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/012_7.ogg"
  , "notes:12": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/014_9.ogg"
  , "notes:13": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/000_0.ogg"
  , "notes:14": "https://klank-share.s3.amazonaws.com/dirt-samples/notes/005_13.ogg"
  , "xmas:0": "https://klank-share.s3.amazonaws.com/dirt-samples/xmas/170535__cognito-perceptu__merry-christmas.ogg"
  , "erk:0": "https://klank-share.s3.amazonaws.com/dirt-samples/erk/000_123.ogg"
  , "x_808mt:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT00.ogg"
  , "x_808mt:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT25.ogg"
  , "x_808mt:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT50.ogg"
  , "x_808mt:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT75.ogg"
  , "x_808mt:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808mt/MT10.ogg"
  , "lighter:0": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/007_7.ogg"
  , "lighter:1": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/015_15.ogg"
  , "lighter:2": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/009_9.ogg"
  , "lighter:3": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/023_23.ogg"
  , "lighter:4": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/012_12.ogg"
  , "lighter:5": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/020_20.ogg"
  , "lighter:6": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/016_16.ogg"
  , "lighter:7": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/003_3.ogg"
  , "lighter:8": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/014_14.ogg"
  , "lighter:9": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/018_18.ogg"
  , "lighter:10": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/030_30.ogg"
  , "lighter:11": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/025_25.ogg"
  , "lighter:12": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/017_17.ogg"
  , "lighter:13": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/019_19.ogg"
  , "lighter:14": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/013_13.ogg"
  , "lighter:15": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/001_1.ogg"
  , "lighter:16": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/026_26.ogg"
  , "lighter:17": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/024_24.ogg"
  , "lighter:18": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/008_8.ogg"
  , "lighter:19": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/029_29.ogg"
  , "lighter:20": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/005_5.ogg"
  , "lighter:21": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/028_28.ogg"
  , "lighter:22": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/006_6.ogg"
  , "lighter:23": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/010_10.ogg"
  , "lighter:24": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/021_21.ogg"
  , "lighter:25": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/004_4.ogg"
  , "lighter:26": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/031_31.ogg"
  , "lighter:27": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/011_11.ogg"
  , "lighter:28": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/032_32.ogg"
  , "lighter:29": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/027_27.ogg"
  , "lighter:30": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/022_22.ogg"
  , "lighter:31": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/000_0.ogg"
  , "lighter:32": "https://klank-share.s3.amazonaws.com/dirt-samples/lighter/002_2.ogg"
  , "cb:0": "https://klank-share.s3.amazonaws.com/dirt-samples/cb/rytm-cb.ogg"
  , "subroc3d:0": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/009_11.ogg"
  , "subroc3d:1": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/004_05.ogg"
  , "subroc3d:2": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/002_03.ogg"
  , "subroc3d:3": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/001_02.ogg"
  , "subroc3d:4": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/007_08.ogg"
  , "subroc3d:5": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/006_07.ogg"
  , "subroc3d:6": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/005_06.ogg"
  , "subroc3d:7": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/010_12.ogg"
  , "subroc3d:8": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/000_01.ogg"
  , "subroc3d:9": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/003_04.ogg"
  , "subroc3d:10": "https://klank-share.s3.amazonaws.com/dirt-samples/subroc3d/008_09.ogg"
  , "ul:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/006_ulnoisey-snare.ogg"
  , "ul:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/000_beep.ogg"
  , "ul:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/005_ulnoisey-run.ogg"
  , "ul:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/008_ulsnare-reverb.ogg"
  , "ul:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/009_ulsnare-reverse.ogg"
  , "ul:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/003_ulkick.ogg"
  , "ul:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/002_ulhh.ogg"
  , "ul:7": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/007_ulsnare.ogg"
  , "ul:8": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/001_little-whip.ogg"
  , "ul:9": "https://klank-share.s3.amazonaws.com/dirt-samples/ul/004_ulnoisey-kick.ogg"
  , "gab:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab07.ogg"
  , "gab:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab03.ogg"
  , "gab:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab05.ogg"
  , "gab:3": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab09.ogg"
  , "gab:4": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab04.ogg"
  , "gab:5": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab02.ogg"
  , "gab:6": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab06.ogg"
  , "gab:7": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab08.ogg"
  , "gab:8": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab01.ogg"
  , "gab:9": "https://klank-share.s3.amazonaws.com/dirt-samples/gab/gab10.ogg"
  , "monsterb:0": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/002_tongue.ogg"
  , "monsterb:1": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/005_zap.ogg"
  , "monsterb:2": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/003_warping.ogg"
  , "monsterb:3": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/001_laughter.ogg"
  , "monsterb:4": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/004_wolfman.ogg"
  , "monsterb:5": "https://klank-share.s3.amazonaws.com/dirt-samples/monsterb/000_jumpdown.ogg"
  , "diphone:0": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/016_kd1_018.ogg"
  , "diphone:1": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/037_kd1_039.ogg"
  , "diphone:2": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/004_kd1_006.ogg"
  , "diphone:3": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/015_kd1_017.ogg"
  , "diphone:4": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/026_kd1_028.ogg"
  , "diphone:5": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/011_kd1_013.ogg"
  , "diphone:6": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/031_kd1_033.ogg"
  , "diphone:7": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/010_kd1_012.ogg"
  , "diphone:8": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/020_kd1_022.ogg"
  , "diphone:9": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/007_kd1_009.ogg"
  , "diphone:10": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/006_kd1_008.ogg"
  , "diphone:11": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/032_kd1_034.ogg"
  , "diphone:12": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/028_kd1_030.ogg"
  , "diphone:13": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/017_kd1_019.ogg"
  , "diphone:14": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/036_kd1_038.ogg"
  , "diphone:15": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/002_kd1_004.ogg"
  , "diphone:16": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/018_kd1_020.ogg"
  , "diphone:17": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/003_kd1_005.ogg"
  , "diphone:18": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/024_kd1_026.ogg"
  , "diphone:19": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/012_kd1_014.ogg"
  , "diphone:20": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/022_kd1_024.ogg"
  , "diphone:21": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/009_kd1_011.ogg"
  , "diphone:22": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/008_kd1_010.ogg"
  , "diphone:23": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/027_kd1_029.ogg"
  , "diphone:24": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/001_kd1_003.ogg"
  , "diphone:25": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/005_kd1_007.ogg"
  , "diphone:26": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/034_kd1_036.ogg"
  , "diphone:27": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/019_kd1_021.ogg"
  , "diphone:28": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/013_kd1_015.ogg"
  , "diphone:29": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/023_kd1_025.ogg"
  , "diphone:30": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/033_kd1_035.ogg"
  , "diphone:31": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/030_kd1_032.ogg"
  , "diphone:32": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/014_kd1_016.ogg"
  , "diphone:33": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/021_kd1_023.ogg"
  , "diphone:34": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/029_kd1_031.ogg"
  , "diphone:35": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/035_kd1_037.ogg"
  , "diphone:36": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/000_kd1_002.ogg"
  , "diphone:37": "https://klank-share.s3.amazonaws.com/dirt-samples/diphone/025_kd1_027.ogg"
  , "clak:0": "https://klank-share.s3.amazonaws.com/dirt-samples/clak/000_clak1.ogg"
  , "clak:1": "https://klank-share.s3.amazonaws.com/dirt-samples/clak/001_clak2.ogg"
  , "sitar:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/006_d_minor_sitar_chordb.ogg"
  , "sitar:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/003_d_maj_sitar_chordd.ogg"
  , "sitar:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/000_d_maj_sitar_chorda.ogg"
  , "sitar:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/005_d_minor_sitar_chorda.ogg"
  , "sitar:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/004_d_maj_sitar_chorde.ogg"
  , "sitar:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/001_d_maj_sitar_chordb.ogg"
  , "sitar:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/007_d_minor_sitar_chordc.ogg"
  , "sitar:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sitar/002_d_maj_sitar_chordc.ogg"
  , "ab:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/000_ab2closedhh.ogg"
  , "ab:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/007_ab2perc1.ogg"
  , "ab:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/005_ab2kick2.ogg"
  , "ab:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/002_ab2hit1.ogg"
  , "ab:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/004_ab2kick1.ogg"
  , "ab:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/003_ab2hit2.ogg"
  , "ab:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/009_ab2ride.ogg"
  , "ab:7": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/001_ab2crash.ogg"
  , "ab:8": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/011_ab2snare2.ogg"
  , "ab:9": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/006_ab2openhh.ogg"
  , "ab:10": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/010_ab2snare1.ogg"
  , "ab:11": "https://klank-share.s3.amazonaws.com/dirt-samples/ab/008_ab2perc2.ogg"
  , "cr:0": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED6.ogg"
  , "cr:1": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED0.ogg"
  , "cr:2": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDEDA.ogg"
  , "cr:3": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED4.ogg"
  , "cr:4": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED8.ogg"
  , "cr:5": "https://klank-share.s3.amazonaws.com/dirt-samples/cr/RIDED2.ogg"
  , "tacscan:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/021_warp.ogg"
  , "tacscan:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/002_03.ogg"
  , "tacscan:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/018_sthrust.ogg"
  , "tacscan:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/019_tunnelh.ogg"
  , "tacscan:4": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/001_02.ogg"
  , "tacscan:5": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/007_flight1.ogg"
  , "tacscan:6": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/010_flight4.ogg"
  , "tacscan:7": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/014_plaser.ogg"
  , "tacscan:8": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/006_eshot.ogg"
  , "tacscan:9": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/013_pexpl.ogg"
  , "tacscan:10": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/004_credit.ogg"
  , "tacscan:11": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/011_flight5.ogg"
  , "tacscan:12": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/020_tunnelw.ogg"
  , "tacscan:13": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/008_flight2.ogg"
  , "tacscan:14": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/012_formatn.ogg"
  , "tacscan:15": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/009_flight3.ogg"
  , "tacscan:16": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/017_slaser.ogg"
  , "tacscan:17": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/015_pship.ogg"
  , "tacscan:18": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/000_01.ogg"
  , "tacscan:19": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/005_eexpl.ogg"
  , "tacscan:20": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/003_1up.ogg"
  , "tacscan:21": "https://klank-share.s3.amazonaws.com/dirt-samples/tacscan/016_sexpl.ogg"
  , "v:0": "https://klank-share.s3.amazonaws.com/dirt-samples/v/001_v_blipp02.ogg"
  , "v:1": "https://klank-share.s3.amazonaws.com/dirt-samples/v/004_v_snare01.ogg"
  , "v:2": "https://klank-share.s3.amazonaws.com/dirt-samples/v/000_b_blipp01.ogg"
  , "v:3": "https://klank-share.s3.amazonaws.com/dirt-samples/v/002_v_perc3.ogg"
  , "v:4": "https://klank-share.s3.amazonaws.com/dirt-samples/v/003_v_perc5.ogg"
  , "v:5": "https://klank-share.s3.amazonaws.com/dirt-samples/v/005_v_snare02.ogg"
  , "bd:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAAAD0.ogg"
  , "bd:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D3.ogg"
  , "bd:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0DA.ogg"
  , "bd:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7AAD0.ogg"
  , "bd:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D0.ogg"
  , "bd:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0DA.ogg"
  , "bd:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0AAD0.ogg"
  , "bd:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7AADA.ogg"
  , "bd:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D7.ogg"
  , "bd:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAAADA.ogg"
  , "bd:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D7.ogg"
  , "bd:11": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0A7.ogg"
  , "bd:12": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0D3.ogg"
  , "bd:13": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0AADA.ogg"
  , "bd:14": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BTAA0D0.ogg"
  , "bd:15": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0D3.ogg"
  , "bd:16": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3AAD0.ogg"
  , "bd:17": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D7.ogg"
  , "bd:18": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D0.ogg"
  , "bd:19": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3AADA.ogg"
  , "bd:20": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT0A0D0.ogg"
  , "bd:21": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0D3.ogg"
  , "bd:22": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT3A0DA.ogg"
  , "bd:23": "https://klank-share.s3.amazonaws.com/dirt-samples/bd/BT7A0DA.ogg"
  , "rm:0": "https://klank-share.s3.amazonaws.com/dirt-samples/rm/RIMA.ogg"
  , "rm:1": "https://klank-share.s3.amazonaws.com/dirt-samples/rm/RIM0.ogg"
  , "blue:0": "https://klank-share.s3.amazonaws.com/dirt-samples/blue/aya.ogg"
  , "blue:1": "https://klank-share.s3.amazonaws.com/dirt-samples/blue/howdoesitfeel.ogg"
  , "latibro:0": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/001_Sound3.ogg"
  , "latibro:1": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/006_Sound8.ogg"
  , "latibro:2": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/003_Sound5.ogg"
  , "latibro:3": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/000_Sound2.ogg"
  , "latibro:4": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/002_Sound4.ogg"
  , "latibro:5": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/005_Sound7.ogg"
  , "latibro:6": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/007_Sound9.ogg"
  , "latibro:7": "https://klank-share.s3.amazonaws.com/dirt-samples/latibro/004_Sound6.ogg"
  , "dr_few:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/005_020.ogg"
  , "dr_few:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/000_001.ogg"
  , "dr_few:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/003_013.ogg"
  , "dr_few:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/006_021.ogg"
  , "dr_few:4": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/004_018.ogg"
  , "dr_few:5": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/002_012.ogg"
  , "dr_few:6": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/007_022.ogg"
  , "dr_few:7": "https://klank-share.s3.amazonaws.com/dirt-samples/dr_few/001_007.ogg"
  , "rave2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_choir01.ogg"
  , "rave2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/electric_ping01.ogg"
  , "rave2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass04.ogg"
  , "rave2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass03.ogg"
  , "rave2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass02.ogg"
  , "rave2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/rave2/rave_bass01.ogg"
  , "koy:0": "https://klank-share.s3.amazonaws.com/dirt-samples/koy/01_left.ogg"
  , "koy:1": "https://klank-share.s3.amazonaws.com/dirt-samples/koy/02_right.ogg"
  , "glitch2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/000_BD.ogg"
  , "glitch2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/004_OH.ogg"
  , "glitch2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/001_CB.ogg"
  , "glitch2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/006_P2.ogg"
  , "glitch2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/002_FX.ogg"
  , "glitch2:5": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/005_P1.ogg"
  , "glitch2:6": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/007_SN.ogg"
  , "glitch2:7": "https://klank-share.s3.amazonaws.com/dirt-samples/glitch2/003_HH.ogg"
  , "hmm:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hmm/hmm.ogg"
  , "arp:0": "https://klank-share.s3.amazonaws.com/dirt-samples/arp/000_arp2.ogg"
  , "arp:1": "https://klank-share.s3.amazonaws.com/dirt-samples/arp/001_arp.ogg"
  , "made2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/made2/output.ogg"
  , "uxay:0": "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/002_foo.ogg"
  , "uxay:1": "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/001_erk.ogg"
  , "uxay:2": "https://klank-share.s3.amazonaws.com/dirt-samples/uxay/000_bar.ogg"
  , "stomp:0": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/007_7.ogg"
  , "stomp:1": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/003_2.ogg"
  , "stomp:2": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/009_9.ogg"
  , "stomp:3": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/001_0_2.ogg"
  , "stomp:4": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/008_8.ogg"
  , "stomp:5": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/005_5.ogg"
  , "stomp:6": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/006_6.ogg"
  , "stomp:7": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/004_3.ogg"
  , "stomp:8": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/002_1.ogg"
  , "stomp:9": "https://klank-share.s3.amazonaws.com/dirt-samples/stomp/000_0.ogg"
  , "tech:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1kick1.ogg"
  , "tech:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit3.ogg"
  , "tech:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1kick2.ogg"
  , "tech:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1ride.ogg"
  , "tech:4": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1snare1.ogg"
  , "tech:5": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1openhh.ogg"
  , "tech:6": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1perc2.ogg"
  , "tech:7": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit2.ogg"
  , "tech:8": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1closedhh.ogg"
  , "tech:9": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1perc1.ogg"
  , "tech:10": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1snare2.ogg"
  , "tech:11": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1crash.ogg"
  , "tech:12": "https://klank-share.s3.amazonaws.com/dirt-samples/tech/tn1hit1.ogg"
  , "sn:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S3.ogg"
  , "sn:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3S7.ogg"
  , "sn:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7SA.ogg"
  , "sn:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7SA.ogg"
  , "sn:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S3.ogg"
  , "sn:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TASA.ogg"
  , "sn:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3SA.ogg"
  , "sn:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S7.ogg"
  , "sn:8": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7SA.ogg"
  , "sn:9": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S7.ogg"
  , "sn:10": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TAS7.ogg"
  , "sn:11": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3SA.ogg"
  , "sn:12": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7S3.ogg"
  , "sn:13": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7S3.ogg"
  , "sn:14": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T3S3.ogg"
  , "sn:15": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3S7.ogg"
  , "sn:16": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATAS3.ogg"
  , "sn:17": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T7S7.ogg"
  , "sn:18": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7S7.ogg"
  , "sn:19": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S3.ogg"
  , "sn:20": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATASA.ogg"
  , "sn:21": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TASA.ogg"
  , "sn:22": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TAS3.ogg"
  , "sn:23": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3S7.ogg"
  , "sn:24": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TAS7.ogg"
  , "sn:25": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S7.ogg"
  , "sn:26": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3S3.ogg"
  , "sn:27": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S7.ogg"
  , "sn:28": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3SA.ogg"
  , "sn:29": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0SA.ogg"
  , "sn:30": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0S0.ogg"
  , "sn:31": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3SA.ogg"
  , "sn:32": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TAS7.ogg"
  , "sn:33": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0S0.ogg"
  , "sn:34": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S3.ogg"
  , "sn:35": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T0S0.ogg"
  , "sn:36": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7S7.ogg"
  , "sn:37": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T0SA.ogg"
  , "sn:38": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0SA.ogg"
  , "sn:39": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT0S0.ogg"
  , "sn:40": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0TAS3.ogg"
  , "sn:41": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T3S7.ogg"
  , "sn:42": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3T7S3.ogg"
  , "sn:43": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7S3.ogg"
  , "sn:44": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT7SA.ogg"
  , "sn:45": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7TAS3.ogg"
  , "sn:46": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T0SA.ogg"
  , "sn:47": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STATAS7.ogg"
  , "sn:48": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/STAT3S3.ogg"
  , "sn:49": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST7T3S3.ogg"
  , "sn:50": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST3TASA.ogg"
  , "sn:51": "https://klank-share.s3.amazonaws.com/dirt-samples/sn/ST0T7S7.ogg"
  , "less:0": "https://klank-share.s3.amazonaws.com/dirt-samples/less/bass2.ogg"
  , "less:1": "https://klank-share.s3.amazonaws.com/dirt-samples/less/kicklesshuman.ogg"
  , "less:2": "https://klank-share.s3.amazonaws.com/dirt-samples/less/snare.ogg"
  , "less:3": "https://klank-share.s3.amazonaws.com/dirt-samples/less/hhxx.ogg"
  , "off:0": "https://klank-share.s3.amazonaws.com/dirt-samples/off/000_01.ogg"
  , "x_808sd:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2575.ogg"
  , "x_808sd:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2510.ogg"
  , "x_808sd:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2550.ogg"
  , "x_808sd:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7500.ogg"
  , "x_808sd:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1075.ogg"
  , "x_808sd:5": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7550.ogg"
  , "x_808sd:6": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1000.ogg"
  , "x_808sd:7": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0050.ogg"
  , "x_808sd:8": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5050.ogg"
  , "x_808sd:9": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0010.ogg"
  , "x_808sd:10": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0025.ogg"
  , "x_808sd:11": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5025.ogg"
  , "x_808sd:12": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7510.ogg"
  , "x_808sd:13": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5010.ogg"
  , "x_808sd:14": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7525.ogg"
  , "x_808sd:15": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0000.ogg"
  , "x_808sd:16": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5075.ogg"
  , "x_808sd:17": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD7575.ogg"
  , "x_808sd:18": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD5000.ogg"
  , "x_808sd:19": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1025.ogg"
  , "x_808sd:20": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2500.ogg"
  , "x_808sd:21": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1010.ogg"
  , "x_808sd:22": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD2525.ogg"
  , "x_808sd:23": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD1050.ogg"
  , "x_808sd:24": "https://klank-share.s3.amazonaws.com/dirt-samples/808sd/SD0075.ogg"
  , "trump:0": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/007_trumpstabe.ogg"
  , "trump:1": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/008_trumpstabg.ogg"
  , "trump:2": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/002_tightstabe.ogg"
  , "trump:3": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/004_trumpfunk107a.ogg"
  , "trump:4": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/006_trumpstabblowoct.ogg"
  , "trump:5": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/003_tightstabg.ogg"
  , "trump:6": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/005_trumpstabb.ogg"
  , "trump:7": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/000_tightstabb.ogg"
  , "trump:8": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/010_trumptightstabschord.ogg"
  , "trump:9": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/001_tightstabblowoct.ogg"
  , "trump:10": "https://klank-share.s3.amazonaws.com/dirt-samples/trump/009_trumpstabschord.ogg"
  , "bev:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bev/01-stereo.ogg"
  , "bev:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bev/00-mono.ogg"
  , "pad:0": "https://klank-share.s3.amazonaws.com/dirt-samples/pad/angelpads.ogg"
  , "pad:1": "https://klank-share.s3.amazonaws.com/dirt-samples/pad/bellpad-harmonics.ogg"
  , "pad:2": "https://klank-share.s3.amazonaws.com/dirt-samples/pad/alien-monolith-pad.ogg"
  , "led:0": "https://klank-share.s3.amazonaws.com/dirt-samples/led/000_foo.ogg"
  , "perc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/005_perc5.ogg"
  , "perc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/003_perc3.ogg"
  , "perc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/000_perc0.ogg"
  , "perc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/002_perc2.ogg"
  , "perc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/001_perc1.ogg"
  , "perc:5": "https://klank-share.s3.amazonaws.com/dirt-samples/perc/004_perc4.ogg"
  , "pluck:0": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_B3_PI.ogg"
  , "pluck:1": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G-Sharp-2_PI.ogg"
  , "pluck:2": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G2_PI.ogg"
  , "pluck:3": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_C3_PI.ogg"
  , "pluck:4": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A1_PI.ogg"
  , "pluck:5": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D4_PI.ogg"
  , "pluck:6": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G3_PI.ogg"
  , "pluck:7": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A3_PI.ogg"
  , "pluck:8": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_E1_PI.ogg"
  , "pluck:9": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_G1_PI.ogg"
  , "pluck:10": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D2_PI.ogg"
  , "pluck:11": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_F1_PI.ogg"
  , "pluck:12": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_A-Sharp-2_PI.ogg"
  , "pluck:13": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_E2_PI.ogg"
  , "pluck:14": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_D-Sharp-3_PI.ogg"
  , "pluck:15": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_F3_PI.ogg"
  , "pluck:16": "https://klank-share.s3.amazonaws.com/dirt-samples/pluck/BS_B1_PI.ogg"
  , "bleep:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/harsh-whippleszoot.ogg"
  , "bleep:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/pc_beep.ogg"
  , "bleep:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/vidgame-bleep2.ogg"
  , "bleep:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/tinynote.ogg"
  , "bleep:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/shortsaxish.ogg"
  , "bleep:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/stereo-star-trek-pager.ogg"
  , "bleep:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/echo-blip-thing.ogg"
  , "bleep:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/watch_beep.ogg"
  , "bleep:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/checkpoint-hit.ogg"
  , "bleep:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/vidgame-bleep1.ogg"
  , "bleep:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/simpletone.ogg"
  , "bleep:11": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/tiniest.ogg"
  , "bleep:12": "https://klank-share.s3.amazonaws.com/dirt-samples/bleep/boip.ogg"
  , "ht:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D7.ogg"
  , "ht:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7DA.ogg"
  , "ht:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD7.ogg"
  , "ht:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D0.ogg"
  , "ht:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D0.ogg"
  , "ht:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD0.ogg"
  , "ht:6": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTAD3.ogg"
  , "ht:7": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D3.ogg"
  , "ht:8": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0DA.ogg"
  , "ht:9": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D7.ogg"
  , "ht:10": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT7D7.ogg"
  , "ht:11": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3DA.ogg"
  , "ht:12": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D0.ogg"
  , "ht:13": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HTADA.ogg"
  , "ht:14": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT3D3.ogg"
  , "ht:15": "https://klank-share.s3.amazonaws.com/dirt-samples/ht/HT0D3.ogg"
  , "ades4:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/01.ogg"
  , "ades4:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/06.ogg"
  , "ades4:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/04.ogg"
  , "ades4:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/03.ogg"
  , "ades4:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/02.ogg"
  , "ades4:5": "https://klank-share.s3.amazonaws.com/dirt-samples/ades4/05.ogg"
  , "proc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/proc/001_3.ogg"
  , "proc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/proc/000_2.ogg"
  , "gretsch:0": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/021_snareghost.ogg"
  , "gretsch:1": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/001_brushlotom.ogg"
  , "gretsch:2": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/005_closedhathard.ogg"
  , "gretsch:3": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/017_openhat.ogg"
  , "gretsch:4": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/018_ridebell.ogg"
  , "gretsch:5": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/006_cowbell.ogg"
  , "gretsch:6": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/016_openclosedhat.ogg"
  , "gretsch:7": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/012_hitom.ogg"
  , "gretsch:8": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/015_lotom.ogg"
  , "gretsch:9": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/008_cymbalrub.ogg"
  , "gretsch:10": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/020_snare.ogg"
  , "gretsch:11": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/014_kicksnare.ogg"
  , "gretsch:12": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/009_flam.ogg"
  , "gretsch:13": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/010_foothat.ogg"
  , "gretsch:14": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/003_brushsnareghost.ogg"
  , "gretsch:15": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/007_cymbalgrab.ogg"
  , "gretsch:16": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/022_snarehard.ogg"
  , "gretsch:17": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/023_snareslack.ogg"
  , "gretsch:18": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/019_ridecymbal.ogg"
  , "gretsch:19": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/013_kick.ogg"
  , "gretsch:20": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/004_closedhat.ogg"
  , "gretsch:21": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/002_brushsnare.ogg"
  , "gretsch:22": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/000_brushhitom.ogg"
  , "gretsch:23": "https://klank-share.s3.amazonaws.com/dirt-samples/gretsch/011_foothat2.ogg"
  , "outdoor:0": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/3.ogg"
  , "outdoor:1": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/5.ogg"
  , "outdoor:2": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/1.ogg"
  , "outdoor:3": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/2.ogg"
  , "outdoor:4": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/4.ogg"
  , "outdoor:5": "https://klank-share.s3.amazonaws.com/dirt-samples/outdoor/6.ogg"
  , "techno:0": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/003_4.ogg"
  , "techno:1": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/005_6.ogg"
  , "techno:2": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/001_1.ogg"
  , "techno:3": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/002_3.ogg"
  , "techno:4": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/006_7.ogg"
  , "techno:5": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/000_0.ogg"
  , "techno:6": "https://klank-share.s3.amazonaws.com/dirt-samples/techno/004_5.ogg"
  , "ulgab:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab4.ogg"
  , "ulgab:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab2.ogg"
  , "ulgab:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab1.ogg"
  , "ulgab:3": "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab3.ogg"
  , "ulgab:4": "https://klank-share.s3.amazonaws.com/dirt-samples/ulgab/gab5.ogg"
  , "breaks125:0": "https://klank-share.s3.amazonaws.com/dirt-samples/breaks125/016_bllstmp.ogg"
  , "breaks125:1": "https://klank-share.s3.amazonaws.com/dirt-samples/breaks125/015_sdstckbr.ogg"
  , "bin:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bin/001_0.ogg"
  , "bin:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bin/000_bin1.ogg"
  , "x_808mc:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC10.ogg"
  , "x_808mc:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC75.ogg"
  , "x_808mc:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC50.ogg"
  , "x_808mc:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC00.ogg"
  , "x_808mc:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808mc/MC25.ogg"
  , "lt:0": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTADA.ogg"
  , "lt:1": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD0.ogg"
  , "lt:2": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D0.ogg"
  , "lt:3": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD7.ogg"
  , "lt:4": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D7.ogg"
  , "lt:5": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LTAD3.ogg"
  , "lt:6": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D7.ogg"
  , "lt:7": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D0.ogg"
  , "lt:8": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D3.ogg"
  , "lt:9": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D0.ogg"
  , "lt:10": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7D3.ogg"
  , "lt:11": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0D3.ogg"
  , "lt:12": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT7DA.ogg"
  , "lt:13": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT0DA.ogg"
  , "lt:14": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3D7.ogg"
  , "lt:15": "https://klank-share.s3.amazonaws.com/dirt-samples/lt/LT3DA.ogg"
  , "amencutup:0": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/022_AMENCUT_023.ogg"
  , "amencutup:1": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/023_AMENCUT_024.ogg"
  , "amencutup:2": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/003_AMENCUT_004.ogg"
  , "amencutup:3": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/028_AMENCUT_029.ogg"
  , "amencutup:4": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/000_AMENCUT_001.ogg"
  , "amencutup:5": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/010_AMENCUT_011.ogg"
  , "amencutup:6": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/029_AMENCUT_030.ogg"
  , "amencutup:7": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/014_AMENCUT_015.ogg"
  , "amencutup:8": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/027_AMENCUT_028.ogg"
  , "amencutup:9": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/024_AMENCUT_025.ogg"
  , "amencutup:10": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/031_AMENCUT_032.ogg"
  , "amencutup:11": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/020_AMENCUT_021.ogg"
  , "amencutup:12": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/002_AMENCUT_003.ogg"
  , "amencutup:13": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/008_AMENCUT_009.ogg"
  , "amencutup:14": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/016_AMENCUT_017.ogg"
  , "amencutup:15": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/015_AMENCUT_016.ogg"
  , "amencutup:16": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/017_AMENCUT_018.ogg"
  , "amencutup:17": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/006_AMENCUT_007.ogg"
  , "amencutup:18": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/004_AMENCUT_005.ogg"
  , "amencutup:19": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/019_AMENCUT_020.ogg"
  , "amencutup:20": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/026_AMENCUT_027.ogg"
  , "amencutup:21": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/007_AMENCUT_008.ogg"
  , "amencutup:22": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/030_AMENCUT_031.ogg"
  , "amencutup:23": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/021_AMENCUT_022.ogg"
  , "amencutup:24": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/009_AMENCUT_010.ogg"
  , "amencutup:25": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/025_AMENCUT_026.ogg"
  , "amencutup:26": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/012_AMENCUT_013.ogg"
  , "amencutup:27": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/013_AMENCUT_014.ogg"
  , "amencutup:28": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/001_AMENCUT_002.ogg"
  , "amencutup:29": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/018_AMENCUT_019.ogg"
  , "amencutup:30": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/005_AMENCUT_006.ogg"
  , "amencutup:31": "https://klank-share.s3.amazonaws.com/dirt-samples/amencutup/011_AMENCUT_012.ogg"
  , "drum:0": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/000_drum1.ogg"
  , "drum:1": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/002_drum3.ogg"
  , "drum:2": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/005_drum6.ogg"
  , "drum:3": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/001_drum2.ogg"
  , "drum:4": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/004_drum5.ogg"
  , "drum:5": "https://klank-share.s3.amazonaws.com/dirt-samples/drum/003_drum4.ogg"
  , "coins:0": "https://klank-share.s3.amazonaws.com/dirt-samples/coins/coins.ogg"
  , "industrial:0": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/020_21.ogg"
  , "industrial:1": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/031_32.ogg"
  , "industrial:2": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/012_13.ogg"
  , "industrial:3": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/009_10.ogg"
  , "industrial:4": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/004_05.ogg"
  , "industrial:5": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/021_22.ogg"
  , "industrial:6": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/002_03.ogg"
  , "industrial:7": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/026_27.ogg"
  , "industrial:8": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/014_15.ogg"
  , "industrial:9": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/025_26.ogg"
  , "industrial:10": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/027_28.ogg"
  , "industrial:11": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/001_02.ogg"
  , "industrial:12": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/023_24.ogg"
  , "industrial:13": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/007_08.ogg"
  , "industrial:14": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/010_11.ogg"
  , "industrial:15": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/030_31.ogg"
  , "industrial:16": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/006_07.ogg"
  , "industrial:17": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/013_14.ogg"
  , "industrial:18": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/015_16.ogg"
  , "industrial:19": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/024_25.ogg"
  , "industrial:20": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/022_23.ogg"
  , "industrial:21": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/005_06.ogg"
  , "industrial:22": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/028_29.ogg"
  , "industrial:23": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/019_20.ogg"
  , "industrial:24": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/011_12.ogg"
  , "industrial:25": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/016_17.ogg"
  , "industrial:26": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/017_18.ogg"
  , "industrial:27": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/029_30.ogg"
  , "industrial:28": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/000_01.ogg"
  , "industrial:29": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/003_04.ogg"
  , "industrial:30": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/018_19.ogg"
  , "industrial:31": "https://klank-share.s3.amazonaws.com/dirt-samples/industrial/008_09.ogg"
  , "tink:0": "https://klank-share.s3.amazonaws.com/dirt-samples/tink/001_tink2.ogg"
  , "tink:1": "https://klank-share.s3.amazonaws.com/dirt-samples/tink/000_tink1.ogg"
  , "tink:2": "https://klank-share.s3.amazonaws.com/dirt-samples/tink/003_tink4.ogg"
  , "tink:3": "https://klank-share.s3.amazonaws.com/dirt-samples/tink/002_tink3.ogg"
  , "tink:4": "https://klank-share.s3.amazonaws.com/dirt-samples/tink/004_tink5.ogg"
  , "co:0": "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP2.ogg"
  , "co:1": "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP3.ogg"
  , "co:2": "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP4.ogg"
  , "co:3": "https://klank-share.s3.amazonaws.com/dirt-samples/co/CLOP1.ogg"
  , "fest:0": "https://klank-share.s3.amazonaws.com/dirt-samples/fest/000_foo.ogg"
  , "feelfx:0": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/boschwitz.ogg"
  , "feelfx:1": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/silent.ogg"
  , "feelfx:2": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/bwawp.ogg"
  , "feelfx:3": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/blnk.ogg"
  , "feelfx:4": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/machine.ogg"
  , "feelfx:5": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/doing.ogg"
  , "feelfx:6": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/laser-buzz.ogg"
  , "feelfx:7": "https://klank-share.s3.amazonaws.com/dirt-samples/feelfx/surfactant_15_xilo.ogg"
  , "x_808cy:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7525.ogg"
  , "x_808cy:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7500.ogg"
  , "x_808cy:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2550.ogg"
  , "x_808cy:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1075.ogg"
  , "x_808cy:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5025.ogg"
  , "x_808cy:5": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0000.ogg"
  , "x_808cy:6": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2510.ogg"
  , "x_808cy:7": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0010.ogg"
  , "x_808cy:8": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5000.ogg"
  , "x_808cy:9": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0075.ogg"
  , "x_808cy:10": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7550.ogg"
  , "x_808cy:11": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5075.ogg"
  , "x_808cy:12": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1010.ogg"
  , "x_808cy:13": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2525.ogg"
  , "x_808cy:14": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2575.ogg"
  , "x_808cy:15": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0025.ogg"
  , "x_808cy:16": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY2500.ogg"
  , "x_808cy:17": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5010.ogg"
  , "x_808cy:18": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7510.ogg"
  , "x_808cy:19": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1025.ogg"
  , "x_808cy:20": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY7575.ogg"
  , "x_808cy:21": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1050.ogg"
  , "x_808cy:22": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY1000.ogg"
  , "x_808cy:23": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY5050.ogg"
  , "x_808cy:24": "https://klank-share.s3.amazonaws.com/dirt-samples/808cy/CY0050.ogg"
  , "world:0": "https://klank-share.s3.amazonaws.com/dirt-samples/world/bd.ogg"
  , "world:1": "https://klank-share.s3.amazonaws.com/dirt-samples/world/sn.ogg"
  , "world:2": "https://klank-share.s3.amazonaws.com/dirt-samples/world/gabbakick.ogg"
  , "f:0": "https://klank-share.s3.amazonaws.com/dirt-samples/f/000_f.ogg"
  , "numbers:0": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/3.ogg"
  , "numbers:1": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/5.ogg"
  , "numbers:2": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/0.ogg"
  , "numbers:3": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/7.ogg"
  , "numbers:4": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/1.ogg"
  , "numbers:5": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/2.ogg"
  , "numbers:6": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/4.ogg"
  , "numbers:7": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/6.ogg"
  , "numbers:8": "https://klank-share.s3.amazonaws.com/dirt-samples/numbers/8.ogg"
  , "d:0": "https://klank-share.s3.amazonaws.com/dirt-samples/d/000_d1.ogg"
  , "d:1": "https://klank-share.s3.amazonaws.com/dirt-samples/d/003_d4.ogg"
  , "d:2": "https://klank-share.s3.amazonaws.com/dirt-samples/d/001_d2.ogg"
  , "d:3": "https://klank-share.s3.amazonaws.com/dirt-samples/d/002_d3.ogg"
  , "padlong:0": "https://klank-share.s3.amazonaws.com/dirt-samples/padlong/atmospheric-abduction.ogg"
  , "sequential:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/005_Tom_Snare.ogg"
  , "sequential:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/000_Tom_Clap.ogg"
  , "sequential:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/002_Tom_Hat_Closed.ogg"
  , "sequential:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/004_Tom_Openhat.ogg"
  , "sequential:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/001_Tom_Crash.ogg"
  , "sequential:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/003_Tom_Kick.ogg"
  , "sequential:6": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/007_Tom_Tom2.ogg"
  , "sequential:7": "https://klank-share.s3.amazonaws.com/dirt-samples/sequential/006_Tom_Tom1.ogg"
  , "stab:0": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/005_stab14.ogg"
  , "stab:1": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/009_stab18.ogg"
  , "stab:2": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/014_stab22.ogg"
  , "stab:3": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/015_stab23.ogg"
  , "stab:4": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/012_stab20.ogg"
  , "stab:5": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/008_stab17.ogg"
  , "stab:6": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/020_stab7.ogg"
  , "stab:7": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/018_stab5.ogg"
  , "stab:8": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/021_stab8.ogg"
  , "stab:9": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/011_stab2.ogg"
  , "stab:10": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/010_stab19.ogg"
  , "stab:11": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/000_stab1.ogg"
  , "stab:12": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/004_stab13.ogg"
  , "stab:13": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/019_stab6.ogg"
  , "stab:14": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/022_stab9.ogg"
  , "stab:15": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/006_stab15.ogg"
  , "stab:16": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/016_stab3.ogg"
  , "stab:17": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/017_stab4.ogg"
  , "stab:18": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/013_stab21.ogg"
  , "stab:19": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/001_stab10.ogg"
  , "stab:20": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/002_stab11.ogg"
  , "stab:21": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/007_stab16.ogg"
  , "stab:22": "https://klank-share.s3.amazonaws.com/dirt-samples/stab/003_stab12.ogg"
  , "electro1:0": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/003_et1hit2.ogg"
  , "electro1:1": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/005_et1kick1.ogg"
  , "electro1:2": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/009_et1perc2.ogg"
  , "electro1:3": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/000_et1closedhh.ogg"
  , "electro1:4": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/011_et1snare1.ogg"
  , "electro1:5": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/006_et1kick2.ogg"
  , "electro1:6": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/010_et1ride.ogg"
  , "electro1:7": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/001_et1crash.ogg"
  , "electro1:8": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/012_et1snare2.ogg"
  , "electro1:9": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/004_et1hit3.ogg"
  , "electro1:10": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/007_et1openhh.ogg"
  , "electro1:11": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/008_et1perc1.ogg"
  , "electro1:12": "https://klank-share.s3.amazonaws.com/dirt-samples/electro1/002_et1hit1.ogg"
  , "ifdrums:0": "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignorehh.ogg"
  , "ifdrums:1": "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignoresd.ogg"
  , "ifdrums:2": "https://klank-share.s3.amazonaws.com/dirt-samples/ifdrums/ignorebd.ogg"
  , "invaders:0": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/010_2.ogg"
  , "invaders:1": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/012_4.ogg"
  , "invaders:2": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/006_15.ogg"
  , "invaders:3": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/002_11.ogg"
  , "invaders:4": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/004_13.ogg"
  , "invaders:5": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/013_5.ogg"
  , "invaders:6": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/001_1.ogg"
  , "invaders:7": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/005_14.ogg"
  , "invaders:8": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/015_7.ogg"
  , "invaders:9": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/016_8.ogg"
  , "invaders:10": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/003_12.ogg"
  , "invaders:11": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/007_16.ogg"
  , "invaders:12": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/014_6.ogg"
  , "invaders:13": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/017_9.ogg"
  , "invaders:14": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/009_18.ogg"
  , "invaders:15": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/000_0.ogg"
  , "invaders:16": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/008_17.ogg"
  , "invaders:17": "https://klank-share.s3.amazonaws.com/dirt-samples/invaders/011_3.ogg"
  , "dist:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/013_inddistb7ride.ogg"
  , "dist:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/005_inddistb3ride.ogg"
  , "dist:2": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/012_inddistb7.ogg"
  , "dist:3": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/006_inddistb4.ogg"
  , "dist:4": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/011_inddistb6ride.ogg"
  , "dist:5": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/009_inddistb5ride.ogg"
  , "dist:6": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/015_inddistb8ride.ogg"
  , "dist:7": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/001_inddistb2.ogg"
  , "dist:8": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/007_inddistb4ride.ogg"
  , "dist:9": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/008_inddistb5.ogg"
  , "dist:10": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/002_inddistb1ride.ogg"
  , "dist:11": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/014_inddistb8.ogg"
  , "dist:12": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/004_inddistb3.ogg"
  , "dist:13": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/010_inddistb6.ogg"
  , "dist:14": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/003_inddistb2ride.ogg"
  , "dist:15": "https://klank-share.s3.amazonaws.com/dirt-samples/dist/000_inddistb1.ogg"
  , "sundance:0": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/000_bong.ogg"
  , "sundance:1": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/003_ping1.ogg"
  , "sundance:2": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/001_explsion.ogg"
  , "sundance:3": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/005_whoosh.ogg"
  , "sundance:4": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/002_hatch.ogg"
  , "sundance:5": "https://klank-share.s3.amazonaws.com/dirt-samples/sundance/004_ping2.ogg"
  , "speech:0": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/000_Sound10.ogg"
  , "speech:1": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/003_Sound6.ogg"
  , "speech:2": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/006_Sound9.ogg"
  , "speech:3": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/002_Sound5.ogg"
  , "speech:4": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/004_Sound7.ogg"
  , "speech:5": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/001_Sound4.ogg"
  , "speech:6": "https://klank-share.s3.amazonaws.com/dirt-samples/speech/005_Sound8.ogg"
  , "toys:0": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/012_ToyNotes.ogg"
  , "toys:1": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/001_ClassicalMusic-Notes.ogg"
  , "toys:2": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/008_MusicalMedley-Words.ogg"
  , "toys:3": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/005_Colors-Words.ogg"
  , "toys:4": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/006_MusicalMedley.ogg"
  , "toys:5": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/004_Colors-Notes.ogg"
  , "toys:6": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/003_Colors.ogg"
  , "toys:7": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/009_Numbers.ogg"
  , "toys:8": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/011_Numbers-Words.ogg"
  , "toys:9": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/002_ClassicalMusic-Words.ogg"
  , "toys:10": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/000_ClassicalMusic.ogg"
  , "toys:11": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/007_MusicalMedley-Notes.ogg"
  , "toys:12": "https://klank-share.s3.amazonaws.com/dirt-samples/toys/010_Numbers-Notes.ogg"
  , "bass0:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/001_1.ogg"
  , "bass0:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/000_0.ogg"
  , "bass0:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bass0/002_2.ogg"
  , "realclaps:0": "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/3.ogg"
  , "realclaps:1": "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/1.ogg"
  , "realclaps:2": "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/2.ogg"
  , "realclaps:3": "https://klank-share.s3.amazonaws.com/dirt-samples/realclaps/4.ogg"
  , "dorkbot:0": "https://klank-share.s3.amazonaws.com/dirt-samples/dorkbot/1.ogg"
  , "dorkbot:1": "https://klank-share.s3.amazonaws.com/dirt-samples/dorkbot/2.ogg"
  , "arpy:0": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy03.ogg"
  , "arpy:1": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy01.ogg"
  , "arpy:2": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy04.ogg"
  , "arpy:3": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy06.ogg"
  , "arpy:4": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy07.ogg"
  , "arpy:5": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy09.ogg"
  , "arpy:6": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy10.ogg"
  , "arpy:7": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy11.ogg"
  , "arpy:8": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy05.ogg"
  , "arpy:9": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy02.ogg"
  , "arpy:10": "https://klank-share.s3.amazonaws.com/dirt-samples/arpy/arpy08.ogg"
  , "fire:0": "https://klank-share.s3.amazonaws.com/dirt-samples/fire/fire.ogg"
  , "hoover:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/3.ogg"
  , "hoover:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/5.ogg"
  , "hoover:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/1.ogg"
  , "hoover:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/2.ogg"
  , "hoover:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/4.ogg"
  , "hoover:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hoover/6.ogg"
  , "breath:0": "https://klank-share.s3.amazonaws.com/dirt-samples/breath/000_breath.ogg"
  , "rave:0": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/stabah.ogg"
  , "rave:1": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/doh.ogg"
  , "rave:2": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/giveit.ogg"
  , "rave:3": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/Babylon.ogg"
  , "rave:4": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/cut.ogg"
  , "rave:5": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/ourcrew.ogg"
  , "rave:6": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/prodigyloop.ogg"
  , "rave:7": "https://klank-share.s3.amazonaws.com/dirt-samples/rave/AREUREADY.ogg"
  , "bottle:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/007_4.ogg"
  , "bottle:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/002_11.ogg"
  , "bottle:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/011_8.ogg"
  , "bottle:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/004_13.ogg"
  , "bottle:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/006_3.ogg"
  , "bottle:5": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/012_9.ogg"
  , "bottle:6": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/009_6.ogg"
  , "bottle:7": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/000_1.ogg"
  , "bottle:8": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/003_12.ogg"
  , "bottle:9": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/008_5.ogg"
  , "bottle:10": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/010_7.ogg"
  , "bottle:11": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/001_10.ogg"
  , "bottle:12": "https://klank-share.s3.amazonaws.com/dirt-samples/bottle/005_2.ogg"
  , "east:0": "https://klank-share.s3.amazonaws.com/dirt-samples/east/007_taiko_2.ogg"
  , "east:1": "https://klank-share.s3.amazonaws.com/dirt-samples/east/004_shime_hi_2.ogg"
  , "east:2": "https://klank-share.s3.amazonaws.com/dirt-samples/east/000_nipon_wood_block.ogg"
  , "east:3": "https://klank-share.s3.amazonaws.com/dirt-samples/east/002_ohkawa_open.ogg"
  , "east:4": "https://klank-share.s3.amazonaws.com/dirt-samples/east/001_ohkawa_mute.ogg"
  , "east:5": "https://klank-share.s3.amazonaws.com/dirt-samples/east/006_taiko_1.ogg"
  , "east:6": "https://klank-share.s3.amazonaws.com/dirt-samples/east/003_shime_hi.ogg"
  , "east:7": "https://klank-share.s3.amazonaws.com/dirt-samples/east/005_shime_mute.ogg"
  , "east:8": "https://klank-share.s3.amazonaws.com/dirt-samples/east/008_taiko_3.ogg"
  , "linnhats:0": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/3.ogg"
  , "linnhats:1": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/5.ogg"
  , "linnhats:2": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/1.ogg"
  , "linnhats:3": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/2.ogg"
  , "linnhats:4": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/4.ogg"
  , "linnhats:5": "https://klank-share.s3.amazonaws.com/dirt-samples/linnhats/6.ogg"
  , "speedupdown:0": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/004_Sound24.ogg"
  , "speedupdown:1": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/005_Sound25.ogg"
  , "speedupdown:2": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/008_Sound28.ogg"
  , "speedupdown:3": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/007_Sound27.ogg"
  , "speedupdown:4": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/006_Sound26.ogg"
  , "speedupdown:5": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/003_Sound23.ogg"
  , "speedupdown:6": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/002_Sound22.ogg"
  , "speedupdown:7": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/001_Sound21.ogg"
  , "speedupdown:8": "https://klank-share.s3.amazonaws.com/dirt-samples/speedupdown/000_Sound20.ogg"
  , "cosmicg:0": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/013_cg_m6.ogg"
  , "cosmicg:1": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/009_cg_m2.ogg"
  , "cosmicg:2": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/001_cg_chnc.ogg"
  , "cosmicg:3": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/002_cg_dest.ogg"
  , "cosmicg:4": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/007_cg_m0.ogg"
  , "cosmicg:5": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/006_cg_gun.ogg"
  , "cosmicg:6": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/005_cg_gotm.ogg"
  , "cosmicg:7": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/014_cg_m7.ogg"
  , "cosmicg:8": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/008_cg_m1.ogg"
  , "cosmicg:9": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/011_cg_m4.ogg"
  , "cosmicg:10": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/012_cg_m5.ogg"
  , "cosmicg:11": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/010_cg_m3.ogg"
  , "cosmicg:12": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/004_cg_gotb.ogg"
  , "cosmicg:13": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/000_cg_att.ogg"
  , "cosmicg:14": "https://klank-share.s3.amazonaws.com/dirt-samples/cosmicg/003_cg_ext.ogg"
  , "jvbass:0": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/012_13.ogg"
  , "jvbass:1": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/009_10.ogg"
  , "jvbass:2": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/004_05.ogg"
  , "jvbass:3": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/002_03.ogg"
  , "jvbass:4": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/001_02.ogg"
  , "jvbass:5": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/007_08.ogg"
  , "jvbass:6": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/010_11.ogg"
  , "jvbass:7": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/006_07.ogg"
  , "jvbass:8": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/005_06.ogg"
  , "jvbass:9": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/011_12.ogg"
  , "jvbass:10": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/000_01.ogg"
  , "jvbass:11": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/003_04.ogg"
  , "jvbass:12": "https://klank-share.s3.amazonaws.com/dirt-samples/jvbass/008_09.ogg"
  , "mash:0": "https://klank-share.s3.amazonaws.com/dirt-samples/mash/0.ogg"
  , "mash:1": "https://klank-share.s3.amazonaws.com/dirt-samples/mash/1.ogg"
  , "feel:0": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/sub.ogg"
  , "feel:1": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/BD_04_d.ogg"
  , "feel:2": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/hihat029a.ogg"
  , "feel:3": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/HH_003b.ogg"
  , "feel:4": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_180.ogg"
  , "feel:5": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_223.ogg"
  , "feel:6": "https://klank-share.s3.amazonaws.com/dirt-samples/feel/Sd_139.ogg"
  , "short:0": "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-020.ogg"
  , "short:1": "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-010.ogg"
  , "short:2": "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-012.ogg"
  , "short:3": "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-snare-drum-021.ogg"
  , "short:4": "https://klank-share.s3.amazonaws.com/dirt-samples/short/sampleoftheday-gtt-fx-synth-009.ogg"
  , "incoming:0": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/000_Mattel__Snare.ogg"
  , "incoming:1": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/002_Mattel_Cymbal.ogg"
  , "incoming:2": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/004_Mattel_Kick.ogg"
  , "incoming:3": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/007_Mattel_Tom_VLow.ogg"
  , "incoming:4": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/001_Mattel__Tom_VHigh.ogg"
  , "incoming:5": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/005_Mattel_Tom_High.ogg"
  , "incoming:6": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/006_Mattel_Tom_Low.ogg"
  , "incoming:7": "https://klank-share.s3.amazonaws.com/dirt-samples/incoming/003_Mattel_Hi-Hat.ogg"
  , "flick:0": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/006_14.ogg"
  , "flick:1": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/016_square.ogg"
  , "flick:2": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/015_hi.ogg"
  , "flick:3": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/013_8.ogg"
  , "flick:4": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/007_2.ogg"
  , "flick:5": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/001_1.ogg"
  , "flick:6": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/000_square-p.ogg"
  , "flick:7": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/004_12.ogg"
  , "flick:8": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/011_6.ogg"
  , "flick:9": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/009_4.ogg"
  , "flick:10": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/002_10.ogg"
  , "flick:11": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/003_11.ogg"
  , "flick:12": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/010_5.ogg"
  , "flick:13": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/008_3.ogg"
  , "flick:14": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/012_7.ogg"
  , "flick:15": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/014_9.ogg"
  , "flick:16": "https://klank-share.s3.amazonaws.com/dirt-samples/flick/005_13.ogg"
  , "reverbkick:0": "https://klank-share.s3.amazonaws.com/dirt-samples/reverbkick/1.ogg"
  , "bass2:0": "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69988__noizemassacre__hardcore-bass-1.ogg"
  , "bass2:1": "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69989__noizemassacre__hardcore-bass-2.ogg"
  , "bass2:2": "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69992__noizemassacre__hardcore-bass-5.ogg"
  , "bass2:3": "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69991__noizemassacre__hardcore-bass-4.ogg"
  , "bass2:4": "https://klank-share.s3.amazonaws.com/dirt-samples/bass2/69990__noizemassacre__hardcore-bass-3.ogg"
  , "baa:0": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/3.ogg"
  , "baa:1": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/5.ogg"
  , "baa:2": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/7.ogg"
  , "baa:3": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/1.ogg"
  , "baa:4": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/2.ogg"
  , "baa:5": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/4.ogg"
  , "baa:6": "https://klank-share.s3.amazonaws.com/dirt-samples/baa/6.ogg"
  , "fm:0": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/bambaataa.ogg"
  , "fm:1": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/charly.ogg"
  , "fm:2": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/electro2.ogg"
  , "fm:3": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/shakedown.ogg"
  , "fm:4": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/pad.ogg"
  , "fm:5": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/808909stabs.ogg"
  , "fm:6": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal2.ogg"
  , "fm:7": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break1.ogg"
  , "fm:8": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal3.ogg"
  , "fm:9": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/femalevocal1.ogg"
  , "fm:10": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/badboy.ogg"
  , "fm:11": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/heyhey.ogg"
  , "fm:12": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break3.ogg"
  , "fm:13": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/break2.ogg"
  , "fm:14": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/stabs.ogg"
  , "fm:15": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/31seconds.ogg"
  , "fm:16": "https://klank-share.s3.amazonaws.com/dirt-samples/fm/electro1.ogg"
  , "click:0": "https://klank-share.s3.amazonaws.com/dirt-samples/click/001_click1.ogg"
  , "click:1": "https://klank-share.s3.amazonaws.com/dirt-samples/click/000_click0.ogg"
  , "click:2": "https://klank-share.s3.amazonaws.com/dirt-samples/click/003_click3.ogg"
  , "click:3": "https://klank-share.s3.amazonaws.com/dirt-samples/click/002_click2.ogg"
  , "control:0": "https://klank-share.s3.amazonaws.com/dirt-samples/control/1.ogg"
  , "control:1": "https://klank-share.s3.amazonaws.com/dirt-samples/control/2.ogg"
  , "peri:0": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/007_xbigclang.ogg"
  , "peri:1": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/008_xbong.ogg"
  , "peri:2": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/009_xbusket.ogg"
  , "peri:3": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/000_bd.ogg"
  , "peri:4": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/011_xfx1.ogg"
  , "peri:5": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/005_sd.ogg"
  , "peri:6": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/004_ksh.ogg"
  , "peri:7": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/013_xfx3.ogg"
  , "peri:8": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/014_xgillclank.ogg"
  , "peri:9": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/010_xchinga.ogg"
  , "peri:10": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/012_xfx2.ogg"
  , "peri:11": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/002_hh2.ogg"
  , "peri:12": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/003_hhx.ogg"
  , "peri:13": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/006_sd-rev.ogg"
  , "peri:14": "https://klank-share.s3.amazonaws.com/dirt-samples/peri/001_bd-rev.ogg"
  , "procshort:0": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/007_9.ogg"
  , "procshort:1": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/003_4.ogg"
  , "procshort:2": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/002_11.ogg"
  , "procshort:3": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/000_1.ogg"
  , "procshort:4": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/006_8.ogg"
  , "procshort:5": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/005_7.ogg"
  , "procshort:6": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/001_10.ogg"
  , "procshort:7": "https://klank-share.s3.amazonaws.com/dirt-samples/procshort/004_5.ogg"
  , "hand:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand7-mono.ogg"
  , "hand:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand16-mono.ogg"
  , "hand:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand11-mono.ogg"
  , "hand:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand20.ogg"
  , "hand:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand12-mono.ogg"
  , "hand:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand14-mono.ogg"
  , "hand:6": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand3-mono.ogg"
  , "hand:7": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand9-mono.ogg"
  , "hand:8": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand8-mono.ogg"
  , "hand:9": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand17.ogg"
  , "hand:10": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand22-mono.ogg"
  , "hand:11": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand2-mono.ogg"
  , "hand:12": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand21-mono.ogg"
  , "hand:13": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand15-mono.ogg"
  , "hand:14": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand13-mono.ogg"
  , "hand:15": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand4-mono.ogg"
  , "hand:16": "https://klank-share.s3.amazonaws.com/dirt-samples/hand/hand1-mono.ogg"
  , "future:0": "https://klank-share.s3.amazonaws.com/dirt-samples/future/002_Bd1_w.ogg"
  , "future:1": "https://klank-share.s3.amazonaws.com/dirt-samples/future/005_Johnson.ogg"
  , "future:2": "https://klank-share.s3.amazonaws.com/dirt-samples/future/004_Bd3_w.ogg"
  , "future:3": "https://klank-share.s3.amazonaws.com/dirt-samples/future/003_Bd2_w.ogg"
  , "future:4": "https://klank-share.s3.amazonaws.com/dirt-samples/future/010_MKDRCK06.ogg"
  , "future:5": "https://klank-share.s3.amazonaws.com/dirt-samples/future/013_Shake2.ogg"
  , "future:6": "https://klank-share.s3.amazonaws.com/dirt-samples/future/014_Shake4.ogg"
  , "future:7": "https://klank-share.s3.amazonaws.com/dirt-samples/future/012_Mhhcf3.ogg"
  , "future:8": "https://klank-share.s3.amazonaws.com/dirt-samples/future/006_Kick9.ogg"
  , "future:9": "https://klank-share.s3.amazonaws.com/dirt-samples/future/015_lockett_conga_mute2.ogg"
  , "future:10": "https://klank-share.s3.amazonaws.com/dirt-samples/future/016_lockett_conga_open1.ogg"
  , "future:11": "https://klank-share.s3.amazonaws.com/dirt-samples/future/007_MKD03.ogg"
  , "future:12": "https://klank-share.s3.amazonaws.com/dirt-samples/future/000_808KICK4.ogg"
  , "future:13": "https://klank-share.s3.amazonaws.com/dirt-samples/future/001_808KICK9.ogg"
  , "future:14": "https://klank-share.s3.amazonaws.com/dirt-samples/future/011_MKDRCK07.ogg"
  , "future:15": "https://klank-share.s3.amazonaws.com/dirt-samples/future/009_MKDRCK05.ogg"
  , "future:16": "https://klank-share.s3.amazonaws.com/dirt-samples/future/008_MKD60601.ogg"
  , "hh:0": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/012_hh3snare2.ogg"
  , "hh:1": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/010_hh3ride.ogg"
  , "hh:2": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/007_hh3openhh.ogg"
  , "hh:3": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/008_hh3rerc1.ogg"
  , "hh:4": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/000_hh3closedhh.ogg"
  , "hh:5": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/002_hh3hit1.ogg"
  , "hh:6": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/004_hh3hit3.ogg"
  , "hh:7": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/001_hh3crash.ogg"
  , "hh:8": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/011_hh3snare1.ogg"
  , "hh:9": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/003_hh3hit2.ogg"
  , "hh:10": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/005_hh3kick1.ogg"
  , "hh:11": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/006_hh3kick2.ogg"
  , "hh:12": "https://klank-share.s3.amazonaws.com/dirt-samples/hh/009_hh3rerc2.ogg"
  , "x_808ht:0": "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT10.ogg"
  , "x_808ht:1": "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT50.ogg"
  , "x_808ht:2": "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT00.ogg"
  , "x_808ht:3": "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT25.ogg"
  , "x_808ht:4": "https://klank-share.s3.amazonaws.com/dirt-samples/808ht/HT75.ogg"
  , "db:0": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12ride.ogg"
  , "db:1": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12openhh.ogg"
  , "db:2": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit3.ogg"
  , "db:3": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12snare1.ogg"
  , "db:4": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12perc2.ogg"
  , "db:5": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12perc1.ogg"
  , "db:6": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12kick1.ogg"
  , "db:7": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12closedhh.ogg"
  , "db:8": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12crash.ogg"
  , "db:9": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit2.ogg"
  , "db:10": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12hit1.ogg"
  , "db:11": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12kick2.ogg"
  , "db:12": "https://klank-share.s3.amazonaws.com/dirt-samples/db/dbs12snare2.ogg"
  ----- drones
  , "spacewind:0": "https://freesound.org/data/previews/370/370754_3104030-hq.mp3"
  , "ambienta:0": "https://freesound.org/data/previews/546/546360_10196790-hq.mp3"
  , "lowdark:0": "https://freesound.org/data/previews/579/579260_10522382-hq.mp3"
  , "harmonium:0": "https://freesound.org/data/previews/264/264442_4965426-hq.mp3"
  , "hollowair:0": "https://freesound.org/data/previews/370/370316_3104030-hq.mp3"
  , "digeridoo:0": "https://freesound.org/data/previews/197/197998_3684181-hq.mp3"
  }

---
class ClockTime a where
  clockTime :: a -> Number

instance clockTimeTimeIs :: ClockTime TimeIs where
  clockTime = unwrap >>> _.clockTime

instance clockTimeTimeIsAndWas :: ClockTime (TimeIsAndWas TimeIs) where
  clockTime = unwrap >>> _.timeIs >>> unwrap >>> _.clockTime

instance clockTimeClockTimeIs :: ClockTime ClockTimeIs where
  clockTime = unwrap >>> _.clockTime

instance clockTimeClockTimeIsAndWas :: ClockTime (TimeIsAndWas ClockTimeIs) where
  clockTime = unwrap >>> _.timeIs >>> unwrap >>> _.clockTime

class SampleTime a where
  sampleTime :: a -> Number

instance sampleTimeTimeIs :: SampleTime TimeIs where
  sampleTime = unwrap >>> _.sampleTime

instance sampleTimeTimeIsAndWas :: SampleTime (TimeIsAndWas TimeIs) where
  sampleTime = unwrap >>> _.timeIs >>> unwrap >>> _.sampleTime

class BigCycleTime a where
  bigCycleTime :: a -> Number

instance bigCycleTimeTimeIs :: BigCycleTime TimeIs where
  bigCycleTime = unwrap >>> _.bigCycleTime

instance bigCycleTimeTimeIsAndWas :: BigCycleTime (TimeIsAndWas TimeIs) where
  bigCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.bigCycleTime

class LittleCycleTime a where
  littleCycleTime :: a -> Number

instance littleCycleTimeTimeIs :: LittleCycleTime TimeIs where
  littleCycleTime = unwrap >>> _.littleCycleTime

instance littleCycleTimeTimeIsAndWas :: LittleCycleTime (TimeIsAndWas TimeIs) where
  littleCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.littleCycleTime

class NormalizedClockTime a where
  normalizedClockTime :: a -> Number

instance normalizedClockTimeTimeIs :: NormalizedClockTime TimeIs where
  normalizedClockTime = unwrap >>> _.normalizedClockTime

instance normalizedClockTimeTimeIsAndWas :: NormalizedClockTime (TimeIsAndWas TimeIs) where
  normalizedClockTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedClockTime

class NormalizedSampleTime a where
  normalizedSampleTime :: a -> Number

instance normalizedSampleTimeTimeIs :: NormalizedSampleTime TimeIs where
  normalizedSampleTime = unwrap >>> _.normalizedSampleTime

instance normalizedSampleTimeTimeIsAndWas :: NormalizedSampleTime (TimeIsAndWas TimeIs) where
  normalizedSampleTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedSampleTime

class NormalizedBigCycleTime a where
  normalizedBigCycleTime :: a -> Number

instance normalizedBigCycleTimeTimeIs :: NormalizedBigCycleTime TimeIs where
  normalizedBigCycleTime = unwrap >>> _.normalizedBigCycleTime

instance normalizedBigCycleTimeTimeIsAndWas :: NormalizedBigCycleTime (TimeIsAndWas TimeIs) where
  normalizedBigCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedBigCycleTime

class NormalizedLittleCycleTime a where
  normalizedLittleCycleTime :: a -> Number

instance normalizedLittleCycleTimeTimeIs :: NormalizedLittleCycleTime TimeIs where
  normalizedLittleCycleTime = unwrap >>> _.normalizedLittleCycleTime

instance normalizedLittleCycleTimeTimeIsAndWas :: NormalizedLittleCycleTime (TimeIsAndWas TimeIs) where
  normalizedLittleCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedLittleCycleTime

class LittleCycleDuration a where
  littleCycleDuration :: a -> Number

instance littleCycleDurationTimeIs :: LittleCycleDuration TimeIs where
  littleCycleDuration = unwrap >>> _.littleCycleDuration

instance littleCycleDurationTimeIsAndWas :: LittleCycleDuration (TimeIsAndWas TimeIs) where
  littleCycleDuration = unwrap >>> _.timeIs >>> unwrap >>> _.littleCycleDuration

class BigCycleDuration a where
  bigCycleDuration :: a -> Number

instance bigCycleDurationTimeIs :: BigCycleDuration TimeIs where
  bigCycleDuration = unwrap >>> _.bigCycleDuration

instance bigCycleDurationTimeIsAndWas :: BigCycleDuration (TimeIsAndWas TimeIs) where
  bigCycleDuration = unwrap >>> _.timeIs >>> unwrap >>> _.bigCycleDuration

class BufferDuration a where
  bufferDuration :: a -> Number

instance bufferDurationTimeIs :: BufferDuration TimeIs where
  bufferDuration = unwrap >>> _.bufferDuration

instance bufferDurationTimeIsAndWas :: BufferDuration (TimeIsAndWas TimeIs) where
  bufferDuration = unwrap >>> _.timeIs >>> unwrap >>> _.bufferDuration

---

note2drone :: Note -> DroneNote
note2drone (Note { sample, forward }) = DroneNote
  { sample
  , forward
  -- we wipe out all of the prior functions, keeping just the sample and forward
  , rateFoT: const 1.0
  , volumeFoT: const 1.0
  , loopStartFoT: const 0.0
  , loopEndFoT: const 0.0
  , tumultFoT: const calm
  }

sampleToString :: Sample -> String
sampleToString = coerce


intentionalSilenceForInternalUseOnly__Sample = Sample "intentionalSilenceForInternalUseOnly" :: Sample
kicklinn_0__Sample = Sample "kicklinn:0" :: Sample
msg_0__Sample = Sample "msg:0" :: Sample
msg_1__Sample = Sample "msg:1" :: Sample
msg_2__Sample = Sample "msg:2" :: Sample
msg_3__Sample = Sample "msg:3" :: Sample
msg_4__Sample = Sample "msg:4" :: Sample
msg_5__Sample = Sample "msg:5" :: Sample
msg_6__Sample = Sample "msg:6" :: Sample
msg_7__Sample = Sample "msg:7" :: Sample
msg_8__Sample = Sample "msg:8" :: Sample
gabbalouder_0__Sample = Sample "gabbalouder:0" :: Sample
gabbalouder_1__Sample = Sample "gabbalouder:1" :: Sample
gabbalouder_2__Sample = Sample "gabbalouder:2" :: Sample
gabbalouder_3__Sample = Sample "gabbalouder:3" :: Sample
kurt_0__Sample = Sample "kurt:0" :: Sample
kurt_1__Sample = Sample "kurt:1" :: Sample
kurt_2__Sample = Sample "kurt:2" :: Sample
kurt_3__Sample = Sample "kurt:3" :: Sample
kurt_4__Sample = Sample "kurt:4" :: Sample
kurt_5__Sample = Sample "kurt:5" :: Sample
kurt_6__Sample = Sample "kurt:6" :: Sample
bassdm_0__Sample = Sample "bassdm:0" :: Sample
bassdm_1__Sample = Sample "bassdm:1" :: Sample
bassdm_2__Sample = Sample "bassdm:2" :: Sample
bassdm_3__Sample = Sample "bassdm:3" :: Sample
bassdm_4__Sample = Sample "bassdm:4" :: Sample
bassdm_5__Sample = Sample "bassdm:5" :: Sample
bassdm_6__Sample = Sample "bassdm:6" :: Sample
bassdm_7__Sample = Sample "bassdm:7" :: Sample
bassdm_8__Sample = Sample "bassdm:8" :: Sample
bassdm_9__Sample = Sample "bassdm:9" :: Sample
bassdm_10__Sample = Sample "bassdm:10" :: Sample
bassdm_11__Sample = Sample "bassdm:11" :: Sample
bassdm_12__Sample = Sample "bassdm:12" :: Sample
bassdm_13__Sample = Sample "bassdm:13" :: Sample
bassdm_14__Sample = Sample "bassdm:14" :: Sample
bassdm_15__Sample = Sample "bassdm:15" :: Sample
bassdm_16__Sample = Sample "bassdm:16" :: Sample
bassdm_17__Sample = Sample "bassdm:17" :: Sample
bassdm_18__Sample = Sample "bassdm:18" :: Sample
bassdm_19__Sample = Sample "bassdm:19" :: Sample
bassdm_20__Sample = Sample "bassdm:20" :: Sample
bassdm_21__Sample = Sample "bassdm:21" :: Sample
bassdm_22__Sample = Sample "bassdm:22" :: Sample
bassdm_23__Sample = Sample "bassdm:23" :: Sample
tabla2_0__Sample = Sample "tabla2:0" :: Sample
tabla2_1__Sample = Sample "tabla2:1" :: Sample
tabla2_2__Sample = Sample "tabla2:2" :: Sample
tabla2_3__Sample = Sample "tabla2:3" :: Sample
tabla2_4__Sample = Sample "tabla2:4" :: Sample
tabla2_5__Sample = Sample "tabla2:5" :: Sample
tabla2_6__Sample = Sample "tabla2:6" :: Sample
tabla2_7__Sample = Sample "tabla2:7" :: Sample
tabla2_8__Sample = Sample "tabla2:8" :: Sample
tabla2_9__Sample = Sample "tabla2:9" :: Sample
tabla2_10__Sample = Sample "tabla2:10" :: Sample
tabla2_11__Sample = Sample "tabla2:11" :: Sample
tabla2_12__Sample = Sample "tabla2:12" :: Sample
tabla2_13__Sample = Sample "tabla2:13" :: Sample
tabla2_14__Sample = Sample "tabla2:14" :: Sample
tabla2_15__Sample = Sample "tabla2:15" :: Sample
tabla2_16__Sample = Sample "tabla2:16" :: Sample
tabla2_17__Sample = Sample "tabla2:17" :: Sample
tabla2_18__Sample = Sample "tabla2:18" :: Sample
tabla2_19__Sample = Sample "tabla2:19" :: Sample
tabla2_20__Sample = Sample "tabla2:20" :: Sample
tabla2_21__Sample = Sample "tabla2:21" :: Sample
tabla2_22__Sample = Sample "tabla2:22" :: Sample
tabla2_23__Sample = Sample "tabla2:23" :: Sample
tabla2_24__Sample = Sample "tabla2:24" :: Sample
tabla2_25__Sample = Sample "tabla2:25" :: Sample
tabla2_26__Sample = Sample "tabla2:26" :: Sample
tabla2_27__Sample = Sample "tabla2:27" :: Sample
tabla2_28__Sample = Sample "tabla2:28" :: Sample
tabla2_29__Sample = Sample "tabla2:29" :: Sample
tabla2_30__Sample = Sample "tabla2:30" :: Sample
tabla2_31__Sample = Sample "tabla2:31" :: Sample
tabla2_32__Sample = Sample "tabla2:32" :: Sample
tabla2_33__Sample = Sample "tabla2:33" :: Sample
tabla2_34__Sample = Sample "tabla2:34" :: Sample
tabla2_35__Sample = Sample "tabla2:35" :: Sample
tabla2_36__Sample = Sample "tabla2:36" :: Sample
tabla2_37__Sample = Sample "tabla2:37" :: Sample
tabla2_38__Sample = Sample "tabla2:38" :: Sample
tabla2_39__Sample = Sample "tabla2:39" :: Sample
tabla2_40__Sample = Sample "tabla2:40" :: Sample
tabla2_41__Sample = Sample "tabla2:41" :: Sample
tabla2_42__Sample = Sample "tabla2:42" :: Sample
tabla2_43__Sample = Sample "tabla2:43" :: Sample
tabla2_44__Sample = Sample "tabla2:44" :: Sample
tabla2_45__Sample = Sample "tabla2:45" :: Sample
chin_0__Sample = Sample "chin:0" :: Sample
chin_1__Sample = Sample "chin:1" :: Sample
chin_2__Sample = Sample "chin:2" :: Sample
chin_3__Sample = Sample "chin:3" :: Sample
mp3_0__Sample = Sample "mp3:0" :: Sample
mp3_1__Sample = Sample "mp3:1" :: Sample
mp3_2__Sample = Sample "mp3:2" :: Sample
mp3_3__Sample = Sample "mp3:3" :: Sample
tablex_0__Sample = Sample "tablex:0" :: Sample
tablex_1__Sample = Sample "tablex:1" :: Sample
tablex_2__Sample = Sample "tablex:2" :: Sample
sf_0__Sample = Sample "sf:0" :: Sample
sf_1__Sample = Sample "sf:1" :: Sample
sf_2__Sample = Sample "sf:2" :: Sample
sf_3__Sample = Sample "sf:3" :: Sample
sf_4__Sample = Sample "sf:4" :: Sample
sf_5__Sample = Sample "sf:5" :: Sample
sf_6__Sample = Sample "sf:6" :: Sample
sf_7__Sample = Sample "sf:7" :: Sample
sf_8__Sample = Sample "sf:8" :: Sample
sf_9__Sample = Sample "sf:9" :: Sample
sf_10__Sample = Sample "sf:10" :: Sample
sf_11__Sample = Sample "sf:11" :: Sample
sf_12__Sample = Sample "sf:12" :: Sample
sf_13__Sample = Sample "sf:13" :: Sample
sf_14__Sample = Sample "sf:14" :: Sample
sf_15__Sample = Sample "sf:15" :: Sample
sf_16__Sample = Sample "sf:16" :: Sample
sf_17__Sample = Sample "sf:17" :: Sample
speakspell_0__Sample = Sample "speakspell:0" :: Sample
speakspell_1__Sample = Sample "speakspell:1" :: Sample
speakspell_2__Sample = Sample "speakspell:2" :: Sample
speakspell_3__Sample = Sample "speakspell:3" :: Sample
speakspell_4__Sample = Sample "speakspell:4" :: Sample
speakspell_5__Sample = Sample "speakspell:5" :: Sample
speakspell_6__Sample = Sample "speakspell:6" :: Sample
speakspell_7__Sample = Sample "speakspell:7" :: Sample
speakspell_8__Sample = Sample "speakspell:8" :: Sample
speakspell_9__Sample = Sample "speakspell:9" :: Sample
speakspell_10__Sample = Sample "speakspell:10" :: Sample
speakspell_11__Sample = Sample "speakspell:11" :: Sample
cc_0__Sample = Sample "cc:0" :: Sample
cc_1__Sample = Sample "cc:1" :: Sample
cc_2__Sample = Sample "cc:2" :: Sample
cc_3__Sample = Sample "cc:3" :: Sample
cc_4__Sample = Sample "cc:4" :: Sample
cc_5__Sample = Sample "cc:5" :: Sample
gabbaloud_0__Sample = Sample "gabbaloud:0" :: Sample
gabbaloud_1__Sample = Sample "gabbaloud:1" :: Sample
gabbaloud_2__Sample = Sample "gabbaloud:2" :: Sample
gabbaloud_3__Sample = Sample "gabbaloud:3" :: Sample
ades2_0__Sample = Sample "ades2:0" :: Sample
ades2_1__Sample = Sample "ades2:1" :: Sample
ades2_2__Sample = Sample "ades2:2" :: Sample
ades2_3__Sample = Sample "ades2:3" :: Sample
ades2_4__Sample = Sample "ades2:4" :: Sample
ades2_5__Sample = Sample "ades2:5" :: Sample
ades2_6__Sample = Sample "ades2:6" :: Sample
ades2_7__Sample = Sample "ades2:7" :: Sample
ades2_8__Sample = Sample "ades2:8" :: Sample
space_0__Sample = Sample "space:0" :: Sample
space_1__Sample = Sample "space:1" :: Sample
space_2__Sample = Sample "space:2" :: Sample
space_3__Sample = Sample "space:3" :: Sample
space_4__Sample = Sample "space:4" :: Sample
space_5__Sample = Sample "space:5" :: Sample
space_6__Sample = Sample "space:6" :: Sample
space_7__Sample = Sample "space:7" :: Sample
space_8__Sample = Sample "space:8" :: Sample
space_9__Sample = Sample "space:9" :: Sample
space_10__Sample = Sample "space:10" :: Sample
space_11__Sample = Sample "space:11" :: Sample
space_12__Sample = Sample "space:12" :: Sample
space_13__Sample = Sample "space:13" :: Sample
space_14__Sample = Sample "space:14" :: Sample
space_15__Sample = Sample "space:15" :: Sample
space_16__Sample = Sample "space:16" :: Sample
space_17__Sample = Sample "space:17" :: Sample
battles_0__Sample = Sample "battles:0" :: Sample
battles_1__Sample = Sample "battles:1" :: Sample
voodoo_0__Sample = Sample "voodoo:0" :: Sample
voodoo_1__Sample = Sample "voodoo:1" :: Sample
voodoo_2__Sample = Sample "voodoo:2" :: Sample
voodoo_3__Sample = Sample "voodoo:3" :: Sample
voodoo_4__Sample = Sample "voodoo:4" :: Sample
ravemono_0__Sample = Sample "ravemono:0" :: Sample
ravemono_1__Sample = Sample "ravemono:1" :: Sample
psr_0__Sample = Sample "psr:0" :: Sample
psr_1__Sample = Sample "psr:1" :: Sample
psr_2__Sample = Sample "psr:2" :: Sample
psr_3__Sample = Sample "psr:3" :: Sample
psr_4__Sample = Sample "psr:4" :: Sample
psr_5__Sample = Sample "psr:5" :: Sample
psr_6__Sample = Sample "psr:6" :: Sample
psr_7__Sample = Sample "psr:7" :: Sample
psr_8__Sample = Sample "psr:8" :: Sample
psr_9__Sample = Sample "psr:9" :: Sample
psr_10__Sample = Sample "psr:10" :: Sample
psr_11__Sample = Sample "psr:11" :: Sample
psr_12__Sample = Sample "psr:12" :: Sample
psr_13__Sample = Sample "psr:13" :: Sample
psr_14__Sample = Sample "psr:14" :: Sample
psr_15__Sample = Sample "psr:15" :: Sample
psr_16__Sample = Sample "psr:16" :: Sample
psr_17__Sample = Sample "psr:17" :: Sample
psr_18__Sample = Sample "psr:18" :: Sample
psr_19__Sample = Sample "psr:19" :: Sample
psr_20__Sample = Sample "psr:20" :: Sample
psr_21__Sample = Sample "psr:21" :: Sample
psr_22__Sample = Sample "psr:22" :: Sample
psr_23__Sample = Sample "psr:23" :: Sample
psr_24__Sample = Sample "psr:24" :: Sample
psr_25__Sample = Sample "psr:25" :: Sample
psr_26__Sample = Sample "psr:26" :: Sample
psr_27__Sample = Sample "psr:27" :: Sample
psr_28__Sample = Sample "psr:28" :: Sample
psr_29__Sample = Sample "psr:29" :: Sample
metal_0__Sample = Sample "metal:0" :: Sample
metal_1__Sample = Sample "metal:1" :: Sample
metal_2__Sample = Sample "metal:2" :: Sample
metal_3__Sample = Sample "metal:3" :: Sample
metal_4__Sample = Sample "metal:4" :: Sample
metal_5__Sample = Sample "metal:5" :: Sample
metal_6__Sample = Sample "metal:6" :: Sample
metal_7__Sample = Sample "metal:7" :: Sample
metal_8__Sample = Sample "metal:8" :: Sample
metal_9__Sample = Sample "metal:9" :: Sample
hardcore_0__Sample = Sample "hardcore:0" :: Sample
hardcore_1__Sample = Sample "hardcore:1" :: Sample
hardcore_2__Sample = Sample "hardcore:2" :: Sample
hardcore_3__Sample = Sample "hardcore:3" :: Sample
hardcore_4__Sample = Sample "hardcore:4" :: Sample
hardcore_5__Sample = Sample "hardcore:5" :: Sample
hardcore_6__Sample = Sample "hardcore:6" :: Sample
hardcore_7__Sample = Sample "hardcore:7" :: Sample
hardcore_8__Sample = Sample "hardcore:8" :: Sample
hardcore_9__Sample = Sample "hardcore:9" :: Sample
hardcore_10__Sample = Sample "hardcore:10" :: Sample
hardcore_11__Sample = Sample "hardcore:11" :: Sample
mouth_0__Sample = Sample "mouth:0" :: Sample
mouth_1__Sample = Sample "mouth:1" :: Sample
mouth_2__Sample = Sample "mouth:2" :: Sample
mouth_3__Sample = Sample "mouth:3" :: Sample
mouth_4__Sample = Sample "mouth:4" :: Sample
mouth_5__Sample = Sample "mouth:5" :: Sample
mouth_6__Sample = Sample "mouth:6" :: Sample
mouth_7__Sample = Sample "mouth:7" :: Sample
mouth_8__Sample = Sample "mouth:8" :: Sample
mouth_9__Sample = Sample "mouth:9" :: Sample
mouth_10__Sample = Sample "mouth:10" :: Sample
mouth_11__Sample = Sample "mouth:11" :: Sample
mouth_12__Sample = Sample "mouth:12" :: Sample
mouth_13__Sample = Sample "mouth:13" :: Sample
mouth_14__Sample = Sample "mouth:14" :: Sample
sugar_0__Sample = Sample "sugar:0" :: Sample
sugar_1__Sample = Sample "sugar:1" :: Sample
odx_0__Sample = Sample "odx:0" :: Sample
odx_1__Sample = Sample "odx:1" :: Sample
odx_2__Sample = Sample "odx:2" :: Sample
odx_3__Sample = Sample "odx:3" :: Sample
odx_4__Sample = Sample "odx:4" :: Sample
odx_5__Sample = Sample "odx:5" :: Sample
odx_6__Sample = Sample "odx:6" :: Sample
odx_7__Sample = Sample "odx:7" :: Sample
odx_8__Sample = Sample "odx:8" :: Sample
odx_9__Sample = Sample "odx:9" :: Sample
odx_10__Sample = Sample "odx:10" :: Sample
odx_11__Sample = Sample "odx:11" :: Sample
odx_12__Sample = Sample "odx:12" :: Sample
odx_13__Sample = Sample "odx:13" :: Sample
odx_14__Sample = Sample "odx:14" :: Sample
x_808lc_0__Sample = Sample "x_808lc:0" :: Sample
x_808lc_1__Sample = Sample "x_808lc:1" :: Sample
x_808lc_2__Sample = Sample "x_808lc:2" :: Sample
x_808lc_3__Sample = Sample "x_808lc:3" :: Sample
x_808lc_4__Sample = Sample "x_808lc:4" :: Sample
mt_0__Sample = Sample "mt:0" :: Sample
mt_1__Sample = Sample "mt:1" :: Sample
mt_2__Sample = Sample "mt:2" :: Sample
mt_3__Sample = Sample "mt:3" :: Sample
mt_4__Sample = Sample "mt:4" :: Sample
mt_5__Sample = Sample "mt:5" :: Sample
mt_6__Sample = Sample "mt:6" :: Sample
mt_7__Sample = Sample "mt:7" :: Sample
mt_8__Sample = Sample "mt:8" :: Sample
mt_9__Sample = Sample "mt:9" :: Sample
mt_10__Sample = Sample "mt:10" :: Sample
mt_11__Sample = Sample "mt:11" :: Sample
mt_12__Sample = Sample "mt:12" :: Sample
mt_13__Sample = Sample "mt:13" :: Sample
mt_14__Sample = Sample "mt:14" :: Sample
mt_15__Sample = Sample "mt:15" :: Sample
drumtraks_0__Sample = Sample "drumtraks:0" :: Sample
drumtraks_1__Sample = Sample "drumtraks:1" :: Sample
drumtraks_2__Sample = Sample "drumtraks:2" :: Sample
drumtraks_3__Sample = Sample "drumtraks:3" :: Sample
drumtraks_4__Sample = Sample "drumtraks:4" :: Sample
drumtraks_5__Sample = Sample "drumtraks:5" :: Sample
drumtraks_6__Sample = Sample "drumtraks:6" :: Sample
drumtraks_7__Sample = Sample "drumtraks:7" :: Sample
drumtraks_8__Sample = Sample "drumtraks:8" :: Sample
drumtraks_9__Sample = Sample "drumtraks:9" :: Sample
drumtraks_10__Sample = Sample "drumtraks:10" :: Sample
drumtraks_11__Sample = Sample "drumtraks:11" :: Sample
drumtraks_12__Sample = Sample "drumtraks:12" :: Sample
print_0__Sample = Sample "print:0" :: Sample
print_1__Sample = Sample "print:1" :: Sample
print_2__Sample = Sample "print:2" :: Sample
print_3__Sample = Sample "print:3" :: Sample
print_4__Sample = Sample "print:4" :: Sample
print_5__Sample = Sample "print:5" :: Sample
print_6__Sample = Sample "print:6" :: Sample
print_7__Sample = Sample "print:7" :: Sample
print_8__Sample = Sample "print:8" :: Sample
print_9__Sample = Sample "print:9" :: Sample
print_10__Sample = Sample "print:10" :: Sample
blip_0__Sample = Sample "blip:0" :: Sample
blip_1__Sample = Sample "blip:1" :: Sample
wobble_0__Sample = Sample "wobble:0" :: Sample
made_0__Sample = Sample "made:0" :: Sample
made_1__Sample = Sample "made:1" :: Sample
made_2__Sample = Sample "made:2" :: Sample
made_3__Sample = Sample "made:3" :: Sample
made_4__Sample = Sample "made:4" :: Sample
made_5__Sample = Sample "made:5" :: Sample
made_6__Sample = Sample "made:6" :: Sample
bass3_0__Sample = Sample "bass3:0" :: Sample
bass3_1__Sample = Sample "bass3:1" :: Sample
bass3_2__Sample = Sample "bass3:2" :: Sample
bass3_3__Sample = Sample "bass3:3" :: Sample
bass3_4__Sample = Sample "bass3:4" :: Sample
bass3_5__Sample = Sample "bass3:5" :: Sample
bass3_6__Sample = Sample "bass3:6" :: Sample
bass3_7__Sample = Sample "bass3:7" :: Sample
bass3_8__Sample = Sample "bass3:8" :: Sample
bass3_9__Sample = Sample "bass3:9" :: Sample
bass3_10__Sample = Sample "bass3:10" :: Sample
speechless_0__Sample = Sample "speechless:0" :: Sample
speechless_1__Sample = Sample "speechless:1" :: Sample
speechless_2__Sample = Sample "speechless:2" :: Sample
speechless_3__Sample = Sample "speechless:3" :: Sample
speechless_4__Sample = Sample "speechless:4" :: Sample
speechless_5__Sample = Sample "speechless:5" :: Sample
speechless_6__Sample = Sample "speechless:6" :: Sample
speechless_7__Sample = Sample "speechless:7" :: Sample
speechless_8__Sample = Sample "speechless:8" :: Sample
speechless_9__Sample = Sample "speechless:9" :: Sample
sine_0__Sample = Sample "sine:0" :: Sample
sine_1__Sample = Sample "sine:1" :: Sample
sine_2__Sample = Sample "sine:2" :: Sample
sine_3__Sample = Sample "sine:3" :: Sample
sine_4__Sample = Sample "sine:4" :: Sample
sine_5__Sample = Sample "sine:5" :: Sample
noise_0__Sample = Sample "noise:0" :: Sample
x_808lt_0__Sample = Sample "x_808lt:0" :: Sample
x_808lt_1__Sample = Sample "x_808lt:1" :: Sample
x_808lt_2__Sample = Sample "x_808lt:2" :: Sample
x_808lt_3__Sample = Sample "x_808lt:3" :: Sample
x_808lt_4__Sample = Sample "x_808lt:4" :: Sample
sd_0__Sample = Sample "sd:0" :: Sample
sd_1__Sample = Sample "sd:1" :: Sample
alphabet_0__Sample = Sample "alphabet:0" :: Sample
alphabet_1__Sample = Sample "alphabet:1" :: Sample
alphabet_2__Sample = Sample "alphabet:2" :: Sample
alphabet_3__Sample = Sample "alphabet:3" :: Sample
alphabet_4__Sample = Sample "alphabet:4" :: Sample
alphabet_5__Sample = Sample "alphabet:5" :: Sample
alphabet_6__Sample = Sample "alphabet:6" :: Sample
alphabet_7__Sample = Sample "alphabet:7" :: Sample
alphabet_8__Sample = Sample "alphabet:8" :: Sample
alphabet_9__Sample = Sample "alphabet:9" :: Sample
alphabet_10__Sample = Sample "alphabet:10" :: Sample
alphabet_11__Sample = Sample "alphabet:11" :: Sample
alphabet_12__Sample = Sample "alphabet:12" :: Sample
alphabet_13__Sample = Sample "alphabet:13" :: Sample
alphabet_14__Sample = Sample "alphabet:14" :: Sample
alphabet_15__Sample = Sample "alphabet:15" :: Sample
alphabet_16__Sample = Sample "alphabet:16" :: Sample
alphabet_17__Sample = Sample "alphabet:17" :: Sample
alphabet_18__Sample = Sample "alphabet:18" :: Sample
alphabet_19__Sample = Sample "alphabet:19" :: Sample
alphabet_20__Sample = Sample "alphabet:20" :: Sample
alphabet_21__Sample = Sample "alphabet:21" :: Sample
alphabet_22__Sample = Sample "alphabet:22" :: Sample
alphabet_23__Sample = Sample "alphabet:23" :: Sample
alphabet_24__Sample = Sample "alphabet:24" :: Sample
alphabet_25__Sample = Sample "alphabet:25" :: Sample
baa2_0__Sample = Sample "baa2:0" :: Sample
baa2_1__Sample = Sample "baa2:1" :: Sample
baa2_2__Sample = Sample "baa2:2" :: Sample
baa2_3__Sample = Sample "baa2:3" :: Sample
baa2_4__Sample = Sample "baa2:4" :: Sample
baa2_5__Sample = Sample "baa2:5" :: Sample
baa2_6__Sample = Sample "baa2:6" :: Sample
tok_0__Sample = Sample "tok:0" :: Sample
tok_1__Sample = Sample "tok:1" :: Sample
tok_2__Sample = Sample "tok:2" :: Sample
tok_3__Sample = Sample "tok:3" :: Sample
ades3_0__Sample = Sample "ades3:0" :: Sample
ades3_1__Sample = Sample "ades3:1" :: Sample
ades3_2__Sample = Sample "ades3:2" :: Sample
ades3_3__Sample = Sample "ades3:3" :: Sample
ades3_4__Sample = Sample "ades3:4" :: Sample
ades3_5__Sample = Sample "ades3:5" :: Sample
ades3_6__Sample = Sample "ades3:6" :: Sample
x_909_0__Sample = Sample "x_909:0" :: Sample
sid_0__Sample = Sample "sid:0" :: Sample
sid_1__Sample = Sample "sid:1" :: Sample
sid_2__Sample = Sample "sid:2" :: Sample
sid_3__Sample = Sample "sid:3" :: Sample
sid_4__Sample = Sample "sid:4" :: Sample
sid_5__Sample = Sample "sid:5" :: Sample
sid_6__Sample = Sample "sid:6" :: Sample
sid_7__Sample = Sample "sid:7" :: Sample
sid_8__Sample = Sample "sid:8" :: Sample
sid_9__Sample = Sample "sid:9" :: Sample
sid_10__Sample = Sample "sid:10" :: Sample
sid_11__Sample = Sample "sid:11" :: Sample
jungbass_0__Sample = Sample "jungbass:0" :: Sample
jungbass_1__Sample = Sample "jungbass:1" :: Sample
jungbass_2__Sample = Sample "jungbass:2" :: Sample
jungbass_3__Sample = Sample "jungbass:3" :: Sample
jungbass_4__Sample = Sample "jungbass:4" :: Sample
jungbass_5__Sample = Sample "jungbass:5" :: Sample
jungbass_6__Sample = Sample "jungbass:6" :: Sample
jungbass_7__Sample = Sample "jungbass:7" :: Sample
jungbass_8__Sample = Sample "jungbass:8" :: Sample
jungbass_9__Sample = Sample "jungbass:9" :: Sample
jungbass_10__Sample = Sample "jungbass:10" :: Sample
jungbass_11__Sample = Sample "jungbass:11" :: Sample
jungbass_12__Sample = Sample "jungbass:12" :: Sample
jungbass_13__Sample = Sample "jungbass:13" :: Sample
jungbass_14__Sample = Sample "jungbass:14" :: Sample
jungbass_15__Sample = Sample "jungbass:15" :: Sample
jungbass_16__Sample = Sample "jungbass:16" :: Sample
jungbass_17__Sample = Sample "jungbass:17" :: Sample
jungbass_18__Sample = Sample "jungbass:18" :: Sample
jungbass_19__Sample = Sample "jungbass:19" :: Sample
gabba_0__Sample = Sample "gabba:0" :: Sample
gabba_1__Sample = Sample "gabba:1" :: Sample
gabba_2__Sample = Sample "gabba:2" :: Sample
gabba_3__Sample = Sample "gabba:3" :: Sample
crow_0__Sample = Sample "crow:0" :: Sample
crow_1__Sample = Sample "crow:1" :: Sample
crow_2__Sample = Sample "crow:2" :: Sample
crow_3__Sample = Sample "crow:3" :: Sample
birds3_0__Sample = Sample "birds3:0" :: Sample
birds3_1__Sample = Sample "birds3:1" :: Sample
birds3_2__Sample = Sample "birds3:2" :: Sample
birds3_3__Sample = Sample "birds3:3" :: Sample
birds3_4__Sample = Sample "birds3:4" :: Sample
birds3_5__Sample = Sample "birds3:5" :: Sample
birds3_6__Sample = Sample "birds3:6" :: Sample
birds3_7__Sample = Sample "birds3:7" :: Sample
birds3_8__Sample = Sample "birds3:8" :: Sample
birds3_9__Sample = Sample "birds3:9" :: Sample
birds3_10__Sample = Sample "birds3:10" :: Sample
birds3_11__Sample = Sample "birds3:11" :: Sample
birds3_12__Sample = Sample "birds3:12" :: Sample
birds3_13__Sample = Sample "birds3:13" :: Sample
birds3_14__Sample = Sample "birds3:14" :: Sample
birds3_15__Sample = Sample "birds3:15" :: Sample
birds3_16__Sample = Sample "birds3:16" :: Sample
birds3_17__Sample = Sample "birds3:17" :: Sample
birds3_18__Sample = Sample "birds3:18" :: Sample
auto_0__Sample = Sample "auto:0" :: Sample
auto_1__Sample = Sample "auto:1" :: Sample
auto_2__Sample = Sample "auto:2" :: Sample
auto_3__Sample = Sample "auto:3" :: Sample
auto_4__Sample = Sample "auto:4" :: Sample
auto_5__Sample = Sample "auto:5" :: Sample
auto_6__Sample = Sample "auto:6" :: Sample
auto_7__Sample = Sample "auto:7" :: Sample
auto_8__Sample = Sample "auto:8" :: Sample
auto_9__Sample = Sample "auto:9" :: Sample
auto_10__Sample = Sample "auto:10" :: Sample
mute_0__Sample = Sample "mute:0" :: Sample
mute_1__Sample = Sample "mute:1" :: Sample
mute_2__Sample = Sample "mute:2" :: Sample
mute_3__Sample = Sample "mute:3" :: Sample
mute_4__Sample = Sample "mute:4" :: Sample
mute_5__Sample = Sample "mute:5" :: Sample
mute_6__Sample = Sample "mute:6" :: Sample
mute_7__Sample = Sample "mute:7" :: Sample
mute_8__Sample = Sample "mute:8" :: Sample
mute_9__Sample = Sample "mute:9" :: Sample
mute_10__Sample = Sample "mute:10" :: Sample
mute_11__Sample = Sample "mute:11" :: Sample
mute_12__Sample = Sample "mute:12" :: Sample
mute_13__Sample = Sample "mute:13" :: Sample
mute_14__Sample = Sample "mute:14" :: Sample
mute_15__Sample = Sample "mute:15" :: Sample
mute_16__Sample = Sample "mute:16" :: Sample
mute_17__Sample = Sample "mute:17" :: Sample
mute_18__Sample = Sample "mute:18" :: Sample
mute_19__Sample = Sample "mute:19" :: Sample
mute_20__Sample = Sample "mute:20" :: Sample
mute_21__Sample = Sample "mute:21" :: Sample
mute_22__Sample = Sample "mute:22" :: Sample
mute_23__Sample = Sample "mute:23" :: Sample
mute_24__Sample = Sample "mute:24" :: Sample
mute_25__Sample = Sample "mute:25" :: Sample
mute_26__Sample = Sample "mute:26" :: Sample
mute_27__Sample = Sample "mute:27" :: Sample
sheffield_0__Sample = Sample "sheffield:0" :: Sample
casio_0__Sample = Sample "casio:0" :: Sample
casio_1__Sample = Sample "casio:1" :: Sample
casio_2__Sample = Sample "casio:2" :: Sample
sax_0__Sample = Sample "sax:0" :: Sample
sax_1__Sample = Sample "sax:1" :: Sample
sax_2__Sample = Sample "sax:2" :: Sample
sax_3__Sample = Sample "sax:3" :: Sample
sax_4__Sample = Sample "sax:4" :: Sample
sax_5__Sample = Sample "sax:5" :: Sample
sax_6__Sample = Sample "sax:6" :: Sample
sax_7__Sample = Sample "sax:7" :: Sample
sax_8__Sample = Sample "sax:8" :: Sample
sax_9__Sample = Sample "sax:9" :: Sample
sax_10__Sample = Sample "sax:10" :: Sample
sax_11__Sample = Sample "sax:11" :: Sample
sax_12__Sample = Sample "sax:12" :: Sample
sax_13__Sample = Sample "sax:13" :: Sample
sax_14__Sample = Sample "sax:14" :: Sample
sax_15__Sample = Sample "sax:15" :: Sample
sax_16__Sample = Sample "sax:16" :: Sample
sax_17__Sample = Sample "sax:17" :: Sample
sax_18__Sample = Sample "sax:18" :: Sample
sax_19__Sample = Sample "sax:19" :: Sample
sax_20__Sample = Sample "sax:20" :: Sample
sax_21__Sample = Sample "sax:21" :: Sample
circus_0__Sample = Sample "circus:0" :: Sample
circus_1__Sample = Sample "circus:1" :: Sample
circus_2__Sample = Sample "circus:2" :: Sample
yeah_0__Sample = Sample "yeah:0" :: Sample
yeah_1__Sample = Sample "yeah:1" :: Sample
yeah_2__Sample = Sample "yeah:2" :: Sample
yeah_3__Sample = Sample "yeah:3" :: Sample
yeah_4__Sample = Sample "yeah:4" :: Sample
yeah_5__Sample = Sample "yeah:5" :: Sample
yeah_6__Sample = Sample "yeah:6" :: Sample
yeah_7__Sample = Sample "yeah:7" :: Sample
yeah_8__Sample = Sample "yeah:8" :: Sample
yeah_9__Sample = Sample "yeah:9" :: Sample
yeah_10__Sample = Sample "yeah:10" :: Sample
yeah_11__Sample = Sample "yeah:11" :: Sample
yeah_12__Sample = Sample "yeah:12" :: Sample
yeah_13__Sample = Sample "yeah:13" :: Sample
yeah_14__Sample = Sample "yeah:14" :: Sample
yeah_15__Sample = Sample "yeah:15" :: Sample
yeah_16__Sample = Sample "yeah:16" :: Sample
yeah_17__Sample = Sample "yeah:17" :: Sample
yeah_18__Sample = Sample "yeah:18" :: Sample
yeah_19__Sample = Sample "yeah:19" :: Sample
yeah_20__Sample = Sample "yeah:20" :: Sample
yeah_21__Sample = Sample "yeah:21" :: Sample
yeah_22__Sample = Sample "yeah:22" :: Sample
yeah_23__Sample = Sample "yeah:23" :: Sample
yeah_24__Sample = Sample "yeah:24" :: Sample
yeah_25__Sample = Sample "yeah:25" :: Sample
yeah_26__Sample = Sample "yeah:26" :: Sample
yeah_27__Sample = Sample "yeah:27" :: Sample
yeah_28__Sample = Sample "yeah:28" :: Sample
yeah_29__Sample = Sample "yeah:29" :: Sample
yeah_30__Sample = Sample "yeah:30" :: Sample
oc_0__Sample = Sample "oc:0" :: Sample
oc_1__Sample = Sample "oc:1" :: Sample
oc_2__Sample = Sample "oc:2" :: Sample
oc_3__Sample = Sample "oc:3" :: Sample
alex_0__Sample = Sample "alex:0" :: Sample
alex_1__Sample = Sample "alex:1" :: Sample
can_0__Sample = Sample "can:0" :: Sample
can_1__Sample = Sample "can:1" :: Sample
can_2__Sample = Sample "can:2" :: Sample
can_3__Sample = Sample "can:3" :: Sample
can_4__Sample = Sample "can:4" :: Sample
can_5__Sample = Sample "can:5" :: Sample
can_6__Sample = Sample "can:6" :: Sample
can_7__Sample = Sample "can:7" :: Sample
can_8__Sample = Sample "can:8" :: Sample
can_9__Sample = Sample "can:9" :: Sample
can_10__Sample = Sample "can:10" :: Sample
can_11__Sample = Sample "can:11" :: Sample
can_12__Sample = Sample "can:12" :: Sample
can_13__Sample = Sample "can:13" :: Sample
jungle_0__Sample = Sample "jungle:0" :: Sample
jungle_1__Sample = Sample "jungle:1" :: Sample
jungle_2__Sample = Sample "jungle:2" :: Sample
jungle_3__Sample = Sample "jungle:3" :: Sample
jungle_4__Sample = Sample "jungle:4" :: Sample
jungle_5__Sample = Sample "jungle:5" :: Sample
jungle_6__Sample = Sample "jungle:6" :: Sample
jungle_7__Sample = Sample "jungle:7" :: Sample
jungle_8__Sample = Sample "jungle:8" :: Sample
jungle_9__Sample = Sample "jungle:9" :: Sample
jungle_10__Sample = Sample "jungle:10" :: Sample
jungle_11__Sample = Sample "jungle:11" :: Sample
jungle_12__Sample = Sample "jungle:12" :: Sample
moog_0__Sample = Sample "moog:0" :: Sample
moog_1__Sample = Sample "moog:1" :: Sample
moog_2__Sample = Sample "moog:2" :: Sample
moog_3__Sample = Sample "moog:3" :: Sample
moog_4__Sample = Sample "moog:4" :: Sample
moog_5__Sample = Sample "moog:5" :: Sample
moog_6__Sample = Sample "moog:6" :: Sample
h_0__Sample = Sample "h:0" :: Sample
h_1__Sample = Sample "h:1" :: Sample
h_2__Sample = Sample "h:2" :: Sample
h_3__Sample = Sample "h:3" :: Sample
h_4__Sample = Sample "h:4" :: Sample
h_5__Sample = Sample "h:5" :: Sample
h_6__Sample = Sample "h:6" :: Sample
wind_0__Sample = Sample "wind:0" :: Sample
wind_1__Sample = Sample "wind:1" :: Sample
wind_2__Sample = Sample "wind:2" :: Sample
wind_3__Sample = Sample "wind:3" :: Sample
wind_4__Sample = Sample "wind:4" :: Sample
wind_5__Sample = Sample "wind:5" :: Sample
wind_6__Sample = Sample "wind:6" :: Sample
wind_7__Sample = Sample "wind:7" :: Sample
wind_8__Sample = Sample "wind:8" :: Sample
wind_9__Sample = Sample "wind:9" :: Sample
rs_0__Sample = Sample "rs:0" :: Sample
em2_0__Sample = Sample "em2:0" :: Sample
em2_1__Sample = Sample "em2:1" :: Sample
em2_2__Sample = Sample "em2:2" :: Sample
em2_3__Sample = Sample "em2:3" :: Sample
em2_4__Sample = Sample "em2:4" :: Sample
em2_5__Sample = Sample "em2:5" :: Sample
noise2_0__Sample = Sample "noise2:0" :: Sample
noise2_1__Sample = Sample "noise2:1" :: Sample
noise2_2__Sample = Sample "noise2:2" :: Sample
noise2_3__Sample = Sample "noise2:3" :: Sample
noise2_4__Sample = Sample "noise2:4" :: Sample
noise2_5__Sample = Sample "noise2:5" :: Sample
noise2_6__Sample = Sample "noise2:6" :: Sample
noise2_7__Sample = Sample "noise2:7" :: Sample
foo_0__Sample = Sample "foo:0" :: Sample
foo_1__Sample = Sample "foo:1" :: Sample
foo_2__Sample = Sample "foo:2" :: Sample
foo_3__Sample = Sample "foo:3" :: Sample
foo_4__Sample = Sample "foo:4" :: Sample
foo_5__Sample = Sample "foo:5" :: Sample
foo_6__Sample = Sample "foo:6" :: Sample
foo_7__Sample = Sample "foo:7" :: Sample
foo_8__Sample = Sample "foo:8" :: Sample
foo_9__Sample = Sample "foo:9" :: Sample
foo_10__Sample = Sample "foo:10" :: Sample
foo_11__Sample = Sample "foo:11" :: Sample
foo_12__Sample = Sample "foo:12" :: Sample
foo_13__Sample = Sample "foo:13" :: Sample
foo_14__Sample = Sample "foo:14" :: Sample
foo_15__Sample = Sample "foo:15" :: Sample
foo_16__Sample = Sample "foo:16" :: Sample
foo_17__Sample = Sample "foo:17" :: Sample
foo_18__Sample = Sample "foo:18" :: Sample
foo_19__Sample = Sample "foo:19" :: Sample
foo_20__Sample = Sample "foo:20" :: Sample
foo_21__Sample = Sample "foo:21" :: Sample
foo_22__Sample = Sample "foo:22" :: Sample
foo_23__Sample = Sample "foo:23" :: Sample
foo_24__Sample = Sample "foo:24" :: Sample
foo_25__Sample = Sample "foo:25" :: Sample
foo_26__Sample = Sample "foo:26" :: Sample
armora_0__Sample = Sample "armora:0" :: Sample
armora_1__Sample = Sample "armora:1" :: Sample
armora_2__Sample = Sample "armora:2" :: Sample
armora_3__Sample = Sample "armora:3" :: Sample
armora_4__Sample = Sample "armora:4" :: Sample
armora_5__Sample = Sample "armora:5" :: Sample
armora_6__Sample = Sample "armora:6" :: Sample
bend_0__Sample = Sample "bend:0" :: Sample
bend_1__Sample = Sample "bend:1" :: Sample
bend_2__Sample = Sample "bend:2" :: Sample
bend_3__Sample = Sample "bend:3" :: Sample
newnotes_0__Sample = Sample "newnotes:0" :: Sample
newnotes_1__Sample = Sample "newnotes:1" :: Sample
newnotes_2__Sample = Sample "newnotes:2" :: Sample
newnotes_3__Sample = Sample "newnotes:3" :: Sample
newnotes_4__Sample = Sample "newnotes:4" :: Sample
newnotes_5__Sample = Sample "newnotes:5" :: Sample
newnotes_6__Sample = Sample "newnotes:6" :: Sample
newnotes_7__Sample = Sample "newnotes:7" :: Sample
newnotes_8__Sample = Sample "newnotes:8" :: Sample
newnotes_9__Sample = Sample "newnotes:9" :: Sample
newnotes_10__Sample = Sample "newnotes:10" :: Sample
newnotes_11__Sample = Sample "newnotes:11" :: Sample
newnotes_12__Sample = Sample "newnotes:12" :: Sample
newnotes_13__Sample = Sample "newnotes:13" :: Sample
newnotes_14__Sample = Sample "newnotes:14" :: Sample
pebbles_0__Sample = Sample "pebbles:0" :: Sample
mash2_0__Sample = Sample "mash2:0" :: Sample
mash2_1__Sample = Sample "mash2:1" :: Sample
mash2_2__Sample = Sample "mash2:2" :: Sample
mash2_3__Sample = Sample "mash2:3" :: Sample
diphone2_0__Sample = Sample "diphone2:0" :: Sample
diphone2_1__Sample = Sample "diphone2:1" :: Sample
diphone2_2__Sample = Sample "diphone2:2" :: Sample
diphone2_3__Sample = Sample "diphone2:3" :: Sample
diphone2_4__Sample = Sample "diphone2:4" :: Sample
diphone2_5__Sample = Sample "diphone2:5" :: Sample
diphone2_6__Sample = Sample "diphone2:6" :: Sample
diphone2_7__Sample = Sample "diphone2:7" :: Sample
diphone2_8__Sample = Sample "diphone2:8" :: Sample
diphone2_9__Sample = Sample "diphone2:9" :: Sample
diphone2_10__Sample = Sample "diphone2:10" :: Sample
diphone2_11__Sample = Sample "diphone2:11" :: Sample
e_0__Sample = Sample "e:0" :: Sample
e_1__Sample = Sample "e:1" :: Sample
e_2__Sample = Sample "e:2" :: Sample
e_3__Sample = Sample "e:3" :: Sample
e_4__Sample = Sample "e:4" :: Sample
e_5__Sample = Sample "e:5" :: Sample
e_6__Sample = Sample "e:6" :: Sample
e_7__Sample = Sample "e:7" :: Sample
bubble_0__Sample = Sample "bubble:0" :: Sample
bubble_1__Sample = Sample "bubble:1" :: Sample
bubble_2__Sample = Sample "bubble:2" :: Sample
bubble_3__Sample = Sample "bubble:3" :: Sample
bubble_4__Sample = Sample "bubble:4" :: Sample
bubble_5__Sample = Sample "bubble:5" :: Sample
bubble_6__Sample = Sample "bubble:6" :: Sample
bubble_7__Sample = Sample "bubble:7" :: Sample
insect_0__Sample = Sample "insect:0" :: Sample
insect_1__Sample = Sample "insect:1" :: Sample
insect_2__Sample = Sample "insect:2" :: Sample
ade_0__Sample = Sample "ade:0" :: Sample
ade_1__Sample = Sample "ade:1" :: Sample
ade_2__Sample = Sample "ade:2" :: Sample
ade_3__Sample = Sample "ade:3" :: Sample
ade_4__Sample = Sample "ade:4" :: Sample
ade_5__Sample = Sample "ade:5" :: Sample
ade_6__Sample = Sample "ade:6" :: Sample
ade_7__Sample = Sample "ade:7" :: Sample
ade_8__Sample = Sample "ade:8" :: Sample
ade_9__Sample = Sample "ade:9" :: Sample
glitch_0__Sample = Sample "glitch:0" :: Sample
glitch_1__Sample = Sample "glitch:1" :: Sample
glitch_2__Sample = Sample "glitch:2" :: Sample
glitch_3__Sample = Sample "glitch:3" :: Sample
glitch_4__Sample = Sample "glitch:4" :: Sample
glitch_5__Sample = Sample "glitch:5" :: Sample
glitch_6__Sample = Sample "glitch:6" :: Sample
glitch_7__Sample = Sample "glitch:7" :: Sample
haw_0__Sample = Sample "haw:0" :: Sample
haw_1__Sample = Sample "haw:1" :: Sample
haw_2__Sample = Sample "haw:2" :: Sample
haw_3__Sample = Sample "haw:3" :: Sample
haw_4__Sample = Sample "haw:4" :: Sample
haw_5__Sample = Sample "haw:5" :: Sample
popkick_0__Sample = Sample "popkick:0" :: Sample
popkick_1__Sample = Sample "popkick:1" :: Sample
popkick_2__Sample = Sample "popkick:2" :: Sample
popkick_3__Sample = Sample "popkick:3" :: Sample
popkick_4__Sample = Sample "popkick:4" :: Sample
popkick_5__Sample = Sample "popkick:5" :: Sample
popkick_6__Sample = Sample "popkick:6" :: Sample
popkick_7__Sample = Sample "popkick:7" :: Sample
popkick_8__Sample = Sample "popkick:8" :: Sample
popkick_9__Sample = Sample "popkick:9" :: Sample
breaks157_0__Sample = Sample "breaks157:0" :: Sample
gtr_0__Sample = Sample "gtr:0" :: Sample
gtr_1__Sample = Sample "gtr:1" :: Sample
gtr_2__Sample = Sample "gtr:2" :: Sample
clubkick_0__Sample = Sample "clubkick:0" :: Sample
clubkick_1__Sample = Sample "clubkick:1" :: Sample
clubkick_2__Sample = Sample "clubkick:2" :: Sample
clubkick_3__Sample = Sample "clubkick:3" :: Sample
clubkick_4__Sample = Sample "clubkick:4" :: Sample
breaks152_0__Sample = Sample "breaks152:0" :: Sample
x_808bd_0__Sample = Sample "x_808bd:0" :: Sample
x_808bd_1__Sample = Sample "x_808bd:1" :: Sample
x_808bd_2__Sample = Sample "x_808bd:2" :: Sample
x_808bd_3__Sample = Sample "x_808bd:3" :: Sample
x_808bd_4__Sample = Sample "x_808bd:4" :: Sample
x_808bd_5__Sample = Sample "x_808bd:5" :: Sample
x_808bd_6__Sample = Sample "x_808bd:6" :: Sample
x_808bd_7__Sample = Sample "x_808bd:7" :: Sample
x_808bd_8__Sample = Sample "x_808bd:8" :: Sample
x_808bd_9__Sample = Sample "x_808bd:9" :: Sample
x_808bd_10__Sample = Sample "x_808bd:10" :: Sample
x_808bd_11__Sample = Sample "x_808bd:11" :: Sample
x_808bd_12__Sample = Sample "x_808bd:12" :: Sample
x_808bd_13__Sample = Sample "x_808bd:13" :: Sample
x_808bd_14__Sample = Sample "x_808bd:14" :: Sample
x_808bd_15__Sample = Sample "x_808bd:15" :: Sample
x_808bd_16__Sample = Sample "x_808bd:16" :: Sample
x_808bd_17__Sample = Sample "x_808bd:17" :: Sample
x_808bd_18__Sample = Sample "x_808bd:18" :: Sample
x_808bd_19__Sample = Sample "x_808bd:19" :: Sample
x_808bd_20__Sample = Sample "x_808bd:20" :: Sample
x_808bd_21__Sample = Sample "x_808bd:21" :: Sample
x_808bd_22__Sample = Sample "x_808bd:22" :: Sample
x_808bd_23__Sample = Sample "x_808bd:23" :: Sample
x_808bd_24__Sample = Sample "x_808bd:24" :: Sample
miniyeah_0__Sample = Sample "miniyeah:0" :: Sample
miniyeah_1__Sample = Sample "miniyeah:1" :: Sample
miniyeah_2__Sample = Sample "miniyeah:2" :: Sample
miniyeah_3__Sample = Sample "miniyeah:3" :: Sample
if_0__Sample = Sample "if:0" :: Sample
if_1__Sample = Sample "if:1" :: Sample
if_2__Sample = Sample "if:2" :: Sample
if_3__Sample = Sample "if:3" :: Sample
if_4__Sample = Sample "if:4" :: Sample
x_808oh_0__Sample = Sample "x_808oh:0" :: Sample
x_808oh_1__Sample = Sample "x_808oh:1" :: Sample
x_808oh_2__Sample = Sample "x_808oh:2" :: Sample
x_808oh_3__Sample = Sample "x_808oh:3" :: Sample
x_808oh_4__Sample = Sample "x_808oh:4" :: Sample
house_0__Sample = Sample "house:0" :: Sample
house_1__Sample = Sample "house:1" :: Sample
house_2__Sample = Sample "house:2" :: Sample
house_3__Sample = Sample "house:3" :: Sample
house_4__Sample = Sample "house:4" :: Sample
house_5__Sample = Sample "house:5" :: Sample
house_6__Sample = Sample "house:6" :: Sample
house_7__Sample = Sample "house:7" :: Sample
dr_0__Sample = Sample "dr:0" :: Sample
dr_1__Sample = Sample "dr:1" :: Sample
dr_2__Sample = Sample "dr:2" :: Sample
dr_3__Sample = Sample "dr:3" :: Sample
dr_4__Sample = Sample "dr:4" :: Sample
dr_5__Sample = Sample "dr:5" :: Sample
dr_6__Sample = Sample "dr:6" :: Sample
dr_7__Sample = Sample "dr:7" :: Sample
dr_8__Sample = Sample "dr:8" :: Sample
dr_9__Sample = Sample "dr:9" :: Sample
dr_10__Sample = Sample "dr:10" :: Sample
dr_11__Sample = Sample "dr:11" :: Sample
dr_12__Sample = Sample "dr:12" :: Sample
dr_13__Sample = Sample "dr:13" :: Sample
dr_14__Sample = Sample "dr:14" :: Sample
dr_15__Sample = Sample "dr:15" :: Sample
dr_16__Sample = Sample "dr:16" :: Sample
dr_17__Sample = Sample "dr:17" :: Sample
dr_18__Sample = Sample "dr:18" :: Sample
dr_19__Sample = Sample "dr:19" :: Sample
dr_20__Sample = Sample "dr:20" :: Sample
dr_21__Sample = Sample "dr:21" :: Sample
dr_22__Sample = Sample "dr:22" :: Sample
dr_23__Sample = Sample "dr:23" :: Sample
dr_24__Sample = Sample "dr:24" :: Sample
dr_25__Sample = Sample "dr:25" :: Sample
dr_26__Sample = Sample "dr:26" :: Sample
dr_27__Sample = Sample "dr:27" :: Sample
dr_28__Sample = Sample "dr:28" :: Sample
dr_29__Sample = Sample "dr:29" :: Sample
dr_30__Sample = Sample "dr:30" :: Sample
dr_31__Sample = Sample "dr:31" :: Sample
dr_32__Sample = Sample "dr:32" :: Sample
dr_33__Sample = Sample "dr:33" :: Sample
dr_34__Sample = Sample "dr:34" :: Sample
dr_35__Sample = Sample "dr:35" :: Sample
dr_36__Sample = Sample "dr:36" :: Sample
dr_37__Sample = Sample "dr:37" :: Sample
dr_38__Sample = Sample "dr:38" :: Sample
dr_39__Sample = Sample "dr:39" :: Sample
dr_40__Sample = Sample "dr:40" :: Sample
dr_41__Sample = Sample "dr:41" :: Sample
dr55_0__Sample = Sample "dr55:0" :: Sample
dr55_1__Sample = Sample "dr55:1" :: Sample
dr55_2__Sample = Sample "dr55:2" :: Sample
dr55_3__Sample = Sample "dr55:3" :: Sample
bass_0__Sample = Sample "bass:0" :: Sample
bass_1__Sample = Sample "bass:1" :: Sample
bass_2__Sample = Sample "bass:2" :: Sample
bass_3__Sample = Sample "bass:3" :: Sample
ho_0__Sample = Sample "ho:0" :: Sample
ho_1__Sample = Sample "ho:1" :: Sample
ho_2__Sample = Sample "ho:2" :: Sample
ho_3__Sample = Sample "ho:3" :: Sample
ho_4__Sample = Sample "ho:4" :: Sample
ho_5__Sample = Sample "ho:5" :: Sample
hardkick_0__Sample = Sample "hardkick:0" :: Sample
hardkick_1__Sample = Sample "hardkick:1" :: Sample
hardkick_2__Sample = Sample "hardkick:2" :: Sample
hardkick_3__Sample = Sample "hardkick:3" :: Sample
hardkick_4__Sample = Sample "hardkick:4" :: Sample
hardkick_5__Sample = Sample "hardkick:5" :: Sample
x_808hc_0__Sample = Sample "x_808hc:0" :: Sample
x_808hc_1__Sample = Sample "x_808hc:1" :: Sample
x_808hc_2__Sample = Sample "x_808hc:2" :: Sample
x_808hc_3__Sample = Sample "x_808hc:3" :: Sample
x_808hc_4__Sample = Sample "x_808hc:4" :: Sample
hit_0__Sample = Sample "hit:0" :: Sample
hit_1__Sample = Sample "hit:1" :: Sample
hit_2__Sample = Sample "hit:2" :: Sample
hit_3__Sample = Sample "hit:3" :: Sample
hit_4__Sample = Sample "hit:4" :: Sample
hit_5__Sample = Sample "hit:5" :: Sample
breaks165_0__Sample = Sample "breaks165:0" :: Sample
dr2_0__Sample = Sample "dr2:0" :: Sample
dr2_1__Sample = Sample "dr2:1" :: Sample
dr2_2__Sample = Sample "dr2:2" :: Sample
dr2_3__Sample = Sample "dr2:3" :: Sample
dr2_4__Sample = Sample "dr2:4" :: Sample
dr2_5__Sample = Sample "dr2:5" :: Sample
tabla_0__Sample = Sample "tabla:0" :: Sample
tabla_1__Sample = Sample "tabla:1" :: Sample
tabla_2__Sample = Sample "tabla:2" :: Sample
tabla_3__Sample = Sample "tabla:3" :: Sample
tabla_4__Sample = Sample "tabla:4" :: Sample
tabla_5__Sample = Sample "tabla:5" :: Sample
tabla_6__Sample = Sample "tabla:6" :: Sample
tabla_7__Sample = Sample "tabla:7" :: Sample
tabla_8__Sample = Sample "tabla:8" :: Sample
tabla_9__Sample = Sample "tabla:9" :: Sample
tabla_10__Sample = Sample "tabla:10" :: Sample
tabla_11__Sample = Sample "tabla:11" :: Sample
tabla_12__Sample = Sample "tabla:12" :: Sample
tabla_13__Sample = Sample "tabla:13" :: Sample
tabla_14__Sample = Sample "tabla:14" :: Sample
tabla_15__Sample = Sample "tabla:15" :: Sample
tabla_16__Sample = Sample "tabla:16" :: Sample
tabla_17__Sample = Sample "tabla:17" :: Sample
tabla_18__Sample = Sample "tabla:18" :: Sample
tabla_19__Sample = Sample "tabla:19" :: Sample
tabla_20__Sample = Sample "tabla:20" :: Sample
tabla_21__Sample = Sample "tabla:21" :: Sample
tabla_22__Sample = Sample "tabla:22" :: Sample
tabla_23__Sample = Sample "tabla:23" :: Sample
tabla_24__Sample = Sample "tabla:24" :: Sample
tabla_25__Sample = Sample "tabla:25" :: Sample
dork2_0__Sample = Sample "dork2:0" :: Sample
dork2_1__Sample = Sample "dork2:1" :: Sample
dork2_2__Sample = Sample "dork2:2" :: Sample
dork2_3__Sample = Sample "dork2:3" :: Sample
hc_0__Sample = Sample "hc:0" :: Sample
hc_1__Sample = Sample "hc:1" :: Sample
hc_2__Sample = Sample "hc:2" :: Sample
hc_3__Sample = Sample "hc:3" :: Sample
hc_4__Sample = Sample "hc:4" :: Sample
hc_5__Sample = Sample "hc:5" :: Sample
bassfoo_0__Sample = Sample "bassfoo:0" :: Sample
bassfoo_1__Sample = Sample "bassfoo:1" :: Sample
bassfoo_2__Sample = Sample "bassfoo:2" :: Sample
seawolf_0__Sample = Sample "seawolf:0" :: Sample
seawolf_1__Sample = Sample "seawolf:1" :: Sample
seawolf_2__Sample = Sample "seawolf:2" :: Sample
cp_0__Sample = Sample "cp:0" :: Sample
cp_1__Sample = Sample "cp:1" :: Sample
jazz_0__Sample = Sample "jazz:0" :: Sample
jazz_1__Sample = Sample "jazz:1" :: Sample
jazz_2__Sample = Sample "jazz:2" :: Sample
jazz_3__Sample = Sample "jazz:3" :: Sample
jazz_4__Sample = Sample "jazz:4" :: Sample
jazz_5__Sample = Sample "jazz:5" :: Sample
jazz_6__Sample = Sample "jazz:6" :: Sample
jazz_7__Sample = Sample "jazz:7" :: Sample
juno_0__Sample = Sample "juno:0" :: Sample
juno_1__Sample = Sample "juno:1" :: Sample
juno_2__Sample = Sample "juno:2" :: Sample
juno_3__Sample = Sample "juno:3" :: Sample
juno_4__Sample = Sample "juno:4" :: Sample
juno_5__Sample = Sample "juno:5" :: Sample
juno_6__Sample = Sample "juno:6" :: Sample
juno_7__Sample = Sample "juno:7" :: Sample
juno_8__Sample = Sample "juno:8" :: Sample
juno_9__Sample = Sample "juno:9" :: Sample
juno_10__Sample = Sample "juno:10" :: Sample
juno_11__Sample = Sample "juno:11" :: Sample
birds_0__Sample = Sample "birds:0" :: Sample
birds_1__Sample = Sample "birds:1" :: Sample
birds_2__Sample = Sample "birds:2" :: Sample
birds_3__Sample = Sample "birds:3" :: Sample
birds_4__Sample = Sample "birds:4" :: Sample
birds_5__Sample = Sample "birds:5" :: Sample
birds_6__Sample = Sample "birds:6" :: Sample
birds_7__Sample = Sample "birds:7" :: Sample
birds_8__Sample = Sample "birds:8" :: Sample
birds_9__Sample = Sample "birds:9" :: Sample
glasstap_0__Sample = Sample "glasstap:0" :: Sample
glasstap_1__Sample = Sample "glasstap:1" :: Sample
glasstap_2__Sample = Sample "glasstap:2" :: Sample
bass1_0__Sample = Sample "bass1:0" :: Sample
bass1_1__Sample = Sample "bass1:1" :: Sample
bass1_2__Sample = Sample "bass1:2" :: Sample
bass1_3__Sample = Sample "bass1:3" :: Sample
bass1_4__Sample = Sample "bass1:4" :: Sample
bass1_5__Sample = Sample "bass1:5" :: Sample
bass1_6__Sample = Sample "bass1:6" :: Sample
bass1_7__Sample = Sample "bass1:7" :: Sample
bass1_8__Sample = Sample "bass1:8" :: Sample
bass1_9__Sample = Sample "bass1:9" :: Sample
bass1_10__Sample = Sample "bass1:10" :: Sample
bass1_11__Sample = Sample "bass1:11" :: Sample
bass1_12__Sample = Sample "bass1:12" :: Sample
bass1_13__Sample = Sample "bass1:13" :: Sample
bass1_14__Sample = Sample "bass1:14" :: Sample
bass1_15__Sample = Sample "bass1:15" :: Sample
bass1_16__Sample = Sample "bass1:16" :: Sample
bass1_17__Sample = Sample "bass1:17" :: Sample
bass1_18__Sample = Sample "bass1:18" :: Sample
bass1_19__Sample = Sample "bass1:19" :: Sample
bass1_20__Sample = Sample "bass1:20" :: Sample
bass1_21__Sample = Sample "bass1:21" :: Sample
bass1_22__Sample = Sample "bass1:22" :: Sample
bass1_23__Sample = Sample "bass1:23" :: Sample
bass1_24__Sample = Sample "bass1:24" :: Sample
bass1_25__Sample = Sample "bass1:25" :: Sample
bass1_26__Sample = Sample "bass1:26" :: Sample
bass1_27__Sample = Sample "bass1:27" :: Sample
bass1_28__Sample = Sample "bass1:28" :: Sample
bass1_29__Sample = Sample "bass1:29" :: Sample
hh27_0__Sample = Sample "hh27:0" :: Sample
hh27_1__Sample = Sample "hh27:1" :: Sample
hh27_2__Sample = Sample "hh27:2" :: Sample
hh27_3__Sample = Sample "hh27:3" :: Sample
hh27_4__Sample = Sample "hh27:4" :: Sample
hh27_5__Sample = Sample "hh27:5" :: Sample
hh27_6__Sample = Sample "hh27:6" :: Sample
hh27_7__Sample = Sample "hh27:7" :: Sample
hh27_8__Sample = Sample "hh27:8" :: Sample
hh27_9__Sample = Sample "hh27:9" :: Sample
hh27_10__Sample = Sample "hh27:10" :: Sample
hh27_11__Sample = Sample "hh27:11" :: Sample
hh27_12__Sample = Sample "hh27:12" :: Sample
x_808_0__Sample = Sample "x_808:0" :: Sample
x_808_1__Sample = Sample "x_808:1" :: Sample
x_808_2__Sample = Sample "x_808:2" :: Sample
x_808_3__Sample = Sample "x_808:3" :: Sample
x_808_4__Sample = Sample "x_808:4" :: Sample
x_808_5__Sample = Sample "x_808:5" :: Sample
notes_0__Sample = Sample "notes:0" :: Sample
notes_1__Sample = Sample "notes:1" :: Sample
notes_2__Sample = Sample "notes:2" :: Sample
notes_3__Sample = Sample "notes:3" :: Sample
notes_4__Sample = Sample "notes:4" :: Sample
notes_5__Sample = Sample "notes:5" :: Sample
notes_6__Sample = Sample "notes:6" :: Sample
notes_7__Sample = Sample "notes:7" :: Sample
notes_8__Sample = Sample "notes:8" :: Sample
notes_9__Sample = Sample "notes:9" :: Sample
notes_10__Sample = Sample "notes:10" :: Sample
notes_11__Sample = Sample "notes:11" :: Sample
notes_12__Sample = Sample "notes:12" :: Sample
notes_13__Sample = Sample "notes:13" :: Sample
notes_14__Sample = Sample "notes:14" :: Sample
xmas_0__Sample = Sample "xmas:0" :: Sample
erk_0__Sample = Sample "erk:0" :: Sample
x_808mt_0__Sample = Sample "x_808mt:0" :: Sample
x_808mt_1__Sample = Sample "x_808mt:1" :: Sample
x_808mt_2__Sample = Sample "x_808mt:2" :: Sample
x_808mt_3__Sample = Sample "x_808mt:3" :: Sample
x_808mt_4__Sample = Sample "x_808mt:4" :: Sample
lighter_0__Sample = Sample "lighter:0" :: Sample
lighter_1__Sample = Sample "lighter:1" :: Sample
lighter_2__Sample = Sample "lighter:2" :: Sample
lighter_3__Sample = Sample "lighter:3" :: Sample
lighter_4__Sample = Sample "lighter:4" :: Sample
lighter_5__Sample = Sample "lighter:5" :: Sample
lighter_6__Sample = Sample "lighter:6" :: Sample
lighter_7__Sample = Sample "lighter:7" :: Sample
lighter_8__Sample = Sample "lighter:8" :: Sample
lighter_9__Sample = Sample "lighter:9" :: Sample
lighter_10__Sample = Sample "lighter:10" :: Sample
lighter_11__Sample = Sample "lighter:11" :: Sample
lighter_12__Sample = Sample "lighter:12" :: Sample
lighter_13__Sample = Sample "lighter:13" :: Sample
lighter_14__Sample = Sample "lighter:14" :: Sample
lighter_15__Sample = Sample "lighter:15" :: Sample
lighter_16__Sample = Sample "lighter:16" :: Sample
lighter_17__Sample = Sample "lighter:17" :: Sample
lighter_18__Sample = Sample "lighter:18" :: Sample
lighter_19__Sample = Sample "lighter:19" :: Sample
lighter_20__Sample = Sample "lighter:20" :: Sample
lighter_21__Sample = Sample "lighter:21" :: Sample
lighter_22__Sample = Sample "lighter:22" :: Sample
lighter_23__Sample = Sample "lighter:23" :: Sample
lighter_24__Sample = Sample "lighter:24" :: Sample
lighter_25__Sample = Sample "lighter:25" :: Sample
lighter_26__Sample = Sample "lighter:26" :: Sample
lighter_27__Sample = Sample "lighter:27" :: Sample
lighter_28__Sample = Sample "lighter:28" :: Sample
lighter_29__Sample = Sample "lighter:29" :: Sample
lighter_30__Sample = Sample "lighter:30" :: Sample
lighter_31__Sample = Sample "lighter:31" :: Sample
lighter_32__Sample = Sample "lighter:32" :: Sample
cb_0__Sample = Sample "cb:0" :: Sample
subroc3d_0__Sample = Sample "subroc3d:0" :: Sample
subroc3d_1__Sample = Sample "subroc3d:1" :: Sample
subroc3d_2__Sample = Sample "subroc3d:2" :: Sample
subroc3d_3__Sample = Sample "subroc3d:3" :: Sample
subroc3d_4__Sample = Sample "subroc3d:4" :: Sample
subroc3d_5__Sample = Sample "subroc3d:5" :: Sample
subroc3d_6__Sample = Sample "subroc3d:6" :: Sample
subroc3d_7__Sample = Sample "subroc3d:7" :: Sample
subroc3d_8__Sample = Sample "subroc3d:8" :: Sample
subroc3d_9__Sample = Sample "subroc3d:9" :: Sample
subroc3d_10__Sample = Sample "subroc3d:10" :: Sample
ul_0__Sample = Sample "ul:0" :: Sample
ul_1__Sample = Sample "ul:1" :: Sample
ul_2__Sample = Sample "ul:2" :: Sample
ul_3__Sample = Sample "ul:3" :: Sample
ul_4__Sample = Sample "ul:4" :: Sample
ul_5__Sample = Sample "ul:5" :: Sample
ul_6__Sample = Sample "ul:6" :: Sample
ul_7__Sample = Sample "ul:7" :: Sample
ul_8__Sample = Sample "ul:8" :: Sample
ul_9__Sample = Sample "ul:9" :: Sample
gab_0__Sample = Sample "gab:0" :: Sample
gab_1__Sample = Sample "gab:1" :: Sample
gab_2__Sample = Sample "gab:2" :: Sample
gab_3__Sample = Sample "gab:3" :: Sample
gab_4__Sample = Sample "gab:4" :: Sample
gab_5__Sample = Sample "gab:5" :: Sample
gab_6__Sample = Sample "gab:6" :: Sample
gab_7__Sample = Sample "gab:7" :: Sample
gab_8__Sample = Sample "gab:8" :: Sample
gab_9__Sample = Sample "gab:9" :: Sample
monsterb_0__Sample = Sample "monsterb:0" :: Sample
monsterb_1__Sample = Sample "monsterb:1" :: Sample
monsterb_2__Sample = Sample "monsterb:2" :: Sample
monsterb_3__Sample = Sample "monsterb:3" :: Sample
monsterb_4__Sample = Sample "monsterb:4" :: Sample
monsterb_5__Sample = Sample "monsterb:5" :: Sample
diphone_0__Sample = Sample "diphone:0" :: Sample
diphone_1__Sample = Sample "diphone:1" :: Sample
diphone_2__Sample = Sample "diphone:2" :: Sample
diphone_3__Sample = Sample "diphone:3" :: Sample
diphone_4__Sample = Sample "diphone:4" :: Sample
diphone_5__Sample = Sample "diphone:5" :: Sample
diphone_6__Sample = Sample "diphone:6" :: Sample
diphone_7__Sample = Sample "diphone:7" :: Sample
diphone_8__Sample = Sample "diphone:8" :: Sample
diphone_9__Sample = Sample "diphone:9" :: Sample
diphone_10__Sample = Sample "diphone:10" :: Sample
diphone_11__Sample = Sample "diphone:11" :: Sample
diphone_12__Sample = Sample "diphone:12" :: Sample
diphone_13__Sample = Sample "diphone:13" :: Sample
diphone_14__Sample = Sample "diphone:14" :: Sample
diphone_15__Sample = Sample "diphone:15" :: Sample
diphone_16__Sample = Sample "diphone:16" :: Sample
diphone_17__Sample = Sample "diphone:17" :: Sample
diphone_18__Sample = Sample "diphone:18" :: Sample
diphone_19__Sample = Sample "diphone:19" :: Sample
diphone_20__Sample = Sample "diphone:20" :: Sample
diphone_21__Sample = Sample "diphone:21" :: Sample
diphone_22__Sample = Sample "diphone:22" :: Sample
diphone_23__Sample = Sample "diphone:23" :: Sample
diphone_24__Sample = Sample "diphone:24" :: Sample
diphone_25__Sample = Sample "diphone:25" :: Sample
diphone_26__Sample = Sample "diphone:26" :: Sample
diphone_27__Sample = Sample "diphone:27" :: Sample
diphone_28__Sample = Sample "diphone:28" :: Sample
diphone_29__Sample = Sample "diphone:29" :: Sample
diphone_30__Sample = Sample "diphone:30" :: Sample
diphone_31__Sample = Sample "diphone:31" :: Sample
diphone_32__Sample = Sample "diphone:32" :: Sample
diphone_33__Sample = Sample "diphone:33" :: Sample
diphone_34__Sample = Sample "diphone:34" :: Sample
diphone_35__Sample = Sample "diphone:35" :: Sample
diphone_36__Sample = Sample "diphone:36" :: Sample
diphone_37__Sample = Sample "diphone:37" :: Sample
clak_0__Sample = Sample "clak:0" :: Sample
clak_1__Sample = Sample "clak:1" :: Sample
sitar_0__Sample = Sample "sitar:0" :: Sample
sitar_1__Sample = Sample "sitar:1" :: Sample
sitar_2__Sample = Sample "sitar:2" :: Sample
sitar_3__Sample = Sample "sitar:3" :: Sample
sitar_4__Sample = Sample "sitar:4" :: Sample
sitar_5__Sample = Sample "sitar:5" :: Sample
sitar_6__Sample = Sample "sitar:6" :: Sample
sitar_7__Sample = Sample "sitar:7" :: Sample
ab_0__Sample = Sample "ab:0" :: Sample
ab_1__Sample = Sample "ab:1" :: Sample
ab_2__Sample = Sample "ab:2" :: Sample
ab_3__Sample = Sample "ab:3" :: Sample
ab_4__Sample = Sample "ab:4" :: Sample
ab_5__Sample = Sample "ab:5" :: Sample
ab_6__Sample = Sample "ab:6" :: Sample
ab_7__Sample = Sample "ab:7" :: Sample
ab_8__Sample = Sample "ab:8" :: Sample
ab_9__Sample = Sample "ab:9" :: Sample
ab_10__Sample = Sample "ab:10" :: Sample
ab_11__Sample = Sample "ab:11" :: Sample
cr_0__Sample = Sample "cr:0" :: Sample
cr_1__Sample = Sample "cr:1" :: Sample
cr_2__Sample = Sample "cr:2" :: Sample
cr_3__Sample = Sample "cr:3" :: Sample
cr_4__Sample = Sample "cr:4" :: Sample
cr_5__Sample = Sample "cr:5" :: Sample
tacscan_0__Sample = Sample "tacscan:0" :: Sample
tacscan_1__Sample = Sample "tacscan:1" :: Sample
tacscan_2__Sample = Sample "tacscan:2" :: Sample
tacscan_3__Sample = Sample "tacscan:3" :: Sample
tacscan_4__Sample = Sample "tacscan:4" :: Sample
tacscan_5__Sample = Sample "tacscan:5" :: Sample
tacscan_6__Sample = Sample "tacscan:6" :: Sample
tacscan_7__Sample = Sample "tacscan:7" :: Sample
tacscan_8__Sample = Sample "tacscan:8" :: Sample
tacscan_9__Sample = Sample "tacscan:9" :: Sample
tacscan_10__Sample = Sample "tacscan:10" :: Sample
tacscan_11__Sample = Sample "tacscan:11" :: Sample
tacscan_12__Sample = Sample "tacscan:12" :: Sample
tacscan_13__Sample = Sample "tacscan:13" :: Sample
tacscan_14__Sample = Sample "tacscan:14" :: Sample
tacscan_15__Sample = Sample "tacscan:15" :: Sample
tacscan_16__Sample = Sample "tacscan:16" :: Sample
tacscan_17__Sample = Sample "tacscan:17" :: Sample
tacscan_18__Sample = Sample "tacscan:18" :: Sample
tacscan_19__Sample = Sample "tacscan:19" :: Sample
tacscan_20__Sample = Sample "tacscan:20" :: Sample
tacscan_21__Sample = Sample "tacscan:21" :: Sample
v_0__Sample = Sample "v:0" :: Sample
v_1__Sample = Sample "v:1" :: Sample
v_2__Sample = Sample "v:2" :: Sample
v_3__Sample = Sample "v:3" :: Sample
v_4__Sample = Sample "v:4" :: Sample
v_5__Sample = Sample "v:5" :: Sample
bd_0__Sample = Sample "bd:0" :: Sample
bd_1__Sample = Sample "bd:1" :: Sample
bd_2__Sample = Sample "bd:2" :: Sample
bd_3__Sample = Sample "bd:3" :: Sample
bd_4__Sample = Sample "bd:4" :: Sample
bd_5__Sample = Sample "bd:5" :: Sample
bd_6__Sample = Sample "bd:6" :: Sample
bd_7__Sample = Sample "bd:7" :: Sample
bd_8__Sample = Sample "bd:8" :: Sample
bd_9__Sample = Sample "bd:9" :: Sample
bd_10__Sample = Sample "bd:10" :: Sample
bd_11__Sample = Sample "bd:11" :: Sample
bd_12__Sample = Sample "bd:12" :: Sample
bd_13__Sample = Sample "bd:13" :: Sample
bd_14__Sample = Sample "bd:14" :: Sample
bd_15__Sample = Sample "bd:15" :: Sample
bd_16__Sample = Sample "bd:16" :: Sample
bd_17__Sample = Sample "bd:17" :: Sample
bd_18__Sample = Sample "bd:18" :: Sample
bd_19__Sample = Sample "bd:19" :: Sample
bd_20__Sample = Sample "bd:20" :: Sample
bd_21__Sample = Sample "bd:21" :: Sample
bd_22__Sample = Sample "bd:22" :: Sample
bd_23__Sample = Sample "bd:23" :: Sample
rm_0__Sample = Sample "rm:0" :: Sample
rm_1__Sample = Sample "rm:1" :: Sample
blue_0__Sample = Sample "blue:0" :: Sample
blue_1__Sample = Sample "blue:1" :: Sample
latibro_0__Sample = Sample "latibro:0" :: Sample
latibro_1__Sample = Sample "latibro:1" :: Sample
latibro_2__Sample = Sample "latibro:2" :: Sample
latibro_3__Sample = Sample "latibro:3" :: Sample
latibro_4__Sample = Sample "latibro:4" :: Sample
latibro_5__Sample = Sample "latibro:5" :: Sample
latibro_6__Sample = Sample "latibro:6" :: Sample
latibro_7__Sample = Sample "latibro:7" :: Sample
dr_few_0__Sample = Sample "dr_few:0" :: Sample
dr_few_1__Sample = Sample "dr_few:1" :: Sample
dr_few_2__Sample = Sample "dr_few:2" :: Sample
dr_few_3__Sample = Sample "dr_few:3" :: Sample
dr_few_4__Sample = Sample "dr_few:4" :: Sample
dr_few_5__Sample = Sample "dr_few:5" :: Sample
dr_few_6__Sample = Sample "dr_few:6" :: Sample
dr_few_7__Sample = Sample "dr_few:7" :: Sample
rave2_0__Sample = Sample "rave2:0" :: Sample
rave2_1__Sample = Sample "rave2:1" :: Sample
rave2_2__Sample = Sample "rave2:2" :: Sample
rave2_3__Sample = Sample "rave2:3" :: Sample
rave2_4__Sample = Sample "rave2:4" :: Sample
rave2_5__Sample = Sample "rave2:5" :: Sample
koy_0__Sample = Sample "koy:0" :: Sample
koy_1__Sample = Sample "koy:1" :: Sample
glitch2_0__Sample = Sample "glitch2:0" :: Sample
glitch2_1__Sample = Sample "glitch2:1" :: Sample
glitch2_2__Sample = Sample "glitch2:2" :: Sample
glitch2_3__Sample = Sample "glitch2:3" :: Sample
glitch2_4__Sample = Sample "glitch2:4" :: Sample
glitch2_5__Sample = Sample "glitch2:5" :: Sample
glitch2_6__Sample = Sample "glitch2:6" :: Sample
glitch2_7__Sample = Sample "glitch2:7" :: Sample
hmm_0__Sample = Sample "hmm:0" :: Sample
arp_0__Sample = Sample "arp:0" :: Sample
arp_1__Sample = Sample "arp:1" :: Sample
made2_0__Sample = Sample "made2:0" :: Sample
uxay_0__Sample = Sample "uxay:0" :: Sample
uxay_1__Sample = Sample "uxay:1" :: Sample
uxay_2__Sample = Sample "uxay:2" :: Sample
stomp_0__Sample = Sample "stomp:0" :: Sample
stomp_1__Sample = Sample "stomp:1" :: Sample
stomp_2__Sample = Sample "stomp:2" :: Sample
stomp_3__Sample = Sample "stomp:3" :: Sample
stomp_4__Sample = Sample "stomp:4" :: Sample
stomp_5__Sample = Sample "stomp:5" :: Sample
stomp_6__Sample = Sample "stomp:6" :: Sample
stomp_7__Sample = Sample "stomp:7" :: Sample
stomp_8__Sample = Sample "stomp:8" :: Sample
stomp_9__Sample = Sample "stomp:9" :: Sample
tech_0__Sample = Sample "tech:0" :: Sample
tech_1__Sample = Sample "tech:1" :: Sample
tech_2__Sample = Sample "tech:2" :: Sample
tech_3__Sample = Sample "tech:3" :: Sample
tech_4__Sample = Sample "tech:4" :: Sample
tech_5__Sample = Sample "tech:5" :: Sample
tech_6__Sample = Sample "tech:6" :: Sample
tech_7__Sample = Sample "tech:7" :: Sample
tech_8__Sample = Sample "tech:8" :: Sample
tech_9__Sample = Sample "tech:9" :: Sample
tech_10__Sample = Sample "tech:10" :: Sample
tech_11__Sample = Sample "tech:11" :: Sample
tech_12__Sample = Sample "tech:12" :: Sample
sn_0__Sample = Sample "sn:0" :: Sample
sn_1__Sample = Sample "sn:1" :: Sample
sn_2__Sample = Sample "sn:2" :: Sample
sn_3__Sample = Sample "sn:3" :: Sample
sn_4__Sample = Sample "sn:4" :: Sample
sn_5__Sample = Sample "sn:5" :: Sample
sn_6__Sample = Sample "sn:6" :: Sample
sn_7__Sample = Sample "sn:7" :: Sample
sn_8__Sample = Sample "sn:8" :: Sample
sn_9__Sample = Sample "sn:9" :: Sample
sn_10__Sample = Sample "sn:10" :: Sample
sn_11__Sample = Sample "sn:11" :: Sample
sn_12__Sample = Sample "sn:12" :: Sample
sn_13__Sample = Sample "sn:13" :: Sample
sn_14__Sample = Sample "sn:14" :: Sample
sn_15__Sample = Sample "sn:15" :: Sample
sn_16__Sample = Sample "sn:16" :: Sample
sn_17__Sample = Sample "sn:17" :: Sample
sn_18__Sample = Sample "sn:18" :: Sample
sn_19__Sample = Sample "sn:19" :: Sample
sn_20__Sample = Sample "sn:20" :: Sample
sn_21__Sample = Sample "sn:21" :: Sample
sn_22__Sample = Sample "sn:22" :: Sample
sn_23__Sample = Sample "sn:23" :: Sample
sn_24__Sample = Sample "sn:24" :: Sample
sn_25__Sample = Sample "sn:25" :: Sample
sn_26__Sample = Sample "sn:26" :: Sample
sn_27__Sample = Sample "sn:27" :: Sample
sn_28__Sample = Sample "sn:28" :: Sample
sn_29__Sample = Sample "sn:29" :: Sample
sn_30__Sample = Sample "sn:30" :: Sample
sn_31__Sample = Sample "sn:31" :: Sample
sn_32__Sample = Sample "sn:32" :: Sample
sn_33__Sample = Sample "sn:33" :: Sample
sn_34__Sample = Sample "sn:34" :: Sample
sn_35__Sample = Sample "sn:35" :: Sample
sn_36__Sample = Sample "sn:36" :: Sample
sn_37__Sample = Sample "sn:37" :: Sample
sn_38__Sample = Sample "sn:38" :: Sample
sn_39__Sample = Sample "sn:39" :: Sample
sn_40__Sample = Sample "sn:40" :: Sample
sn_41__Sample = Sample "sn:41" :: Sample
sn_42__Sample = Sample "sn:42" :: Sample
sn_43__Sample = Sample "sn:43" :: Sample
sn_44__Sample = Sample "sn:44" :: Sample
sn_45__Sample = Sample "sn:45" :: Sample
sn_46__Sample = Sample "sn:46" :: Sample
sn_47__Sample = Sample "sn:47" :: Sample
sn_48__Sample = Sample "sn:48" :: Sample
sn_49__Sample = Sample "sn:49" :: Sample
sn_50__Sample = Sample "sn:50" :: Sample
sn_51__Sample = Sample "sn:51" :: Sample
less_0__Sample = Sample "less:0" :: Sample
less_1__Sample = Sample "less:1" :: Sample
less_2__Sample = Sample "less:2" :: Sample
less_3__Sample = Sample "less:3" :: Sample
off_0__Sample = Sample "off:0" :: Sample
x_808sd_0__Sample = Sample "x_808sd:0" :: Sample
x_808sd_1__Sample = Sample "x_808sd:1" :: Sample
x_808sd_2__Sample = Sample "x_808sd:2" :: Sample
x_808sd_3__Sample = Sample "x_808sd:3" :: Sample
x_808sd_4__Sample = Sample "x_808sd:4" :: Sample
x_808sd_5__Sample = Sample "x_808sd:5" :: Sample
x_808sd_6__Sample = Sample "x_808sd:6" :: Sample
x_808sd_7__Sample = Sample "x_808sd:7" :: Sample
x_808sd_8__Sample = Sample "x_808sd:8" :: Sample
x_808sd_9__Sample = Sample "x_808sd:9" :: Sample
x_808sd_10__Sample = Sample "x_808sd:10" :: Sample
x_808sd_11__Sample = Sample "x_808sd:11" :: Sample
x_808sd_12__Sample = Sample "x_808sd:12" :: Sample
x_808sd_13__Sample = Sample "x_808sd:13" :: Sample
x_808sd_14__Sample = Sample "x_808sd:14" :: Sample
x_808sd_15__Sample = Sample "x_808sd:15" :: Sample
x_808sd_16__Sample = Sample "x_808sd:16" :: Sample
x_808sd_17__Sample = Sample "x_808sd:17" :: Sample
x_808sd_18__Sample = Sample "x_808sd:18" :: Sample
x_808sd_19__Sample = Sample "x_808sd:19" :: Sample
x_808sd_20__Sample = Sample "x_808sd:20" :: Sample
x_808sd_21__Sample = Sample "x_808sd:21" :: Sample
x_808sd_22__Sample = Sample "x_808sd:22" :: Sample
x_808sd_23__Sample = Sample "x_808sd:23" :: Sample
x_808sd_24__Sample = Sample "x_808sd:24" :: Sample
trump_0__Sample = Sample "trump:0" :: Sample
trump_1__Sample = Sample "trump:1" :: Sample
trump_2__Sample = Sample "trump:2" :: Sample
trump_3__Sample = Sample "trump:3" :: Sample
trump_4__Sample = Sample "trump:4" :: Sample
trump_5__Sample = Sample "trump:5" :: Sample
trump_6__Sample = Sample "trump:6" :: Sample
trump_7__Sample = Sample "trump:7" :: Sample
trump_8__Sample = Sample "trump:8" :: Sample
trump_9__Sample = Sample "trump:9" :: Sample
trump_10__Sample = Sample "trump:10" :: Sample
bev_0__Sample = Sample "bev:0" :: Sample
bev_1__Sample = Sample "bev:1" :: Sample
pad_0__Sample = Sample "pad:0" :: Sample
pad_1__Sample = Sample "pad:1" :: Sample
pad_2__Sample = Sample "pad:2" :: Sample
led_0__Sample = Sample "led:0" :: Sample
perc_0__Sample = Sample "perc:0" :: Sample
perc_1__Sample = Sample "perc:1" :: Sample
perc_2__Sample = Sample "perc:2" :: Sample
perc_3__Sample = Sample "perc:3" :: Sample
perc_4__Sample = Sample "perc:4" :: Sample
perc_5__Sample = Sample "perc:5" :: Sample
pluck_0__Sample = Sample "pluck:0" :: Sample
pluck_1__Sample = Sample "pluck:1" :: Sample
pluck_2__Sample = Sample "pluck:2" :: Sample
pluck_3__Sample = Sample "pluck:3" :: Sample
pluck_4__Sample = Sample "pluck:4" :: Sample
pluck_5__Sample = Sample "pluck:5" :: Sample
pluck_6__Sample = Sample "pluck:6" :: Sample
pluck_7__Sample = Sample "pluck:7" :: Sample
pluck_8__Sample = Sample "pluck:8" :: Sample
pluck_9__Sample = Sample "pluck:9" :: Sample
pluck_10__Sample = Sample "pluck:10" :: Sample
pluck_11__Sample = Sample "pluck:11" :: Sample
pluck_12__Sample = Sample "pluck:12" :: Sample
pluck_13__Sample = Sample "pluck:13" :: Sample
pluck_14__Sample = Sample "pluck:14" :: Sample
pluck_15__Sample = Sample "pluck:15" :: Sample
pluck_16__Sample = Sample "pluck:16" :: Sample
bleep_0__Sample = Sample "bleep:0" :: Sample
bleep_1__Sample = Sample "bleep:1" :: Sample
bleep_2__Sample = Sample "bleep:2" :: Sample
bleep_3__Sample = Sample "bleep:3" :: Sample
bleep_4__Sample = Sample "bleep:4" :: Sample
bleep_5__Sample = Sample "bleep:5" :: Sample
bleep_6__Sample = Sample "bleep:6" :: Sample
bleep_7__Sample = Sample "bleep:7" :: Sample
bleep_8__Sample = Sample "bleep:8" :: Sample
bleep_9__Sample = Sample "bleep:9" :: Sample
bleep_10__Sample = Sample "bleep:10" :: Sample
bleep_11__Sample = Sample "bleep:11" :: Sample
bleep_12__Sample = Sample "bleep:12" :: Sample
ht_0__Sample = Sample "ht:0" :: Sample
ht_1__Sample = Sample "ht:1" :: Sample
ht_2__Sample = Sample "ht:2" :: Sample
ht_3__Sample = Sample "ht:3" :: Sample
ht_4__Sample = Sample "ht:4" :: Sample
ht_5__Sample = Sample "ht:5" :: Sample
ht_6__Sample = Sample "ht:6" :: Sample
ht_7__Sample = Sample "ht:7" :: Sample
ht_8__Sample = Sample "ht:8" :: Sample
ht_9__Sample = Sample "ht:9" :: Sample
ht_10__Sample = Sample "ht:10" :: Sample
ht_11__Sample = Sample "ht:11" :: Sample
ht_12__Sample = Sample "ht:12" :: Sample
ht_13__Sample = Sample "ht:13" :: Sample
ht_14__Sample = Sample "ht:14" :: Sample
ht_15__Sample = Sample "ht:15" :: Sample
ades4_0__Sample = Sample "ades4:0" :: Sample
ades4_1__Sample = Sample "ades4:1" :: Sample
ades4_2__Sample = Sample "ades4:2" :: Sample
ades4_3__Sample = Sample "ades4:3" :: Sample
ades4_4__Sample = Sample "ades4:4" :: Sample
ades4_5__Sample = Sample "ades4:5" :: Sample
proc_0__Sample = Sample "proc:0" :: Sample
proc_1__Sample = Sample "proc:1" :: Sample
gretsch_0__Sample = Sample "gretsch:0" :: Sample
gretsch_1__Sample = Sample "gretsch:1" :: Sample
gretsch_2__Sample = Sample "gretsch:2" :: Sample
gretsch_3__Sample = Sample "gretsch:3" :: Sample
gretsch_4__Sample = Sample "gretsch:4" :: Sample
gretsch_5__Sample = Sample "gretsch:5" :: Sample
gretsch_6__Sample = Sample "gretsch:6" :: Sample
gretsch_7__Sample = Sample "gretsch:7" :: Sample
gretsch_8__Sample = Sample "gretsch:8" :: Sample
gretsch_9__Sample = Sample "gretsch:9" :: Sample
gretsch_10__Sample = Sample "gretsch:10" :: Sample
gretsch_11__Sample = Sample "gretsch:11" :: Sample
gretsch_12__Sample = Sample "gretsch:12" :: Sample
gretsch_13__Sample = Sample "gretsch:13" :: Sample
gretsch_14__Sample = Sample "gretsch:14" :: Sample
gretsch_15__Sample = Sample "gretsch:15" :: Sample
gretsch_16__Sample = Sample "gretsch:16" :: Sample
gretsch_17__Sample = Sample "gretsch:17" :: Sample
gretsch_18__Sample = Sample "gretsch:18" :: Sample
gretsch_19__Sample = Sample "gretsch:19" :: Sample
gretsch_20__Sample = Sample "gretsch:20" :: Sample
gretsch_21__Sample = Sample "gretsch:21" :: Sample
gretsch_22__Sample = Sample "gretsch:22" :: Sample
gretsch_23__Sample = Sample "gretsch:23" :: Sample
outdoor_0__Sample = Sample "outdoor:0" :: Sample
outdoor_1__Sample = Sample "outdoor:1" :: Sample
outdoor_2__Sample = Sample "outdoor:2" :: Sample
outdoor_3__Sample = Sample "outdoor:3" :: Sample
outdoor_4__Sample = Sample "outdoor:4" :: Sample
outdoor_5__Sample = Sample "outdoor:5" :: Sample
techno_0__Sample = Sample "techno:0" :: Sample
techno_1__Sample = Sample "techno:1" :: Sample
techno_2__Sample = Sample "techno:2" :: Sample
techno_3__Sample = Sample "techno:3" :: Sample
techno_4__Sample = Sample "techno:4" :: Sample
techno_5__Sample = Sample "techno:5" :: Sample
techno_6__Sample = Sample "techno:6" :: Sample
ulgab_0__Sample = Sample "ulgab:0" :: Sample
ulgab_1__Sample = Sample "ulgab:1" :: Sample
ulgab_2__Sample = Sample "ulgab:2" :: Sample
ulgab_3__Sample = Sample "ulgab:3" :: Sample
ulgab_4__Sample = Sample "ulgab:4" :: Sample
breaks125_0__Sample = Sample "breaks125:0" :: Sample
breaks125_1__Sample = Sample "breaks125:1" :: Sample
bin_0__Sample = Sample "bin:0" :: Sample
bin_1__Sample = Sample "bin:1" :: Sample
x_808mc_0__Sample = Sample "x_808mc:0" :: Sample
x_808mc_1__Sample = Sample "x_808mc:1" :: Sample
x_808mc_2__Sample = Sample "x_808mc:2" :: Sample
x_808mc_3__Sample = Sample "x_808mc:3" :: Sample
x_808mc_4__Sample = Sample "x_808mc:4" :: Sample
lt_0__Sample = Sample "lt:0" :: Sample
lt_1__Sample = Sample "lt:1" :: Sample
lt_2__Sample = Sample "lt:2" :: Sample
lt_3__Sample = Sample "lt:3" :: Sample
lt_4__Sample = Sample "lt:4" :: Sample
lt_5__Sample = Sample "lt:5" :: Sample
lt_6__Sample = Sample "lt:6" :: Sample
lt_7__Sample = Sample "lt:7" :: Sample
lt_8__Sample = Sample "lt:8" :: Sample
lt_9__Sample = Sample "lt:9" :: Sample
lt_10__Sample = Sample "lt:10" :: Sample
lt_11__Sample = Sample "lt:11" :: Sample
lt_12__Sample = Sample "lt:12" :: Sample
lt_13__Sample = Sample "lt:13" :: Sample
lt_14__Sample = Sample "lt:14" :: Sample
lt_15__Sample = Sample "lt:15" :: Sample
amencutup_0__Sample = Sample "amencutup:0" :: Sample
amencutup_1__Sample = Sample "amencutup:1" :: Sample
amencutup_2__Sample = Sample "amencutup:2" :: Sample
amencutup_3__Sample = Sample "amencutup:3" :: Sample
amencutup_4__Sample = Sample "amencutup:4" :: Sample
amencutup_5__Sample = Sample "amencutup:5" :: Sample
amencutup_6__Sample = Sample "amencutup:6" :: Sample
amencutup_7__Sample = Sample "amencutup:7" :: Sample
amencutup_8__Sample = Sample "amencutup:8" :: Sample
amencutup_9__Sample = Sample "amencutup:9" :: Sample
amencutup_10__Sample = Sample "amencutup:10" :: Sample
amencutup_11__Sample = Sample "amencutup:11" :: Sample
amencutup_12__Sample = Sample "amencutup:12" :: Sample
amencutup_13__Sample = Sample "amencutup:13" :: Sample
amencutup_14__Sample = Sample "amencutup:14" :: Sample
amencutup_15__Sample = Sample "amencutup:15" :: Sample
amencutup_16__Sample = Sample "amencutup:16" :: Sample
amencutup_17__Sample = Sample "amencutup:17" :: Sample
amencutup_18__Sample = Sample "amencutup:18" :: Sample
amencutup_19__Sample = Sample "amencutup:19" :: Sample
amencutup_20__Sample = Sample "amencutup:20" :: Sample
amencutup_21__Sample = Sample "amencutup:21" :: Sample
amencutup_22__Sample = Sample "amencutup:22" :: Sample
amencutup_23__Sample = Sample "amencutup:23" :: Sample
amencutup_24__Sample = Sample "amencutup:24" :: Sample
amencutup_25__Sample = Sample "amencutup:25" :: Sample
amencutup_26__Sample = Sample "amencutup:26" :: Sample
amencutup_27__Sample = Sample "amencutup:27" :: Sample
amencutup_28__Sample = Sample "amencutup:28" :: Sample
amencutup_29__Sample = Sample "amencutup:29" :: Sample
amencutup_30__Sample = Sample "amencutup:30" :: Sample
amencutup_31__Sample = Sample "amencutup:31" :: Sample
drum_0__Sample = Sample "drum:0" :: Sample
drum_1__Sample = Sample "drum:1" :: Sample
drum_2__Sample = Sample "drum:2" :: Sample
drum_3__Sample = Sample "drum:3" :: Sample
drum_4__Sample = Sample "drum:4" :: Sample
drum_5__Sample = Sample "drum:5" :: Sample
coins_0__Sample = Sample "coins:0" :: Sample
industrial_0__Sample = Sample "industrial:0" :: Sample
industrial_1__Sample = Sample "industrial:1" :: Sample
industrial_2__Sample = Sample "industrial:2" :: Sample
industrial_3__Sample = Sample "industrial:3" :: Sample
industrial_4__Sample = Sample "industrial:4" :: Sample
industrial_5__Sample = Sample "industrial:5" :: Sample
industrial_6__Sample = Sample "industrial:6" :: Sample
industrial_7__Sample = Sample "industrial:7" :: Sample
industrial_8__Sample = Sample "industrial:8" :: Sample
industrial_9__Sample = Sample "industrial:9" :: Sample
industrial_10__Sample = Sample "industrial:10" :: Sample
industrial_11__Sample = Sample "industrial:11" :: Sample
industrial_12__Sample = Sample "industrial:12" :: Sample
industrial_13__Sample = Sample "industrial:13" :: Sample
industrial_14__Sample = Sample "industrial:14" :: Sample
industrial_15__Sample = Sample "industrial:15" :: Sample
industrial_16__Sample = Sample "industrial:16" :: Sample
industrial_17__Sample = Sample "industrial:17" :: Sample
industrial_18__Sample = Sample "industrial:18" :: Sample
industrial_19__Sample = Sample "industrial:19" :: Sample
industrial_20__Sample = Sample "industrial:20" :: Sample
industrial_21__Sample = Sample "industrial:21" :: Sample
industrial_22__Sample = Sample "industrial:22" :: Sample
industrial_23__Sample = Sample "industrial:23" :: Sample
industrial_24__Sample = Sample "industrial:24" :: Sample
industrial_25__Sample = Sample "industrial:25" :: Sample
industrial_26__Sample = Sample "industrial:26" :: Sample
industrial_27__Sample = Sample "industrial:27" :: Sample
industrial_28__Sample = Sample "industrial:28" :: Sample
industrial_29__Sample = Sample "industrial:29" :: Sample
industrial_30__Sample = Sample "industrial:30" :: Sample
industrial_31__Sample = Sample "industrial:31" :: Sample
tink_0__Sample = Sample "tink:0" :: Sample
tink_1__Sample = Sample "tink:1" :: Sample
tink_2__Sample = Sample "tink:2" :: Sample
tink_3__Sample = Sample "tink:3" :: Sample
tink_4__Sample = Sample "tink:4" :: Sample
co_0__Sample = Sample "co:0" :: Sample
co_1__Sample = Sample "co:1" :: Sample
co_2__Sample = Sample "co:2" :: Sample
co_3__Sample = Sample "co:3" :: Sample
fest_0__Sample = Sample "fest:0" :: Sample
feelfx_0__Sample = Sample "feelfx:0" :: Sample
feelfx_1__Sample = Sample "feelfx:1" :: Sample
feelfx_2__Sample = Sample "feelfx:2" :: Sample
feelfx_3__Sample = Sample "feelfx:3" :: Sample
feelfx_4__Sample = Sample "feelfx:4" :: Sample
feelfx_5__Sample = Sample "feelfx:5" :: Sample
feelfx_6__Sample = Sample "feelfx:6" :: Sample
feelfx_7__Sample = Sample "feelfx:7" :: Sample
x_808cy_0__Sample = Sample "x_808cy:0" :: Sample
x_808cy_1__Sample = Sample "x_808cy:1" :: Sample
x_808cy_2__Sample = Sample "x_808cy:2" :: Sample
x_808cy_3__Sample = Sample "x_808cy:3" :: Sample
x_808cy_4__Sample = Sample "x_808cy:4" :: Sample
x_808cy_5__Sample = Sample "x_808cy:5" :: Sample
x_808cy_6__Sample = Sample "x_808cy:6" :: Sample
x_808cy_7__Sample = Sample "x_808cy:7" :: Sample
x_808cy_8__Sample = Sample "x_808cy:8" :: Sample
x_808cy_9__Sample = Sample "x_808cy:9" :: Sample
x_808cy_10__Sample = Sample "x_808cy:10" :: Sample
x_808cy_11__Sample = Sample "x_808cy:11" :: Sample
x_808cy_12__Sample = Sample "x_808cy:12" :: Sample
x_808cy_13__Sample = Sample "x_808cy:13" :: Sample
x_808cy_14__Sample = Sample "x_808cy:14" :: Sample
x_808cy_15__Sample = Sample "x_808cy:15" :: Sample
x_808cy_16__Sample = Sample "x_808cy:16" :: Sample
x_808cy_17__Sample = Sample "x_808cy:17" :: Sample
x_808cy_18__Sample = Sample "x_808cy:18" :: Sample
x_808cy_19__Sample = Sample "x_808cy:19" :: Sample
x_808cy_20__Sample = Sample "x_808cy:20" :: Sample
x_808cy_21__Sample = Sample "x_808cy:21" :: Sample
x_808cy_22__Sample = Sample "x_808cy:22" :: Sample
x_808cy_23__Sample = Sample "x_808cy:23" :: Sample
x_808cy_24__Sample = Sample "x_808cy:24" :: Sample
world_0__Sample = Sample "world:0" :: Sample
world_1__Sample = Sample "world:1" :: Sample
world_2__Sample = Sample "world:2" :: Sample
f_0__Sample = Sample "f:0" :: Sample
numbers_0__Sample = Sample "numbers:0" :: Sample
numbers_1__Sample = Sample "numbers:1" :: Sample
numbers_2__Sample = Sample "numbers:2" :: Sample
numbers_3__Sample = Sample "numbers:3" :: Sample
numbers_4__Sample = Sample "numbers:4" :: Sample
numbers_5__Sample = Sample "numbers:5" :: Sample
numbers_6__Sample = Sample "numbers:6" :: Sample
numbers_7__Sample = Sample "numbers:7" :: Sample
numbers_8__Sample = Sample "numbers:8" :: Sample
d_0__Sample = Sample "d:0" :: Sample
d_1__Sample = Sample "d:1" :: Sample
d_2__Sample = Sample "d:2" :: Sample
d_3__Sample = Sample "d:3" :: Sample
padlong_0__Sample = Sample "padlong:0" :: Sample
sequential_0__Sample = Sample "sequential:0" :: Sample
sequential_1__Sample = Sample "sequential:1" :: Sample
sequential_2__Sample = Sample "sequential:2" :: Sample
sequential_3__Sample = Sample "sequential:3" :: Sample
sequential_4__Sample = Sample "sequential:4" :: Sample
sequential_5__Sample = Sample "sequential:5" :: Sample
sequential_6__Sample = Sample "sequential:6" :: Sample
sequential_7__Sample = Sample "sequential:7" :: Sample
stab_0__Sample = Sample "stab:0" :: Sample
stab_1__Sample = Sample "stab:1" :: Sample
stab_2__Sample = Sample "stab:2" :: Sample
stab_3__Sample = Sample "stab:3" :: Sample
stab_4__Sample = Sample "stab:4" :: Sample
stab_5__Sample = Sample "stab:5" :: Sample
stab_6__Sample = Sample "stab:6" :: Sample
stab_7__Sample = Sample "stab:7" :: Sample
stab_8__Sample = Sample "stab:8" :: Sample
stab_9__Sample = Sample "stab:9" :: Sample
stab_10__Sample = Sample "stab:10" :: Sample
stab_11__Sample = Sample "stab:11" :: Sample
stab_12__Sample = Sample "stab:12" :: Sample
stab_13__Sample = Sample "stab:13" :: Sample
stab_14__Sample = Sample "stab:14" :: Sample
stab_15__Sample = Sample "stab:15" :: Sample
stab_16__Sample = Sample "stab:16" :: Sample
stab_17__Sample = Sample "stab:17" :: Sample
stab_18__Sample = Sample "stab:18" :: Sample
stab_19__Sample = Sample "stab:19" :: Sample
stab_20__Sample = Sample "stab:20" :: Sample
stab_21__Sample = Sample "stab:21" :: Sample
stab_22__Sample = Sample "stab:22" :: Sample
electro1_0__Sample = Sample "electro1:0" :: Sample
electro1_1__Sample = Sample "electro1:1" :: Sample
electro1_2__Sample = Sample "electro1:2" :: Sample
electro1_3__Sample = Sample "electro1:3" :: Sample
electro1_4__Sample = Sample "electro1:4" :: Sample
electro1_5__Sample = Sample "electro1:5" :: Sample
electro1_6__Sample = Sample "electro1:6" :: Sample
electro1_7__Sample = Sample "electro1:7" :: Sample
electro1_8__Sample = Sample "electro1:8" :: Sample
electro1_9__Sample = Sample "electro1:9" :: Sample
electro1_10__Sample = Sample "electro1:10" :: Sample
electro1_11__Sample = Sample "electro1:11" :: Sample
electro1_12__Sample = Sample "electro1:12" :: Sample
ifdrums_0__Sample = Sample "ifdrums:0" :: Sample
ifdrums_1__Sample = Sample "ifdrums:1" :: Sample
ifdrums_2__Sample = Sample "ifdrums:2" :: Sample
invaders_0__Sample = Sample "invaders:0" :: Sample
invaders_1__Sample = Sample "invaders:1" :: Sample
invaders_2__Sample = Sample "invaders:2" :: Sample
invaders_3__Sample = Sample "invaders:3" :: Sample
invaders_4__Sample = Sample "invaders:4" :: Sample
invaders_5__Sample = Sample "invaders:5" :: Sample
invaders_6__Sample = Sample "invaders:6" :: Sample
invaders_7__Sample = Sample "invaders:7" :: Sample
invaders_8__Sample = Sample "invaders:8" :: Sample
invaders_9__Sample = Sample "invaders:9" :: Sample
invaders_10__Sample = Sample "invaders:10" :: Sample
invaders_11__Sample = Sample "invaders:11" :: Sample
invaders_12__Sample = Sample "invaders:12" :: Sample
invaders_13__Sample = Sample "invaders:13" :: Sample
invaders_14__Sample = Sample "invaders:14" :: Sample
invaders_15__Sample = Sample "invaders:15" :: Sample
invaders_16__Sample = Sample "invaders:16" :: Sample
invaders_17__Sample = Sample "invaders:17" :: Sample
dist_0__Sample = Sample "dist:0" :: Sample
dist_1__Sample = Sample "dist:1" :: Sample
dist_2__Sample = Sample "dist:2" :: Sample
dist_3__Sample = Sample "dist:3" :: Sample
dist_4__Sample = Sample "dist:4" :: Sample
dist_5__Sample = Sample "dist:5" :: Sample
dist_6__Sample = Sample "dist:6" :: Sample
dist_7__Sample = Sample "dist:7" :: Sample
dist_8__Sample = Sample "dist:8" :: Sample
dist_9__Sample = Sample "dist:9" :: Sample
dist_10__Sample = Sample "dist:10" :: Sample
dist_11__Sample = Sample "dist:11" :: Sample
dist_12__Sample = Sample "dist:12" :: Sample
dist_13__Sample = Sample "dist:13" :: Sample
dist_14__Sample = Sample "dist:14" :: Sample
dist_15__Sample = Sample "dist:15" :: Sample
sundance_0__Sample = Sample "sundance:0" :: Sample
sundance_1__Sample = Sample "sundance:1" :: Sample
sundance_2__Sample = Sample "sundance:2" :: Sample
sundance_3__Sample = Sample "sundance:3" :: Sample
sundance_4__Sample = Sample "sundance:4" :: Sample
sundance_5__Sample = Sample "sundance:5" :: Sample
speech_0__Sample = Sample "speech:0" :: Sample
speech_1__Sample = Sample "speech:1" :: Sample
speech_2__Sample = Sample "speech:2" :: Sample
speech_3__Sample = Sample "speech:3" :: Sample
speech_4__Sample = Sample "speech:4" :: Sample
speech_5__Sample = Sample "speech:5" :: Sample
speech_6__Sample = Sample "speech:6" :: Sample
toys_0__Sample = Sample "toys:0" :: Sample
toys_1__Sample = Sample "toys:1" :: Sample
toys_2__Sample = Sample "toys:2" :: Sample
toys_3__Sample = Sample "toys:3" :: Sample
toys_4__Sample = Sample "toys:4" :: Sample
toys_5__Sample = Sample "toys:5" :: Sample
toys_6__Sample = Sample "toys:6" :: Sample
toys_7__Sample = Sample "toys:7" :: Sample
toys_8__Sample = Sample "toys:8" :: Sample
toys_9__Sample = Sample "toys:9" :: Sample
toys_10__Sample = Sample "toys:10" :: Sample
toys_11__Sample = Sample "toys:11" :: Sample
toys_12__Sample = Sample "toys:12" :: Sample
bass0_0__Sample = Sample "bass0:0" :: Sample
bass0_1__Sample = Sample "bass0:1" :: Sample
bass0_2__Sample = Sample "bass0:2" :: Sample
realclaps_0__Sample = Sample "realclaps:0" :: Sample
realclaps_1__Sample = Sample "realclaps:1" :: Sample
realclaps_2__Sample = Sample "realclaps:2" :: Sample
realclaps_3__Sample = Sample "realclaps:3" :: Sample
dorkbot_0__Sample = Sample "dorkbot:0" :: Sample
dorkbot_1__Sample = Sample "dorkbot:1" :: Sample
arpy_0__Sample = Sample "arpy:0" :: Sample
arpy_1__Sample = Sample "arpy:1" :: Sample
arpy_2__Sample = Sample "arpy:2" :: Sample
arpy_3__Sample = Sample "arpy:3" :: Sample
arpy_4__Sample = Sample "arpy:4" :: Sample
arpy_5__Sample = Sample "arpy:5" :: Sample
arpy_6__Sample = Sample "arpy:6" :: Sample
arpy_7__Sample = Sample "arpy:7" :: Sample
arpy_8__Sample = Sample "arpy:8" :: Sample
arpy_9__Sample = Sample "arpy:9" :: Sample
arpy_10__Sample = Sample "arpy:10" :: Sample
fire_0__Sample = Sample "fire:0" :: Sample
hoover_0__Sample = Sample "hoover:0" :: Sample
hoover_1__Sample = Sample "hoover:1" :: Sample
hoover_2__Sample = Sample "hoover:2" :: Sample
hoover_3__Sample = Sample "hoover:3" :: Sample
hoover_4__Sample = Sample "hoover:4" :: Sample
hoover_5__Sample = Sample "hoover:5" :: Sample
breath_0__Sample = Sample "breath:0" :: Sample
rave_0__Sample = Sample "rave:0" :: Sample
rave_1__Sample = Sample "rave:1" :: Sample
rave_2__Sample = Sample "rave:2" :: Sample
rave_3__Sample = Sample "rave:3" :: Sample
rave_4__Sample = Sample "rave:4" :: Sample
rave_5__Sample = Sample "rave:5" :: Sample
rave_6__Sample = Sample "rave:6" :: Sample
rave_7__Sample = Sample "rave:7" :: Sample
bottle_0__Sample = Sample "bottle:0" :: Sample
bottle_1__Sample = Sample "bottle:1" :: Sample
bottle_2__Sample = Sample "bottle:2" :: Sample
bottle_3__Sample = Sample "bottle:3" :: Sample
bottle_4__Sample = Sample "bottle:4" :: Sample
bottle_5__Sample = Sample "bottle:5" :: Sample
bottle_6__Sample = Sample "bottle:6" :: Sample
bottle_7__Sample = Sample "bottle:7" :: Sample
bottle_8__Sample = Sample "bottle:8" :: Sample
bottle_9__Sample = Sample "bottle:9" :: Sample
bottle_10__Sample = Sample "bottle:10" :: Sample
bottle_11__Sample = Sample "bottle:11" :: Sample
bottle_12__Sample = Sample "bottle:12" :: Sample
east_0__Sample = Sample "east:0" :: Sample
east_1__Sample = Sample "east:1" :: Sample
east_2__Sample = Sample "east:2" :: Sample
east_3__Sample = Sample "east:3" :: Sample
east_4__Sample = Sample "east:4" :: Sample
east_5__Sample = Sample "east:5" :: Sample
east_6__Sample = Sample "east:6" :: Sample
east_7__Sample = Sample "east:7" :: Sample
east_8__Sample = Sample "east:8" :: Sample
linnhats_0__Sample = Sample "linnhats:0" :: Sample
linnhats_1__Sample = Sample "linnhats:1" :: Sample
linnhats_2__Sample = Sample "linnhats:2" :: Sample
linnhats_3__Sample = Sample "linnhats:3" :: Sample
linnhats_4__Sample = Sample "linnhats:4" :: Sample
linnhats_5__Sample = Sample "linnhats:5" :: Sample
speedupdown_0__Sample = Sample "speedupdown:0" :: Sample
speedupdown_1__Sample = Sample "speedupdown:1" :: Sample
speedupdown_2__Sample = Sample "speedupdown:2" :: Sample
speedupdown_3__Sample = Sample "speedupdown:3" :: Sample
speedupdown_4__Sample = Sample "speedupdown:4" :: Sample
speedupdown_5__Sample = Sample "speedupdown:5" :: Sample
speedupdown_6__Sample = Sample "speedupdown:6" :: Sample
speedupdown_7__Sample = Sample "speedupdown:7" :: Sample
speedupdown_8__Sample = Sample "speedupdown:8" :: Sample
cosmicg_0__Sample = Sample "cosmicg:0" :: Sample
cosmicg_1__Sample = Sample "cosmicg:1" :: Sample
cosmicg_2__Sample = Sample "cosmicg:2" :: Sample
cosmicg_3__Sample = Sample "cosmicg:3" :: Sample
cosmicg_4__Sample = Sample "cosmicg:4" :: Sample
cosmicg_5__Sample = Sample "cosmicg:5" :: Sample
cosmicg_6__Sample = Sample "cosmicg:6" :: Sample
cosmicg_7__Sample = Sample "cosmicg:7" :: Sample
cosmicg_8__Sample = Sample "cosmicg:8" :: Sample
cosmicg_9__Sample = Sample "cosmicg:9" :: Sample
cosmicg_10__Sample = Sample "cosmicg:10" :: Sample
cosmicg_11__Sample = Sample "cosmicg:11" :: Sample
cosmicg_12__Sample = Sample "cosmicg:12" :: Sample
cosmicg_13__Sample = Sample "cosmicg:13" :: Sample
cosmicg_14__Sample = Sample "cosmicg:14" :: Sample
jvbass_0__Sample = Sample "jvbass:0" :: Sample
jvbass_1__Sample = Sample "jvbass:1" :: Sample
jvbass_2__Sample = Sample "jvbass:2" :: Sample
jvbass_3__Sample = Sample "jvbass:3" :: Sample
jvbass_4__Sample = Sample "jvbass:4" :: Sample
jvbass_5__Sample = Sample "jvbass:5" :: Sample
jvbass_6__Sample = Sample "jvbass:6" :: Sample
jvbass_7__Sample = Sample "jvbass:7" :: Sample
jvbass_8__Sample = Sample "jvbass:8" :: Sample
jvbass_9__Sample = Sample "jvbass:9" :: Sample
jvbass_10__Sample = Sample "jvbass:10" :: Sample
jvbass_11__Sample = Sample "jvbass:11" :: Sample
jvbass_12__Sample = Sample "jvbass:12" :: Sample
mash_0__Sample = Sample "mash:0" :: Sample
mash_1__Sample = Sample "mash:1" :: Sample
feel_0__Sample = Sample "feel:0" :: Sample
feel_1__Sample = Sample "feel:1" :: Sample
feel_2__Sample = Sample "feel:2" :: Sample
feel_3__Sample = Sample "feel:3" :: Sample
feel_4__Sample = Sample "feel:4" :: Sample
feel_5__Sample = Sample "feel:5" :: Sample
feel_6__Sample = Sample "feel:6" :: Sample
short_0__Sample = Sample "short:0" :: Sample
short_1__Sample = Sample "short:1" :: Sample
short_2__Sample = Sample "short:2" :: Sample
short_3__Sample = Sample "short:3" :: Sample
short_4__Sample = Sample "short:4" :: Sample
incoming_0__Sample = Sample "incoming:0" :: Sample
incoming_1__Sample = Sample "incoming:1" :: Sample
incoming_2__Sample = Sample "incoming:2" :: Sample
incoming_3__Sample = Sample "incoming:3" :: Sample
incoming_4__Sample = Sample "incoming:4" :: Sample
incoming_5__Sample = Sample "incoming:5" :: Sample
incoming_6__Sample = Sample "incoming:6" :: Sample
incoming_7__Sample = Sample "incoming:7" :: Sample
flick_0__Sample = Sample "flick:0" :: Sample
flick_1__Sample = Sample "flick:1" :: Sample
flick_2__Sample = Sample "flick:2" :: Sample
flick_3__Sample = Sample "flick:3" :: Sample
flick_4__Sample = Sample "flick:4" :: Sample
flick_5__Sample = Sample "flick:5" :: Sample
flick_6__Sample = Sample "flick:6" :: Sample
flick_7__Sample = Sample "flick:7" :: Sample
flick_8__Sample = Sample "flick:8" :: Sample
flick_9__Sample = Sample "flick:9" :: Sample
flick_10__Sample = Sample "flick:10" :: Sample
flick_11__Sample = Sample "flick:11" :: Sample
flick_12__Sample = Sample "flick:12" :: Sample
flick_13__Sample = Sample "flick:13" :: Sample
flick_14__Sample = Sample "flick:14" :: Sample
flick_15__Sample = Sample "flick:15" :: Sample
flick_16__Sample = Sample "flick:16" :: Sample
reverbkick_0__Sample = Sample "reverbkick:0" :: Sample
bass2_0__Sample = Sample "bass2:0" :: Sample
bass2_1__Sample = Sample "bass2:1" :: Sample
bass2_2__Sample = Sample "bass2:2" :: Sample
bass2_3__Sample = Sample "bass2:3" :: Sample
bass2_4__Sample = Sample "bass2:4" :: Sample
baa_0__Sample = Sample "baa:0" :: Sample
baa_1__Sample = Sample "baa:1" :: Sample
baa_2__Sample = Sample "baa:2" :: Sample
baa_3__Sample = Sample "baa:3" :: Sample
baa_4__Sample = Sample "baa:4" :: Sample
baa_5__Sample = Sample "baa:5" :: Sample
baa_6__Sample = Sample "baa:6" :: Sample
fm_0__Sample = Sample "fm:0" :: Sample
fm_1__Sample = Sample "fm:1" :: Sample
fm_2__Sample = Sample "fm:2" :: Sample
fm_3__Sample = Sample "fm:3" :: Sample
fm_4__Sample = Sample "fm:4" :: Sample
fm_5__Sample = Sample "fm:5" :: Sample
fm_6__Sample = Sample "fm:6" :: Sample
fm_7__Sample = Sample "fm:7" :: Sample
fm_8__Sample = Sample "fm:8" :: Sample
fm_9__Sample = Sample "fm:9" :: Sample
fm_10__Sample = Sample "fm:10" :: Sample
fm_11__Sample = Sample "fm:11" :: Sample
fm_12__Sample = Sample "fm:12" :: Sample
fm_13__Sample = Sample "fm:13" :: Sample
fm_14__Sample = Sample "fm:14" :: Sample
fm_15__Sample = Sample "fm:15" :: Sample
fm_16__Sample = Sample "fm:16" :: Sample
click_0__Sample = Sample "click:0" :: Sample
click_1__Sample = Sample "click:1" :: Sample
click_2__Sample = Sample "click:2" :: Sample
click_3__Sample = Sample "click:3" :: Sample
control_0__Sample = Sample "control:0" :: Sample
control_1__Sample = Sample "control:1" :: Sample
peri_0__Sample = Sample "peri:0" :: Sample
peri_1__Sample = Sample "peri:1" :: Sample
peri_2__Sample = Sample "peri:2" :: Sample
peri_3__Sample = Sample "peri:3" :: Sample
peri_4__Sample = Sample "peri:4" :: Sample
peri_5__Sample = Sample "peri:5" :: Sample
peri_6__Sample = Sample "peri:6" :: Sample
peri_7__Sample = Sample "peri:7" :: Sample
peri_8__Sample = Sample "peri:8" :: Sample
peri_9__Sample = Sample "peri:9" :: Sample
peri_10__Sample = Sample "peri:10" :: Sample
peri_11__Sample = Sample "peri:11" :: Sample
peri_12__Sample = Sample "peri:12" :: Sample
peri_13__Sample = Sample "peri:13" :: Sample
peri_14__Sample = Sample "peri:14" :: Sample
procshort_0__Sample = Sample "procshort:0" :: Sample
procshort_1__Sample = Sample "procshort:1" :: Sample
procshort_2__Sample = Sample "procshort:2" :: Sample
procshort_3__Sample = Sample "procshort:3" :: Sample
procshort_4__Sample = Sample "procshort:4" :: Sample
procshort_5__Sample = Sample "procshort:5" :: Sample
procshort_6__Sample = Sample "procshort:6" :: Sample
procshort_7__Sample = Sample "procshort:7" :: Sample
hand_0__Sample = Sample "hand:0" :: Sample
hand_1__Sample = Sample "hand:1" :: Sample
hand_2__Sample = Sample "hand:2" :: Sample
hand_3__Sample = Sample "hand:3" :: Sample
hand_4__Sample = Sample "hand:4" :: Sample
hand_5__Sample = Sample "hand:5" :: Sample
hand_6__Sample = Sample "hand:6" :: Sample
hand_7__Sample = Sample "hand:7" :: Sample
hand_8__Sample = Sample "hand:8" :: Sample
hand_9__Sample = Sample "hand:9" :: Sample
hand_10__Sample = Sample "hand:10" :: Sample
hand_11__Sample = Sample "hand:11" :: Sample
hand_12__Sample = Sample "hand:12" :: Sample
hand_13__Sample = Sample "hand:13" :: Sample
hand_14__Sample = Sample "hand:14" :: Sample
hand_15__Sample = Sample "hand:15" :: Sample
hand_16__Sample = Sample "hand:16" :: Sample
future_0__Sample = Sample "future:0" :: Sample
future_1__Sample = Sample "future:1" :: Sample
future_2__Sample = Sample "future:2" :: Sample
future_3__Sample = Sample "future:3" :: Sample
future_4__Sample = Sample "future:4" :: Sample
future_5__Sample = Sample "future:5" :: Sample
future_6__Sample = Sample "future:6" :: Sample
future_7__Sample = Sample "future:7" :: Sample
future_8__Sample = Sample "future:8" :: Sample
future_9__Sample = Sample "future:9" :: Sample
future_10__Sample = Sample "future:10" :: Sample
future_11__Sample = Sample "future:11" :: Sample
future_12__Sample = Sample "future:12" :: Sample
future_13__Sample = Sample "future:13" :: Sample
future_14__Sample = Sample "future:14" :: Sample
future_15__Sample = Sample "future:15" :: Sample
future_16__Sample = Sample "future:16" :: Sample
hh_0__Sample = Sample "hh:0" :: Sample
hh_1__Sample = Sample "hh:1" :: Sample
hh_2__Sample = Sample "hh:2" :: Sample
hh_3__Sample = Sample "hh:3" :: Sample
hh_4__Sample = Sample "hh:4" :: Sample
hh_5__Sample = Sample "hh:5" :: Sample
hh_6__Sample = Sample "hh:6" :: Sample
hh_7__Sample = Sample "hh:7" :: Sample
hh_8__Sample = Sample "hh:8" :: Sample
hh_9__Sample = Sample "hh:9" :: Sample
hh_10__Sample = Sample "hh:10" :: Sample
hh_11__Sample = Sample "hh:11" :: Sample
hh_12__Sample = Sample "hh:12" :: Sample
x_808ht_0__Sample = Sample "x_808ht:0" :: Sample
x_808ht_1__Sample = Sample "x_808ht:1" :: Sample
x_808ht_2__Sample = Sample "x_808ht:2" :: Sample
x_808ht_3__Sample = Sample "x_808ht:3" :: Sample
x_808ht_4__Sample = Sample "x_808ht:4" :: Sample
db_0__Sample = Sample "db:0" :: Sample
db_1__Sample = Sample "db:1" :: Sample
db_2__Sample = Sample "db:2" :: Sample
db_3__Sample = Sample "db:3" :: Sample
db_4__Sample = Sample "db:4" :: Sample
db_5__Sample = Sample "db:5" :: Sample
db_6__Sample = Sample "db:6" :: Sample
db_7__Sample = Sample "db:7" :: Sample
db_8__Sample = Sample "db:8" :: Sample
db_9__Sample = Sample "db:9" :: Sample
db_10__Sample = Sample "db:10" :: Sample
db_11__Sample = Sample "db:11" :: Sample
db_12__Sample = Sample "db:12" :: Sample
------ drones
spacewind_0__Sample = Sample "spacewind:0" :: Sample
ambienta_0__Sample = Sample "ambienta:0" :: Sample
lowdark_0__Sample = Sample "lowdark:0" :: Sample
harmonium_0__Sample = Sample "harmonium:0" :: Sample
hollowair_0__Sample = Sample "hollowair:0" :: Sample
digeridoo_0__Sample = Sample "digeridoo:0" :: Sample

nameToSampleO :: Object Sample
nameToSampleO = Object.fromFoldable nameToSample

nameToSampleMO :: Object (Maybe Sample)
nameToSampleMO = Object.union (map Just nameToSampleO) (Object.singleton "~" Nothing)

nameToSampleMNO :: Object (Maybe Note)
nameToSampleMNO = (map <<< map)
  ( Note <<<
      { sample: _
      , bufferOffsetFoT: const 0.0
      , rateFoT: const 1.0
      , forward: true
      , volumeFoT: const 1.0
      }
  )
  nameToSampleMO

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
  ----- drones
  , "spacewind" /\ spacewind_0__Sample
  , "spacewind:0" /\ spacewind_0__Sample
  , "ambienta" /\ ambienta_0__Sample
  , "ambienta:0" /\ ambienta_0__Sample
  , "lowdark" /\ lowdark_0__Sample
  , "lowdark:0" /\ lowdark_0__Sample
  , "harmonium" /\ harmonium_0__Sample
  , "harmonium:0" /\ harmonium_0__Sample
  , "hollowair" /\ hollowair_0__Sample
  , "hollowair:0" /\ hollowair_0__Sample
  , "digeridoo" /\ digeridoo_0__Sample
  , "digeridoo:0" /\ digeridoo_0__Sample
  ]

type SampleGetter a = Samples a -> a

-- we need this dog and pony show because otherwise the type-checker tries to check 2000+
-- SampleGetter functions and explodes
foreign import unsafeSampleGetter :: forall a. String -> SampleGetter a

samplesToSampleGetter :: forall a. Array (Sample /\ SampleGetter a)
samplesToSampleGetter = (map <<< map) unsafeSampleGetter samplesToString

type ForwardBackwards = { forward :: BrowserAudioBuffer, backwards :: BrowserAudioBuffer }

sampleToBuffers' :: Map Sample (SampleGetter (Maybe ForwardBackwards))
sampleToBuffers' = Map.fromFoldable samplesToSampleGetter

sampleToUrls :: Map Sample (SampleGetter String)
sampleToUrls = Map.fromFoldable samplesToSampleGetter

sampleToBuffers :: Sample -> SampleGetter (Maybe ForwardBackwards)
sampleToBuffers sampy = fromMaybe
  (unsafeSampleGetter "intentionalSilenceForInternalUseOnly")
  (Map.lookup sampy sampleToBuffers')
samplesToString :: Array (Sample /\ String)
samplesToString =
  [ intentionalSilenceForInternalUseOnly__Sample /\ "intentionalSilenceForInternalUseOnly"
  , kicklinn_0__Sample /\ "kicklinn:0"
  , msg_0__Sample /\ "msg:0"
  , msg_1__Sample /\ "msg:1"
  , msg_2__Sample /\ "msg:2"
  , msg_3__Sample /\ "msg:3"
  , msg_4__Sample /\ "msg:4"
  , msg_5__Sample /\ "msg:5"
  , msg_6__Sample /\ "msg:6"
  , msg_7__Sample /\ "msg:7"
  , msg_8__Sample /\ "msg:8"
  , gabbalouder_0__Sample /\ "gabbalouder:0"
  , gabbalouder_1__Sample /\ "gabbalouder:1"
  , gabbalouder_2__Sample /\ "gabbalouder:2"
  , gabbalouder_3__Sample /\ "gabbalouder:3"
  , kurt_0__Sample /\ "kurt:0"
  , kurt_1__Sample /\ "kurt:1"
  , kurt_2__Sample /\ "kurt:2"
  , kurt_3__Sample /\ "kurt:3"
  , kurt_4__Sample /\ "kurt:4"
  , kurt_5__Sample /\ "kurt:5"
  , kurt_6__Sample /\ "kurt:6"
  , bassdm_0__Sample /\ "bassdm:0"
  , bassdm_1__Sample /\ "bassdm:1"
  , bassdm_2__Sample /\ "bassdm:2"
  , bassdm_3__Sample /\ "bassdm:3"
  , bassdm_4__Sample /\ "bassdm:4"
  , bassdm_5__Sample /\ "bassdm:5"
  , bassdm_6__Sample /\ "bassdm:6"
  , bassdm_7__Sample /\ "bassdm:7"
  , bassdm_8__Sample /\ "bassdm:8"
  , bassdm_9__Sample /\ "bassdm:9"
  , bassdm_10__Sample /\ "bassdm:10"
  , bassdm_11__Sample /\ "bassdm:11"
  , bassdm_12__Sample /\ "bassdm:12"
  , bassdm_13__Sample /\ "bassdm:13"
  , bassdm_14__Sample /\ "bassdm:14"
  , bassdm_15__Sample /\ "bassdm:15"
  , bassdm_16__Sample /\ "bassdm:16"
  , bassdm_17__Sample /\ "bassdm:17"
  , bassdm_18__Sample /\ "bassdm:18"
  , bassdm_19__Sample /\ "bassdm:19"
  , bassdm_20__Sample /\ "bassdm:20"
  , bassdm_21__Sample /\ "bassdm:21"
  , bassdm_22__Sample /\ "bassdm:22"
  , bassdm_23__Sample /\ "bassdm:23"
  , tabla2_0__Sample /\ "tabla2:0"
  , tabla2_1__Sample /\ "tabla2:1"
  , tabla2_2__Sample /\ "tabla2:2"
  , tabla2_3__Sample /\ "tabla2:3"
  , tabla2_4__Sample /\ "tabla2:4"
  , tabla2_5__Sample /\ "tabla2:5"
  , tabla2_6__Sample /\ "tabla2:6"
  , tabla2_7__Sample /\ "tabla2:7"
  , tabla2_8__Sample /\ "tabla2:8"
  , tabla2_9__Sample /\ "tabla2:9"
  , tabla2_10__Sample /\ "tabla2:10"
  , tabla2_11__Sample /\ "tabla2:11"
  , tabla2_12__Sample /\ "tabla2:12"
  , tabla2_13__Sample /\ "tabla2:13"
  , tabla2_14__Sample /\ "tabla2:14"
  , tabla2_15__Sample /\ "tabla2:15"
  , tabla2_16__Sample /\ "tabla2:16"
  , tabla2_17__Sample /\ "tabla2:17"
  , tabla2_18__Sample /\ "tabla2:18"
  , tabla2_19__Sample /\ "tabla2:19"
  , tabla2_20__Sample /\ "tabla2:20"
  , tabla2_21__Sample /\ "tabla2:21"
  , tabla2_22__Sample /\ "tabla2:22"
  , tabla2_23__Sample /\ "tabla2:23"
  , tabla2_24__Sample /\ "tabla2:24"
  , tabla2_25__Sample /\ "tabla2:25"
  , tabla2_26__Sample /\ "tabla2:26"
  , tabla2_27__Sample /\ "tabla2:27"
  , tabla2_28__Sample /\ "tabla2:28"
  , tabla2_29__Sample /\ "tabla2:29"
  , tabla2_30__Sample /\ "tabla2:30"
  , tabla2_31__Sample /\ "tabla2:31"
  , tabla2_32__Sample /\ "tabla2:32"
  , tabla2_33__Sample /\ "tabla2:33"
  , tabla2_34__Sample /\ "tabla2:34"
  , tabla2_35__Sample /\ "tabla2:35"
  , tabla2_36__Sample /\ "tabla2:36"
  , tabla2_37__Sample /\ "tabla2:37"
  , tabla2_38__Sample /\ "tabla2:38"
  , tabla2_39__Sample /\ "tabla2:39"
  , tabla2_40__Sample /\ "tabla2:40"
  , tabla2_41__Sample /\ "tabla2:41"
  , tabla2_42__Sample /\ "tabla2:42"
  , tabla2_43__Sample /\ "tabla2:43"
  , tabla2_44__Sample /\ "tabla2:44"
  , tabla2_45__Sample /\ "tabla2:45"
  , chin_0__Sample /\ "chin:0"
  , chin_1__Sample /\ "chin:1"
  , chin_2__Sample /\ "chin:2"
  , chin_3__Sample /\ "chin:3"
  , mp3_0__Sample /\ "mp3:0"
  , mp3_1__Sample /\ "mp3:1"
  , mp3_2__Sample /\ "mp3:2"
  , mp3_3__Sample /\ "mp3:3"
  , tablex_0__Sample /\ "tablex:0"
  , tablex_1__Sample /\ "tablex:1"
  , tablex_2__Sample /\ "tablex:2"
  , sf_0__Sample /\ "sf:0"
  , sf_1__Sample /\ "sf:1"
  , sf_2__Sample /\ "sf:2"
  , sf_3__Sample /\ "sf:3"
  , sf_4__Sample /\ "sf:4"
  , sf_5__Sample /\ "sf:5"
  , sf_6__Sample /\ "sf:6"
  , sf_7__Sample /\ "sf:7"
  , sf_8__Sample /\ "sf:8"
  , sf_9__Sample /\ "sf:9"
  , sf_10__Sample /\ "sf:10"
  , sf_11__Sample /\ "sf:11"
  , sf_12__Sample /\ "sf:12"
  , sf_13__Sample /\ "sf:13"
  , sf_14__Sample /\ "sf:14"
  , sf_15__Sample /\ "sf:15"
  , sf_16__Sample /\ "sf:16"
  , sf_17__Sample /\ "sf:17"
  , speakspell_0__Sample /\ "speakspell:0"
  , speakspell_1__Sample /\ "speakspell:1"
  , speakspell_2__Sample /\ "speakspell:2"
  , speakspell_3__Sample /\ "speakspell:3"
  , speakspell_4__Sample /\ "speakspell:4"
  , speakspell_5__Sample /\ "speakspell:5"
  , speakspell_6__Sample /\ "speakspell:6"
  , speakspell_7__Sample /\ "speakspell:7"
  , speakspell_8__Sample /\ "speakspell:8"
  , speakspell_9__Sample /\ "speakspell:9"
  , speakspell_10__Sample /\ "speakspell:10"
  , speakspell_11__Sample /\ "speakspell:11"
  , cc_0__Sample /\ "cc:0"
  , cc_1__Sample /\ "cc:1"
  , cc_2__Sample /\ "cc:2"
  , cc_3__Sample /\ "cc:3"
  , cc_4__Sample /\ "cc:4"
  , cc_5__Sample /\ "cc:5"
  , gabbaloud_0__Sample /\ "gabbaloud:0"
  , gabbaloud_1__Sample /\ "gabbaloud:1"
  , gabbaloud_2__Sample /\ "gabbaloud:2"
  , gabbaloud_3__Sample /\ "gabbaloud:3"
  , ades2_0__Sample /\ "ades2:0"
  , ades2_1__Sample /\ "ades2:1"
  , ades2_2__Sample /\ "ades2:2"
  , ades2_3__Sample /\ "ades2:3"
  , ades2_4__Sample /\ "ades2:4"
  , ades2_5__Sample /\ "ades2:5"
  , ades2_6__Sample /\ "ades2:6"
  , ades2_7__Sample /\ "ades2:7"
  , ades2_8__Sample /\ "ades2:8"
  , space_0__Sample /\ "space:0"
  , space_1__Sample /\ "space:1"
  , space_2__Sample /\ "space:2"
  , space_3__Sample /\ "space:3"
  , space_4__Sample /\ "space:4"
  , space_5__Sample /\ "space:5"
  , space_6__Sample /\ "space:6"
  , space_7__Sample /\ "space:7"
  , space_8__Sample /\ "space:8"
  , space_9__Sample /\ "space:9"
  , space_10__Sample /\ "space:10"
  , space_11__Sample /\ "space:11"
  , space_12__Sample /\ "space:12"
  , space_13__Sample /\ "space:13"
  , space_14__Sample /\ "space:14"
  , space_15__Sample /\ "space:15"
  , space_16__Sample /\ "space:16"
  , space_17__Sample /\ "space:17"
  , battles_0__Sample /\ "battles:0"
  , battles_1__Sample /\ "battles:1"
  , voodoo_0__Sample /\ "voodoo:0"
  , voodoo_1__Sample /\ "voodoo:1"
  , voodoo_2__Sample /\ "voodoo:2"
  , voodoo_3__Sample /\ "voodoo:3"
  , voodoo_4__Sample /\ "voodoo:4"
  , ravemono_0__Sample /\ "ravemono:0"
  , ravemono_1__Sample /\ "ravemono:1"
  , psr_0__Sample /\ "psr:0"
  , psr_1__Sample /\ "psr:1"
  , psr_2__Sample /\ "psr:2"
  , psr_3__Sample /\ "psr:3"
  , psr_4__Sample /\ "psr:4"
  , psr_5__Sample /\ "psr:5"
  , psr_6__Sample /\ "psr:6"
  , psr_7__Sample /\ "psr:7"
  , psr_8__Sample /\ "psr:8"
  , psr_9__Sample /\ "psr:9"
  , psr_10__Sample /\ "psr:10"
  , psr_11__Sample /\ "psr:11"
  , psr_12__Sample /\ "psr:12"
  , psr_13__Sample /\ "psr:13"
  , psr_14__Sample /\ "psr:14"
  , psr_15__Sample /\ "psr:15"
  , psr_16__Sample /\ "psr:16"
  , psr_17__Sample /\ "psr:17"
  , psr_18__Sample /\ "psr:18"
  , psr_19__Sample /\ "psr:19"
  , psr_20__Sample /\ "psr:20"
  , psr_21__Sample /\ "psr:21"
  , psr_22__Sample /\ "psr:22"
  , psr_23__Sample /\ "psr:23"
  , psr_24__Sample /\ "psr:24"
  , psr_25__Sample /\ "psr:25"
  , psr_26__Sample /\ "psr:26"
  , psr_27__Sample /\ "psr:27"
  , psr_28__Sample /\ "psr:28"
  , psr_29__Sample /\ "psr:29"
  , metal_0__Sample /\ "metal:0"
  , metal_1__Sample /\ "metal:1"
  , metal_2__Sample /\ "metal:2"
  , metal_3__Sample /\ "metal:3"
  , metal_4__Sample /\ "metal:4"
  , metal_5__Sample /\ "metal:5"
  , metal_6__Sample /\ "metal:6"
  , metal_7__Sample /\ "metal:7"
  , metal_8__Sample /\ "metal:8"
  , metal_9__Sample /\ "metal:9"
  , hardcore_0__Sample /\ "hardcore:0"
  , hardcore_1__Sample /\ "hardcore:1"
  , hardcore_2__Sample /\ "hardcore:2"
  , hardcore_3__Sample /\ "hardcore:3"
  , hardcore_4__Sample /\ "hardcore:4"
  , hardcore_5__Sample /\ "hardcore:5"
  , hardcore_6__Sample /\ "hardcore:6"
  , hardcore_7__Sample /\ "hardcore:7"
  , hardcore_8__Sample /\ "hardcore:8"
  , hardcore_9__Sample /\ "hardcore:9"
  , hardcore_10__Sample /\ "hardcore:10"
  , hardcore_11__Sample /\ "hardcore:11"
  , mouth_0__Sample /\ "mouth:0"
  , mouth_1__Sample /\ "mouth:1"
  , mouth_2__Sample /\ "mouth:2"
  , mouth_3__Sample /\ "mouth:3"
  , mouth_4__Sample /\ "mouth:4"
  , mouth_5__Sample /\ "mouth:5"
  , mouth_6__Sample /\ "mouth:6"
  , mouth_7__Sample /\ "mouth:7"
  , mouth_8__Sample /\ "mouth:8"
  , mouth_9__Sample /\ "mouth:9"
  , mouth_10__Sample /\ "mouth:10"
  , mouth_11__Sample /\ "mouth:11"
  , mouth_12__Sample /\ "mouth:12"
  , mouth_13__Sample /\ "mouth:13"
  , mouth_14__Sample /\ "mouth:14"
  , sugar_0__Sample /\ "sugar:0"
  , sugar_1__Sample /\ "sugar:1"
  , odx_0__Sample /\ "odx:0"
  , odx_1__Sample /\ "odx:1"
  , odx_2__Sample /\ "odx:2"
  , odx_3__Sample /\ "odx:3"
  , odx_4__Sample /\ "odx:4"
  , odx_5__Sample /\ "odx:5"
  , odx_6__Sample /\ "odx:6"
  , odx_7__Sample /\ "odx:7"
  , odx_8__Sample /\ "odx:8"
  , odx_9__Sample /\ "odx:9"
  , odx_10__Sample /\ "odx:10"
  , odx_11__Sample /\ "odx:11"
  , odx_12__Sample /\ "odx:12"
  , odx_13__Sample /\ "odx:13"
  , odx_14__Sample /\ "odx:14"
  , x_808lc_0__Sample /\ "x_808lc:0"
  , x_808lc_1__Sample /\ "x_808lc:1"
  , x_808lc_2__Sample /\ "x_808lc:2"
  , x_808lc_3__Sample /\ "x_808lc:3"
  , x_808lc_4__Sample /\ "x_808lc:4"
  , mt_0__Sample /\ "mt:0"
  , mt_1__Sample /\ "mt:1"
  , mt_2__Sample /\ "mt:2"
  , mt_3__Sample /\ "mt:3"
  , mt_4__Sample /\ "mt:4"
  , mt_5__Sample /\ "mt:5"
  , mt_6__Sample /\ "mt:6"
  , mt_7__Sample /\ "mt:7"
  , mt_8__Sample /\ "mt:8"
  , mt_9__Sample /\ "mt:9"
  , mt_10__Sample /\ "mt:10"
  , mt_11__Sample /\ "mt:11"
  , mt_12__Sample /\ "mt:12"
  , mt_13__Sample /\ "mt:13"
  , mt_14__Sample /\ "mt:14"
  , mt_15__Sample /\ "mt:15"
  , drumtraks_0__Sample /\ "drumtraks:0"
  , drumtraks_1__Sample /\ "drumtraks:1"
  , drumtraks_2__Sample /\ "drumtraks:2"
  , drumtraks_3__Sample /\ "drumtraks:3"
  , drumtraks_4__Sample /\ "drumtraks:4"
  , drumtraks_5__Sample /\ "drumtraks:5"
  , drumtraks_6__Sample /\ "drumtraks:6"
  , drumtraks_7__Sample /\ "drumtraks:7"
  , drumtraks_8__Sample /\ "drumtraks:8"
  , drumtraks_9__Sample /\ "drumtraks:9"
  , drumtraks_10__Sample /\ "drumtraks:10"
  , drumtraks_11__Sample /\ "drumtraks:11"
  , drumtraks_12__Sample /\ "drumtraks:12"
  , print_0__Sample /\ "print:0"
  , print_1__Sample /\ "print:1"
  , print_2__Sample /\ "print:2"
  , print_3__Sample /\ "print:3"
  , print_4__Sample /\ "print:4"
  , print_5__Sample /\ "print:5"
  , print_6__Sample /\ "print:6"
  , print_7__Sample /\ "print:7"
  , print_8__Sample /\ "print:8"
  , print_9__Sample /\ "print:9"
  , print_10__Sample /\ "print:10"
  , blip_0__Sample /\ "blip:0"
  , blip_1__Sample /\ "blip:1"
  , wobble_0__Sample /\ "wobble:0"
  , made_0__Sample /\ "made:0"
  , made_1__Sample /\ "made:1"
  , made_2__Sample /\ "made:2"
  , made_3__Sample /\ "made:3"
  , made_4__Sample /\ "made:4"
  , made_5__Sample /\ "made:5"
  , made_6__Sample /\ "made:6"
  , bass3_0__Sample /\ "bass3:0"
  , bass3_1__Sample /\ "bass3:1"
  , bass3_2__Sample /\ "bass3:2"
  , bass3_3__Sample /\ "bass3:3"
  , bass3_4__Sample /\ "bass3:4"
  , bass3_5__Sample /\ "bass3:5"
  , bass3_6__Sample /\ "bass3:6"
  , bass3_7__Sample /\ "bass3:7"
  , bass3_8__Sample /\ "bass3:8"
  , bass3_9__Sample /\ "bass3:9"
  , bass3_10__Sample /\ "bass3:10"
  , speechless_0__Sample /\ "speechless:0"
  , speechless_1__Sample /\ "speechless:1"
  , speechless_2__Sample /\ "speechless:2"
  , speechless_3__Sample /\ "speechless:3"
  , speechless_4__Sample /\ "speechless:4"
  , speechless_5__Sample /\ "speechless:5"
  , speechless_6__Sample /\ "speechless:6"
  , speechless_7__Sample /\ "speechless:7"
  , speechless_8__Sample /\ "speechless:8"
  , speechless_9__Sample /\ "speechless:9"
  , sine_0__Sample /\ "sine:0"
  , sine_1__Sample /\ "sine:1"
  , sine_2__Sample /\ "sine:2"
  , sine_3__Sample /\ "sine:3"
  , sine_4__Sample /\ "sine:4"
  , sine_5__Sample /\ "sine:5"
  , noise_0__Sample /\ "noise:0"
  , x_808lt_0__Sample /\ "x_808lt:0"
  , x_808lt_1__Sample /\ "x_808lt:1"
  , x_808lt_2__Sample /\ "x_808lt:2"
  , x_808lt_3__Sample /\ "x_808lt:3"
  , x_808lt_4__Sample /\ "x_808lt:4"
  , sd_0__Sample /\ "sd:0"
  , sd_1__Sample /\ "sd:1"
  , alphabet_0__Sample /\ "alphabet:0"
  , alphabet_1__Sample /\ "alphabet:1"
  , alphabet_2__Sample /\ "alphabet:2"
  , alphabet_3__Sample /\ "alphabet:3"
  , alphabet_4__Sample /\ "alphabet:4"
  , alphabet_5__Sample /\ "alphabet:5"
  , alphabet_6__Sample /\ "alphabet:6"
  , alphabet_7__Sample /\ "alphabet:7"
  , alphabet_8__Sample /\ "alphabet:8"
  , alphabet_9__Sample /\ "alphabet:9"
  , alphabet_10__Sample /\ "alphabet:10"
  , alphabet_11__Sample /\ "alphabet:11"
  , alphabet_12__Sample /\ "alphabet:12"
  , alphabet_13__Sample /\ "alphabet:13"
  , alphabet_14__Sample /\ "alphabet:14"
  , alphabet_15__Sample /\ "alphabet:15"
  , alphabet_16__Sample /\ "alphabet:16"
  , alphabet_17__Sample /\ "alphabet:17"
  , alphabet_18__Sample /\ "alphabet:18"
  , alphabet_19__Sample /\ "alphabet:19"
  , alphabet_20__Sample /\ "alphabet:20"
  , alphabet_21__Sample /\ "alphabet:21"
  , alphabet_22__Sample /\ "alphabet:22"
  , alphabet_23__Sample /\ "alphabet:23"
  , alphabet_24__Sample /\ "alphabet:24"
  , alphabet_25__Sample /\ "alphabet:25"
  , baa2_0__Sample /\ "baa2:0"
  , baa2_1__Sample /\ "baa2:1"
  , baa2_2__Sample /\ "baa2:2"
  , baa2_3__Sample /\ "baa2:3"
  , baa2_4__Sample /\ "baa2:4"
  , baa2_5__Sample /\ "baa2:5"
  , baa2_6__Sample /\ "baa2:6"
  , tok_0__Sample /\ "tok:0"
  , tok_1__Sample /\ "tok:1"
  , tok_2__Sample /\ "tok:2"
  , tok_3__Sample /\ "tok:3"
  , ades3_0__Sample /\ "ades3:0"
  , ades3_1__Sample /\ "ades3:1"
  , ades3_2__Sample /\ "ades3:2"
  , ades3_3__Sample /\ "ades3:3"
  , ades3_4__Sample /\ "ades3:4"
  , ades3_5__Sample /\ "ades3:5"
  , ades3_6__Sample /\ "ades3:6"
  , x_909_0__Sample /\ "x_909:0"
  , sid_0__Sample /\ "sid:0"
  , sid_1__Sample /\ "sid:1"
  , sid_2__Sample /\ "sid:2"
  , sid_3__Sample /\ "sid:3"
  , sid_4__Sample /\ "sid:4"
  , sid_5__Sample /\ "sid:5"
  , sid_6__Sample /\ "sid:6"
  , sid_7__Sample /\ "sid:7"
  , sid_8__Sample /\ "sid:8"
  , sid_9__Sample /\ "sid:9"
  , sid_10__Sample /\ "sid:10"
  , sid_11__Sample /\ "sid:11"
  , jungbass_0__Sample /\ "jungbass:0"
  , jungbass_1__Sample /\ "jungbass:1"
  , jungbass_2__Sample /\ "jungbass:2"
  , jungbass_3__Sample /\ "jungbass:3"
  , jungbass_4__Sample /\ "jungbass:4"
  , jungbass_5__Sample /\ "jungbass:5"
  , jungbass_6__Sample /\ "jungbass:6"
  , jungbass_7__Sample /\ "jungbass:7"
  , jungbass_8__Sample /\ "jungbass:8"
  , jungbass_9__Sample /\ "jungbass:9"
  , jungbass_10__Sample /\ "jungbass:10"
  , jungbass_11__Sample /\ "jungbass:11"
  , jungbass_12__Sample /\ "jungbass:12"
  , jungbass_13__Sample /\ "jungbass:13"
  , jungbass_14__Sample /\ "jungbass:14"
  , jungbass_15__Sample /\ "jungbass:15"
  , jungbass_16__Sample /\ "jungbass:16"
  , jungbass_17__Sample /\ "jungbass:17"
  , jungbass_18__Sample /\ "jungbass:18"
  , jungbass_19__Sample /\ "jungbass:19"
  , gabba_0__Sample /\ "gabba:0"
  , gabba_1__Sample /\ "gabba:1"
  , gabba_2__Sample /\ "gabba:2"
  , gabba_3__Sample /\ "gabba:3"
  , crow_0__Sample /\ "crow:0"
  , crow_1__Sample /\ "crow:1"
  , crow_2__Sample /\ "crow:2"
  , crow_3__Sample /\ "crow:3"
  , birds3_0__Sample /\ "birds3:0"
  , birds3_1__Sample /\ "birds3:1"
  , birds3_2__Sample /\ "birds3:2"
  , birds3_3__Sample /\ "birds3:3"
  , birds3_4__Sample /\ "birds3:4"
  , birds3_5__Sample /\ "birds3:5"
  , birds3_6__Sample /\ "birds3:6"
  , birds3_7__Sample /\ "birds3:7"
  , birds3_8__Sample /\ "birds3:8"
  , birds3_9__Sample /\ "birds3:9"
  , birds3_10__Sample /\ "birds3:10"
  , birds3_11__Sample /\ "birds3:11"
  , birds3_12__Sample /\ "birds3:12"
  , birds3_13__Sample /\ "birds3:13"
  , birds3_14__Sample /\ "birds3:14"
  , birds3_15__Sample /\ "birds3:15"
  , birds3_16__Sample /\ "birds3:16"
  , birds3_17__Sample /\ "birds3:17"
  , birds3_18__Sample /\ "birds3:18"
  , auto_0__Sample /\ "auto:0"
  , auto_1__Sample /\ "auto:1"
  , auto_2__Sample /\ "auto:2"
  , auto_3__Sample /\ "auto:3"
  , auto_4__Sample /\ "auto:4"
  , auto_5__Sample /\ "auto:5"
  , auto_6__Sample /\ "auto:6"
  , auto_7__Sample /\ "auto:7"
  , auto_8__Sample /\ "auto:8"
  , auto_9__Sample /\ "auto:9"
  , auto_10__Sample /\ "auto:10"
  , mute_0__Sample /\ "mute:0"
  , mute_1__Sample /\ "mute:1"
  , mute_2__Sample /\ "mute:2"
  , mute_3__Sample /\ "mute:3"
  , mute_4__Sample /\ "mute:4"
  , mute_5__Sample /\ "mute:5"
  , mute_6__Sample /\ "mute:6"
  , mute_7__Sample /\ "mute:7"
  , mute_8__Sample /\ "mute:8"
  , mute_9__Sample /\ "mute:9"
  , mute_10__Sample /\ "mute:10"
  , mute_11__Sample /\ "mute:11"
  , mute_12__Sample /\ "mute:12"
  , mute_13__Sample /\ "mute:13"
  , mute_14__Sample /\ "mute:14"
  , mute_15__Sample /\ "mute:15"
  , mute_16__Sample /\ "mute:16"
  , mute_17__Sample /\ "mute:17"
  , mute_18__Sample /\ "mute:18"
  , mute_19__Sample /\ "mute:19"
  , mute_20__Sample /\ "mute:20"
  , mute_21__Sample /\ "mute:21"
  , mute_22__Sample /\ "mute:22"
  , mute_23__Sample /\ "mute:23"
  , mute_24__Sample /\ "mute:24"
  , mute_25__Sample /\ "mute:25"
  , mute_26__Sample /\ "mute:26"
  , mute_27__Sample /\ "mute:27"
  , sheffield_0__Sample /\ "sheffield:0"
  , casio_0__Sample /\ "casio:0"
  , casio_1__Sample /\ "casio:1"
  , casio_2__Sample /\ "casio:2"
  , sax_0__Sample /\ "sax:0"
  , sax_1__Sample /\ "sax:1"
  , sax_2__Sample /\ "sax:2"
  , sax_3__Sample /\ "sax:3"
  , sax_4__Sample /\ "sax:4"
  , sax_5__Sample /\ "sax:5"
  , sax_6__Sample /\ "sax:6"
  , sax_7__Sample /\ "sax:7"
  , sax_8__Sample /\ "sax:8"
  , sax_9__Sample /\ "sax:9"
  , sax_10__Sample /\ "sax:10"
  , sax_11__Sample /\ "sax:11"
  , sax_12__Sample /\ "sax:12"
  , sax_13__Sample /\ "sax:13"
  , sax_14__Sample /\ "sax:14"
  , sax_15__Sample /\ "sax:15"
  , sax_16__Sample /\ "sax:16"
  , sax_17__Sample /\ "sax:17"
  , sax_18__Sample /\ "sax:18"
  , sax_19__Sample /\ "sax:19"
  , sax_20__Sample /\ "sax:20"
  , sax_21__Sample /\ "sax:21"
  , circus_0__Sample /\ "circus:0"
  , circus_1__Sample /\ "circus:1"
  , circus_2__Sample /\ "circus:2"
  , yeah_0__Sample /\ "yeah:0"
  , yeah_1__Sample /\ "yeah:1"
  , yeah_2__Sample /\ "yeah:2"
  , yeah_3__Sample /\ "yeah:3"
  , yeah_4__Sample /\ "yeah:4"
  , yeah_5__Sample /\ "yeah:5"
  , yeah_6__Sample /\ "yeah:6"
  , yeah_7__Sample /\ "yeah:7"
  , yeah_8__Sample /\ "yeah:8"
  , yeah_9__Sample /\ "yeah:9"
  , yeah_10__Sample /\ "yeah:10"
  , yeah_11__Sample /\ "yeah:11"
  , yeah_12__Sample /\ "yeah:12"
  , yeah_13__Sample /\ "yeah:13"
  , yeah_14__Sample /\ "yeah:14"
  , yeah_15__Sample /\ "yeah:15"
  , yeah_16__Sample /\ "yeah:16"
  , yeah_17__Sample /\ "yeah:17"
  , yeah_18__Sample /\ "yeah:18"
  , yeah_19__Sample /\ "yeah:19"
  , yeah_20__Sample /\ "yeah:20"
  , yeah_21__Sample /\ "yeah:21"
  , yeah_22__Sample /\ "yeah:22"
  , yeah_23__Sample /\ "yeah:23"
  , yeah_24__Sample /\ "yeah:24"
  , yeah_25__Sample /\ "yeah:25"
  , yeah_26__Sample /\ "yeah:26"
  , yeah_27__Sample /\ "yeah:27"
  , yeah_28__Sample /\ "yeah:28"
  , yeah_29__Sample /\ "yeah:29"
  , yeah_30__Sample /\ "yeah:30"
  , oc_0__Sample /\ "oc:0"
  , oc_1__Sample /\ "oc:1"
  , oc_2__Sample /\ "oc:2"
  , oc_3__Sample /\ "oc:3"
  , alex_0__Sample /\ "alex:0"
  , alex_1__Sample /\ "alex:1"
  , can_0__Sample /\ "can:0"
  , can_1__Sample /\ "can:1"
  , can_2__Sample /\ "can:2"
  , can_3__Sample /\ "can:3"
  , can_4__Sample /\ "can:4"
  , can_5__Sample /\ "can:5"
  , can_6__Sample /\ "can:6"
  , can_7__Sample /\ "can:7"
  , can_8__Sample /\ "can:8"
  , can_9__Sample /\ "can:9"
  , can_10__Sample /\ "can:10"
  , can_11__Sample /\ "can:11"
  , can_12__Sample /\ "can:12"
  , can_13__Sample /\ "can:13"
  , jungle_0__Sample /\ "jungle:0"
  , jungle_1__Sample /\ "jungle:1"
  , jungle_2__Sample /\ "jungle:2"
  , jungle_3__Sample /\ "jungle:3"
  , jungle_4__Sample /\ "jungle:4"
  , jungle_5__Sample /\ "jungle:5"
  , jungle_6__Sample /\ "jungle:6"
  , jungle_7__Sample /\ "jungle:7"
  , jungle_8__Sample /\ "jungle:8"
  , jungle_9__Sample /\ "jungle:9"
  , jungle_10__Sample /\ "jungle:10"
  , jungle_11__Sample /\ "jungle:11"
  , jungle_12__Sample /\ "jungle:12"
  , moog_0__Sample /\ "moog:0"
  , moog_1__Sample /\ "moog:1"
  , moog_2__Sample /\ "moog:2"
  , moog_3__Sample /\ "moog:3"
  , moog_4__Sample /\ "moog:4"
  , moog_5__Sample /\ "moog:5"
  , moog_6__Sample /\ "moog:6"
  , h_0__Sample /\ "h:0"
  , h_1__Sample /\ "h:1"
  , h_2__Sample /\ "h:2"
  , h_3__Sample /\ "h:3"
  , h_4__Sample /\ "h:4"
  , h_5__Sample /\ "h:5"
  , h_6__Sample /\ "h:6"
  , wind_0__Sample /\ "wind:0"
  , wind_1__Sample /\ "wind:1"
  , wind_2__Sample /\ "wind:2"
  , wind_3__Sample /\ "wind:3"
  , wind_4__Sample /\ "wind:4"
  , wind_5__Sample /\ "wind:5"
  , wind_6__Sample /\ "wind:6"
  , wind_7__Sample /\ "wind:7"
  , wind_8__Sample /\ "wind:8"
  , wind_9__Sample /\ "wind:9"
  , rs_0__Sample /\ "rs:0"
  , em2_0__Sample /\ "em2:0"
  , em2_1__Sample /\ "em2:1"
  , em2_2__Sample /\ "em2:2"
  , em2_3__Sample /\ "em2:3"
  , em2_4__Sample /\ "em2:4"
  , em2_5__Sample /\ "em2:5"
  , noise2_0__Sample /\ "noise2:0"
  , noise2_1__Sample /\ "noise2:1"
  , noise2_2__Sample /\ "noise2:2"
  , noise2_3__Sample /\ "noise2:3"
  , noise2_4__Sample /\ "noise2:4"
  , noise2_5__Sample /\ "noise2:5"
  , noise2_6__Sample /\ "noise2:6"
  , noise2_7__Sample /\ "noise2:7"
  , foo_0__Sample /\ "foo:0"
  , foo_1__Sample /\ "foo:1"
  , foo_2__Sample /\ "foo:2"
  , foo_3__Sample /\ "foo:3"
  , foo_4__Sample /\ "foo:4"
  , foo_5__Sample /\ "foo:5"
  , foo_6__Sample /\ "foo:6"
  , foo_7__Sample /\ "foo:7"
  , foo_8__Sample /\ "foo:8"
  , foo_9__Sample /\ "foo:9"
  , foo_10__Sample /\ "foo:10"
  , foo_11__Sample /\ "foo:11"
  , foo_12__Sample /\ "foo:12"
  , foo_13__Sample /\ "foo:13"
  , foo_14__Sample /\ "foo:14"
  , foo_15__Sample /\ "foo:15"
  , foo_16__Sample /\ "foo:16"
  , foo_17__Sample /\ "foo:17"
  , foo_18__Sample /\ "foo:18"
  , foo_19__Sample /\ "foo:19"
  , foo_20__Sample /\ "foo:20"
  , foo_21__Sample /\ "foo:21"
  , foo_22__Sample /\ "foo:22"
  , foo_23__Sample /\ "foo:23"
  , foo_24__Sample /\ "foo:24"
  , foo_25__Sample /\ "foo:25"
  , foo_26__Sample /\ "foo:26"
  , armora_0__Sample /\ "armora:0"
  , armora_1__Sample /\ "armora:1"
  , armora_2__Sample /\ "armora:2"
  , armora_3__Sample /\ "armora:3"
  , armora_4__Sample /\ "armora:4"
  , armora_5__Sample /\ "armora:5"
  , armora_6__Sample /\ "armora:6"
  , bend_0__Sample /\ "bend:0"
  , bend_1__Sample /\ "bend:1"
  , bend_2__Sample /\ "bend:2"
  , bend_3__Sample /\ "bend:3"
  , newnotes_0__Sample /\ "newnotes:0"
  , newnotes_1__Sample /\ "newnotes:1"
  , newnotes_2__Sample /\ "newnotes:2"
  , newnotes_3__Sample /\ "newnotes:3"
  , newnotes_4__Sample /\ "newnotes:4"
  , newnotes_5__Sample /\ "newnotes:5"
  , newnotes_6__Sample /\ "newnotes:6"
  , newnotes_7__Sample /\ "newnotes:7"
  , newnotes_8__Sample /\ "newnotes:8"
  , newnotes_9__Sample /\ "newnotes:9"
  , newnotes_10__Sample /\ "newnotes:10"
  , newnotes_11__Sample /\ "newnotes:11"
  , newnotes_12__Sample /\ "newnotes:12"
  , newnotes_13__Sample /\ "newnotes:13"
  , newnotes_14__Sample /\ "newnotes:14"
  , pebbles_0__Sample /\ "pebbles:0"
  , mash2_0__Sample /\ "mash2:0"
  , mash2_1__Sample /\ "mash2:1"
  , mash2_2__Sample /\ "mash2:2"
  , mash2_3__Sample /\ "mash2:3"
  , diphone2_0__Sample /\ "diphone2:0"
  , diphone2_1__Sample /\ "diphone2:1"
  , diphone2_2__Sample /\ "diphone2:2"
  , diphone2_3__Sample /\ "diphone2:3"
  , diphone2_4__Sample /\ "diphone2:4"
  , diphone2_5__Sample /\ "diphone2:5"
  , diphone2_6__Sample /\ "diphone2:6"
  , diphone2_7__Sample /\ "diphone2:7"
  , diphone2_8__Sample /\ "diphone2:8"
  , diphone2_9__Sample /\ "diphone2:9"
  , diphone2_10__Sample /\ "diphone2:10"
  , diphone2_11__Sample /\ "diphone2:11"
  , e_0__Sample /\ "e:0"
  , e_1__Sample /\ "e:1"
  , e_2__Sample /\ "e:2"
  , e_3__Sample /\ "e:3"
  , e_4__Sample /\ "e:4"
  , e_5__Sample /\ "e:5"
  , e_6__Sample /\ "e:6"
  , e_7__Sample /\ "e:7"
  , bubble_0__Sample /\ "bubble:0"
  , bubble_1__Sample /\ "bubble:1"
  , bubble_2__Sample /\ "bubble:2"
  , bubble_3__Sample /\ "bubble:3"
  , bubble_4__Sample /\ "bubble:4"
  , bubble_5__Sample /\ "bubble:5"
  , bubble_6__Sample /\ "bubble:6"
  , bubble_7__Sample /\ "bubble:7"
  , insect_0__Sample /\ "insect:0"
  , insect_1__Sample /\ "insect:1"
  , insect_2__Sample /\ "insect:2"
  , ade_0__Sample /\ "ade:0"
  , ade_1__Sample /\ "ade:1"
  , ade_2__Sample /\ "ade:2"
  , ade_3__Sample /\ "ade:3"
  , ade_4__Sample /\ "ade:4"
  , ade_5__Sample /\ "ade:5"
  , ade_6__Sample /\ "ade:6"
  , ade_7__Sample /\ "ade:7"
  , ade_8__Sample /\ "ade:8"
  , ade_9__Sample /\ "ade:9"
  , glitch_0__Sample /\ "glitch:0"
  , glitch_1__Sample /\ "glitch:1"
  , glitch_2__Sample /\ "glitch:2"
  , glitch_3__Sample /\ "glitch:3"
  , glitch_4__Sample /\ "glitch:4"
  , glitch_5__Sample /\ "glitch:5"
  , glitch_6__Sample /\ "glitch:6"
  , glitch_7__Sample /\ "glitch:7"
  , haw_0__Sample /\ "haw:0"
  , haw_1__Sample /\ "haw:1"
  , haw_2__Sample /\ "haw:2"
  , haw_3__Sample /\ "haw:3"
  , haw_4__Sample /\ "haw:4"
  , haw_5__Sample /\ "haw:5"
  , popkick_0__Sample /\ "popkick:0"
  , popkick_1__Sample /\ "popkick:1"
  , popkick_2__Sample /\ "popkick:2"
  , popkick_3__Sample /\ "popkick:3"
  , popkick_4__Sample /\ "popkick:4"
  , popkick_5__Sample /\ "popkick:5"
  , popkick_6__Sample /\ "popkick:6"
  , popkick_7__Sample /\ "popkick:7"
  , popkick_8__Sample /\ "popkick:8"
  , popkick_9__Sample /\ "popkick:9"
  , breaks157_0__Sample /\ "breaks157:0"
  , gtr_0__Sample /\ "gtr:0"
  , gtr_1__Sample /\ "gtr:1"
  , gtr_2__Sample /\ "gtr:2"
  , clubkick_0__Sample /\ "clubkick:0"
  , clubkick_1__Sample /\ "clubkick:1"
  , clubkick_2__Sample /\ "clubkick:2"
  , clubkick_3__Sample /\ "clubkick:3"
  , clubkick_4__Sample /\ "clubkick:4"
  , breaks152_0__Sample /\ "breaks152:0"
  , x_808bd_0__Sample /\ "x_808bd:0"
  , x_808bd_1__Sample /\ "x_808bd:1"
  , x_808bd_2__Sample /\ "x_808bd:2"
  , x_808bd_3__Sample /\ "x_808bd:3"
  , x_808bd_4__Sample /\ "x_808bd:4"
  , x_808bd_5__Sample /\ "x_808bd:5"
  , x_808bd_6__Sample /\ "x_808bd:6"
  , x_808bd_7__Sample /\ "x_808bd:7"
  , x_808bd_8__Sample /\ "x_808bd:8"
  , x_808bd_9__Sample /\ "x_808bd:9"
  , x_808bd_10__Sample /\ "x_808bd:10"
  , x_808bd_11__Sample /\ "x_808bd:11"
  , x_808bd_12__Sample /\ "x_808bd:12"
  , x_808bd_13__Sample /\ "x_808bd:13"
  , x_808bd_14__Sample /\ "x_808bd:14"
  , x_808bd_15__Sample /\ "x_808bd:15"
  , x_808bd_16__Sample /\ "x_808bd:16"
  , x_808bd_17__Sample /\ "x_808bd:17"
  , x_808bd_18__Sample /\ "x_808bd:18"
  , x_808bd_19__Sample /\ "x_808bd:19"
  , x_808bd_20__Sample /\ "x_808bd:20"
  , x_808bd_21__Sample /\ "x_808bd:21"
  , x_808bd_22__Sample /\ "x_808bd:22"
  , x_808bd_23__Sample /\ "x_808bd:23"
  , x_808bd_24__Sample /\ "x_808bd:24"
  , miniyeah_0__Sample /\ "miniyeah:0"
  , miniyeah_1__Sample /\ "miniyeah:1"
  , miniyeah_2__Sample /\ "miniyeah:2"
  , miniyeah_3__Sample /\ "miniyeah:3"
  , if_0__Sample /\ "if:0"
  , if_1__Sample /\ "if:1"
  , if_2__Sample /\ "if:2"
  , if_3__Sample /\ "if:3"
  , if_4__Sample /\ "if:4"
  , x_808oh_0__Sample /\ "x_808oh:0"
  , x_808oh_1__Sample /\ "x_808oh:1"
  , x_808oh_2__Sample /\ "x_808oh:2"
  , x_808oh_3__Sample /\ "x_808oh:3"
  , x_808oh_4__Sample /\ "x_808oh:4"
  , house_0__Sample /\ "house:0"
  , house_1__Sample /\ "house:1"
  , house_2__Sample /\ "house:2"
  , house_3__Sample /\ "house:3"
  , house_4__Sample /\ "house:4"
  , house_5__Sample /\ "house:5"
  , house_6__Sample /\ "house:6"
  , house_7__Sample /\ "house:7"
  , dr_0__Sample /\ "dr:0"
  , dr_1__Sample /\ "dr:1"
  , dr_2__Sample /\ "dr:2"
  , dr_3__Sample /\ "dr:3"
  , dr_4__Sample /\ "dr:4"
  , dr_5__Sample /\ "dr:5"
  , dr_6__Sample /\ "dr:6"
  , dr_7__Sample /\ "dr:7"
  , dr_8__Sample /\ "dr:8"
  , dr_9__Sample /\ "dr:9"
  , dr_10__Sample /\ "dr:10"
  , dr_11__Sample /\ "dr:11"
  , dr_12__Sample /\ "dr:12"
  , dr_13__Sample /\ "dr:13"
  , dr_14__Sample /\ "dr:14"
  , dr_15__Sample /\ "dr:15"
  , dr_16__Sample /\ "dr:16"
  , dr_17__Sample /\ "dr:17"
  , dr_18__Sample /\ "dr:18"
  , dr_19__Sample /\ "dr:19"
  , dr_20__Sample /\ "dr:20"
  , dr_21__Sample /\ "dr:21"
  , dr_22__Sample /\ "dr:22"
  , dr_23__Sample /\ "dr:23"
  , dr_24__Sample /\ "dr:24"
  , dr_25__Sample /\ "dr:25"
  , dr_26__Sample /\ "dr:26"
  , dr_27__Sample /\ "dr:27"
  , dr_28__Sample /\ "dr:28"
  , dr_29__Sample /\ "dr:29"
  , dr_30__Sample /\ "dr:30"
  , dr_31__Sample /\ "dr:31"
  , dr_32__Sample /\ "dr:32"
  , dr_33__Sample /\ "dr:33"
  , dr_34__Sample /\ "dr:34"
  , dr_35__Sample /\ "dr:35"
  , dr_36__Sample /\ "dr:36"
  , dr_37__Sample /\ "dr:37"
  , dr_38__Sample /\ "dr:38"
  , dr_39__Sample /\ "dr:39"
  , dr_40__Sample /\ "dr:40"
  , dr_41__Sample /\ "dr:41"
  , dr55_0__Sample /\ "dr55:0"
  , dr55_1__Sample /\ "dr55:1"
  , dr55_2__Sample /\ "dr55:2"
  , dr55_3__Sample /\ "dr55:3"
  , bass_0__Sample /\ "bass:0"
  , bass_1__Sample /\ "bass:1"
  , bass_2__Sample /\ "bass:2"
  , bass_3__Sample /\ "bass:3"
  , ho_0__Sample /\ "ho:0"
  , ho_1__Sample /\ "ho:1"
  , ho_2__Sample /\ "ho:2"
  , ho_3__Sample /\ "ho:3"
  , ho_4__Sample /\ "ho:4"
  , ho_5__Sample /\ "ho:5"
  , hardkick_0__Sample /\ "hardkick:0"
  , hardkick_1__Sample /\ "hardkick:1"
  , hardkick_2__Sample /\ "hardkick:2"
  , hardkick_3__Sample /\ "hardkick:3"
  , hardkick_4__Sample /\ "hardkick:4"
  , hardkick_5__Sample /\ "hardkick:5"
  , x_808hc_0__Sample /\ "x_808hc:0"
  , x_808hc_1__Sample /\ "x_808hc:1"
  , x_808hc_2__Sample /\ "x_808hc:2"
  , x_808hc_3__Sample /\ "x_808hc:3"
  , x_808hc_4__Sample /\ "x_808hc:4"
  , hit_0__Sample /\ "hit:0"
  , hit_1__Sample /\ "hit:1"
  , hit_2__Sample /\ "hit:2"
  , hit_3__Sample /\ "hit:3"
  , hit_4__Sample /\ "hit:4"
  , hit_5__Sample /\ "hit:5"
  , breaks165_0__Sample /\ "breaks165:0"
  , dr2_0__Sample /\ "dr2:0"
  , dr2_1__Sample /\ "dr2:1"
  , dr2_2__Sample /\ "dr2:2"
  , dr2_3__Sample /\ "dr2:3"
  , dr2_4__Sample /\ "dr2:4"
  , dr2_5__Sample /\ "dr2:5"
  , tabla_0__Sample /\ "tabla:0"
  , tabla_1__Sample /\ "tabla:1"
  , tabla_2__Sample /\ "tabla:2"
  , tabla_3__Sample /\ "tabla:3"
  , tabla_4__Sample /\ "tabla:4"
  , tabla_5__Sample /\ "tabla:5"
  , tabla_6__Sample /\ "tabla:6"
  , tabla_7__Sample /\ "tabla:7"
  , tabla_8__Sample /\ "tabla:8"
  , tabla_9__Sample /\ "tabla:9"
  , tabla_10__Sample /\ "tabla:10"
  , tabla_11__Sample /\ "tabla:11"
  , tabla_12__Sample /\ "tabla:12"
  , tabla_13__Sample /\ "tabla:13"
  , tabla_14__Sample /\ "tabla:14"
  , tabla_15__Sample /\ "tabla:15"
  , tabla_16__Sample /\ "tabla:16"
  , tabla_17__Sample /\ "tabla:17"
  , tabla_18__Sample /\ "tabla:18"
  , tabla_19__Sample /\ "tabla:19"
  , tabla_20__Sample /\ "tabla:20"
  , tabla_21__Sample /\ "tabla:21"
  , tabla_22__Sample /\ "tabla:22"
  , tabla_23__Sample /\ "tabla:23"
  , tabla_24__Sample /\ "tabla:24"
  , tabla_25__Sample /\ "tabla:25"
  , dork2_0__Sample /\ "dork2:0"
  , dork2_1__Sample /\ "dork2:1"
  , dork2_2__Sample /\ "dork2:2"
  , dork2_3__Sample /\ "dork2:3"
  , hc_0__Sample /\ "hc:0"
  , hc_1__Sample /\ "hc:1"
  , hc_2__Sample /\ "hc:2"
  , hc_3__Sample /\ "hc:3"
  , hc_4__Sample /\ "hc:4"
  , hc_5__Sample /\ "hc:5"
  , bassfoo_0__Sample /\ "bassfoo:0"
  , bassfoo_1__Sample /\ "bassfoo:1"
  , bassfoo_2__Sample /\ "bassfoo:2"
  , seawolf_0__Sample /\ "seawolf:0"
  , seawolf_1__Sample /\ "seawolf:1"
  , seawolf_2__Sample /\ "seawolf:2"
  , cp_0__Sample /\ "cp:0"
  , cp_1__Sample /\ "cp:1"
  , jazz_0__Sample /\ "jazz:0"
  , jazz_1__Sample /\ "jazz:1"
  , jazz_2__Sample /\ "jazz:2"
  , jazz_3__Sample /\ "jazz:3"
  , jazz_4__Sample /\ "jazz:4"
  , jazz_5__Sample /\ "jazz:5"
  , jazz_6__Sample /\ "jazz:6"
  , jazz_7__Sample /\ "jazz:7"
  , juno_0__Sample /\ "juno:0"
  , juno_1__Sample /\ "juno:1"
  , juno_2__Sample /\ "juno:2"
  , juno_3__Sample /\ "juno:3"
  , juno_4__Sample /\ "juno:4"
  , juno_5__Sample /\ "juno:5"
  , juno_6__Sample /\ "juno:6"
  , juno_7__Sample /\ "juno:7"
  , juno_8__Sample /\ "juno:8"
  , juno_9__Sample /\ "juno:9"
  , juno_10__Sample /\ "juno:10"
  , juno_11__Sample /\ "juno:11"
  , birds_0__Sample /\ "birds:0"
  , birds_1__Sample /\ "birds:1"
  , birds_2__Sample /\ "birds:2"
  , birds_3__Sample /\ "birds:3"
  , birds_4__Sample /\ "birds:4"
  , birds_5__Sample /\ "birds:5"
  , birds_6__Sample /\ "birds:6"
  , birds_7__Sample /\ "birds:7"
  , birds_8__Sample /\ "birds:8"
  , birds_9__Sample /\ "birds:9"
  , glasstap_0__Sample /\ "glasstap:0"
  , glasstap_1__Sample /\ "glasstap:1"
  , glasstap_2__Sample /\ "glasstap:2"
  , bass1_0__Sample /\ "bass1:0"
  , bass1_1__Sample /\ "bass1:1"
  , bass1_2__Sample /\ "bass1:2"
  , bass1_3__Sample /\ "bass1:3"
  , bass1_4__Sample /\ "bass1:4"
  , bass1_5__Sample /\ "bass1:5"
  , bass1_6__Sample /\ "bass1:6"
  , bass1_7__Sample /\ "bass1:7"
  , bass1_8__Sample /\ "bass1:8"
  , bass1_9__Sample /\ "bass1:9"
  , bass1_10__Sample /\ "bass1:10"
  , bass1_11__Sample /\ "bass1:11"
  , bass1_12__Sample /\ "bass1:12"
  , bass1_13__Sample /\ "bass1:13"
  , bass1_14__Sample /\ "bass1:14"
  , bass1_15__Sample /\ "bass1:15"
  , bass1_16__Sample /\ "bass1:16"
  , bass1_17__Sample /\ "bass1:17"
  , bass1_18__Sample /\ "bass1:18"
  , bass1_19__Sample /\ "bass1:19"
  , bass1_20__Sample /\ "bass1:20"
  , bass1_21__Sample /\ "bass1:21"
  , bass1_22__Sample /\ "bass1:22"
  , bass1_23__Sample /\ "bass1:23"
  , bass1_24__Sample /\ "bass1:24"
  , bass1_25__Sample /\ "bass1:25"
  , bass1_26__Sample /\ "bass1:26"
  , bass1_27__Sample /\ "bass1:27"
  , bass1_28__Sample /\ "bass1:28"
  , bass1_29__Sample /\ "bass1:29"
  , hh27_0__Sample /\ "hh27:0"
  , hh27_1__Sample /\ "hh27:1"
  , hh27_2__Sample /\ "hh27:2"
  , hh27_3__Sample /\ "hh27:3"
  , hh27_4__Sample /\ "hh27:4"
  , hh27_5__Sample /\ "hh27:5"
  , hh27_6__Sample /\ "hh27:6"
  , hh27_7__Sample /\ "hh27:7"
  , hh27_8__Sample /\ "hh27:8"
  , hh27_9__Sample /\ "hh27:9"
  , hh27_10__Sample /\ "hh27:10"
  , hh27_11__Sample /\ "hh27:11"
  , hh27_12__Sample /\ "hh27:12"
  , x_808_0__Sample /\ "x_808:0"
  , x_808_1__Sample /\ "x_808:1"
  , x_808_2__Sample /\ "x_808:2"
  , x_808_3__Sample /\ "x_808:3"
  , x_808_4__Sample /\ "x_808:4"
  , x_808_5__Sample /\ "x_808:5"
  , notes_0__Sample /\ "notes:0"
  , notes_1__Sample /\ "notes:1"
  , notes_2__Sample /\ "notes:2"
  , notes_3__Sample /\ "notes:3"
  , notes_4__Sample /\ "notes:4"
  , notes_5__Sample /\ "notes:5"
  , notes_6__Sample /\ "notes:6"
  , notes_7__Sample /\ "notes:7"
  , notes_8__Sample /\ "notes:8"
  , notes_9__Sample /\ "notes:9"
  , notes_10__Sample /\ "notes:10"
  , notes_11__Sample /\ "notes:11"
  , notes_12__Sample /\ "notes:12"
  , notes_13__Sample /\ "notes:13"
  , notes_14__Sample /\ "notes:14"
  , xmas_0__Sample /\ "xmas:0"
  , erk_0__Sample /\ "erk:0"
  , x_808mt_0__Sample /\ "x_808mt:0"
  , x_808mt_1__Sample /\ "x_808mt:1"
  , x_808mt_2__Sample /\ "x_808mt:2"
  , x_808mt_3__Sample /\ "x_808mt:3"
  , x_808mt_4__Sample /\ "x_808mt:4"
  , lighter_0__Sample /\ "lighter:0"
  , lighter_1__Sample /\ "lighter:1"
  , lighter_2__Sample /\ "lighter:2"
  , lighter_3__Sample /\ "lighter:3"
  , lighter_4__Sample /\ "lighter:4"
  , lighter_5__Sample /\ "lighter:5"
  , lighter_6__Sample /\ "lighter:6"
  , lighter_7__Sample /\ "lighter:7"
  , lighter_8__Sample /\ "lighter:8"
  , lighter_9__Sample /\ "lighter:9"
  , lighter_10__Sample /\ "lighter:10"
  , lighter_11__Sample /\ "lighter:11"
  , lighter_12__Sample /\ "lighter:12"
  , lighter_13__Sample /\ "lighter:13"
  , lighter_14__Sample /\ "lighter:14"
  , lighter_15__Sample /\ "lighter:15"
  , lighter_16__Sample /\ "lighter:16"
  , lighter_17__Sample /\ "lighter:17"
  , lighter_18__Sample /\ "lighter:18"
  , lighter_19__Sample /\ "lighter:19"
  , lighter_20__Sample /\ "lighter:20"
  , lighter_21__Sample /\ "lighter:21"
  , lighter_22__Sample /\ "lighter:22"
  , lighter_23__Sample /\ "lighter:23"
  , lighter_24__Sample /\ "lighter:24"
  , lighter_25__Sample /\ "lighter:25"
  , lighter_26__Sample /\ "lighter:26"
  , lighter_27__Sample /\ "lighter:27"
  , lighter_28__Sample /\ "lighter:28"
  , lighter_29__Sample /\ "lighter:29"
  , lighter_30__Sample /\ "lighter:30"
  , lighter_31__Sample /\ "lighter:31"
  , lighter_32__Sample /\ "lighter:32"
  , cb_0__Sample /\ "cb:0"
  , subroc3d_0__Sample /\ "subroc3d:0"
  , subroc3d_1__Sample /\ "subroc3d:1"
  , subroc3d_2__Sample /\ "subroc3d:2"
  , subroc3d_3__Sample /\ "subroc3d:3"
  , subroc3d_4__Sample /\ "subroc3d:4"
  , subroc3d_5__Sample /\ "subroc3d:5"
  , subroc3d_6__Sample /\ "subroc3d:6"
  , subroc3d_7__Sample /\ "subroc3d:7"
  , subroc3d_8__Sample /\ "subroc3d:8"
  , subroc3d_9__Sample /\ "subroc3d:9"
  , subroc3d_10__Sample /\ "subroc3d:10"
  , ul_0__Sample /\ "ul:0"
  , ul_1__Sample /\ "ul:1"
  , ul_2__Sample /\ "ul:2"
  , ul_3__Sample /\ "ul:3"
  , ul_4__Sample /\ "ul:4"
  , ul_5__Sample /\ "ul:5"
  , ul_6__Sample /\ "ul:6"
  , ul_7__Sample /\ "ul:7"
  , ul_8__Sample /\ "ul:8"
  , ul_9__Sample /\ "ul:9"
  , gab_0__Sample /\ "gab:0"
  , gab_1__Sample /\ "gab:1"
  , gab_2__Sample /\ "gab:2"
  , gab_3__Sample /\ "gab:3"
  , gab_4__Sample /\ "gab:4"
  , gab_5__Sample /\ "gab:5"
  , gab_6__Sample /\ "gab:6"
  , gab_7__Sample /\ "gab:7"
  , gab_8__Sample /\ "gab:8"
  , gab_9__Sample /\ "gab:9"
  , monsterb_0__Sample /\ "monsterb:0"
  , monsterb_1__Sample /\ "monsterb:1"
  , monsterb_2__Sample /\ "monsterb:2"
  , monsterb_3__Sample /\ "monsterb:3"
  , monsterb_4__Sample /\ "monsterb:4"
  , monsterb_5__Sample /\ "monsterb:5"
  , diphone_0__Sample /\ "diphone:0"
  , diphone_1__Sample /\ "diphone:1"
  , diphone_2__Sample /\ "diphone:2"
  , diphone_3__Sample /\ "diphone:3"
  , diphone_4__Sample /\ "diphone:4"
  , diphone_5__Sample /\ "diphone:5"
  , diphone_6__Sample /\ "diphone:6"
  , diphone_7__Sample /\ "diphone:7"
  , diphone_8__Sample /\ "diphone:8"
  , diphone_9__Sample /\ "diphone:9"
  , diphone_10__Sample /\ "diphone:10"
  , diphone_11__Sample /\ "diphone:11"
  , diphone_12__Sample /\ "diphone:12"
  , diphone_13__Sample /\ "diphone:13"
  , diphone_14__Sample /\ "diphone:14"
  , diphone_15__Sample /\ "diphone:15"
  , diphone_16__Sample /\ "diphone:16"
  , diphone_17__Sample /\ "diphone:17"
  , diphone_18__Sample /\ "diphone:18"
  , diphone_19__Sample /\ "diphone:19"
  , diphone_20__Sample /\ "diphone:20"
  , diphone_21__Sample /\ "diphone:21"
  , diphone_22__Sample /\ "diphone:22"
  , diphone_23__Sample /\ "diphone:23"
  , diphone_24__Sample /\ "diphone:24"
  , diphone_25__Sample /\ "diphone:25"
  , diphone_26__Sample /\ "diphone:26"
  , diphone_27__Sample /\ "diphone:27"
  , diphone_28__Sample /\ "diphone:28"
  , diphone_29__Sample /\ "diphone:29"
  , diphone_30__Sample /\ "diphone:30"
  , diphone_31__Sample /\ "diphone:31"
  , diphone_32__Sample /\ "diphone:32"
  , diphone_33__Sample /\ "diphone:33"
  , diphone_34__Sample /\ "diphone:34"
  , diphone_35__Sample /\ "diphone:35"
  , diphone_36__Sample /\ "diphone:36"
  , diphone_37__Sample /\ "diphone:37"
  , clak_0__Sample /\ "clak:0"
  , clak_1__Sample /\ "clak:1"
  , sitar_0__Sample /\ "sitar:0"
  , sitar_1__Sample /\ "sitar:1"
  , sitar_2__Sample /\ "sitar:2"
  , sitar_3__Sample /\ "sitar:3"
  , sitar_4__Sample /\ "sitar:4"
  , sitar_5__Sample /\ "sitar:5"
  , sitar_6__Sample /\ "sitar:6"
  , sitar_7__Sample /\ "sitar:7"
  , ab_0__Sample /\ "ab:0"
  , ab_1__Sample /\ "ab:1"
  , ab_2__Sample /\ "ab:2"
  , ab_3__Sample /\ "ab:3"
  , ab_4__Sample /\ "ab:4"
  , ab_5__Sample /\ "ab:5"
  , ab_6__Sample /\ "ab:6"
  , ab_7__Sample /\ "ab:7"
  , ab_8__Sample /\ "ab:8"
  , ab_9__Sample /\ "ab:9"
  , ab_10__Sample /\ "ab:10"
  , ab_11__Sample /\ "ab:11"
  , cr_0__Sample /\ "cr:0"
  , cr_1__Sample /\ "cr:1"
  , cr_2__Sample /\ "cr:2"
  , cr_3__Sample /\ "cr:3"
  , cr_4__Sample /\ "cr:4"
  , cr_5__Sample /\ "cr:5"
  , tacscan_0__Sample /\ "tacscan:0"
  , tacscan_1__Sample /\ "tacscan:1"
  , tacscan_2__Sample /\ "tacscan:2"
  , tacscan_3__Sample /\ "tacscan:3"
  , tacscan_4__Sample /\ "tacscan:4"
  , tacscan_5__Sample /\ "tacscan:5"
  , tacscan_6__Sample /\ "tacscan:6"
  , tacscan_7__Sample /\ "tacscan:7"
  , tacscan_8__Sample /\ "tacscan:8"
  , tacscan_9__Sample /\ "tacscan:9"
  , tacscan_10__Sample /\ "tacscan:10"
  , tacscan_11__Sample /\ "tacscan:11"
  , tacscan_12__Sample /\ "tacscan:12"
  , tacscan_13__Sample /\ "tacscan:13"
  , tacscan_14__Sample /\ "tacscan:14"
  , tacscan_15__Sample /\ "tacscan:15"
  , tacscan_16__Sample /\ "tacscan:16"
  , tacscan_17__Sample /\ "tacscan:17"
  , tacscan_18__Sample /\ "tacscan:18"
  , tacscan_19__Sample /\ "tacscan:19"
  , tacscan_20__Sample /\ "tacscan:20"
  , tacscan_21__Sample /\ "tacscan:21"
  , v_0__Sample /\ "v:0"
  , v_1__Sample /\ "v:1"
  , v_2__Sample /\ "v:2"
  , v_3__Sample /\ "v:3"
  , v_4__Sample /\ "v:4"
  , v_5__Sample /\ "v:5"
  , bd_0__Sample /\ "bd:0"
  , bd_1__Sample /\ "bd:1"
  , bd_2__Sample /\ "bd:2"
  , bd_3__Sample /\ "bd:3"
  , bd_4__Sample /\ "bd:4"
  , bd_5__Sample /\ "bd:5"
  , bd_6__Sample /\ "bd:6"
  , bd_7__Sample /\ "bd:7"
  , bd_8__Sample /\ "bd:8"
  , bd_9__Sample /\ "bd:9"
  , bd_10__Sample /\ "bd:10"
  , bd_11__Sample /\ "bd:11"
  , bd_12__Sample /\ "bd:12"
  , bd_13__Sample /\ "bd:13"
  , bd_14__Sample /\ "bd:14"
  , bd_15__Sample /\ "bd:15"
  , bd_16__Sample /\ "bd:16"
  , bd_17__Sample /\ "bd:17"
  , bd_18__Sample /\ "bd:18"
  , bd_19__Sample /\ "bd:19"
  , bd_20__Sample /\ "bd:20"
  , bd_21__Sample /\ "bd:21"
  , bd_22__Sample /\ "bd:22"
  , bd_23__Sample /\ "bd:23"
  , rm_0__Sample /\ "rm:0"
  , rm_1__Sample /\ "rm:1"
  , blue_0__Sample /\ "blue:0"
  , blue_1__Sample /\ "blue:1"
  , latibro_0__Sample /\ "latibro:0"
  , latibro_1__Sample /\ "latibro:1"
  , latibro_2__Sample /\ "latibro:2"
  , latibro_3__Sample /\ "latibro:3"
  , latibro_4__Sample /\ "latibro:4"
  , latibro_5__Sample /\ "latibro:5"
  , latibro_6__Sample /\ "latibro:6"
  , latibro_7__Sample /\ "latibro:7"
  , dr_few_0__Sample /\ "dr_few:0"
  , dr_few_1__Sample /\ "dr_few:1"
  , dr_few_2__Sample /\ "dr_few:2"
  , dr_few_3__Sample /\ "dr_few:3"
  , dr_few_4__Sample /\ "dr_few:4"
  , dr_few_5__Sample /\ "dr_few:5"
  , dr_few_6__Sample /\ "dr_few:6"
  , dr_few_7__Sample /\ "dr_few:7"
  , rave2_0__Sample /\ "rave2:0"
  , rave2_1__Sample /\ "rave2:1"
  , rave2_2__Sample /\ "rave2:2"
  , rave2_3__Sample /\ "rave2:3"
  , rave2_4__Sample /\ "rave2:4"
  , rave2_5__Sample /\ "rave2:5"
  , koy_0__Sample /\ "koy:0"
  , koy_1__Sample /\ "koy:1"
  , glitch2_0__Sample /\ "glitch2:0"
  , glitch2_1__Sample /\ "glitch2:1"
  , glitch2_2__Sample /\ "glitch2:2"
  , glitch2_3__Sample /\ "glitch2:3"
  , glitch2_4__Sample /\ "glitch2:4"
  , glitch2_5__Sample /\ "glitch2:5"
  , glitch2_6__Sample /\ "glitch2:6"
  , glitch2_7__Sample /\ "glitch2:7"
  , hmm_0__Sample /\ "hmm:0"
  , arp_0__Sample /\ "arp:0"
  , arp_1__Sample /\ "arp:1"
  , made2_0__Sample /\ "made2:0"
  , uxay_0__Sample /\ "uxay:0"
  , uxay_1__Sample /\ "uxay:1"
  , uxay_2__Sample /\ "uxay:2"
  , stomp_0__Sample /\ "stomp:0"
  , stomp_1__Sample /\ "stomp:1"
  , stomp_2__Sample /\ "stomp:2"
  , stomp_3__Sample /\ "stomp:3"
  , stomp_4__Sample /\ "stomp:4"
  , stomp_5__Sample /\ "stomp:5"
  , stomp_6__Sample /\ "stomp:6"
  , stomp_7__Sample /\ "stomp:7"
  , stomp_8__Sample /\ "stomp:8"
  , stomp_9__Sample /\ "stomp:9"
  , tech_0__Sample /\ "tech:0"
  , tech_1__Sample /\ "tech:1"
  , tech_2__Sample /\ "tech:2"
  , tech_3__Sample /\ "tech:3"
  , tech_4__Sample /\ "tech:4"
  , tech_5__Sample /\ "tech:5"
  , tech_6__Sample /\ "tech:6"
  , tech_7__Sample /\ "tech:7"
  , tech_8__Sample /\ "tech:8"
  , tech_9__Sample /\ "tech:9"
  , tech_10__Sample /\ "tech:10"
  , tech_11__Sample /\ "tech:11"
  , tech_12__Sample /\ "tech:12"
  , sn_0__Sample /\ "sn:0"
  , sn_1__Sample /\ "sn:1"
  , sn_2__Sample /\ "sn:2"
  , sn_3__Sample /\ "sn:3"
  , sn_4__Sample /\ "sn:4"
  , sn_5__Sample /\ "sn:5"
  , sn_6__Sample /\ "sn:6"
  , sn_7__Sample /\ "sn:7"
  , sn_8__Sample /\ "sn:8"
  , sn_9__Sample /\ "sn:9"
  , sn_10__Sample /\ "sn:10"
  , sn_11__Sample /\ "sn:11"
  , sn_12__Sample /\ "sn:12"
  , sn_13__Sample /\ "sn:13"
  , sn_14__Sample /\ "sn:14"
  , sn_15__Sample /\ "sn:15"
  , sn_16__Sample /\ "sn:16"
  , sn_17__Sample /\ "sn:17"
  , sn_18__Sample /\ "sn:18"
  , sn_19__Sample /\ "sn:19"
  , sn_20__Sample /\ "sn:20"
  , sn_21__Sample /\ "sn:21"
  , sn_22__Sample /\ "sn:22"
  , sn_23__Sample /\ "sn:23"
  , sn_24__Sample /\ "sn:24"
  , sn_25__Sample /\ "sn:25"
  , sn_26__Sample /\ "sn:26"
  , sn_27__Sample /\ "sn:27"
  , sn_28__Sample /\ "sn:28"
  , sn_29__Sample /\ "sn:29"
  , sn_30__Sample /\ "sn:30"
  , sn_31__Sample /\ "sn:31"
  , sn_32__Sample /\ "sn:32"
  , sn_33__Sample /\ "sn:33"
  , sn_34__Sample /\ "sn:34"
  , sn_35__Sample /\ "sn:35"
  , sn_36__Sample /\ "sn:36"
  , sn_37__Sample /\ "sn:37"
  , sn_38__Sample /\ "sn:38"
  , sn_39__Sample /\ "sn:39"
  , sn_40__Sample /\ "sn:40"
  , sn_41__Sample /\ "sn:41"
  , sn_42__Sample /\ "sn:42"
  , sn_43__Sample /\ "sn:43"
  , sn_44__Sample /\ "sn:44"
  , sn_45__Sample /\ "sn:45"
  , sn_46__Sample /\ "sn:46"
  , sn_47__Sample /\ "sn:47"
  , sn_48__Sample /\ "sn:48"
  , sn_49__Sample /\ "sn:49"
  , sn_50__Sample /\ "sn:50"
  , sn_51__Sample /\ "sn:51"
  , less_0__Sample /\ "less:0"
  , less_1__Sample /\ "less:1"
  , less_2__Sample /\ "less:2"
  , less_3__Sample /\ "less:3"
  , off_0__Sample /\ "off:0"
  , x_808sd_0__Sample /\ "x_808sd:0"
  , x_808sd_1__Sample /\ "x_808sd:1"
  , x_808sd_2__Sample /\ "x_808sd:2"
  , x_808sd_3__Sample /\ "x_808sd:3"
  , x_808sd_4__Sample /\ "x_808sd:4"
  , x_808sd_5__Sample /\ "x_808sd:5"
  , x_808sd_6__Sample /\ "x_808sd:6"
  , x_808sd_7__Sample /\ "x_808sd:7"
  , x_808sd_8__Sample /\ "x_808sd:8"
  , x_808sd_9__Sample /\ "x_808sd:9"
  , x_808sd_10__Sample /\ "x_808sd:10"
  , x_808sd_11__Sample /\ "x_808sd:11"
  , x_808sd_12__Sample /\ "x_808sd:12"
  , x_808sd_13__Sample /\ "x_808sd:13"
  , x_808sd_14__Sample /\ "x_808sd:14"
  , x_808sd_15__Sample /\ "x_808sd:15"
  , x_808sd_16__Sample /\ "x_808sd:16"
  , x_808sd_17__Sample /\ "x_808sd:17"
  , x_808sd_18__Sample /\ "x_808sd:18"
  , x_808sd_19__Sample /\ "x_808sd:19"
  , x_808sd_20__Sample /\ "x_808sd:20"
  , x_808sd_21__Sample /\ "x_808sd:21"
  , x_808sd_22__Sample /\ "x_808sd:22"
  , x_808sd_23__Sample /\ "x_808sd:23"
  , x_808sd_24__Sample /\ "x_808sd:24"
  , trump_0__Sample /\ "trump:0"
  , trump_1__Sample /\ "trump:1"
  , trump_2__Sample /\ "trump:2"
  , trump_3__Sample /\ "trump:3"
  , trump_4__Sample /\ "trump:4"
  , trump_5__Sample /\ "trump:5"
  , trump_6__Sample /\ "trump:6"
  , trump_7__Sample /\ "trump:7"
  , trump_8__Sample /\ "trump:8"
  , trump_9__Sample /\ "trump:9"
  , trump_10__Sample /\ "trump:10"
  , bev_0__Sample /\ "bev:0"
  , bev_1__Sample /\ "bev:1"
  , pad_0__Sample /\ "pad:0"
  , pad_1__Sample /\ "pad:1"
  , pad_2__Sample /\ "pad:2"
  , led_0__Sample /\ "led:0"
  , perc_0__Sample /\ "perc:0"
  , perc_1__Sample /\ "perc:1"
  , perc_2__Sample /\ "perc:2"
  , perc_3__Sample /\ "perc:3"
  , perc_4__Sample /\ "perc:4"
  , perc_5__Sample /\ "perc:5"
  , pluck_0__Sample /\ "pluck:0"
  , pluck_1__Sample /\ "pluck:1"
  , pluck_2__Sample /\ "pluck:2"
  , pluck_3__Sample /\ "pluck:3"
  , pluck_4__Sample /\ "pluck:4"
  , pluck_5__Sample /\ "pluck:5"
  , pluck_6__Sample /\ "pluck:6"
  , pluck_7__Sample /\ "pluck:7"
  , pluck_8__Sample /\ "pluck:8"
  , pluck_9__Sample /\ "pluck:9"
  , pluck_10__Sample /\ "pluck:10"
  , pluck_11__Sample /\ "pluck:11"
  , pluck_12__Sample /\ "pluck:12"
  , pluck_13__Sample /\ "pluck:13"
  , pluck_14__Sample /\ "pluck:14"
  , pluck_15__Sample /\ "pluck:15"
  , pluck_16__Sample /\ "pluck:16"
  , bleep_0__Sample /\ "bleep:0"
  , bleep_1__Sample /\ "bleep:1"
  , bleep_2__Sample /\ "bleep:2"
  , bleep_3__Sample /\ "bleep:3"
  , bleep_4__Sample /\ "bleep:4"
  , bleep_5__Sample /\ "bleep:5"
  , bleep_6__Sample /\ "bleep:6"
  , bleep_7__Sample /\ "bleep:7"
  , bleep_8__Sample /\ "bleep:8"
  , bleep_9__Sample /\ "bleep:9"
  , bleep_10__Sample /\ "bleep:10"
  , bleep_11__Sample /\ "bleep:11"
  , bleep_12__Sample /\ "bleep:12"
  , ht_0__Sample /\ "ht:0"
  , ht_1__Sample /\ "ht:1"
  , ht_2__Sample /\ "ht:2"
  , ht_3__Sample /\ "ht:3"
  , ht_4__Sample /\ "ht:4"
  , ht_5__Sample /\ "ht:5"
  , ht_6__Sample /\ "ht:6"
  , ht_7__Sample /\ "ht:7"
  , ht_8__Sample /\ "ht:8"
  , ht_9__Sample /\ "ht:9"
  , ht_10__Sample /\ "ht:10"
  , ht_11__Sample /\ "ht:11"
  , ht_12__Sample /\ "ht:12"
  , ht_13__Sample /\ "ht:13"
  , ht_14__Sample /\ "ht:14"
  , ht_15__Sample /\ "ht:15"
  , ades4_0__Sample /\ "ades4:0"
  , ades4_1__Sample /\ "ades4:1"
  , ades4_2__Sample /\ "ades4:2"
  , ades4_3__Sample /\ "ades4:3"
  , ades4_4__Sample /\ "ades4:4"
  , ades4_5__Sample /\ "ades4:5"
  , proc_0__Sample /\ "proc:0"
  , proc_1__Sample /\ "proc:1"
  , gretsch_0__Sample /\ "gretsch:0"
  , gretsch_1__Sample /\ "gretsch:1"
  , gretsch_2__Sample /\ "gretsch:2"
  , gretsch_3__Sample /\ "gretsch:3"
  , gretsch_4__Sample /\ "gretsch:4"
  , gretsch_5__Sample /\ "gretsch:5"
  , gretsch_6__Sample /\ "gretsch:6"
  , gretsch_7__Sample /\ "gretsch:7"
  , gretsch_8__Sample /\ "gretsch:8"
  , gretsch_9__Sample /\ "gretsch:9"
  , gretsch_10__Sample /\ "gretsch:10"
  , gretsch_11__Sample /\ "gretsch:11"
  , gretsch_12__Sample /\ "gretsch:12"
  , gretsch_13__Sample /\ "gretsch:13"
  , gretsch_14__Sample /\ "gretsch:14"
  , gretsch_15__Sample /\ "gretsch:15"
  , gretsch_16__Sample /\ "gretsch:16"
  , gretsch_17__Sample /\ "gretsch:17"
  , gretsch_18__Sample /\ "gretsch:18"
  , gretsch_19__Sample /\ "gretsch:19"
  , gretsch_20__Sample /\ "gretsch:20"
  , gretsch_21__Sample /\ "gretsch:21"
  , gretsch_22__Sample /\ "gretsch:22"
  , gretsch_23__Sample /\ "gretsch:23"
  , outdoor_0__Sample /\ "outdoor:0"
  , outdoor_1__Sample /\ "outdoor:1"
  , outdoor_2__Sample /\ "outdoor:2"
  , outdoor_3__Sample /\ "outdoor:3"
  , outdoor_4__Sample /\ "outdoor:4"
  , outdoor_5__Sample /\ "outdoor:5"
  , techno_0__Sample /\ "techno:0"
  , techno_1__Sample /\ "techno:1"
  , techno_2__Sample /\ "techno:2"
  , techno_3__Sample /\ "techno:3"
  , techno_4__Sample /\ "techno:4"
  , techno_5__Sample /\ "techno:5"
  , techno_6__Sample /\ "techno:6"
  , ulgab_0__Sample /\ "ulgab:0"
  , ulgab_1__Sample /\ "ulgab:1"
  , ulgab_2__Sample /\ "ulgab:2"
  , ulgab_3__Sample /\ "ulgab:3"
  , ulgab_4__Sample /\ "ulgab:4"
  , breaks125_0__Sample /\ "breaks125:0"
  , breaks125_1__Sample /\ "breaks125:1"
  , bin_0__Sample /\ "bin:0"
  , bin_1__Sample /\ "bin:1"
  , x_808mc_0__Sample /\ "x_808mc:0"
  , x_808mc_1__Sample /\ "x_808mc:1"
  , x_808mc_2__Sample /\ "x_808mc:2"
  , x_808mc_3__Sample /\ "x_808mc:3"
  , x_808mc_4__Sample /\ "x_808mc:4"
  , lt_0__Sample /\ "lt:0"
  , lt_1__Sample /\ "lt:1"
  , lt_2__Sample /\ "lt:2"
  , lt_3__Sample /\ "lt:3"
  , lt_4__Sample /\ "lt:4"
  , lt_5__Sample /\ "lt:5"
  , lt_6__Sample /\ "lt:6"
  , lt_7__Sample /\ "lt:7"
  , lt_8__Sample /\ "lt:8"
  , lt_9__Sample /\ "lt:9"
  , lt_10__Sample /\ "lt:10"
  , lt_11__Sample /\ "lt:11"
  , lt_12__Sample /\ "lt:12"
  , lt_13__Sample /\ "lt:13"
  , lt_14__Sample /\ "lt:14"
  , lt_15__Sample /\ "lt:15"
  , amencutup_0__Sample /\ "amencutup:0"
  , amencutup_1__Sample /\ "amencutup:1"
  , amencutup_2__Sample /\ "amencutup:2"
  , amencutup_3__Sample /\ "amencutup:3"
  , amencutup_4__Sample /\ "amencutup:4"
  , amencutup_5__Sample /\ "amencutup:5"
  , amencutup_6__Sample /\ "amencutup:6"
  , amencutup_7__Sample /\ "amencutup:7"
  , amencutup_8__Sample /\ "amencutup:8"
  , amencutup_9__Sample /\ "amencutup:9"
  , amencutup_10__Sample /\ "amencutup:10"
  , amencutup_11__Sample /\ "amencutup:11"
  , amencutup_12__Sample /\ "amencutup:12"
  , amencutup_13__Sample /\ "amencutup:13"
  , amencutup_14__Sample /\ "amencutup:14"
  , amencutup_15__Sample /\ "amencutup:15"
  , amencutup_16__Sample /\ "amencutup:16"
  , amencutup_17__Sample /\ "amencutup:17"
  , amencutup_18__Sample /\ "amencutup:18"
  , amencutup_19__Sample /\ "amencutup:19"
  , amencutup_20__Sample /\ "amencutup:20"
  , amencutup_21__Sample /\ "amencutup:21"
  , amencutup_22__Sample /\ "amencutup:22"
  , amencutup_23__Sample /\ "amencutup:23"
  , amencutup_24__Sample /\ "amencutup:24"
  , amencutup_25__Sample /\ "amencutup:25"
  , amencutup_26__Sample /\ "amencutup:26"
  , amencutup_27__Sample /\ "amencutup:27"
  , amencutup_28__Sample /\ "amencutup:28"
  , amencutup_29__Sample /\ "amencutup:29"
  , amencutup_30__Sample /\ "amencutup:30"
  , amencutup_31__Sample /\ "amencutup:31"
  , drum_0__Sample /\ "drum:0"
  , drum_1__Sample /\ "drum:1"
  , drum_2__Sample /\ "drum:2"
  , drum_3__Sample /\ "drum:3"
  , drum_4__Sample /\ "drum:4"
  , drum_5__Sample /\ "drum:5"
  , coins_0__Sample /\ "coins:0"
  , industrial_0__Sample /\ "industrial:0"
  , industrial_1__Sample /\ "industrial:1"
  , industrial_2__Sample /\ "industrial:2"
  , industrial_3__Sample /\ "industrial:3"
  , industrial_4__Sample /\ "industrial:4"
  , industrial_5__Sample /\ "industrial:5"
  , industrial_6__Sample /\ "industrial:6"
  , industrial_7__Sample /\ "industrial:7"
  , industrial_8__Sample /\ "industrial:8"
  , industrial_9__Sample /\ "industrial:9"
  , industrial_10__Sample /\ "industrial:10"
  , industrial_11__Sample /\ "industrial:11"
  , industrial_12__Sample /\ "industrial:12"
  , industrial_13__Sample /\ "industrial:13"
  , industrial_14__Sample /\ "industrial:14"
  , industrial_15__Sample /\ "industrial:15"
  , industrial_16__Sample /\ "industrial:16"
  , industrial_17__Sample /\ "industrial:17"
  , industrial_18__Sample /\ "industrial:18"
  , industrial_19__Sample /\ "industrial:19"
  , industrial_20__Sample /\ "industrial:20"
  , industrial_21__Sample /\ "industrial:21"
  , industrial_22__Sample /\ "industrial:22"
  , industrial_23__Sample /\ "industrial:23"
  , industrial_24__Sample /\ "industrial:24"
  , industrial_25__Sample /\ "industrial:25"
  , industrial_26__Sample /\ "industrial:26"
  , industrial_27__Sample /\ "industrial:27"
  , industrial_28__Sample /\ "industrial:28"
  , industrial_29__Sample /\ "industrial:29"
  , industrial_30__Sample /\ "industrial:30"
  , industrial_31__Sample /\ "industrial:31"
  , tink_0__Sample /\ "tink:0"
  , tink_1__Sample /\ "tink:1"
  , tink_2__Sample /\ "tink:2"
  , tink_3__Sample /\ "tink:3"
  , tink_4__Sample /\ "tink:4"
  , co_0__Sample /\ "co:0"
  , co_1__Sample /\ "co:1"
  , co_2__Sample /\ "co:2"
  , co_3__Sample /\ "co:3"
  , fest_0__Sample /\ "fest:0"
  , feelfx_0__Sample /\ "feelfx:0"
  , feelfx_1__Sample /\ "feelfx:1"
  , feelfx_2__Sample /\ "feelfx:2"
  , feelfx_3__Sample /\ "feelfx:3"
  , feelfx_4__Sample /\ "feelfx:4"
  , feelfx_5__Sample /\ "feelfx:5"
  , feelfx_6__Sample /\ "feelfx:6"
  , feelfx_7__Sample /\ "feelfx:7"
  , x_808cy_0__Sample /\ "x_808cy:0"
  , x_808cy_1__Sample /\ "x_808cy:1"
  , x_808cy_2__Sample /\ "x_808cy:2"
  , x_808cy_3__Sample /\ "x_808cy:3"
  , x_808cy_4__Sample /\ "x_808cy:4"
  , x_808cy_5__Sample /\ "x_808cy:5"
  , x_808cy_6__Sample /\ "x_808cy:6"
  , x_808cy_7__Sample /\ "x_808cy:7"
  , x_808cy_8__Sample /\ "x_808cy:8"
  , x_808cy_9__Sample /\ "x_808cy:9"
  , x_808cy_10__Sample /\ "x_808cy:10"
  , x_808cy_11__Sample /\ "x_808cy:11"
  , x_808cy_12__Sample /\ "x_808cy:12"
  , x_808cy_13__Sample /\ "x_808cy:13"
  , x_808cy_14__Sample /\ "x_808cy:14"
  , x_808cy_15__Sample /\ "x_808cy:15"
  , x_808cy_16__Sample /\ "x_808cy:16"
  , x_808cy_17__Sample /\ "x_808cy:17"
  , x_808cy_18__Sample /\ "x_808cy:18"
  , x_808cy_19__Sample /\ "x_808cy:19"
  , x_808cy_20__Sample /\ "x_808cy:20"
  , x_808cy_21__Sample /\ "x_808cy:21"
  , x_808cy_22__Sample /\ "x_808cy:22"
  , x_808cy_23__Sample /\ "x_08cy:23"
  , x_808cy_24__Sample /\ "x_808cy:24"
  , world_0__Sample /\ "world:0"
  , world_1__Sample /\ "world:1"
  , world_2__Sample /\ "world:2"
  , f_0__Sample /\ "f:0"
  , numbers_0__Sample /\ "numbers:0"
  , numbers_1__Sample /\ "numbers:1"
  , numbers_2__Sample /\ "numbers:2"
  , numbers_3__Sample /\ "numbers:3"
  , numbers_4__Sample /\ "numbers:4"
  , numbers_5__Sample /\ "numbers:5"
  , numbers_6__Sample /\ "numbers:6"
  , numbers_7__Sample /\ "numbers:7"
  , numbers_8__Sample /\ "numbers:8"
  , d_0__Sample /\ "d:0"
  , d_1__Sample /\ "d:1"
  , d_2__Sample /\ "d:2"
  , d_3__Sample /\ "d:3"
  , padlong_0__Sample /\ "padlong:0"
  , sequential_0__Sample /\ "sequential:0"
  , sequential_1__Sample /\ "sequential:1"
  , sequential_2__Sample /\ "sequential:2"
  , sequential_3__Sample /\ "sequential:3"
  , sequential_4__Sample /\ "sequential:4"
  , sequential_5__Sample /\ "sequential:5"
  , sequential_6__Sample /\ "sequential:6"
  , sequential_7__Sample /\ "sequential:7"
  , stab_0__Sample /\ "stab:0"
  , stab_1__Sample /\ "stab:1"
  , stab_2__Sample /\ "stab:2"
  , stab_3__Sample /\ "stab:3"
  , stab_4__Sample /\ "stab:4"
  , stab_5__Sample /\ "stab:5"
  , stab_6__Sample /\ "stab:6"
  , stab_7__Sample /\ "stab:7"
  , stab_8__Sample /\ "stab:8"
  , stab_9__Sample /\ "stab:9"
  , stab_10__Sample /\ "stab:10"
  , stab_11__Sample /\ "stab:11"
  , stab_12__Sample /\ "stab:12"
  , stab_13__Sample /\ "stab:13"
  , stab_14__Sample /\ "stab:14"
  , stab_15__Sample /\ "stab:15"
  , stab_16__Sample /\ "stab:16"
  , stab_17__Sample /\ "stab:17"
  , stab_18__Sample /\ "stab:18"
  , stab_19__Sample /\ "stab:19"
  , stab_20__Sample /\ "stab:20"
  , stab_21__Sample /\ "stab:21"
  , stab_22__Sample /\ "stab:22"
  , electro1_0__Sample /\ "electro1:0"
  , electro1_1__Sample /\ "electro1:1"
  , electro1_2__Sample /\ "electro1:2"
  , electro1_3__Sample /\ "electro1:3"
  , electro1_4__Sample /\ "electro1:4"
  , electro1_5__Sample /\ "electro1:5"
  , electro1_6__Sample /\ "electro1:6"
  , electro1_7__Sample /\ "electro1:7"
  , electro1_8__Sample /\ "electro1:8"
  , electro1_9__Sample /\ "electro1:9"
  , electro1_10__Sample /\ "electro1:10"
  , electro1_11__Sample /\ "electro1:11"
  , electro1_12__Sample /\ "electro1:12"
  , ifdrums_0__Sample /\ "ifdrums:0"
  , ifdrums_1__Sample /\ "ifdrums:1"
  , ifdrums_2__Sample /\ "ifdrums:2"
  , invaders_0__Sample /\ "invaders:0"
  , invaders_1__Sample /\ "invaders:1"
  , invaders_2__Sample /\ "invaders:2"
  , invaders_3__Sample /\ "invaders:3"
  , invaders_4__Sample /\ "invaders:4"
  , invaders_5__Sample /\ "invaders:5"
  , invaders_6__Sample /\ "invaders:6"
  , invaders_7__Sample /\ "invaders:7"
  , invaders_8__Sample /\ "invaders:8"
  , invaders_9__Sample /\ "invaders:9"
  , invaders_10__Sample /\ "invaders:10"
  , invaders_11__Sample /\ "invaders:11"
  , invaders_12__Sample /\ "invaders:12"
  , invaders_13__Sample /\ "invaders:13"
  , invaders_14__Sample /\ "invaders:14"
  , invaders_15__Sample /\ "invaders:15"
  , invaders_16__Sample /\ "invaders:16"
  , invaders_17__Sample /\ "invaders:17"
  , dist_0__Sample /\ "dist:0"
  , dist_1__Sample /\ "dist:1"
  , dist_2__Sample /\ "dist:2"
  , dist_3__Sample /\ "dist:3"
  , dist_4__Sample /\ "dist:4"
  , dist_5__Sample /\ "dist:5"
  , dist_6__Sample /\ "dist:6"
  , dist_7__Sample /\ "dist:7"
  , dist_8__Sample /\ "dist:8"
  , dist_9__Sample /\ "dist:9"
  , dist_10__Sample /\ "dist:10"
  , dist_11__Sample /\ "dist:11"
  , dist_12__Sample /\ "dist:12"
  , dist_13__Sample /\ "dist:13"
  , dist_14__Sample /\ "dist:14"
  , dist_15__Sample /\ "dist:15"
  , sundance_0__Sample /\ "sundance:0"
  , sundance_1__Sample /\ "sundance:1"
  , sundance_2__Sample /\ "sundance:2"
  , sundance_3__Sample /\ "sundance:3"
  , sundance_4__Sample /\ "sundance:4"
  , sundance_5__Sample /\ "sundance:5"
  , speech_0__Sample /\ "speech:0"
  , speech_1__Sample /\ "speech:1"
  , speech_2__Sample /\ "speech:2"
  , speech_3__Sample /\ "speech:3"
  , speech_4__Sample /\ "speech:4"
  , speech_5__Sample /\ "speech:5"
  , speech_6__Sample /\ "speech:6"
  , toys_0__Sample /\ "toys:0"
  , toys_1__Sample /\ "toys:1"
  , toys_2__Sample /\ "toys:2"
  , toys_3__Sample /\ "toys:3"
  , toys_4__Sample /\ "toys:4"
  , toys_5__Sample /\ "toys:5"
  , toys_6__Sample /\ "toys:6"
  , toys_7__Sample /\ "toys:7"
  , toys_8__Sample /\ "toys:8"
  , toys_9__Sample /\ "toys:9"
  , toys_10__Sample /\ "toys:10"
  , toys_11__Sample /\ "toys:11"
  , toys_12__Sample /\ "toys:12"
  , bass0_0__Sample /\ "bass0:0"
  , bass0_1__Sample /\ "bass0:1"
  , bass0_2__Sample /\ "bass0:2"
  , realclaps_0__Sample /\ "realclaps:0"
  , realclaps_1__Sample /\ "realclaps:1"
  , realclaps_2__Sample /\ "realclaps:2"
  , realclaps_3__Sample /\ "realclaps:3"
  , dorkbot_0__Sample /\ "dorkbot:0"
  , dorkbot_1__Sample /\ "dorkbot:1"
  , arpy_0__Sample /\ "arpy:0"
  , arpy_1__Sample /\ "arpy:1"
  , arpy_2__Sample /\ "arpy:2"
  , arpy_3__Sample /\ "arpy:3"
  , arpy_4__Sample /\ "arpy:4"
  , arpy_5__Sample /\ "arpy:5"
  , arpy_6__Sample /\ "arpy:6"
  , arpy_7__Sample /\ "arpy:7"
  , arpy_8__Sample /\ "arpy:8"
  , arpy_9__Sample /\ "arpy:9"
  , arpy_10__Sample /\ "arpy:10"
  , fire_0__Sample /\ "fire:0"
  , hoover_0__Sample /\ "hoover:0"
  , hoover_1__Sample /\ "hoover:1"
  , hoover_2__Sample /\ "hoover:2"
  , hoover_3__Sample /\ "hoover:3"
  , hoover_4__Sample /\ "hoover:4"
  , hoover_5__Sample /\ "hoover:5"
  , breath_0__Sample /\ "breath:0"
  , rave_0__Sample /\ "rave:0"
  , rave_1__Sample /\ "rave:1"
  , rave_2__Sample /\ "rave:2"
  , rave_3__Sample /\ "rave:3"
  , rave_4__Sample /\ "rave:4"
  , rave_5__Sample /\ "rave:5"
  , rave_6__Sample /\ "rave:6"
  , rave_7__Sample /\ "rave:7"
  , bottle_0__Sample /\ "bottle:0"
  , bottle_1__Sample /\ "bottle:1"
  , bottle_2__Sample /\ "bottle:2"
  , bottle_3__Sample /\ "bottle:3"
  , bottle_4__Sample /\ "bottle:4"
  , bottle_5__Sample /\ "bottle:5"
  , bottle_6__Sample /\ "bottle:6"
  , bottle_7__Sample /\ "bottle:7"
  , bottle_8__Sample /\ "bottle:8"
  , bottle_9__Sample /\ "bottle:9"
  , bottle_10__Sample /\ "bottle:10"
  , bottle_11__Sample /\ "bottle:11"
  , bottle_12__Sample /\ "bottle:12"
  , east_0__Sample /\ "east:0"
  , east_1__Sample /\ "east:1"
  , east_2__Sample /\ "east:2"
  , east_3__Sample /\ "east:3"
  , east_4__Sample /\ "east:4"
  , east_5__Sample /\ "east:5"
  , east_6__Sample /\ "east:6"
  , east_7__Sample /\ "east:7"
  , east_8__Sample /\ "east:8"
  , linnhats_0__Sample /\ "linnhats:0"
  , linnhats_1__Sample /\ "linnhats:1"
  , linnhats_2__Sample /\ "linnhats:2"
  , linnhats_3__Sample /\ "linnhats:3"
  , linnhats_4__Sample /\ "linnhats:4"
  , linnhats_5__Sample /\ "linnhats:5"
  , speedupdown_0__Sample /\ "speedupdown:0"
  , speedupdown_1__Sample /\ "speedupdown:1"
  , speedupdown_2__Sample /\ "speedupdown:2"
  , speedupdown_3__Sample /\ "speedupdown:3"
  , speedupdown_4__Sample /\ "speedupdown:4"
  , speedupdown_5__Sample /\ "speedupdown:5"
  , speedupdown_6__Sample /\ "speedupdown:6"
  , speedupdown_7__Sample /\ "speedupdown:7"
  , speedupdown_8__Sample /\ "speedupdown:8"
  , cosmicg_0__Sample /\ "cosmicg:0"
  , cosmicg_1__Sample /\ "cosmicg:1"
  , cosmicg_2__Sample /\ "cosmicg:2"
  , cosmicg_3__Sample /\ "cosmicg:3"
  , cosmicg_4__Sample /\ "cosmicg:4"
  , cosmicg_5__Sample /\ "cosmicg:5"
  , cosmicg_6__Sample /\ "cosmicg:6"
  , cosmicg_7__Sample /\ "cosmicg:7"
  , cosmicg_8__Sample /\ "cosmicg:8"
  , cosmicg_9__Sample /\ "cosmicg:9"
  , cosmicg_10__Sample /\ "cosmicg:10"
  , cosmicg_11__Sample /\ "cosmicg:11"
  , cosmicg_12__Sample /\ "cosmicg:12"
  , cosmicg_13__Sample /\ "cosmicg:13"
  , cosmicg_14__Sample /\ "cosmicg:14"
  , jvbass_0__Sample /\ "jvbass:0"
  , jvbass_1__Sample /\ "jvbass:1"
  , jvbass_2__Sample /\ "jvbass:2"
  , jvbass_3__Sample /\ "jvbass:3"
  , jvbass_4__Sample /\ "jvbass:4"
  , jvbass_5__Sample /\ "jvbass:5"
  , jvbass_6__Sample /\ "jvbass:6"
  , jvbass_7__Sample /\ "jvbass:7"
  , jvbass_8__Sample /\ "jvbass:8"
  , jvbass_9__Sample /\ "jvbass:9"
  , jvbass_10__Sample /\ "jvbass:10"
  , jvbass_11__Sample /\ "jvbass:11"
  , jvbass_12__Sample /\ "jvbass:12"
  , mash_0__Sample /\ "mash:0"
  , mash_1__Sample /\ "mash:1"
  , feel_0__Sample /\ "feel:0"
  , feel_1__Sample /\ "feel:1"
  , feel_2__Sample /\ "feel:2"
  , feel_3__Sample /\ "feel:3"
  , feel_4__Sample /\ "feel:4"
  , feel_5__Sample /\ "feel:5"
  , feel_6__Sample /\ "feel:6"
  , short_0__Sample /\ "short:0"
  , short_1__Sample /\ "short:1"
  , short_2__Sample /\ "short:2"
  , short_3__Sample /\ "short:3"
  , short_4__Sample /\ "short:4"
  , incoming_0__Sample /\ "incoming:0"
  , incoming_1__Sample /\ "incoming:1"
  , incoming_2__Sample /\ "incoming:2"
  , incoming_3__Sample /\ "incoming:3"
  , incoming_4__Sample /\ "incoming:4"
  , incoming_5__Sample /\ "incoming:5"
  , incoming_6__Sample /\ "incoming:6"
  , incoming_7__Sample /\ "incoming:7"
  , flick_0__Sample /\ "flick:0"
  , flick_1__Sample /\ "flick:1"
  , flick_2__Sample /\ "flick:2"
  , flick_3__Sample /\ "flick:3"
  , flick_4__Sample /\ "flick:4"
  , flick_5__Sample /\ "flick:5"
  , flick_6__Sample /\ "flick:6"
  , flick_7__Sample /\ "flick:7"
  , flick_8__Sample /\ "flick:8"
  , flick_9__Sample /\ "flick:9"
  , flick_10__Sample /\ "flick:10"
  , flick_11__Sample /\ "flick:11"
  , flick_12__Sample /\ "flick:12"
  , flick_13__Sample /\ "flick:13"
  , flick_14__Sample /\ "flick:14"
  , flick_15__Sample /\ "flick:15"
  , flick_16__Sample /\ "flick:16"
  , reverbkick_0__Sample /\ "reverbkick:0"
  , bass2_0__Sample /\ "bass2:0"
  , bass2_1__Sample /\ "bass2:1"
  , bass2_2__Sample /\ "bass2:2"
  , bass2_3__Sample /\ "bass2:3"
  , bass2_4__Sample /\ "bass2:4"
  , baa_0__Sample /\ "baa:0"
  , baa_1__Sample /\ "baa:1"
  , baa_2__Sample /\ "baa:2"
  , baa_3__Sample /\ "baa:3"
  , baa_4__Sample /\ "baa:4"
  , baa_5__Sample /\ "baa:5"
  , baa_6__Sample /\ "baa:6"
  , fm_0__Sample /\ "fm:0"
  , fm_1__Sample /\ "fm:1"
  , fm_2__Sample /\ "fm:2"
  , fm_3__Sample /\ "fm:3"
  , fm_4__Sample /\ "fm:4"
  , fm_5__Sample /\ "fm:5"
  , fm_6__Sample /\ "fm:6"
  , fm_7__Sample /\ "fm:7"
  , fm_8__Sample /\ "fm:8"
  , fm_9__Sample /\ "fm:9"
  , fm_10__Sample /\ "fm:10"
  , fm_11__Sample /\ "fm:11"
  , fm_12__Sample /\ "fm:12"
  , fm_13__Sample /\ "fm:13"
  , fm_14__Sample /\ "fm:14"
  , fm_15__Sample /\ "fm:15"
  , fm_16__Sample /\ "fm:16"
  , click_0__Sample /\ "click:0"
  , click_1__Sample /\ "click:1"
  , click_2__Sample /\ "click:2"
  , click_3__Sample /\ "click:3"
  , control_0__Sample /\ "control:0"
  , control_1__Sample /\ "control:1"
  , peri_0__Sample /\ "peri:0"
  , peri_1__Sample /\ "peri:1"
  , peri_2__Sample /\ "peri:2"
  , peri_3__Sample /\ "peri:3"
  , peri_4__Sample /\ "peri:4"
  , peri_5__Sample /\ "peri:5"
  , peri_6__Sample /\ "peri:6"
  , peri_7__Sample /\ "peri:7"
  , peri_8__Sample /\ "peri:8"
  , peri_9__Sample /\ "peri:9"
  , peri_10__Sample /\ "peri:10"
  , peri_11__Sample /\ "peri:11"
  , peri_12__Sample /\ "peri:12"
  , peri_13__Sample /\ "peri:13"
  , peri_14__Sample /\ "peri:14"
  , procshort_0__Sample /\ "procshort:0"
  , procshort_1__Sample /\ "procshort:1"
  , procshort_2__Sample /\ "procshort:2"
  , procshort_3__Sample /\ "procshort:3"
  , procshort_4__Sample /\ "procshort:4"
  , procshort_5__Sample /\ "procshort:5"
  , procshort_6__Sample /\ "procshort:6"
  , procshort_7__Sample /\ "procshort:7"
  , hand_0__Sample /\ "hand:0"
  , hand_1__Sample /\ "hand:1"
  , hand_2__Sample /\ "hand:2"
  , hand_3__Sample /\ "hand:3"
  , hand_4__Sample /\ "hand:4"
  , hand_5__Sample /\ "hand:5"
  , hand_6__Sample /\ "hand:6"
  , hand_7__Sample /\ "hand:7"
  , hand_8__Sample /\ "hand:8"
  , hand_9__Sample /\ "hand:9"
  , hand_10__Sample /\ "hand:10"
  , hand_11__Sample /\ "hand:11"
  , hand_12__Sample /\ "hand:12"
  , hand_13__Sample /\ "hand:13"
  , hand_14__Sample /\ "hand:14"
  , hand_15__Sample /\ "hand:15"
  , hand_16__Sample /\ "hand:16"
  , future_0__Sample /\ "future:0"
  , future_1__Sample /\ "future:1"
  , future_2__Sample /\ "future:2"
  , future_3__Sample /\ "future:3"
  , future_4__Sample /\ "future:4"
  , future_5__Sample /\ "future:5"
  , future_6__Sample /\ "future:6"
  , future_7__Sample /\ "future:7"
  , future_8__Sample /\ "future:8"
  , future_9__Sample /\ "future:9"
  , future_10__Sample /\ "future:10"
  , future_11__Sample /\ "future:11"
  , future_12__Sample /\ "future:12"
  , future_13__Sample /\ "future:13"
  , future_14__Sample /\ "future:14"
  , future_15__Sample /\ "future:15"
  , future_16__Sample /\ "future:16"
  , hh_0__Sample /\ "hh:0"
  , hh_1__Sample /\ "hh:1"
  , hh_2__Sample /\ "hh:2"
  , hh_3__Sample /\ "hh:3"
  , hh_4__Sample /\ "hh:4"
  , hh_5__Sample /\ "hh:5"
  , hh_6__Sample /\ "hh:6"
  , hh_7__Sample /\ "hh:7"
  , hh_8__Sample /\ "hh:8"
  , hh_9__Sample /\ "hh:9"
  , hh_10__Sample /\ "hh:10"
  , hh_11__Sample /\ "hh:11"
  , hh_12__Sample /\ "hh:12"
  , x_808ht_0__Sample /\ "x_808ht:0"
  , x_808ht_1__Sample /\ "x_808ht:1"
  , x_808ht_2__Sample /\ "x_808ht:2"
  , x_808ht_3__Sample /\ "x_808ht:3"
  , x_808ht_4__Sample /\ "x_808ht:4"
  , db_0__Sample /\ "db:0"
  , db_1__Sample /\ "db:1"
  , db_2__Sample /\ "db:2"
  , db_3__Sample /\ "db:3"
  , db_4__Sample /\ "db:4"
  , db_5__Sample /\ "db:5"
  , db_6__Sample /\ "db:6"
  , db_7__Sample /\ "db:7"
  , db_8__Sample /\ "db:8"
  , db_9__Sample /\ "db:9"
  , db_10__Sample /\ "db:10"
  , db_11__Sample /\ "db:11"
  , db_12__Sample /\ "db:12"
  ----- drones
  , spacewind_0__Sample /\ "spacewind:0"
  , ambienta_0__Sample /\ "ambienta:0"
  , lowdark_0__Sample /\ "lowdark:0"
  , harmonium_0__Sample /\ "harmonium:0"
  , hollowair_0__Sample /\ "hollowair:0"
  , digeridoo_0__Sample /\ "digeridoo:0"
  ]

