module WAGSI.Plumbing.Samples
  ( sampleToUrls
  , urls
  , note2drone
  , sample2drone
  , dronesToSample
  , nameToSampleO
  , nameToSample
  --
  , class ClockTime
  , clockTime
  , class Entropy
  , entropy
  , class InitialEntropy
  , initialEntropy
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
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.Tuple.Nested ((/\), type (/\))
import Foreign.Object (Object)
import Foreign.Object as Object
import Safe.Coerce (coerce)
import Unsafe.Coerce (unsafeCoerce)
import WAGS.WebAPI (BrowserAudioBuffer)
import WAGSI.Plumbing.FX (calm)
import WAGSI.Plumbing.Types (BufferUrl(..), ClockTimeIs, DroneNote(..), Note(..), Sample(..), Samples, TimeIs, TimeIsAndWas, UnsampledTimeIs, unlockSample)

urls :: Samples String
urls = unsafeCoerce
  { "intentionalSilenceForInternalUseOnly": "https://media.graphcms.com/b0IXeyJzSDCZgVRHkFHL"
  , "kicklinn:0": "https://media.graphcms.com/SkJF65iaQfC6XWb4AFgm"
  , "msg:0": "https://media.graphcms.com/MmGhQDoOT0POhs9W8aDx"
  , "msg:1": "https://media.graphcms.com/zP8wJqhQxYhHWc9TrI8A"
  , "msg:2": "https://media.graphcms.com/OfJzeChgSoSiTLj3jh25"
  , "msg:3": "https://media.graphcms.com/ENwBBNkUSGBoOVIHYF0w"
  , "msg:4": "https://media.graphcms.com/p90NnAYEQ7CkrHEMpc9y"
  , "msg:5": "https://media.graphcms.com/4JTGA9b8RQmVmCPYaiTv"
  , "msg:6": "https://media.graphcms.com/MCXDMzmVTHCaYRX3zXL3"
  , "msg:7": "https://media.graphcms.com/Fh3Cv36MQmG65KUhoZOl"
  , "msg:8": "https://media.graphcms.com/gewZJKIQSyGwAm53X6cA"
  , "gabbalouder:0": "https://media.graphcms.com/FWauPGjcRKaTfUx8y2HD"
  , "gabbalouder:1": "https://media.graphcms.com/7ovrkHRT2t3htBWIuiAw"
  , "gabbalouder:2": "https://media.graphcms.com/dDAbBZjXT8mJWlPi82uW"
  , "gabbalouder:3": "https://media.graphcms.com/x2ngQ7LXTrSWySa0ZYDF"
  , "kurt:0": "https://media.graphcms.com/ZEOSltCQHaiLoncBzk8W"
  , "kurt:1": "https://media.graphcms.com/D59gV3AyTzmSgD1TfE9p"
  , "kurt:2": "https://media.graphcms.com/N5dU6a1Su6rdTlo2qz2P"
  , "kurt:3": "https://media.graphcms.com/Uii6MbQhSHWOZtj7EmFA"
  , "kurt:4": "https://media.graphcms.com/LGg7aW22SyCb63TWLuu5"
  , "kurt:5": "https://media.graphcms.com/dwqmdMNtT7aasCstEEGs"
  , "kurt:6": "https://media.graphcms.com/JTvJRCSMKnrKgZEtHobw"
  , "bassdm:0": "https://media.graphcms.com/m5aWaWFlQW2do3UapUvg"
  , "bassdm:1": "https://media.graphcms.com/ScEPxAYsRciI9whX0U0c"
  , "bassdm:2": "https://media.graphcms.com/cQ7z38cXRsSHpSKpzzHI"
  , "bassdm:3": "https://media.graphcms.com/aNHeatDiRSS2jFHu4aM3"
  , "bassdm:4": "https://media.graphcms.com/CQa3oxKrQGCwLzEPmKHB"
  , "bassdm:5": "https://media.graphcms.com/dKsD5EGSralFvXsMW5hg"
  , "bassdm:6": "https://media.graphcms.com/kDOaBpyUQvmmwoDq6PLX"
  , "bassdm:7": "https://media.graphcms.com/EiC1XZ6WScGImunM0c8c"
  , "bassdm:8": "https://media.graphcms.com/yNOZmDeTTrCANLmBzspX"
  , "bassdm:9": "https://media.graphcms.com/9JkEr4vSROO85F6sL6IE"
  , "bassdm:10": "https://media.graphcms.com/plyZE2OQSbyBsuwfKPHC"
  , "bassdm:11": "https://media.graphcms.com/GwpCWCZFQ24UWpRLX20V"
  , "bassdm:12": "https://media.graphcms.com/1HMbIA4kTIOaTscd3Fgv"
  , "bassdm:13": "https://media.graphcms.com/3VAUmNTjRrWsefAA411L"
  , "bassdm:14": "https://media.graphcms.com/Y6RhTiFbTlaW6k61ER0s"
  , "bassdm:15": "https://media.graphcms.com/EyWFTESaSRSTelzMcRoU"
  , "bassdm:16": "https://media.graphcms.com/Ga53nT6MQcqKmdxL1jBv"
  , "bassdm:17": "https://media.graphcms.com/5Ttm37mKQCO1au3jTGrR"
  , "bassdm:18": "https://media.graphcms.com/0TmFwmC6TGS4tYBzHdoV"
  , "bassdm:19": "https://media.graphcms.com/uVvBEkkRSOmBaPiMQGy7"
  , "bassdm:20": "https://media.graphcms.com/CrB8RlMESNSmNiCLAxPG"
  , "bassdm:21": "https://media.graphcms.com/jnegx0CYTsa0NNNIfYqC"
  , "bassdm:22": "https://media.graphcms.com/LyD3jpRUSlejhfNDl8Jj"
  , "bassdm:23": "https://media.graphcms.com/VNyVx24MTMKpCnhuVNaV"
  , "tabla2:0": "https://media.graphcms.com/v9knNiyJRoGgBZYKjKlf"
  , "tabla2:1": "https://media.graphcms.com/ZsG41DnBRRecV94uR10l"
  , "tabla2:2": "https://media.graphcms.com/KnBEGTZSLaNRsAez7VOw"
  , "tabla2:3": "https://media.graphcms.com/bMPfxneST4a8egsMiUYx"
  , "tabla2:4": "https://media.graphcms.com/Rd5fnM2CTiGamAxrDcRj"
  , "tabla2:5": "https://media.graphcms.com/Uyx6nldtTduZIt3XMXEz"
  , "tabla2:6": "https://media.graphcms.com/xxjgltQXmOB5mwfVVhnQ"
  , "tabla2:7": "https://media.graphcms.com/L1bdonCqTzKdqVrWCl1P"
  , "tabla2:8": "https://media.graphcms.com/2kEFvI4qQNKpxJAu48Mj"
  , "tabla2:9": "https://media.graphcms.com/yh875TXFQieoSOREsD9f"
  , "tabla2:10": "https://media.graphcms.com/GLYwJ7DATTuzSINXZyvm"
  , "tabla2:11": "https://media.graphcms.com/oL6hNR9cdDZKL3Qffwkf"
  , "tabla2:12": "https://media.graphcms.com/JCMoUynNTfe6Q1RQkEsE"
  , "tabla2:13": "https://media.graphcms.com/nfOOPuvAQdebmN4h4kSs"
  , "tabla2:14": "https://media.graphcms.com/g497PpQWTg2hWmx0tuLm"
  , "tabla2:15": "https://media.graphcms.com/jdZsVKZJRbKxpvkNzmsQ"
  , "tabla2:16": "https://media.graphcms.com/yptHQR5AQnCX0CuPNsq9"
  , "tabla2:17": "https://media.graphcms.com/b2ihV4YGTW2lRLNPPbKJ"
  , "tabla2:18": "https://media.graphcms.com/dXbHxeTXRqcIIK6Ga0Ra"
  , "tabla2:19": "https://media.graphcms.com/olcx88GRSeCkbqOcUbgs"
  , "tabla2:20": "https://media.graphcms.com/qRvtcNXSayQKNzZcnpf8"
  , "tabla2:21": "https://media.graphcms.com/nF4Lp6bJRsG0MEMKBVuf"
  , "tabla2:22": "https://media.graphcms.com/RsVsnVFTvSPdGXhkvGil"
  , "tabla2:23": "https://media.graphcms.com/LVf8xn5MQxykvp7krshl"
  , "tabla2:24": "https://media.graphcms.com/yKp7BBhSFWghYUQB9uBu"
  , "tabla2:25": "https://media.graphcms.com/GdlZ4B3ORTuI638M9VBG"
  , "tabla2:26": "https://media.graphcms.com/o4pVV07lRUiyZCv9MhWc"
  , "tabla2:27": "https://media.graphcms.com/61SJdIslQy2qM3st5f56"
  , "tabla2:28": "https://media.graphcms.com/Pu4UAmpWQhSns7z8UXJa"
  , "tabla2:29": "https://media.graphcms.com/BSO9rbTgieiQlybpJrmw"
  , "tabla2:30": "https://media.graphcms.com/EU2klhGkQrG3KVqxxwrS"
  , "tabla2:31": "https://media.graphcms.com/0b9KjAdXRw6YCNp3FB3k"
  , "tabla2:32": "https://media.graphcms.com/B6MMWHfRui4BfsV9TcBc"
  , "tabla2:33": "https://media.graphcms.com/RmMei8dJSj6W6agTUjAd"
  , "tabla2:34": "https://media.graphcms.com/2ZbCMr90S2eggLf9NMKz"
  , "tabla2:35": "https://media.graphcms.com/4JKh8io7R4CcgD6KXOBT"
  , "tabla2:36": "https://media.graphcms.com/b9AqE8laT8WcXWOFheoh"
  , "tabla2:37": "https://media.graphcms.com/MV34DygT66hoGjmj2xnK"
  , "tabla2:38": "https://media.graphcms.com/wAS3EiQTY2gyupDcp2Pg"
  , "tabla2:39": "https://media.graphcms.com/R77R1YgaRTGKirEELO3W"
  , "tabla2:40": "https://media.graphcms.com/chpbFYEnQIOAVq2JVZWP"
  , "tabla2:41": "https://media.graphcms.com/b47oD0JQR56A2hojdLG2"
  , "tabla2:42": "https://media.graphcms.com/5e6I378RSNG5llPHUqUt"
  , "tabla2:43": "https://media.graphcms.com/rSlNgsoGQvelWKR4OIyX"
  , "tabla2:44": "https://media.graphcms.com/cqBfqoiYSdmvv4n52WTq"
  , "tabla2:45": "https://media.graphcms.com/4BHpeM73TaCf6h1v0CpY"
  , "chin:0": "https://media.graphcms.com/3bxDzP7uTfm3o1rlxNMr"
  , "chin:1": "https://media.graphcms.com/OQPQ3Y9KRqO2WQv3sfRs"
  , "chin:2": "https://media.graphcms.com/BiLCWHlSVCAIDXaIbhXe"
  , "chin:3": "https://media.graphcms.com/rwYJ0Xq8Qq2gM5bqvXTt"
  , "mp3:0": "https://media.graphcms.com/DaXMYMARq27PKbLcODzg"
  , "mp3:1": "https://media.graphcms.com/YHXPKawpQMqyeOAOTqFS"
  , "mp3:2": "https://media.graphcms.com/gQREelboQ7W16Srt5g8v"
  , "mp3:3": "https://media.graphcms.com/qv8attniQ0KNzhqfQgdb"
  , "tablex:0": "https://media.graphcms.com/aF0o5A1Q4eqhVHepxBDg"
  , "tablex:1": "https://media.graphcms.com/MOK0yKjmSiuvCgcj97rU"
  , "tablex:2": "https://media.graphcms.com/8k6fsfq6QqSuITPyuMWt"
  , "sf:0": "https://media.graphcms.com/DXHTlq0SuWVk7NJRlwlR"
  , "sf:1": "https://media.graphcms.com/4FL7knWUSpeJOCI6nn6M"
  , "sf:2": "https://media.graphcms.com/DvFX4kEFTVasKO51geC7"
  , "sf:3": "https://media.graphcms.com/KwuIhQOZQqkdYe69MZ5w"
  , "sf:4": "https://media.graphcms.com/ZQ3upB8bSfSo5JHQi8HU"
  , "sf:5": "https://media.graphcms.com/DJs1bpxmSKRigyoSIShw"
  , "sf:6": "https://media.graphcms.com/O12lqvdBRN2SRaNX4fqv"
  , "sf:7": "https://media.graphcms.com/QNFTkDnFRRW7OYJOWJyv"
  , "sf:8": "https://media.graphcms.com/Qxu66OAtReWLOTzsjmbG"
  , "sf:9": "https://media.graphcms.com/2udTw7B4Tc26lriV8HXw"
  , "sf:10": "https://media.graphcms.com/oun99ceFSCK9yD9bH1Gs"
  , "sf:11": "https://media.graphcms.com/VgDpVFS9RTqW1rjma62L"
  , "sf:12": "https://media.graphcms.com/CnTMujGqS8GuRP8y0hxv"
  , "sf:13": "https://media.graphcms.com/2XIMwwfMSYmusgVaObkh"
  , "sf:14": "https://media.graphcms.com/9stt5agTSYax4dG4pmKD"
  , "sf:15": "https://media.graphcms.com/32cnl62RZ28GXSw0waNV"
  , "sf:16": "https://media.graphcms.com/xEh9Ekt4T2yiwKV1Xrhg"
  , "sf:17": "https://media.graphcms.com/DNMg99r6TQmWqgVpjvJc"
  , "speakspell:0": "https://media.graphcms.com/WlBPuYMReuvgLwoJOoAl"
  , "speakspell:1": "https://media.graphcms.com/9fVLGW0iTHyJeipc3ZeH"
  , "speakspell:2": "https://media.graphcms.com/2y03UO2cTAmrTGl76JQB"
  , "speakspell:3": "https://media.graphcms.com/XB9uAhd9RsSghanGR9Uw"
  , "speakspell:4": "https://media.graphcms.com/mqA8hMMfSNivh62vhdN2"
  , "speakspell:5": "https://media.graphcms.com/EdPcW7xSROmFYPQtVFvV"
  , "speakspell:6": "https://media.graphcms.com/Nu1h0fBHQtOgpvXFGrZc"
  , "speakspell:7": "https://media.graphcms.com/uDg1rOLTny8rzCdd0IJV"
  , "speakspell:8": "https://media.graphcms.com/tNPzBQQFSQm7Wxuccnwu"
  , "speakspell:9": "https://media.graphcms.com/ZA8ukCuDTd24usdedYMq"
  , "speakspell:10": "https://media.graphcms.com/N0hreBK7Qc2O8SbFjWYX"
  , "speakspell:11": "https://media.graphcms.com/AjVL2qa9TPiPQStSNLVo"
  , "cc:0": "https://media.graphcms.com/Hnc5orFgSOiKfKp4xskQ"
  , "cc:1": "https://media.graphcms.com/MjVBVbxeSWWmEoCGRG8l"
  , "cc:2": "https://media.graphcms.com/T3qE0oOSPO4PJNSNKDcw"
  , "cc:3": "https://media.graphcms.com/c5Mmo9fuTtSD6mGxXcVw"
  , "cc:4": "https://media.graphcms.com/pRH4saPRR2CG9OFi6gyh"
  , "cc:5": "https://media.graphcms.com/yPmwlHzNQP2bglTL6pyy"
  , "gabbaloud:0": "https://media.graphcms.com/AATEUyrSK6DhgG1gTf4w"
  , "gabbaloud:1": "https://media.graphcms.com/BFJcU9r7SNqn6aJeL4VX"
  , "gabbaloud:2": "https://media.graphcms.com/Nefppmv3Q1qq1sFQ9NFE"
  , "gabbaloud:3": "https://media.graphcms.com/Tl7TyHYSfOu4njGgV3Ww"
  , "ades2:0": "https://media.graphcms.com/5kF6kI8LSGyCuzvAvOSr"
  , "ades2:1": "https://media.graphcms.com/c1ubL0kSDmT07DqfF1BP"
  , "ades2:2": "https://media.graphcms.com/BXGMkKEwTMiMvyYS5Ex3"
  , "ades2:3": "https://media.graphcms.com/qbYcPV3kR3qUbKPOs6yd"
  , "ades2:4": "https://media.graphcms.com/0HflT7wRQSmd0yoZUEkQ"
  , "ades2:5": "https://media.graphcms.com/Z8nrUI4Smu8dWhuJwPMg"
  , "ades2:6": "https://media.graphcms.com/17jjboiDQei1Oq8kG5rf"
  , "ades2:7": "https://media.graphcms.com/PZck6VMDTcKndLvSUWFS"
  , "ades2:8": "https://media.graphcms.com/xPG9ZNhaTo2UaciSIyx8"
  , "space:0": "https://media.graphcms.com/CKomIeYaTyLJAEJT7ZQS"
  , "space:1": "https://media.graphcms.com/ciJM8B5xSeGbSJOTa04x"
  , "space:2": "https://media.graphcms.com/kW1ai2OVQNCx6N1jn2SU"
  , "space:3": "https://media.graphcms.com/Cg2jQFMQ4eUg63jIXVuy"
  , "space:4": "https://media.graphcms.com/WxcT9qLjQbquNFOqeQAX"
  , "space:5": "https://media.graphcms.com/xqU71SUiS66us3J5EAea"
  , "space:6": "https://media.graphcms.com/qgxYV0lR6xPKapzEXcBg"
  , "space:7": "https://media.graphcms.com/zHrvqGV7TEqG9b4RNND5"
  , "space:8": "https://media.graphcms.com/JrzyKk2HSeqSQhWXzHQ4"
  , "space:9": "https://media.graphcms.com/ravTTcEmSiUTAlRZwqEA"
  , "space:10": "https://media.graphcms.com/7wMw0ikUQz6B5c2Tax3o"
  , "space:11": "https://media.graphcms.com/bThfxVcuQMCX25QkFVsR"
  , "space:12": "https://media.graphcms.com/RSzAdmGKQXWnGd7fsm5i"
  , "space:13": "https://media.graphcms.com/YnppawS3ROWLChDAMUR2"
  , "space:14": "https://media.graphcms.com/Js26JBjJSWeHj7lmw5T7"
  , "space:15": "https://media.graphcms.com/TOufIMPTSNKhl0J2HKjC"
  , "space:16": "https://media.graphcms.com/oyfFkT7TPe6xmCLkR5KR"
  , "space:17": "https://media.graphcms.com/ScgkTKldQ1aLJ6jrbeH2"
  , "battles:0": "https://media.graphcms.com/PoGABHUTSd2OwTeKyrSM"
  , "battles:1": "https://media.graphcms.com/1snuKwkFRCymKcRxDNbA"
  , "voodoo:0": "https://media.graphcms.com/VXbxPNVwQ7m25ggAUkGh"
  , "voodoo:1": "https://media.graphcms.com/I5BKuqjWTCSgnwoQxVSq"
  , "voodoo:2": "https://media.graphcms.com/Kpk7q0Q3RgtaH4hVebyl"
  , "voodoo:3": "https://media.graphcms.com/x0xxnojaTU2oGzO76DhM"
  , "voodoo:4": "https://media.graphcms.com/c2iIadGTLG5pHZPXNjZ3"
  , "ravemono:0": "https://media.graphcms.com/RPx9I7ISIuRmGpaGhPWp"
  , "ravemono:1": "https://media.graphcms.com/55d4Hr3YQwWeYiQGO0TT"
  , "psr:0": "https://media.graphcms.com/eeS6kleOTEW5Y43AHNfg"
  , "psr:1": "https://media.graphcms.com/m5pQZtKS7K8Q8mOhqfch"
  , "psr:2": "https://media.graphcms.com/OkQYiyuWTWWUSJn3rS5q"
  , "psr:3": "https://media.graphcms.com/Dz9PHdjRQUBXG7URsOYQ"
  , "psr:4": "https://media.graphcms.com/NFst1Pw4SUSMILjK2xEU"
  , "psr:5": "https://media.graphcms.com/3ZM9FABSYWHR2JuqU3Pf"
  , "psr:6": "https://media.graphcms.com/yqlLKa7QjeXg0vRRvSc7"
  , "psr:7": "https://media.graphcms.com/07tksi0RhWKaK0EnaZoA"
  , "psr:8": "https://media.graphcms.com/GEL1n29OTs2xNapxGAbE"
  , "psr:9": "https://media.graphcms.com/v9KAf7xvRH2Ym6wDbfO6"
  , "psr:10": "https://media.graphcms.com/mtwWPMTKSuHRohAT24Vg"
  , "psr:11": "https://media.graphcms.com/CYBBaFuDQ7GSpva2hLNS"
  , "psr:12": "https://media.graphcms.com/eBQWQnJfRHa6uVy8rLnA"
  , "psr:13": "https://media.graphcms.com/TvaPZfYEQhucgfuVuGPD"
  , "psr:14": "https://media.graphcms.com/AC02aWS6GSiZ6vXWgKYA"
  , "psr:15": "https://media.graphcms.com/VAQXm83YQSqibg7EgfM5"
  , "psr:16": "https://media.graphcms.com/IQFyXNJdRbqK62ayFpGZ"
  , "psr:17": "https://media.graphcms.com/ACu5pllaQ4yZVOU6XPdy"
  , "psr:18": "https://media.graphcms.com/xPX4L6WCSWjF7toaQj5p"
  , "psr:19": "https://media.graphcms.com/auImEEghRajzpv4K6cCR"
  , "psr:20": "https://media.graphcms.com/rR8Bi1DCSwO4Vo7hsm0g"
  , "psr:21": "https://media.graphcms.com/tWwYtD9ISCiBuEZwEOPf"
  , "psr:22": "https://media.graphcms.com/6wqtfUm7TyqHNxg02TtE"
  , "psr:23": "https://media.graphcms.com/tE0Tl3nRl2PKkPgoEekS"
  , "psr:24": "https://media.graphcms.com/ynGQFw8uTS27JZ2YZKXQ"
  , "psr:25": "https://media.graphcms.com/4ZajlZiQmLcvgyC8yWUA"
  , "psr:26": "https://media.graphcms.com/pZqoQn9lSEyTFbJx65cm"
  , "psr:27": "https://media.graphcms.com/AfguVbuR7uVt1ef35dnA"
  , "psr:28": "https://media.graphcms.com/evR9hLnMTTaZJBRO4Ku0"
  , "psr:29": "https://media.graphcms.com/NOQqvOcqSBeH0JC7ie0u"
  , "metal:0": "https://media.graphcms.com/xhg979RqRVeknkHUxs2G"
  , "metal:1": "https://media.graphcms.com/hw67UaJNRyR8yTP4dMhQ"
  , "metal:2": "https://media.graphcms.com/AR6wMsZaRLysi1iyW9fY"
  , "metal:3": "https://media.graphcms.com/ncLQmjJ7SOKNg7PLLUZ1"
  , "metal:4": "https://media.graphcms.com/CcA1ExRsRIC680hHSMMG"
  , "metal:5": "https://media.graphcms.com/tj9n7cKASreU9V4Frfa3"
  , "metal:6": "https://media.graphcms.com/fx6LpQTXeQSZL44zJr0A"
  , "metal:7": "https://media.graphcms.com/wOsZifzZTmXt13uO2M4s"
  , "metal:8": "https://media.graphcms.com/OyduAOIxSWaSpr5jlFEq"
  , "metal:9": "https://media.graphcms.com/lN2XGCFTfaUpculflnjw"
  , "hardcore:0": "https://media.graphcms.com/TpnBwDnrQ8yv7AfU3Ded"
  , "hardcore:1": "https://media.graphcms.com/anqjNtRVOaOUWq4wZyAu"
  , "hardcore:2": "https://media.graphcms.com/WqYLJaygQK67oe5MhEAk"
  , "hardcore:3": "https://media.graphcms.com/iEnfLAU0T22OEcsuNoy5"
  , "hardcore:4": "https://media.graphcms.com/T6j6oTwURiu7bjM5mJsh"
  , "hardcore:5": "https://media.graphcms.com/QtwHtDaTFm0GxXb1lb7i"
  , "hardcore:6": "https://media.graphcms.com/IqAhn2E9Ss2aeDA21OVW"
  , "hardcore:7": "https://media.graphcms.com/H6OJNDYHRpKURJxyrP4r"
  , "hardcore:8": "https://media.graphcms.com/ZeN9ASvRUSzj0g4PE3e5"
  , "hardcore:9": "https://media.graphcms.com/tLbGjpNmSImmLznD3RTd"
  , "hardcore:10": "https://media.graphcms.com/V9jnCjrRSwiZNC9wZJDc"
  , "hardcore:11": "https://media.graphcms.com/vTXRKK5Q6OMOpSyclaNA"
  , "mouth:0": "https://media.graphcms.com/PhetGNbbTKPyCB3E1a4v"
  , "mouth:1": "https://media.graphcms.com/RPRRWnJDQJeMbAQu5GPI"
  , "mouth:2": "https://media.graphcms.com/JZoZodSkRqmvkms23mIt"
  , "mouth:3": "https://media.graphcms.com/2hLaXtMyS9qUU0SweF0n"
  , "mouth:4": "https://media.graphcms.com/oSeeSedRZ2Nj0otuynPN"
  , "mouth:5": "https://media.graphcms.com/AcB1jr2CTX6v2z3hm7ji"
  , "mouth:6": "https://media.graphcms.com/b7jE8ymrTEipV4knldVT"
  , "mouth:7": "https://media.graphcms.com/aZi6cHf2TKaQeDKK1cRN"
  , "mouth:8": "https://media.graphcms.com/yJaAVPeqQrCLQGdZcKOv"
  , "mouth:9": "https://media.graphcms.com/FfyOD1DzTbqcCzcVXR0z"
  , "mouth:10": "https://media.graphcms.com/AwNT6cJQZexr0N3UybLw"
  , "mouth:11": "https://media.graphcms.com/P3pBczC8Rmm6gJdUuUrU"
  , "mouth:12": "https://media.graphcms.com/PiG8n59TSVetcCoKjSEg"
  , "mouth:13": "https://media.graphcms.com/OIHX8y3LSNmpaYgWSSGQ"
  , "mouth:14": "https://media.graphcms.com/y03RwkhuRAygPfQgr4lt"
  , "sugar:0": "https://media.graphcms.com/tw3G414lSPeB5XMnQG2f"
  , "sugar:1": "https://media.graphcms.com/pSYJMaAUQdKxRuqf7L9e"
  , "odx:0": "https://media.graphcms.com/kKZWXbLGQ5CN1Tu5oCvx"
  , "odx:1": "https://media.graphcms.com/H9QuTE8GQSWXyYn3G0s4"
  , "odx:2": "https://media.graphcms.com/s9l84r8rSiins4XbHfFV"
  , "odx:3": "https://media.graphcms.com/zmM983pQAm4yVOxwaekV"
  , "odx:4": "https://media.graphcms.com/4Tf91n7RRuSFLMdvWQIv"
  , "odx:5": "https://media.graphcms.com/4tSW2hBKS274eugQS1LM"
  , "odx:6": "https://media.graphcms.com/7DAtPaARRV2zCAPM6sGP"
  , "odx:7": "https://media.graphcms.com/kTrQ6MO4TreAyoyuFgrB"
  , "odx:8": "https://media.graphcms.com/wZv9U9vCRDuRFRDZiejl"
  , "odx:9": "https://media.graphcms.com/smH0oreORxK4iLIi1Qjt"
  , "odx:10": "https://media.graphcms.com/qga1DSFWTpuY1K2p3UrH"
  , "odx:11": "https://media.graphcms.com/9jC25jksQy2Fk98FmJMQ"
  , "odx:12": "https://media.graphcms.com/uvC6rJOTzq9nJ0Zyzz0u"
  , "odx:13": "https://media.graphcms.com/UaPzVD3BSXypTciP8bj6"
  , "odx:14": "https://media.graphcms.com/8v4FzI2pQroj2F4nBspB"
  , "x_808lc:0": "https://media.graphcms.com/qyN8bIkHTwyy9xzM4xkO"
  , "x_808lc:1": "https://media.graphcms.com/sxfQ52KRjmdna4ZiQYQa"
  , "x_808lc:2": "https://media.graphcms.com/UYBxdSiMRjyWC4I1qFjx"
  , "x_808lc:3": "https://media.graphcms.com/BfDEu0kjT1mLYwfH8evT"
  , "x_808lc:4": "https://media.graphcms.com/T2PVreFyQOOJG5oLqMnZ"
  , "mt:0": "https://media.graphcms.com/zGYEcxtLQh69VCmUuUFn"
  , "mt:1": "https://media.graphcms.com/IciSJxxxQwCzvmJpmmyg"
  , "mt:2": "https://media.graphcms.com/RzUh30UTRYCi6oHg2Qb9"
  , "mt:3": "https://media.graphcms.com/ym9DcCe7T0iPEGTheeyb"
  , "mt:4": "https://media.graphcms.com/UCfWfk0BSSGbk49VR7jz"
  , "mt:5": "https://media.graphcms.com/LtiiJyfRROUUH5WiXhIt"
  , "mt:6": "https://media.graphcms.com/h7mZafdOQ1OVD7g5fqi1"
  , "mt:7": "https://media.graphcms.com/VGXp3Vr3QyirnVmFHMQa"
  , "mt:8": "https://media.graphcms.com/jAlYSVSZm9zmbk4y70MA"
  , "mt:9": "https://media.graphcms.com/GC6lYLWRQq9R5km7egzS"
  , "mt:10": "https://media.graphcms.com/lU4TAe5QW6GqUNhw8FNg"
  , "mt:11": "https://media.graphcms.com/L92ZzPpREGVhBP80ciNw"
  , "mt:12": "https://media.graphcms.com/ilDxOt17QiWWXZX91SZA"
  , "mt:13": "https://media.graphcms.com/3AEksoW5SyCVBdQWUTNI"
  , "mt:14": "https://media.graphcms.com/WsvfSc5TsmzpJg22g9Og"
  , "mt:15": "https://media.graphcms.com/Q0APLUHwTRWVOELVoxnZ"
  , "drumtraks:0": "https://media.graphcms.com/W2ZlbpNERpGwa44pgnmN"
  , "drumtraks:1": "https://media.graphcms.com/64KlrpzbStCfvgolyuQ0"
  , "drumtraks:2": "https://media.graphcms.com/aeDgCABvSteQzAuWXOPi"
  , "drumtraks:3": "https://media.graphcms.com/jR0TlRiRRmCWkvMfKu0t"
  , "drumtraks:4": "https://media.graphcms.com/aOK8TviZQ3rAnPLic7GA"
  , "drumtraks:5": "https://media.graphcms.com/ZRuaAtVDS7C5vGex9nNo"
  , "drumtraks:6": "https://media.graphcms.com/K7siE2FGSFSR9ZEUOoCJ"
  , "drumtraks:7": "https://media.graphcms.com/x1jhEV4tQHq1njOFumBq"
  , "drumtraks:8": "https://media.graphcms.com/Ni3cZKppTW6wEIFvgZME"
  , "drumtraks:9": "https://media.graphcms.com/dFzLHjJ0QWuWHBe9e5Ip"
  , "drumtraks:10": "https://media.graphcms.com/Tt82sknWR6KxyFRgwakE"
  , "drumtraks:11": "https://media.graphcms.com/s05Z9JNlS8eKIVAbAxQN"
  , "drumtraks:12": "https://media.graphcms.com/vqB4EpTPRZe77TsjlMBQ"
  , "print:0": "https://media.graphcms.com/nqSacbW7TU65xwZ6hiOq"
  , "print:1": "https://media.graphcms.com/9ZJYaL2XS8iB77mVfmN6"
  , "print:2": "https://media.graphcms.com/Ey7irp0NReC8lY7cggVg"
  , "print:3": "https://media.graphcms.com/gTc9b32SZCzff3XKC6CQ"
  , "print:4": "https://media.graphcms.com/zzePZhVCS2iUqYe0uAV3"
  , "print:5": "https://media.graphcms.com/ndR5b554TiWufz6sKWcY"
  , "print:6": "https://media.graphcms.com/rXYa4vgJRweI3TsNKWv7"
  , "print:7": "https://media.graphcms.com/E5cmxoXkSqWx9hPRvcNI"
  , "print:8": "https://media.graphcms.com/mlypwAiSSgOANGRPtBur"
  , "print:9": "https://media.graphcms.com/cOFxHxzOSQuq4BTqnWyT"
  , "print:10": "https://media.graphcms.com/iUd1xgEhQU2lMma2IB0P"
  , "blip:0": "https://media.graphcms.com/5vcoZONSC4WP7Ix3GGBQ"
  , "blip:1": "https://media.graphcms.com/L4TRWnT2RSqhfes0gnw3"
  , "wobble:0": "https://media.graphcms.com/hd4CG6eyRFaxes5QosHo"
  , "made:0": "https://media.graphcms.com/RHjMAuASOaeY10lxSue0"
  , "made:1": "https://media.graphcms.com/WwYofxOJTvCWHz0CcXUN"
  , "made:2": "https://media.graphcms.com/JcCf6dJwSUGtwB7SP3qc"
  , "made:3": "https://media.graphcms.com/qtPStlxoQcethuIKYbAC"
  , "made:4": "https://media.graphcms.com/lfb2mBFQXWEGtgZVM7gS"
  , "made:5": "https://media.graphcms.com/2drajlNRIWfUckUECuyM"
  , "made:6": "https://media.graphcms.com/mY9stopmRaCl0Ef8nNZt"
  , "speechless:0": "https://media.graphcms.com/LetzVclQI2XTO2hPMx8g"
  , "speechless:1": "https://media.graphcms.com/sLAtF357R1ySXk2AQF8w"
  , "speechless:2": "https://media.graphcms.com/9l2lNr4XQd2qppI5UUM1"
  , "speechless:3": "https://media.graphcms.com/pSqEF7UGQRqz4rbH68Dc"
  , "speechless:4": "https://media.graphcms.com/cjqGeHBnTmuxPKJkL3EI"
  , "speechless:5": "https://media.graphcms.com/dqDqSQqqQ0m391X5vryN"
  , "speechless:6": "https://media.graphcms.com/ROLel5R7TuLzZgnrJ4IM"
  , "speechless:7": "https://media.graphcms.com/IgKEn1xRC2hVSaJuAdUs"
  , "speechless:8": "https://media.graphcms.com/cvCvJI0QPulEtWfP3qVz"
  , "speechless:9": "https://media.graphcms.com/c2Tr6zIYSPmHxtZqDcf2"
  , "sine:0": "https://media.graphcms.com/AJajAKUFT5al8qo7vobL"
  , "sine:1": "https://media.graphcms.com/8cJjJu1iTlelDa8Xtd23"
  , "sine:2": "https://media.graphcms.com/mJBNMy3dRuC9sYtWzAiz"
  , "sine:3": "https://media.graphcms.com/OZGYeF6ZRs66OVCfVmb9"
  , "sine:4": "https://media.graphcms.com/HsXiHwTRjuRwxh0Ll5L9"
  , "sine:5": "https://media.graphcms.com/4cAJqxfoRZugvjtdpIRA"
  , "noise:0": "https://media.graphcms.com/hJAjWVdHSUuqO84mjYpN"
  , "x_808lt:0": "https://media.graphcms.com/71y83sIIScCEaYFz2UYG"
  , "x_808lt:1": "https://media.graphcms.com/gD1EzkkTSOGhDGOIL2TW"
  , "x_808lt:2": "https://media.graphcms.com/KQpMFatFQIGIZcALjtEf"
  , "x_808lt:3": "https://media.graphcms.com/fulq1dWlTceXEePUeqFX"
  , "x_808lt:4": "https://media.graphcms.com/DetzgIGoS1GabAlIhTdp"
  , "sd:0": "https://media.graphcms.com/5h23JW2BSU2FQfQLTRJm"
  , "sd:1": "https://media.graphcms.com/vKNxp8TkSmy375SgxO0g"
  , "alphabet:0": "https://media.graphcms.com/1nNBPmsuTkuLZnAvCxrE"
  , "alphabet:1": "https://media.graphcms.com/UrBNupy5RRiclXQvF8XA"
  , "alphabet:2": "https://media.graphcms.com/gVtklzIxSdKhMR3xEBXg"
  , "alphabet:3": "https://media.graphcms.com/fENebT3GTLKixhkyUo2Q"
  , "alphabet:4": "https://media.graphcms.com/2fh6lFshRQ56ydDmDWQv"
  , "alphabet:5": "https://media.graphcms.com/k0xgVQQeKpgyJDguwg9v"
  , "alphabet:6": "https://media.graphcms.com/YTIELI2gSxKI36w9KVmr"
  , "alphabet:7": "https://media.graphcms.com/RQqpWlCSRvyOZKOwivVs"
  , "alphabet:8": "https://media.graphcms.com/uy1H9Tn3SBqn4WTONxVF"
  , "alphabet:9": "https://media.graphcms.com/xqy8EWl8SnGNfKL22fNn"
  , "alphabet:10": "https://media.graphcms.com/yergac3kQFi8omcqNigL"
  , "alphabet:11": "https://media.graphcms.com/mHQdfxb5QIHCwCedrZA5"
  , "alphabet:12": "https://media.graphcms.com/oERZz5wFQwulsdCeCuVm"
  , "alphabet:13": "https://media.graphcms.com/rFiBwFjMQFyakpmp1PZl"
  , "alphabet:14": "https://media.graphcms.com/ODZHa9iuQ9uPq1BF1MNX"
  , "alphabet:15": "https://media.graphcms.com/HeL5hylQRTKiTOMQj6wb"
  , "alphabet:16": "https://media.graphcms.com/QLX6L86RQKfRs4rbDpzq"
  , "alphabet:17": "https://media.graphcms.com/9CWMgOihSF9b1mRvdcPQ"
  , "alphabet:18": "https://media.graphcms.com/nRwPmLSRKGC8eclwfSrw"
  , "alphabet:19": "https://media.graphcms.com/ERoqCIftR5SelwC9Rx5W"
  , "alphabet:20": "https://media.graphcms.com/LX9Q6z8hRIGOT5jLqm4G"
  , "alphabet:21": "https://media.graphcms.com/uFaKBFQNTFKMg2N53OED"
  , "alphabet:22": "https://media.graphcms.com/DhILdMLRuue9G1yJLmBw"
  , "alphabet:23": "https://media.graphcms.com/KNFiHWp8SymKmvyCViKO"
  , "alphabet:24": "https://media.graphcms.com/xTpoMI13QmSJiAWBO5IN"
  , "alphabet:25": "https://media.graphcms.com/bDmo9lK8Snriz75gPFIA"
  , "baa2:0": "https://media.graphcms.com/H1HunllrRxKHCF2dxk4W"
  , "baa2:1": "https://media.graphcms.com/tVzc1yfpQGO8xfSq4i3H"
  , "baa2:2": "https://media.graphcms.com/lxQ5QpKgSGflsUygq2Fz"
  , "baa2:3": "https://media.graphcms.com/wYpl55ULRnKyiAaAeywS"
  , "baa2:4": "https://media.graphcms.com/0YvB7wkGSt2j9fLrc0fQ"
  , "baa2:5": "https://media.graphcms.com/zUvy4iEnTwegBWuEA2Ea"
  , "baa2:6": "https://media.graphcms.com/TxV4ZRG0SvCYHQTsghIu"
  , "tok:0": "https://media.graphcms.com/C4FYl3BR7aOpnwq10erg"
  , "tok:1": "https://media.graphcms.com/I7WKPoRzRyaOQ56sBapV"
  , "tok:2": "https://media.graphcms.com/NK6Hn7kQCuFLDQpyNMdQ"
  , "tok:3": "https://media.graphcms.com/wM3xmpQFKmEK9uLmQfP1"
  , "ades3:0": "https://media.graphcms.com/W4IgEXJ1QBOZ18o7nivX"
  , "ades3:1": "https://media.graphcms.com/yFqk5E7Qc6FkUu5AB5m2"
  , "ades3:2": "https://media.graphcms.com/ipMb8i3ZRcu1zrxsjqkA"
  , "ades3:3": "https://media.graphcms.com/VTGGTOeXSxil16dtMwYr"
  , "ades3:4": "https://media.graphcms.com/VEyG8ukiRKmd8mMCVOeO"
  , "ades3:5": "https://media.graphcms.com/4axnsfnORe6xiqAPLjhJ"
  , "ades3:6": "https://media.graphcms.com/uAdh9GKyQCuMVXx1QcVv"
  , "x_909:0": "https://media.graphcms.com/oJXNFAHS1CcR3MxIPsVw"
  , "sid:0": "https://media.graphcms.com/OaIgw3ckQ2PtYqcIE4mf"
  , "sid:1": "https://media.graphcms.com/lsLFrDAuQ0m3rtwGtjkz"
  , "sid:2": "https://media.graphcms.com/UgLjbSsVQ92tb3YfbIRN"
  , "sid:3": "https://media.graphcms.com/InzXor4RyiHquge1XZ65"
  , "sid:4": "https://media.graphcms.com/qkGbksXSbaT49qqkznFA"
  , "sid:5": "https://media.graphcms.com/ouefi7ZRWCC2iqQTHMds"
  , "sid:6": "https://media.graphcms.com/wrq25z9eTOmQQwZlC2mm"
  , "sid:7": "https://media.graphcms.com/8LUXQsDSm2fAPsf2sO37"
  , "sid:8": "https://media.graphcms.com/q46f7kdRN2OotHJSxRse"
  , "sid:9": "https://media.graphcms.com/vpUgeOdSECMPuJWGzzcp"
  , "sid:10": "https://media.graphcms.com/aG0oIrRxu9fAydayUew3"
  , "sid:11": "https://media.graphcms.com/XnE3GTDBT7G6ezvmF7MB"
  , "jungbass:0": "https://media.graphcms.com/74gLzPAMRLWf3ZRbffv5"
  , "jungbass:2": "https://media.graphcms.com/CCpgqtwpSwKJaCkwj517"
  , "jungbass:3": "https://media.graphcms.com/E2OdRAKSo699fzfL6KN7"
  , "jungbass:5": "https://media.graphcms.com/425JiXVS268X2PPOjpVu"
  , "jungbass:6": "https://media.graphcms.com/N7UwRMckS5ejOcZ6jFPZ"
  , "jungbass:7": "https://media.graphcms.com/zi2c9WmnRp28HXjv4mLb"
  , "jungbass:8": "https://media.graphcms.com/nG32uV9LTICs24nVdAGl"
  , "jungbass:9": "https://media.graphcms.com/nZZVD1toSvCloAYI4yv5"
  , "jungbass:10": "https://media.graphcms.com/t8lTHjdnTFeNZt24KknY"
  , "jungbass:11": "https://media.graphcms.com/9sThVLGeRuSlMbLmaLwF"
  , "jungbass:12": "https://media.graphcms.com/JtVKKDd9QOuxWeartyNC"
  , "jungbass:13": "https://media.graphcms.com/8VHr31IDT4GGimX8SVun"
  , "jungbass:14": "https://media.graphcms.com/ZJGiFPo1S4GI9RNlTq9S"
  , "jungbass:15": "https://media.graphcms.com/vB1wZi7HRlqVSt8ec1v0"
  , "jungbass:16": "https://media.graphcms.com/kONilVK7Rae5zk7CSoDn"
  , "jungbass:17": "https://media.graphcms.com/kOPprPczQ8CqCQO9IX0K"
  , "jungbass:18": "https://media.graphcms.com/JPKo8UV2SlaQhj8cWnFs"
  , "gabba:0": "https://media.graphcms.com/RUbmRnWSmuISV5Y6HpVQ"
  , "gabba:1": "https://media.graphcms.com/k7K0QNXcTOJLyL8sPSQW"
  , "gabba:2": "https://media.graphcms.com/OONfMiwSquYkd0FA0Cgi"
  , "gabba:3": "https://media.graphcms.com/NwFGGfsMQXStHFpnXRun"
  , "crow:0": "https://media.graphcms.com/PdNe8L4R1iflQrQztggb"
  , "crow:1": "https://media.graphcms.com/yAB3DQzAQGaSFMACTVMG"
  , "crow:2": "https://media.graphcms.com/oQHg7nR5SxS06UEDTZn9"
  , "crow:3": "https://media.graphcms.com/PsqCSaiRcCzZLTV7FizV"
  , "birds3:0": "https://media.graphcms.com/9DAO05q4QWiLhmqPnWiG"
  , "birds3:1": "https://media.graphcms.com/NIviVDsbQ5GO6r8h5xhw"
  , "birds3:2": "https://media.graphcms.com/VGU03ucuSreOhKwRg9ME"
  , "birds3:3": "https://media.graphcms.com/idPLBG2tTfSQKayRcimH"
  , "birds3:4": "https://media.graphcms.com/Z8qGd3u5T6GADQhGTl7z"
  , "birds3:5": "https://media.graphcms.com/8TBjrJ1TAe1cvd4xDeog"
  , "birds3:6": "https://media.graphcms.com/tnyFfkdmRna4TiIb4BuW"
  , "birds3:7": "https://media.graphcms.com/pZMaOyCQqJ7NKE4yHVgp"
  , "birds3:8": "https://media.graphcms.com/pSYyhzpRRDGPAdTLcEqB"
  , "birds3:9": "https://media.graphcms.com/pwmyrPnQzipwMP7ILuKu"
  , "birds3:10": "https://media.graphcms.com/k14Iue9aQXyRVokHMeTo"
  , "birds3:11": "https://media.graphcms.com/Qx0qUnVSWKaYwV6TJxw0"
  , "birds3:12": "https://media.graphcms.com/Kje9IEhGQee5PKDgEsK5"
  , "birds3:13": "https://media.graphcms.com/ZSqiJyS86ZLrwjsGMo9g"
  , "birds3:14": "https://media.graphcms.com/fJeFR3fzQpSUgJRnq9fd"
  , "birds3:15": "https://media.graphcms.com/XLV8bNPbQkWbdxZvWznO"
  , "birds3:16": "https://media.graphcms.com/cEhZiZr9RoWL4XmNeBxp"
  , "birds3:17": "https://media.graphcms.com/ct5QkKFxSkackHs9TnQa"
  , "birds3:18": "https://media.graphcms.com/GOoJinkRcqY4LL1DpYCw"
  , "auto:0": "https://media.graphcms.com/A1btyaVtRUCPJbaVMg2b"
  , "auto:1": "https://media.graphcms.com/1IM9RF3Sficd4Vy8M9eW"
  , "auto:2": "https://media.graphcms.com/IUcFbdD9TwO0AbW3ZkEK"
  , "auto:3": "https://media.graphcms.com/gn0Q8hfUSuyVdEGIqaa0"
  , "auto:4": "https://media.graphcms.com/BLDc1XKuSKS4OFxhycra"
  , "auto:5": "https://media.graphcms.com/DO8W3i4RDqsyKCTAbpLk"
  , "auto:6": "https://media.graphcms.com/hXFbGCdHRqeUMyaWzQLL"
  , "auto:7": "https://media.graphcms.com/y5RzCetTOemFhj0zPDlY"
  , "auto:8": "https://media.graphcms.com/JIVmT0SzT62lJoGVA7Vy"
  , "auto:9": "https://media.graphcms.com/UiS7D15WQOKGQ5J3BGLS"
  , "auto:10": "https://media.graphcms.com/6vhhKfdQLuYbj37InwzB"
  , "mute:1": "https://media.graphcms.com/Gt4cuCkHQrGJxMehghwN"
  , "mute:2": "https://media.graphcms.com/3y7B5YmVSrCqcG2rlY3w"
  , "mute:3": "https://media.graphcms.com/wJbrcakyTGKIBfLP9Asz"
  , "mute:4": "https://media.graphcms.com/hN8odaSxRw6rXr0nLPF5"
  , "mute:8": "https://media.graphcms.com/MqzkPjcSe1I3OMaDwzkg"
  , "mute:11": "https://media.graphcms.com/rZmYrUTKROeI7d5J1QnJ"
  , "mute:12": "https://media.graphcms.com/euO7whSjRMmxGELuuxLu"
  , "mute:13": "https://media.graphcms.com/fGFQSKJQZidue2mUqEWh"
  , "mute:14": "https://media.graphcms.com/ympmwV4iRWC6aj4LFRsF"
  , "mute:17": "https://media.graphcms.com/ENq1f8mUQ8KiSOx47jbK"
  , "mute:18": "https://media.graphcms.com/TaF0See0TAiSKQ9ttMFA"
  , "mute:19": "https://media.graphcms.com/0bUeKpMRyaGBpwDsK2wc"
  , "mute:26": "https://media.graphcms.com/iGtzjXePQuq6MnunXNmS"
  , "mute:27": "https://media.graphcms.com/zDtDnJCnTYSkGmXmWY1h"
  , "sheffield:0": "https://media.graphcms.com/XEG8Jy7lTjOp8CIOBeqF"
  , "casio:0": "https://media.graphcms.com/fSAh65iZSG71QxghllNr"
  , "casio:1": "https://media.graphcms.com/dTFwhaJER9CbYblkzoNI"
  , "casio:2": "https://media.graphcms.com/csg2EYHzQvq7lGjLN033"
  , "sax:0": "https://media.graphcms.com/uZsoOfw5Rc6TIAfQADDM"
  , "sax:1": "https://media.graphcms.com/UfITP3C6ROe9janXOFz5"
  , "sax:2": "https://media.graphcms.com/j2qiUISTwHHNUp1XaySA"
  , "sax:3": "https://media.graphcms.com/UIZdLb1TJ2hBOMnESGmA"
  , "sax:4": "https://media.graphcms.com/spOo8uTqSQ0WdU2HvhlQ"
  , "sax:5": "https://media.graphcms.com/1FP9oYWJQlyphS9ODWnF"
  , "sax:6": "https://media.graphcms.com/yBSAkQ29QVmDMgzQnHq6"
  , "sax:7": "https://media.graphcms.com/21KBb9ySNa2eH16znhsR"
  , "sax:8": "https://media.graphcms.com/HSxxokn2TqaFkDx26kHJ"
  , "sax:9": "https://media.graphcms.com/6NSKviClTJWBVb86mBL1"
  , "sax:10": "https://media.graphcms.com/C6zO5VUQM26dB202MVJw"
  , "sax:11": "https://media.graphcms.com/H3BeVYGSruVs1YiEVdzk"
  , "sax:12": "https://media.graphcms.com/IlAWNf3ESLuNa2mHY2yU"
  , "sax:13": "https://media.graphcms.com/ZqGmSIVjRKq89hVdxIId"
  , "sax:14": "https://media.graphcms.com/BqUrU8XGSe376pqSnc4e"
  , "sax:15": "https://media.graphcms.com/CDtyLbTB68azzjXvy09w"
  , "sax:16": "https://media.graphcms.com/eYoUXhnrQWaatO7Xb4TJ"
  , "sax:17": "https://media.graphcms.com/bGGUo0E1QvKX1eWAuM7b"
  , "sax:18": "https://media.graphcms.com/N5M0RSBT3i3RCeuaPB80"
  , "sax:19": "https://media.graphcms.com/n523aNTkQIeRIULaI3MA"
  , "sax:20": "https://media.graphcms.com/1Kdp0bJNQWSqSsRLaNKa"
  , "sax:21": "https://media.graphcms.com/9SLHX2uhRXOE35fi6FH3"
  , "circus:0": "https://media.graphcms.com/dNEWQ9VERkGwa79sTwta"
  , "circus:1": "https://media.graphcms.com/s7qhGmmrTcGrcggZZtFO"
  , "circus:2": "https://media.graphcms.com/IV2M2iUaSiSODLmEAIIv"
  , "yeah:0": "https://media.graphcms.com/4YsKVrSSIaP0S7sgarKA"
  , "yeah:1": "https://media.graphcms.com/MRc8NVwR0SxAXbL22oTw"
  , "yeah:2": "https://media.graphcms.com/GW4LBPaDTDC4WlYIJ50a"
  , "yeah:3": "https://media.graphcms.com/3uHpGZfPQ1qDt2bEd5lV"
  , "yeah:4": "https://media.graphcms.com/3redXiecQPe4qiv6ZzVe"
  , "yeah:5": "https://media.graphcms.com/micPfxWrQLGYEQR0jRWt"
  , "yeah:6": "https://media.graphcms.com/8KMF0Q1FTceMV2tORVfH"
  , "yeah:7": "https://media.graphcms.com/MwUsCfSlTdiwn54YbbF0"
  , "yeah:8": "https://media.graphcms.com/fxb46VwATz6JVy8Scbhm"
  , "yeah:9": "https://media.graphcms.com/US4dxhkmQI2nNfARfTzw"
  , "yeah:10": "https://media.graphcms.com/oOlvRY3cSKyRnTG7pVcI"
  , "yeah:11": "https://media.graphcms.com/qWttm80TSf2r4phiutxr"
  , "yeah:12": "https://media.graphcms.com/u6rTZEpKR9KtkEL9B2vJ"
  , "yeah:13": "https://media.graphcms.com/UPnsfy1LSiOlM90mn3bg"
  , "yeah:14": "https://media.graphcms.com/iIvtNLwhRNqwRW53TlIg"
  , "yeah:15": "https://media.graphcms.com/DFKQLn5gTqyENdELg4Cf"
  , "yeah:16": "https://media.graphcms.com/bUAReK4qQ761kU2lwMo7"
  , "yeah:17": "https://media.graphcms.com/Z2J1qEmT9igOz1QaefWQ"
  , "yeah:18": "https://media.graphcms.com/z9KaOD1qTfKv2RLUmEaD"
  , "yeah:19": "https://media.graphcms.com/supjARkqQVQBwUwxibPy"
  , "yeah:20": "https://media.graphcms.com/lAxdtf7ERUq67MpHouyS"
  , "yeah:21": "https://media.graphcms.com/A3bM8q6MRKOCV6TDjt8r"
  , "yeah:22": "https://media.graphcms.com/cNjjIfzSbq0m8mYlgi2G"
  , "yeah:23": "https://media.graphcms.com/gDG0sGKQTkqGVZGjmQ4M"
  , "yeah:24": "https://media.graphcms.com/h3Kyo9ZSWSS8LukhRVJw"
  , "yeah:25": "https://media.graphcms.com/hiqoVVKZRum3hBpfKTRK"
  , "yeah:26": "https://media.graphcms.com/9P6nKKDmSPCqVWd68IDw"
  , "yeah:27": "https://media.graphcms.com/AnuUY39ZRCaXN4LXZTiB"
  , "yeah:28": "https://media.graphcms.com/QoJ7LlcTiynMGi2jQJtL"
  , "yeah:29": "https://media.graphcms.com/J63HE1LSmc3zFQD9WEwz"
  , "yeah:30": "https://media.graphcms.com/OVqqkyByQOKnCvYC1OZG"
  , "oc:0": "https://media.graphcms.com/zItkqGWQ7SBcq6UNYJtQ"
  , "oc:1": "https://media.graphcms.com/02IwCWXDTr2641n1VFSz"
  , "oc:2": "https://media.graphcms.com/WrM7MB0QMilUBi2jRwBg"
  , "oc:3": "https://media.graphcms.com/iGVkZC7LTsanRGHPoBgs"
  , "alex:0": "https://media.graphcms.com/mMMpMy8VREavvOlPYPnb"
  , "alex:1": "https://media.graphcms.com/S0wQLOB1R8CZot5lc6EM"
  , "can:0": "https://media.graphcms.com/wmFvIlcKRwWNllFaaRPD"
  , "can:1": "https://media.graphcms.com/p7ZGxBLfQyy32eiyYVpU"
  , "can:2": "https://media.graphcms.com/hSHQqnDKSYKVlSlySU8m"
  , "can:3": "https://media.graphcms.com/rcStgJTxeM2Z8jKsKgpQ"
  , "can:4": "https://media.graphcms.com/f2nEYG9PSOyKfIv79kWI"
  , "can:5": "https://media.graphcms.com/Q03P3i4USHaptUUZuklY"
  , "can:6": "https://media.graphcms.com/9LsNcCjwRDyyTko7oNFk"
  , "can:7": "https://media.graphcms.com/ipVQVjwzRsWBsyMPwp7o"
  , "can:8": "https://media.graphcms.com/BQ06u0hQZ6ci7BB8YPjw"
  , "can:9": "https://media.graphcms.com/NJ5bo7SR8y6yfkI9Nbcw"
  , "can:10": "https://media.graphcms.com/hGh4R5dWSqaXP3jY4GpD"
  , "can:11": "https://media.graphcms.com/VGrBA8WjQIOmY7dObI6g"
  , "can:12": "https://media.graphcms.com/45OhAD62TTu32Z0e4t3r"
  , "can:13": "https://media.graphcms.com/GjXV2oRcT2qQp5Tk7JpZ"
  , "jungle:0": "https://media.graphcms.com/dGchLVSHSVmAlWOpr4R0"
  , "jungle:1": "https://media.graphcms.com/Vd7FaULR32lGkc3uRj5w"
  , "jungle:2": "https://media.graphcms.com/Z3ED3dXRST6bbtX5vuQK"
  , "jungle:3": "https://media.graphcms.com/oaj1JguATryTEaHzsL5v"
  , "jungle:4": "https://media.graphcms.com/IXgvYZDqQziDORSeN35A"
  , "jungle:5": "https://media.graphcms.com/TLv01TDQZqOPYFk3wRlw"
  , "jungle:6": "https://media.graphcms.com/cSRDJdwpS1yOgcJIVaL5"
  , "jungle:7": "https://media.graphcms.com/Awknm5eTtu7aTyj5tecg"
  , "jungle:8": "https://media.graphcms.com/tTVcr1DRi2gfEl3zyFFs"
  , "jungle:9": "https://media.graphcms.com/UHHqlAY9Rk6xeiuPPUMA"
  , "jungle:10": "https://media.graphcms.com/WRjsTcPSSWGIYey27qbg"
  , "jungle:11": "https://media.graphcms.com/2H67IGOWROlwTJSAnlFH"
  , "jungle:12": "https://media.graphcms.com/kvVx1xFTjOW2n8YoW0zW"
  , "moog:0": "https://media.graphcms.com/YyEsjhpT6uwCXJJEEvQb"
  , "moog:1": "https://media.graphcms.com/tZRpeQw6Tdu8MjvUY8O5"
  , "moog:2": "https://media.graphcms.com/CiHO3KwuQOqR2eyi5RdD"
  , "moog:3": "https://media.graphcms.com/Y1iwLN6TRypacFACNcnL"
  , "moog:4": "https://media.graphcms.com/yRkSw5bSvO9TOep8oa3Q"
  , "moog:5": "https://media.graphcms.com/Rd7IWn1R2yKyNF1LH3jg"
  , "moog:6": "https://media.graphcms.com/iPp5j59SLyy6KOr4Nqc1"
  , "h:0": "https://media.graphcms.com/wLegzgKLQg2gM7EJBWNW"
  , "h:3": "https://media.graphcms.com/2kfic76BTAyDmGrOLjBH"
  , "h:4": "https://media.graphcms.com/AAKOtGQ5iVhjoKPL9zOw"
  , "h:5": "https://media.graphcms.com/GZJ8EBdOQv2MeHAjHpqM"
  , "h:6": "https://media.graphcms.com/EoiCIa6ySNWb6H81Rljw"
  , "wind:0": "https://media.graphcms.com/kRYNvGISAGO4v2p3tP8e"
  , "wind:1": "https://media.graphcms.com/gcVFNe7qSifmjvS6IgCd"
  , "wind:2": "https://media.graphcms.com/cKs6g8FRn2eTSOEqNIwK"
  , "wind:3": "https://media.graphcms.com/TExwhBj9T1KiO2LYVEJx"
  , "wind:4": "https://media.graphcms.com/WJc1xOuXSXypjvvQaNX4"
  , "wind:5": "https://media.graphcms.com/bvPYstC3RmmapQj3pAhO"
  , "wind:6": "https://media.graphcms.com/iEypObACQiONIKwllhO2"
  , "wind:7": "https://media.graphcms.com/12novIc7TsUGbNAftK7h"
  , "wind:8": "https://media.graphcms.com/VMF8gwGiQy2HV7b30QEK"
  , "wind:9": "https://media.graphcms.com/N6R1Ox63RNiV5yKNYSEk"
  , "rs:0": "https://media.graphcms.com/yY81iKY9SpK0xRRkrBRg"
  , "em2:0": "https://media.graphcms.com/PW4aVQBBQMKo0MyOXmoa"
  , "em2:1": "https://media.graphcms.com/EKr61ybzRWJhZxw3XYZL"
  , "em2:2": "https://media.graphcms.com/jgHn9ld4RNmZaZ2hfxQf"
  , "em2:3": "https://media.graphcms.com/n3kZ8dn8T4G6Eov7iDNv"
  , "em2:4": "https://media.graphcms.com/TDFnjW4MTDXP9Yz5ksS4"
  , "em2:5": "https://media.graphcms.com/AwtIagNKRhqjVz8AXtla"
  , "noise2:0": "https://media.graphcms.com/SH7ZDPxRRKemaQesa5NA"
  , "noise2:1": "https://media.graphcms.com/SplcbNSMTBidDSkn4L1D"
  , "noise2:2": "https://media.graphcms.com/40XH94mKTh65CLnuhndS"
  , "noise2:3": "https://media.graphcms.com/ctxdfAbS7ekCYmxXdf0q"
  , "noise2:4": "https://media.graphcms.com/7RR366jiS4a3Dfwp6E0C"
  , "noise2:5": "https://media.graphcms.com/bv4Bki8TWOwPmb0k5XfL"
  , "noise2:6": "https://media.graphcms.com/FMsRqhkMTCyovsTl7z1Y"
  , "noise2:7": "https://media.graphcms.com/5Apur4rSS6yQlRUoISm8"
  , "foo:0": "https://media.graphcms.com/NgKAIzuwTbK7mrH24xNy"
  , "foo:1": "https://media.graphcms.com/cmjCHBhiRgyKe0I5gpJZ"
  , "foo:2": "https://media.graphcms.com/wnoOczqNTee60ANPd93c"
  , "foo:3": "https://media.graphcms.com/80sazG2iRnO7GT5IMLMC"
  , "foo:4": "https://media.graphcms.com/V3hVDkrXQsefEVCuixHW"
  , "foo:5": "https://media.graphcms.com/19vFzNaMRreIU7skhS9X"
  , "foo:6": "https://media.graphcms.com/rkqZOXs6RjCcLpdATfJd"
  , "foo:7": "https://media.graphcms.com/rB71DMuzRjiZANg0Z8pK"
  , "foo:8": "https://media.graphcms.com/XVHWuLDOSCa2hRRw6TbH"
  , "foo:9": "https://media.graphcms.com/RkStGQJR8uJ1cinfY5wG"
  , "foo:10": "https://media.graphcms.com/cOkDnqijTPGRf2ZcE16n"
  , "foo:11": "https://media.graphcms.com/vY7jeRXURsCykvwtoPm2"
  , "foo:12": "https://media.graphcms.com/VeVWraG8SryirT0WoUjP"
  , "foo:13": "https://media.graphcms.com/e3cv2l6gQbWwJ3z6UBSP"
  , "foo:14": "https://media.graphcms.com/ouZ5MTCOSDCkVY68DTvM"
  , "foo:15": "https://media.graphcms.com/7mlwIysJTKag4bmV0Hv0"
  , "foo:16": "https://media.graphcms.com/ISJulxdHTPW6ySWQu9N8"
  , "foo:17": "https://media.graphcms.com/QUgJ9Y4XTW2sFYXdd4sk"
  , "foo:18": "https://media.graphcms.com/8SLtSRT3KP1qnghtsTzA"
  , "foo:19": "https://media.graphcms.com/lFMZaq25TGSs0iObYyug"
  , "foo:20": "https://media.graphcms.com/iet8eUIuQ7eBhY7dfWPy"
  , "foo:21": "https://media.graphcms.com/VfB17aZSPSBgsxQQ9qST"
  , "foo:22": "https://media.graphcms.com/xyLb7phoSMe5fgyBqQC0"
  , "foo:23": "https://media.graphcms.com/YZ9pKGXwRwmwSQHHwUE0"
  , "foo:24": "https://media.graphcms.com/FA0bBVVPRAtYYeNhiyRn"
  , "foo:25": "https://media.graphcms.com/uL63KGV3QOWJwUFaiQMu"
  , "foo:26": "https://media.graphcms.com/TZzjtkoR2q6pBIkfssnT"
  , "armora:0": "https://media.graphcms.com/sGGDNB3RtiJr07Bp76vf"
  , "armora:1": "https://media.graphcms.com/dZ8WbCnuSFmvpBQsA9W3"
  , "armora:2": "https://media.graphcms.com/QOZ83kmTd6rYuM6vTWeH"
  , "armora:3": "https://media.graphcms.com/y5UEmlhSteUqvlGhYjDg"
  , "armora:4": "https://media.graphcms.com/QngVKAayS8mFRXJXyn7o"
  , "armora:5": "https://media.graphcms.com/1nQ09Ir6Rz6ZuNEj8Om4"
  , "armora:6": "https://media.graphcms.com/xMXEP4KaQ5e9kUf0coeW"
  , "bend:0": "https://media.graphcms.com/BWEGyJTnmStPy4oR3wBb"
  , "bend:1": "https://media.graphcms.com/lpFbJNnTTaFLFtHJhOYA"
  , "bend:2": "https://media.graphcms.com/W5V3m7kOT16TZbQeiiiZ"
  , "bend:3": "https://media.graphcms.com/Dw1Qyw8RbCeo4KJR592C"
  , "newnotes:0": "https://media.graphcms.com/J4m6ZFvpTWaFqOVXkZdw"
  , "newnotes:1": "https://media.graphcms.com/0WZeqaBQE6AcOnAK4sQQ"
  , "newnotes:2": "https://media.graphcms.com/BDmuPXINQaSypYGnzra6"
  , "newnotes:3": "https://media.graphcms.com/RdetvmEPQ0CecXPw7hWP"
  , "newnotes:4": "https://media.graphcms.com/Q7lOvxsbTyGlSIUEelNh"
  , "newnotes:5": "https://media.graphcms.com/tLhtwdnpRjSNNW4w5N83"
  , "newnotes:6": "https://media.graphcms.com/CcFhFhLARpWeL0nuHdNQ"
  , "newnotes:7": "https://media.graphcms.com/B350ngWITie2MhncXuz6"
  , "newnotes:8": "https://media.graphcms.com/xJ2fLBxwQKy4pDdXUszT"
  , "newnotes:9": "https://media.graphcms.com/xctIahZBRtCzv6QQpHlX"
  , "newnotes:10": "https://media.graphcms.com/KJSS0vKERkGlmYjFSN1J"
  , "newnotes:11": "https://media.graphcms.com/mriUQ199RSkJAYI0ty6b"
  , "newnotes:12": "https://media.graphcms.com/MKcdWQe0R6GNV6q6nBKe"
  , "newnotes:13": "https://media.graphcms.com/cC37xxQSVSOEGTNGh4QX"
  , "newnotes:14": "https://media.graphcms.com/ZYAfWfXVQoqQY4uDwNDb"
  , "pebbles:0": "https://media.graphcms.com/5J0SUMlcSGWhK6X3QVnI"
  , "mash2:0": "https://media.graphcms.com/lU0oYOY6SYqIrDjd2J1g"
  , "mash2:1": "https://media.graphcms.com/94innH8QeavtnBPN77pb"
  , "mash2:2": "https://media.graphcms.com/QdCL7QgXR0KyPwvi5A9A"
  , "mash2:3": "https://media.graphcms.com/6ml5AkuKTVuxbJt4Ip1G"
  , "diphone2:0": "https://media.graphcms.com/Cs6CFO5pRoKac6SqBUOU"
  , "diphone2:1": "https://media.graphcms.com/rmG62bHnRwOSr8IdxZ2a"
  , "diphone2:2": "https://media.graphcms.com/ziFEziWoTDuB91fZkJ0O"
  , "diphone2:3": "https://media.graphcms.com/URSGR25YTSiPIWfG7mSF"
  , "diphone2:4": "https://media.graphcms.com/iGc1HXBsQKnnx1I6Jed6"
  , "diphone2:5": "https://media.graphcms.com/zrLUpfHISj2Z8zllZGgG"
  , "diphone2:6": "https://media.graphcms.com/wCaZuDTOShuyXUnBY9Lz"
  , "diphone2:7": "https://media.graphcms.com/vryhtSuzRuGwy1O90GbK"
  , "diphone2:8": "https://media.graphcms.com/EugHwwSPR66wm9WGHQtI"
  , "diphone2:9": "https://media.graphcms.com/RHzcTKzzQ6iblX3mxlyG"
  , "diphone2:10": "https://media.graphcms.com/LyXbe95BTXa7cRIQdrmu"
  , "diphone2:11": "https://media.graphcms.com/aaEAtpvSPmx31CfAoW7Q"
  , "e:0": "https://media.graphcms.com/ehU6Qo1eTPCA8qe2Mcu8"
  , "e:1": "https://media.graphcms.com/B4kyDOU1QuSOwxTDNMYS"
  , "e:2": "https://media.graphcms.com/1yEnURxRJOxyF0q7yc5T"
  , "e:3": "https://media.graphcms.com/7ZBtTJbtRfiiOuxqc7kh"
  , "e:4": "https://media.graphcms.com/9YCijWAMQuyO7hIXSQFA"
  , "e:5": "https://media.graphcms.com/nnEhbhbtSIeZisQbcJdZ"
  , "e:6": "https://media.graphcms.com/WyLBIUeKQiuI7j9dOtuM"
  , "e:7": "https://media.graphcms.com/KVmQ1sivSYmTObTpqtSJ"
  , "bubble:0": "https://media.graphcms.com/gthHUG8AQrSwrTkY20ke"
  , "bubble:1": "https://media.graphcms.com/vFjqWB4YToS5FwS8aiZS"
  , "bubble:2": "https://media.graphcms.com/CH14FehRYu4tbDU6DvaN"
  , "bubble:3": "https://media.graphcms.com/wrXO9xISCyylrXbTCHlQ"
  , "bubble:4": "https://media.graphcms.com/c3SiKACTWOyGuSrpFOAV"
  , "bubble:5": "https://media.graphcms.com/Fu2Mud0WSQ6X0wxNBZ32"
  , "bubble:6": "https://media.graphcms.com/9WyQDmGnSqiAt6bHHZBk"
  , "bubble:7": "https://media.graphcms.com/oS4QnBRyQzOCCCabsBRA"
  , "insect:0": "https://media.graphcms.com/eKN3OvbkSKh6KnFExBVw"
  , "insect:1": "https://media.graphcms.com/5m85oUUwS9mb1gUhpkpB"
  , "insect:2": "https://media.graphcms.com/LNiR5SoIRa2r7wVL9Uth"
  , "ade:0": "https://media.graphcms.com/8GP2KNHMSkW1au7IOBsk"
  , "ade:1": "https://media.graphcms.com/Nzyin6yeRR2OUxD3Ajht"
  , "ade:2": "https://media.graphcms.com/Vet78CQXW3Vp8Mb3P6gQ"
  , "ade:3": "https://media.graphcms.com/uQcPZRWmQUuCnHdNIENc"
  , "ade:4": "https://media.graphcms.com/Uhy880E7QeWKBz6dhl45"
  , "ade:5": "https://media.graphcms.com/Q18qyTOPQuAjFfLDqffQ"
  , "ade:6": "https://media.graphcms.com/gcew2metT7qx9AhAWyXI"
  , "ade:7": "https://media.graphcms.com/8M9JupZMScW7O45k1LcD"
  , "ade:8": "https://media.graphcms.com/9fB0jesxT1iBRSSEBLTC"
  , "ade:9": "https://media.graphcms.com/PFSwmLSYSmqEgCXr5prv"
  , "glitch:0": "https://media.graphcms.com/bIGB9jRtQJwJ1jEuGxdc"
  , "glitch:1": "https://media.graphcms.com/9pIsld1OTSWPgTXgHGqm"
  , "glitch:2": "https://media.graphcms.com/Ktm0xAXSi2XBIraC3vGY"
  , "glitch:3": "https://media.graphcms.com/c5xP3Op3SzWvS8u5VToI"
  , "glitch:4": "https://media.graphcms.com/rw9gSWXmTLq6mMpZo3qZ"
  , "glitch:5": "https://media.graphcms.com/AudtGqEZTHi23DRWNLar"
  , "glitch:6": "https://media.graphcms.com/nlWZ6UAtTiWYUB8f61QR"
  , "glitch:7": "https://media.graphcms.com/EhKZE5VIRCu1rdCinmPi"
  , "haw:0": "https://media.graphcms.com/9xejMbdVTyqh4WZco04M"
  , "haw:1": "https://media.graphcms.com/yP20OptqS3yfG1Y44JmB"
  , "haw:2": "https://media.graphcms.com/BRx8Mh3xTiGlIeY5XZkG"
  , "haw:3": "https://media.graphcms.com/TvDYmp3SEGLkdkG8NdP7"
  , "haw:4": "https://media.graphcms.com/teQK4KGXQWuGk09Dsczo"
  , "haw:5": "https://media.graphcms.com/BDbW1S2QfaP0IEIlwaAC"
  , "popkick:0": "https://media.graphcms.com/otflho2FTBOgqs432p0z"
  , "popkick:1": "https://media.graphcms.com/8PnR484zTIWCCOTGfzTT"
  , "popkick:2": "https://media.graphcms.com/Pw8bog5CQbmPr541Nj6U"
  , "popkick:3": "https://media.graphcms.com/7O2A9LUTliBnDzCValKi"
  , "popkick:4": "https://media.graphcms.com/PyudKQWzS8C0qIAipFkU"
  , "popkick:5": "https://media.graphcms.com/BiqkWzQMmntVTyKy661Q"
  , "popkick:6": "https://media.graphcms.com/oiTOacUHTQmYjQPMigXx"
  , "popkick:7": "https://media.graphcms.com/4huIZ40TyWhiU0aAFVsZ"
  , "popkick:8": "https://media.graphcms.com/W8ZFPdgcT1OhbpO66fUr"
  , "popkick:9": "https://media.graphcms.com/PbH0fHleS7Os2E2I7dZI"
  , "breaks157:0": "https://media.graphcms.com/MoS66YPTr6pfzHkjMDae"
  , "gtr:0": "https://media.graphcms.com/UqdE6tIRo6CRrwqyMDpQ"
  , "gtr:1": "https://media.graphcms.com/wS8inkVWRuWdrMucAvaD"
  , "gtr:2": "https://media.graphcms.com/vpkstpZMRImnZvVSY6j6"
  , "clubkick:0": "https://media.graphcms.com/4VF9iylNRByx7weKdpD9"
  , "clubkick:1": "https://media.graphcms.com/COeQl94TFGWFvqHaqLDl"
  , "clubkick:2": "https://media.graphcms.com/c4HS4FeqQw6nqv0mt5MH"
  , "clubkick:3": "https://media.graphcms.com/BxBEv1SkyVQqBSCbq3Jg"
  , "clubkick:4": "https://media.graphcms.com/uFBsbjRhuzdf1Kr4rNYQ"
  , "breaks152:0": "https://media.graphcms.com/UDyEi0QoTgejMGAxYONV"
  , "x_808bd:1": "https://media.graphcms.com/5qne6LvGS9O6eVDhKAPt"
  , "x_808bd:2": "https://media.graphcms.com/FkhcCTTYSQyNfHpR9IZD"
  , "x_808bd:3": "https://media.graphcms.com/uN2UVApgT1epfBjSG11B"
  , "x_808bd:4": "https://media.graphcms.com/kpdctjHITFupYJ968fz4"
  , "x_808bd:5": "https://media.graphcms.com/pEyncGYWQqS3HuBGY8FI"
  , "x_808bd:6": "https://media.graphcms.com/IOY9DnYlQCwxJkuMGuGg"
  , "x_808bd:7": "https://media.graphcms.com/6oirt6MQhykru6FFqJAw"
  , "x_808bd:8": "https://media.graphcms.com/3YUdQfmQQanYhoioXUeQ"
  , "x_808bd:9": "https://media.graphcms.com/sAK4r2sRT5qgwGErzS0g"
  , "x_808bd:10": "https://media.graphcms.com/foX3CuiTsCDe5sWQ1Wo1"
  , "x_808bd:11": "https://media.graphcms.com/crelafPkTZKQ9MrccHFG"
  , "x_808bd:12": "https://media.graphcms.com/3A9qczM8QjuXTfvGcrEd"
  , "x_808bd:13": "https://media.graphcms.com/CB9vIW1XQAC9KxuB6gJw"
  , "x_808bd:14": "https://media.graphcms.com/k4Yc4xySJC6eddH3Cx70"
  , "x_808bd:15": "https://media.graphcms.com/3BM46iGnQEOr54KQ6Eie"
  , "x_808bd:16": "https://media.graphcms.com/vyINHLqDSuaIpmah9h3n"
  , "x_808bd:17": "https://media.graphcms.com/SYKw0BuwRgWkNa4vyV4C"
  , "x_808bd:18": "https://media.graphcms.com/Gnv5LreNTDuzn3t9Jvc9"
  , "x_808bd:19": "https://media.graphcms.com/6ch211U9S12hsrOmOEAS"
  , "x_808bd:20": "https://media.graphcms.com/jQIPwMwTRY6bMjaWX2QD"
  , "x_808bd:21": "https://media.graphcms.com/MsWvDGwEQTWEQ08ZasCO"
  , "x_808bd:22": "https://media.graphcms.com/RoCWUP4JRq6C2sbJPDJn"
  , "x_808bd:23": "https://media.graphcms.com/qSQ4D7UgQEuuZQdFng2T"
  , "x_808bd:24": "https://media.graphcms.com/mN2WCGESHG7q0kltheX0"
  , "miniyeah:0": "https://media.graphcms.com/w4ln2e0yTKSomPXKTN7e"
  , "miniyeah:1": "https://media.graphcms.com/eXGgzLkSy2tgUJDdtiS3"
  , "miniyeah:2": "https://media.graphcms.com/wvD9jCzNRv0PC0uMnpvp"
  , "miniyeah:3": "https://media.graphcms.com/lcjWo2u8TxCoGXYvCQog"
  , "if:0": "https://media.graphcms.com/wPufqvZDTeuEybXQQKF4"
  , "if:1": "https://media.graphcms.com/XcwnS6DxRyarfN40BNeB"
  , "if:2": "https://media.graphcms.com/X2UMzQDtTcGu31AfUYvu"
  , "if:3": "https://media.graphcms.com/SKwB1lw4SOaV6IalGrbY"
  , "if:4": "https://media.graphcms.com/ntvg8NGEQUeARIs6nsXZ"
  , "x_808oh:0": "https://media.graphcms.com/GBgfGSdJTluRSiEJMi1J"
  , "x_808oh:1": "https://media.graphcms.com/rOUQbyJtRYK4T8pcYxzS"
  , "x_808oh:2": "https://media.graphcms.com/6i3p7xzPRiC5GGixt0Qz"
  , "x_808oh:3": "https://media.graphcms.com/jLSKGe81TamCVmH61P1N"
  , "x_808oh:4": "https://media.graphcms.com/I2Bulvk5SfKHmkZcLL1p"
  , "house:0": "https://media.graphcms.com/6AUxTtE0QVuhovx5eKZh"
  , "house:1": "https://media.graphcms.com/dqhD2kX4STmSUrhJP0KC"
  , "house:2": "https://media.graphcms.com/RuHalD0HQHeVXeXHjffR"
  , "house:3": "https://media.graphcms.com/OJFg96yToaJ3FpDdIOGw"
  , "house:4": "https://media.graphcms.com/xzT50QVPRNOISXEDqe8Z"
  , "house:5": "https://media.graphcms.com/4yEOuU0aQqmoQA0P6h8f"
  , "house:6": "https://media.graphcms.com/sLhCYZ3PQ6mLM4290ZBX"
  , "house:7": "https://media.graphcms.com/uQp3vdrSRD2Fvq63g7Vq"
  , "dr:0": "https://media.graphcms.com/Mo3ksomFTU66iMaGKfUs"
  , "dr:1": "https://media.graphcms.com/YtPKi23TgyYOVaw7xg5k"
  , "dr:2": "https://media.graphcms.com/8N2IZac9ROOmUVjywgeS"
  , "dr:3": "https://media.graphcms.com/znc0O16QNOZWDbzc8PFM"
  , "dr:4": "https://media.graphcms.com/YhhSLZ5SqOjuAqk4j8Jh"
  , "dr:5": "https://media.graphcms.com/Z7wOJbO1QDSRzVP2hVDy"
  , "dr:6": "https://media.graphcms.com/DcttPkBQzyDYuHnPlCqu"
  , "dr:7": "https://media.graphcms.com/u26k8wIGSxwvZFm6av6l"
  , "dr:8": "https://media.graphcms.com/aGb0825mSiiIUuSk3Phd"
  , "dr:9": "https://media.graphcms.com/nTzRfo4ZSE2ykyfsL5UU"
  , "dr:10": "https://media.graphcms.com/sqxtmBDeT2iEMsxlECyR"
  , "dr:11": "https://media.graphcms.com/CkjgCWdER0Wpz2szWgLN"
  , "dr:12": "https://media.graphcms.com/7Fu6wgkTx6WVz2EgWjGt"
  , "dr:13": "https://media.graphcms.com/0OYxH2fAR1SI845sYK0X"
  , "dr:14": "https://media.graphcms.com/mDAR3VQ8CVGTe7WdZQiw"
  , "dr:15": "https://media.graphcms.com/bUagIaFBSNOEyKcsSX57"
  , "dr:16": "https://media.graphcms.com/RsXahqn0SCHFIiQf72MS"
  , "dr:17": "https://media.graphcms.com/ZfvVakn6Qqi9BscNsjJP"
  , "dr:18": "https://media.graphcms.com/w70tLu9CQiUk2B7PdxLw"
  , "dr:19": "https://media.graphcms.com/rhZv99VNRLqyiUekCPb4"
  , "dr:20": "https://media.graphcms.com/9nQBybbyS0CTmI0SIqQ5"
  , "dr:21": "https://media.graphcms.com/9ZPWPMFvQVCTtovBXovU"
  , "dr:22": "https://media.graphcms.com/40763hG6TwuN7cbbfyiL"
  , "dr:23": "https://media.graphcms.com/pQ5APsetRUmVVLsdMMZI"
  , "dr:24": "https://media.graphcms.com/ssfrEhokTR2Uyuuj7xJb"
  , "dr:25": "https://media.graphcms.com/WY5KxGjTUOxzBmqmHcHq"
  , "dr:26": "https://media.graphcms.com/jchUulnIRLaZigNYImQB"
  , "dr:27": "https://media.graphcms.com/JSRvSJ5bSYqhDeUfMtm8"
  , "dr:28": "https://media.graphcms.com/G5khFWi1SwqFJ5guQWex"
  , "dr:29": "https://media.graphcms.com/5ySRREF2RVSoNafZc5a9"
  , "dr:30": "https://media.graphcms.com/6QUUD4xeR1K6D5mlZSiS"
  , "dr:31": "https://media.graphcms.com/WRZJM8vRQeCIv2Ok2h2J"
  , "dr:32": "https://media.graphcms.com/OyzUoqaQXKPpXBDypwSg"
  , "dr:33": "https://media.graphcms.com/mhLqPXtlQHCYjqldy9mw"
  , "dr:34": "https://media.graphcms.com/jKPdKSEWRraymDMtET8P"
  , "dr:35": "https://media.graphcms.com/5nnbrCzTSzOLIu0ZA0nG"
  , "dr:36": "https://media.graphcms.com/rl0RmMQQYCN8Cqh1jI44"
  , "dr:37": "https://media.graphcms.com/47XJZkxRRS49itzCEJ3G"
  , "dr:38": "https://media.graphcms.com/zzV5ZlHQNmOw4yGJMlQ1"
  , "dr:39": "https://media.graphcms.com/afceJSTOj5lJTME1kTws"
  , "dr:40": "https://media.graphcms.com/KY1sOjU2RTe7X1D7YNBG"
  , "dr:41": "https://media.graphcms.com/V5KrO5YQmKlYXr47NGdP"
  , "dr55:0": "https://media.graphcms.com/O55QBr3RpiLZTbGmwwud"
  , "dr55:1": "https://media.graphcms.com/wGEWglRTv2DYCfPPiJqw"
  , "dr55:2": "https://media.graphcms.com/xUV3hsYhSqKMOmYzJXwg"
  , "dr55:3": "https://media.graphcms.com/q8gxBFMnTC6FjUtgrmf4"
  , "bass:0": "https://media.graphcms.com/WsOthj2pRX7wt0mRIppb"
  , "bass:1": "https://media.graphcms.com/Als126RKRHG7vICkLlRg"
  , "bass:2": "https://media.graphcms.com/9jMYIRMySWmuw4tPpvAM"
  , "bass:3": "https://media.graphcms.com/82hXL9VmRUrPdSUcWjiG"
  , "ho:0": "https://media.graphcms.com/YyWAl3aMTnuDLNM3FVPk"
  , "ho:1": "https://media.graphcms.com/09a1cRi7TDCsrmART9tz"
  , "ho:2": "https://media.graphcms.com/FlAWgG1WT9q6b03Y7SgY"
  , "ho:3": "https://media.graphcms.com/LRLKe7gcQZuB0A3HlvwM"
  , "ho:4": "https://media.graphcms.com/IENyFOCJQ6m4lZhVoVhm"
  , "ho:5": "https://media.graphcms.com/BaDO0AERm2F63MuNQYy3"
  , "hardkick:0": "https://media.graphcms.com/EZ2wXyZS72fVTzaZC6Vw"
  , "hardkick:1": "https://media.graphcms.com/0LGddHLORlCTsO0DSMM5"
  , "hardkick:2": "https://media.graphcms.com/Ob1pqML2SQGBVcAkZt1T"
  , "hardkick:3": "https://media.graphcms.com/uto6hZu2QT7jSPvo4ZIT"
  , "hardkick:4": "https://media.graphcms.com/8FdeZKTJiAhxiED9Cc8w"
  , "hardkick:5": "https://media.graphcms.com/mPo87TtYRIeNjoWVC0JL"
  , "x_808hc:0": "https://media.graphcms.com/JeWZIBBrS6C2976EcmNt"
  , "x_808hc:1": "https://media.graphcms.com/2yN7QYUiRCyvJHG7s3Wv"
  , "x_808hc:2": "https://media.graphcms.com/efwjgtcjTEq6Ib3hYxTh"
  , "x_808hc:3": "https://media.graphcms.com/cE7LgCUmT4wdCxbe8I7b"
  , "x_808hc:4": "https://media.graphcms.com/oGdU9XiSUy6eeoIWq0Ug"
  , "hit:0": "https://media.graphcms.com/5g154PyVRCyPfwmtFlJD"
  , "hit:1": "https://media.graphcms.com/6LCOtvDRcGZYZZEaISJi"
  , "hit:2": "https://media.graphcms.com/ZSjmSVClThGYgxU1QLVi"
  , "hit:3": "https://media.graphcms.com/uz4xkONVRiaVrdtsvBMm"
  , "hit:4": "https://media.graphcms.com/5iSgzoxQsKbA4mG49DzQ"
  , "hit:5": "https://media.graphcms.com/GvEzu5DfTzGDehKp6av2"
  , "breaks165:0": "https://media.graphcms.com/ajFbc6GHRNvEaPT12izA"
  , "dr2:0": "https://media.graphcms.com/FJKIgxcWQA6fxZV7POdd"
  , "dr2:1": "https://media.graphcms.com/0TJXF1j3Sj6LCfC12Nag"
  , "dr2:2": "https://media.graphcms.com/H8g47ZxBQdK9GVxCmZJ2"
  , "dr2:3": "https://media.graphcms.com/I8seIJrdS7eoHsvMtifg"
  , "dr2:4": "https://media.graphcms.com/XOYTe3RdTuAC0UMLg8iB"
  , "dr2:5": "https://media.graphcms.com/3s4PaQQEQTSorX78pjKJ"
  , "tabla:0": "https://media.graphcms.com/PLea95B2SOC3Sc8JaSQo"
  , "tabla:1": "https://media.graphcms.com/5gtd7shMROWkeUskToOA"
  , "tabla:2": "https://media.graphcms.com/peJaN3q9QbOJ8ECcM98n"
  , "tabla:3": "https://media.graphcms.com/BUREo9MSSIGPbsNhwryg"
  , "tabla:4": "https://media.graphcms.com/g3c57uyjRNi8C9oK1YiE"
  , "tabla:5": "https://media.graphcms.com/z4uY6yeSdyQYrHwjyFAX"
  , "tabla:6": "https://media.graphcms.com/oBfO9kqTSa2LwSm0WbeT"
  , "tabla:7": "https://media.graphcms.com/VqojSVg5Sfu2q0umAr1R"
  , "tabla:8": "https://media.graphcms.com/3ZZumCajQQGeZwzZxefs"
  , "tabla:9": "https://media.graphcms.com/4Cvo88xgSciPWgGP5dp6"
  , "tabla:10": "https://media.graphcms.com/69oqhyOXTbakvpZz9iTI"
  , "tabla:11": "https://media.graphcms.com/OrEofOIVTAmNpmIhCDMo"
  , "tabla:12": "https://media.graphcms.com/CJBS69bQuCuXYf0KTp3A"
  , "tabla:13": "https://media.graphcms.com/oCh7dvRR0qgfwYJXu4AT"
  , "tabla:14": "https://media.graphcms.com/ZgaNKQtbTLeX4th8NR2C"
  , "tabla:15": "https://media.graphcms.com/jEYH9OwrRhmF4wSQ6X8r"
  , "tabla:16": "https://media.graphcms.com/hlmdZzzRDWE4rD727urI"
  , "tabla:17": "https://media.graphcms.com/wN7J7iA3RPy6J6SnpB9a"
  , "tabla:18": "https://media.graphcms.com/ZBUIyd6TC2rwsGdvRlUY"
  , "tabla:19": "https://media.graphcms.com/hEGONPAR9OQt9qNdWL0w"
  , "tabla:20": "https://media.graphcms.com/sivOCJ78TjOhMfujBb6C"
  , "tabla:21": "https://media.graphcms.com/leyXAhy7RkynffjIJHkw"
  , "tabla:22": "https://media.graphcms.com/kKiLM9ZuQ9iDSFmY02W8"
  , "tabla:23": "https://media.graphcms.com/0O9ybRLvQuWX0UNNgohx"
  , "tabla:24": "https://media.graphcms.com/j6hZupRAQ3aY3WqOI44L"
  , "tabla:25": "https://media.graphcms.com/bZTLbq6ZREOKNV2OtyP8"
  , "dork2:0": "https://media.graphcms.com/AVCXKzY1RP2COgK0L8v3"
  , "dork2:1": "https://media.graphcms.com/UNSII5doT1W7TECtdBh3"
  , "dork2:2": "https://media.graphcms.com/IAoC1KeRKCHB2EAJu24w"
  , "dork2:3": "https://media.graphcms.com/fwVy2xSHSYKV5E5MQHqg"
  , "hc:0": "https://media.graphcms.com/wSpNLyy5R6iwsbjdaxeW"
  , "hc:1": "https://media.graphcms.com/BeokRmw6QeorzeluywRW"
  , "hc:2": "https://media.graphcms.com/ajf3Nef7ST2H3nNupZGw"
  , "hc:3": "https://media.graphcms.com/pR7MfZUxR1aN25oDkheP"
  , "hc:4": "https://media.graphcms.com/hH4jceqwSYyspOdKZPhi"
  , "hc:5": "https://media.graphcms.com/3juJK1PnTSKfNgZRROvt"
  , "bassfoo:0": "https://media.graphcms.com/LwgTtf2TtCBhQwr0eZqw"
  , "bassfoo:1": "https://media.graphcms.com/rILhxP9iRGC8Mr1kZkBV"
  , "bassfoo:2": "https://media.graphcms.com/GFcz8Py7QFSmr5fLpOa3"
  , "seawolf:0": "https://media.graphcms.com/dPhgDpA4RBCteF88ZelB"
  , "seawolf:1": "https://media.graphcms.com/gMjx85gCQtKSRDuOTGdn"
  , "seawolf:2": "https://media.graphcms.com/tSBzKDU3SUCBFWyY5en2"
  , "cp:0": "https://media.graphcms.com/Nn2mzOs3RO6mmm4eFO1M"
  , "cp:1": "https://media.graphcms.com/mWV00CbbRVCZHTp45KeS"
  , "jazz:0": "https://media.graphcms.com/ZzEV7vDhQQ2QoipqGNaA"
  , "jazz:1": "https://media.graphcms.com/Onueyc9TIiSdL7k2Kb8A"
  , "jazz:2": "https://media.graphcms.com/4gOcHLAxTQWcNRv1SoLJ"
  , "jazz:3": "https://media.graphcms.com/hMYswOG7SPi94sMZgb1a"
  , "jazz:4": "https://media.graphcms.com/X8NFOdJpRJuDQWFIMH41"
  , "jazz:5": "https://media.graphcms.com/OSklPvejROSCUytqm0X4"
  , "jazz:6": "https://media.graphcms.com/N2A1pa2mQfivpDwIBaku"
  , "jazz:7": "https://media.graphcms.com/QrutyIQsQDiPybl2ZzRl"
  , "juno:0": "https://media.graphcms.com/MLFGu9h7RKeYoBrsmO3Z"
  , "juno:1": "https://media.graphcms.com/9rerycG4RLitjZyIBQn7"
  , "juno:2": "https://media.graphcms.com/HHWS1IaKTLSxuGJyjDI9"
  , "juno:3": "https://media.graphcms.com/86yFUgVxQwiE9PWlOFes"
  , "juno:4": "https://media.graphcms.com/SoxDjWlQ8yKvjJbMxKQo"
  , "juno:5": "https://media.graphcms.com/905lMLZzTLeeJaU35QpH"
  , "juno:6": "https://media.graphcms.com/8DomlZVBRCipHoSTtsg0"
  , "juno:7": "https://media.graphcms.com/TfRboV4gRjetjwwUZXoh"
  , "juno:8": "https://media.graphcms.com/YuraaoGgQKyQMCBmokTK"
  , "juno:9": "https://media.graphcms.com/lk04KpDTcSYDm7IdGE1W"
  , "juno:10": "https://media.graphcms.com/CpoNb3eOSLuuSAcNI9HV"
  , "juno:11": "https://media.graphcms.com/EPiDmoC1RPmMxJKFMqRC"
  , "birds:0": "https://media.graphcms.com/X9xlE2s8RjOHe9RQWmSH"
  , "birds:1": "https://media.graphcms.com/yr5RitqTRfmX1q39PZe4"
  , "birds:2": "https://media.graphcms.com/ivE5wzbgSnOpIzLByQHU"
  , "birds:3": "https://media.graphcms.com/t3rEdidRVQTm8Hhj8uQc"
  , "birds:4": "https://media.graphcms.com/KFcGh3rRuCdCxhgPpuow"
  , "birds:5": "https://media.graphcms.com/E2obFNoiRPWVThB1NZRm"
  , "birds:6": "https://media.graphcms.com/9YMPMhT6KxMF09nuzntw"
  , "birds:7": "https://media.graphcms.com/OILBDCP4SzqwbkCUxpF8"
  , "birds:8": "https://media.graphcms.com/XkQ1avv7RP6QKlVuNrv1"
  , "birds:9": "https://media.graphcms.com/7mvhgNgRMIpTFFC9QUuA"
  , "glasstap:0": "https://media.graphcms.com/vGYtbVnDTgesto1xzPzr"
  , "glasstap:1": "https://media.graphcms.com/lCh2qgcgTdGtaDBoyg16"
  , "glasstap:2": "https://media.graphcms.com/3GbhYVVBQj6fM4OcEGUJ"
  , "bass1:1": "https://media.graphcms.com/gnGOYWTNS7S3OJK8faTk"
  , "bass1:2": "https://media.graphcms.com/MDKiUOCPR4XKb98RmPxw"
  , "bass1:3": "https://media.graphcms.com/U1WGf2vpSVqrgBPYXQDL"
  , "bass1:4": "https://media.graphcms.com/KsFGAf6Taf5pd9GvBryQ"
  , "bass1:5": "https://media.graphcms.com/EnkP0hwOR8m0K2agE2Te"
  , "bass1:6": "https://media.graphcms.com/PYroZxykSMK4EHu4GDtm"
  , "bass1:7": "https://media.graphcms.com/8bUspeVSzuG5TFzkhqyw"
  , "bass1:8": "https://media.graphcms.com/wCh81xUARkeXLAjBIPq3"
  , "bass1:9": "https://media.graphcms.com/wrIuez4GQxK0F0aGD8E8"
  , "bass1:10": "https://media.graphcms.com/sPaKGoI5S7yoTYMyo8Hg"
  , "bass1:11": "https://media.graphcms.com/eHbLfT14SI2S8vjrvvLf"
  , "bass1:12": "https://media.graphcms.com/xEh18sW7TzeirBCyMxc1"
  , "bass1:13": "https://media.graphcms.com/89pKMtrmTRmObCb0p28c"
  , "bass1:14": "https://media.graphcms.com/6hUaHp9SUWLkVqYDa2oA"
  , "bass1:15": "https://media.graphcms.com/LlfOqUGSQkiOsxIrVqH0"
  , "bass1:16": "https://media.graphcms.com/v3arXySXRqYhExwTw8EA"
  , "bass1:17": "https://media.graphcms.com/JKbdPmBjSsG9EeBfJVWH"
  , "bass1:18": "https://media.graphcms.com/hER3ArlSqC5RpX40mUfz"
  , "bass1:19": "https://media.graphcms.com/X0pO7f5iTMWnVUdScjC6"
  , "bass1:20": "https://media.graphcms.com/RR1yCWL7QxKFSEFnIdcj"
  , "bass1:21": "https://media.graphcms.com/4NwU9huoRR6AUS90aYrX"
  , "bass1:22": "https://media.graphcms.com/qTYAWKtdTgqdPkNa0DeO"
  , "bass1:23": "https://media.graphcms.com/uXA967CxSKaNFZ1VLgIg"
  , "bass1:24": "https://media.graphcms.com/WHk5o9P9Tb2gF34BjBaN"
  , "bass1:25": "https://media.graphcms.com/AHr0941ScuLeCsMiIGA3"
  , "bass1:26": "https://media.graphcms.com/AhIVBt1QEaFv0237uycD"
  , "bass1:27": "https://media.graphcms.com/vlLfZoDlSHSOkF0R14I7"
  , "bass1:28": "https://media.graphcms.com/m29tItptRsvlGUWpTuUQ"
  , "bass1:29": "https://media.graphcms.com/Zgv7XcIvQEuTvRQtDdYg"
  , "hh27:0": "https://media.graphcms.com/s0ktUYezTrODiRa6TuJd"
  , "hh27:1": "https://media.graphcms.com/fjL77zXSSZqrUWU7JZYQ"
  , "hh27:2": "https://media.graphcms.com/iIAG1bnTmG19dHkaI82g"
  , "hh27:3": "https://media.graphcms.com/N0twkTfKQF6rAuOo5j7a"
  , "hh27:4": "https://media.graphcms.com/7jjXXqvvSpOzI1uqdY95"
  , "hh27:5": "https://media.graphcms.com/GEw7NuavQYSOB4Mimjt7"
  , "hh27:6": "https://media.graphcms.com/U0Wx2sEASOuk3nFr8kBl"
  , "hh27:7": "https://media.graphcms.com/SEZ3G5KATjmJsfaL5FmE"
  , "hh27:8": "https://media.graphcms.com/ll55L5pqS7K18L4suwAJ"
  , "hh27:9": "https://media.graphcms.com/kKBt5yoYSdKFV1tP35Qn"
  , "hh27:10": "https://media.graphcms.com/h5OlS8dOTiCfyyA3aNXS"
  , "hh27:11": "https://media.graphcms.com/mdJ9TurTt6IOi20OCOFi"
  , "hh27:12": "https://media.graphcms.com/AOm1zgcCQMqU129jjE3r"
  , "notes:0": "https://media.graphcms.com/R7hkyD9DTOK6D2UsKb92"
  , "notes:1": "https://media.graphcms.com/TlkqOrhXQnmT2Fz2be14"
  , "notes:2": "https://media.graphcms.com/jTyRKlYwQMOt1j1Oebn3"
  , "notes:3": "https://media.graphcms.com/YPrWVetQHasqukdUAsIA"
  , "notes:4": "https://media.graphcms.com/RirJEGSKTrm7VJflaSSJ"
  , "notes:5": "https://media.graphcms.com/SBUMaygRpC69JAbm2CjA"
  , "notes:6": "https://media.graphcms.com/YsWMuBjBSxKcpmT8paLq"
  , "notes:7": "https://media.graphcms.com/MndOh6ZySdCJ7e4nTKhF"
  , "notes:8": "https://media.graphcms.com/Ce2hOVVyTQSyvrAPyw5A"
  , "notes:9": "https://media.graphcms.com/kogoJbrYSOeFh0geQGlx"
  , "notes:10": "https://media.graphcms.com/ZOGZ3xTTba853tXg2KQg"
  , "notes:11": "https://media.graphcms.com/afZV0u2SlVhkyYswbugO"
  , "notes:12": "https://media.graphcms.com/7re9RgoQSVSJ81po5BDA"
  , "notes:13": "https://media.graphcms.com/pOdVqoIARB67q9Fn7WCD"
  , "notes:14": "https://media.graphcms.com/KX5RMBf6QrCDIHOXWJRc"
  , "xmas:0": "https://media.graphcms.com/2N8Imo27TmGwbV0Lry91"
  , "erk:0": "https://media.graphcms.com/rjcbvofjSaiWw2XlTzFP"
  , "x_808mt:0": "https://media.graphcms.com/hioljRTqRwqTFrUNyGft"
  , "x_808mt:1": "https://media.graphcms.com/WcpVmGRXTCuW4fTlrIcY"
  , "x_808mt:2": "https://media.graphcms.com/Ux7c0pClRqvaT0jHdPsw"
  , "x_808mt:3": "https://media.graphcms.com/yb4yldoRQlaHo2QigZCM"
  , "x_808mt:4": "https://media.graphcms.com/hLjb4IfSoS6NGJFBwcLm"
  , "lighter:0": "https://media.graphcms.com/4KYsTIcqRcy00vqZnZc9"
  , "lighter:1": "https://media.graphcms.com/Xuk2riBZTtWlAfB2CMLp"
  , "lighter:2": "https://media.graphcms.com/pOA8eZETDynkpfKtUAED"
  , "lighter:3": "https://media.graphcms.com/Hnk8gXR9Qhq7TZg80UzG"
  , "lighter:4": "https://media.graphcms.com/rGbu7h3JTrW1FuJbClus"
  , "lighter:5": "https://media.graphcms.com/jxGeAueJROiypjjKbmGf"
  , "lighter:6": "https://media.graphcms.com/bq4d64cPSOTIgdzeqxOZ"
  , "lighter:7": "https://media.graphcms.com/9O18tU5zRVqOP3ROIO23"
  , "lighter:8": "https://media.graphcms.com/yeo4QgvRBeS704uXWCwq"
  , "lighter:9": "https://media.graphcms.com/gx8o9j00Q2uquhJytmQ5"
  , "lighter:10": "https://media.graphcms.com/RlYV7gQt27El46gkMg72"
  , "lighter:11": "https://media.graphcms.com/fj7KCjBXTJWmFfCsWiwq"
  , "lighter:12": "https://media.graphcms.com/qmN9e61Q6GZbJWy1DhEt"
  , "lighter:13": "https://media.graphcms.com/LnDKmyTgQ9KJopeJbLik"
  , "lighter:14": "https://media.graphcms.com/1S7EMDlvQIC3BZl6QEwg"
  , "lighter:15": "https://media.graphcms.com/4iCGXLfTSSm114GMQ7uD"
  , "lighter:16": "https://media.graphcms.com/6kETWa2uQ2KJGtCLURZs"
  , "lighter:17": "https://media.graphcms.com/VarrEuOBQCadD3WCA2Ng"
  , "lighter:18": "https://media.graphcms.com/D8dapdatSdwr6ivwkZ00"
  , "lighter:19": "https://media.graphcms.com/hMOiSC1aQHGYbEdeXW3x"
  , "lighter:20": "https://media.graphcms.com/uJa3K3ATqEcd1jZ8OidQ"
  , "lighter:21": "https://media.graphcms.com/xdUyRvtQgm1yxO4asW2Q"
  , "lighter:22": "https://media.graphcms.com/AQz9L2ffRmahqcKiDkAp"
  , "lighter:23": "https://media.graphcms.com/KfuzfPHRuiZKYSu7OpzI"
  , "lighter:24": "https://media.graphcms.com/OOsyfedgQPPSMnBzATU8"
  , "lighter:25": "https://media.graphcms.com/j7f91KSoSUkWInzLNuiA"
  , "lighter:26": "https://media.graphcms.com/Arq6hRVQSWffB1516IBr"
  , "lighter:27": "https://media.graphcms.com/Bzd4tO6QLC4YcLa2eO7K"
  , "lighter:28": "https://media.graphcms.com/s51CaXhCT4mevRUdwkQc"
  , "lighter:29": "https://media.graphcms.com/Nyku95xGS2WX7BkkbaEQ"
  , "lighter:30": "https://media.graphcms.com/efAIlTHjR3W7UjxQ5CZF"
  , "lighter:31": "https://media.graphcms.com/zGkXFEHJRcqfi8lSAvLL"
  , "lighter:32": "https://media.graphcms.com/NoNfbdMQKO4KFwymEMGg"
  , "cb:0": "https://media.graphcms.com/ycWQgaxUR2i2AS51B4wu"
  , "subroc3d:0": "https://media.graphcms.com/xxHSnsDFTZ2SHwEQNVhz"
  , "subroc3d:1": "https://media.graphcms.com/uzIi28h5SbWbGDPnIAH1"
  , "subroc3d:2": "https://media.graphcms.com/HEHuYaNERa1dm7K4cWJM"
  , "subroc3d:3": "https://media.graphcms.com/9ga1epK7RQiBHzoT13xw"
  , "subroc3d:4": "https://media.graphcms.com/xgJuRubQ9OJxgCUsxPmw"
  , "subroc3d:5": "https://media.graphcms.com/lxnYzuc1SFW5TvX00E3W"
  , "subroc3d:6": "https://media.graphcms.com/gBQXYy6vSm61B0XM3d6O"
  , "subroc3d:7": "https://media.graphcms.com/nW3Ro6MRwGZwqhNIJIr2"
  , "subroc3d:8": "https://media.graphcms.com/dfhRaZJTS0y0Bs7hYGZL"
  , "subroc3d:9": "https://media.graphcms.com/hDKjoQo6RRSkyZmENSAY"
  , "subroc3d:10": "https://media.graphcms.com/xc8nSbVTqyTdTiFdEfbQ"
  , "ul:0": "https://media.graphcms.com/QnLCtSD4S5a6DkhQyXJG"
  , "ul:1": "https://media.graphcms.com/Xw4ho7gZSqqXNGqR8GHK"
  , "ul:2": "https://media.graphcms.com/wQQNXx0QKuA2i5473cQk"
  , "ul:3": "https://media.graphcms.com/HpopdOzRRy61h0Qk77TG"
  , "ul:4": "https://media.graphcms.com/SmyHYRsuScjUOYDrdWDU"
  , "ul:5": "https://media.graphcms.com/qGsTMtqPQhCbNsyh4q5v"
  , "ul:6": "https://media.graphcms.com/1lbahh57SG2iedMOdIdn"
  , "ul:7": "https://media.graphcms.com/jMtAKvaXTRm8fgtr4PD3"
  , "ul:8": "https://media.graphcms.com/1mWZtDZTDO10QjnXvjCQ"
  , "ul:9": "https://media.graphcms.com/JHlboJq0Q8D5fr4nw7Q1"
  , "gab:0": "https://media.graphcms.com/ekVumPOjSDyoZvdJn6hO"
  , "gab:1": "https://media.graphcms.com/c5BS6Yh9Sb6zbRfFPD2x"
  , "gab:2": "https://media.graphcms.com/MQXecZsZQzWGu5VVvHST"
  , "gab:3": "https://media.graphcms.com/gsQEx7dSWubebq2NBoAA"
  , "gab:4": "https://media.graphcms.com/uLzPuU5yRaqFDiju5vLM"
  , "gab:5": "https://media.graphcms.com/ApjAex9WQkOBn7WonGsH"
  , "gab:6": "https://media.graphcms.com/pKVnc2isSZGQk6a10PI3"
  , "gab:7": "https://media.graphcms.com/XrbDv73rTquyD0YVouSZ"
  , "gab:8": "https://media.graphcms.com/JZ3y2C2ERruPWUFTkTSd"
  , "gab:9": "https://media.graphcms.com/GUa6tmQg6L9anD94lEYg"
  , "monsterb:0": "https://media.graphcms.com/kBkjY4WdSzK00ATNUTjy"
  , "monsterb:1": "https://media.graphcms.com/tlHVxJmqRuuIWTfEs7Yo"
  , "monsterb:2": "https://media.graphcms.com/74fe5lz2RSiUChqEq5sY"
  , "monsterb:3": "https://media.graphcms.com/qGBojpypTicyr9UDnPAN"
  , "monsterb:4": "https://media.graphcms.com/c40xxZQIQkSAU2L9f526"
  , "monsterb:5": "https://media.graphcms.com/MhnOBVLwSRa67poQTkCa"
  , "diphone:0": "https://media.graphcms.com/SwhVyqenSmasIZnK2gYA"
  , "diphone:1": "https://media.graphcms.com/fX7Y1pORR8KoJJWUUxfr"
  , "diphone:2": "https://media.graphcms.com/7TNmUeiQTKuo2nIO4JhJ"
  , "diphone:3": "https://media.graphcms.com/UZPDoDFNQBGl2k1PGPy8"
  , "diphone:4": "https://media.graphcms.com/1v4TnSG5QBCm9N5zUCYu"
  , "diphone:5": "https://media.graphcms.com/s8y9gDfaRmWqhTpcgcQ0"
  , "diphone:6": "https://media.graphcms.com/J0dd1njgRyW1n6L1sKdn"
  , "diphone:7": "https://media.graphcms.com/PUSTUQfWQmaozMF0o7Fp"
  , "diphone:8": "https://media.graphcms.com/SAewi0Sz22wDQTJumLfA"
  , "diphone:9": "https://media.graphcms.com/nysfgXKnSZCLGoHkUEzh"
  , "diphone:10": "https://media.graphcms.com/HuUQYdaSBGRh2sYbU6Ig"
  , "diphone:11": "https://media.graphcms.com/L1ezfVFsTveHr9fi1mxV"
  , "diphone:12": "https://media.graphcms.com/2RS5dh58QnGrFtlNAYQv"
  , "diphone:13": "https://media.graphcms.com/dfGaGyASN2lhlDDek7Cd"
  , "diphone:14": "https://media.graphcms.com/go8mFKzHQoqgJOp287tK"
  , "diphone:15": "https://media.graphcms.com/gNEwAkITQ6RyU6hDTN2w"
  , "diphone:16": "https://media.graphcms.com/iOkVs0GR3ydmfVyaEcsA"
  , "diphone:17": "https://media.graphcms.com/RjaPiCD8Raylskan7pfX"
  , "diphone:18": "https://media.graphcms.com/68MX7wRRjyxqndhw35QW"
  , "diphone:19": "https://media.graphcms.com/A4EeVwdnQYTEhWoLZWf6"
  , "diphone:20": "https://media.graphcms.com/XRoyEmuuQvwNxe4ByWsm"
  , "diphone:21": "https://media.graphcms.com/8sZdKKwSpuKpQaMmzC66"
  , "diphone:22": "https://media.graphcms.com/vTJppUg8QfeNTTY24Vne"
  , "diphone:23": "https://media.graphcms.com/QM59qhz3QseGtUMNNFRh"
  , "diphone:24": "https://media.graphcms.com/r4FYiijOTKK3NgTZgLEt"
  , "diphone:25": "https://media.graphcms.com/OtbqFV1mQ7SOqHcGtQ8N"
  , "diphone:26": "https://media.graphcms.com/LQPzfUbQRvaX999d9RSR"
  , "diphone:27": "https://media.graphcms.com/PLbwk6fRjqmPMlO1ghvx"
  , "diphone:28": "https://media.graphcms.com/Q6z3Q5tiRGK2N3AfXRWG"
  , "diphone:29": "https://media.graphcms.com/KdE2EDAWS56KgzFRopbk"
  , "diphone:30": "https://media.graphcms.com/YorGdALlTNmRVVkSQCaK"
  , "diphone:31": "https://media.graphcms.com/afGNafbfT1eEKeVmP1Bj"
  , "diphone:32": "https://media.graphcms.com/zn6Z0WdYREuS2Pb8x0Xp"
  , "diphone:33": "https://media.graphcms.com/Cl6YJNFRYKP1sz0HLSCm"
  , "diphone:34": "https://media.graphcms.com/sAzFLcNGTTiuRoLuMV4h"
  , "diphone:35": "https://media.graphcms.com/jzDkJ1FrQIqArRsdnU3j"
  , "diphone:36": "https://media.graphcms.com/X8lOo9v7TkO0HL14R6PI"
  , "diphone:37": "https://media.graphcms.com/4DHqs2hRV2BKmyPWf0YP"
  , "clak:0": "https://media.graphcms.com/iffpfXpSXeUGwSuRQLM5"
  , "clak:1": "https://media.graphcms.com/JBry3Y9jTZqbOD0kwKiJ"
  , "sitar:0": "https://media.graphcms.com/FBbjOWoITTGyAFyv4qJp"
  , "sitar:1": "https://media.graphcms.com/yt8wyl12S1KEcAVglAMZ"
  , "sitar:2": "https://media.graphcms.com/hUmvYhSR2hydP77Y4xsQ"
  , "sitar:3": "https://media.graphcms.com/dIAur1XtSLKxi9zsyTIx"
  , "sitar:4": "https://media.graphcms.com/uRRY2KU4TOql0NlVoqyp"
  , "sitar:5": "https://media.graphcms.com/QcFycBIjQUeK1zBUTtR3"
  , "sitar:6": "https://media.graphcms.com/4AKgsrESSXqToCxjObML"
  , "sitar:7": "https://media.graphcms.com/lEI6hk3IRT2nCffVa8BP"
  , "ab:0": "https://media.graphcms.com/GADlTZIREaxjw5hp4z32"
  , "ab:1": "https://media.graphcms.com/oMQk8bfTG2erLSnHek8A"
  , "ab:2": "https://media.graphcms.com/JRKTfpCKTRuGUYe9exUR"
  , "ab:3": "https://media.graphcms.com/jQxW6JepQmu25NMvLVx7"
  , "ab:4": "https://media.graphcms.com/wDVR1X1WTgKBX9USkgv1"
  , "ab:5": "https://media.graphcms.com/22G2hjSHT1uatMSerdZG"
  , "ab:6": "https://media.graphcms.com/s7mL1n4TQ6jvasYPls55"
  , "ab:7": "https://media.graphcms.com/FdAXHCcTeGC1wTxSdurt"
  , "ab:8": "https://media.graphcms.com/QLCmjlCSxyvHwkknwtAV"
  , "ab:9": "https://media.graphcms.com/YzPvpo9jSpmM71IxFyCW"
  , "ab:10": "https://media.graphcms.com/bz00YtRD4TJBre78mMgC"
  , "ab:11": "https://media.graphcms.com/jOCbLVc3RnqHGVBFlLSr"
  , "cr:0": "https://media.graphcms.com/NvVu1YMQvKWLsuQj3u4Q"
  , "cr:1": "https://media.graphcms.com/AUk1uwVOTGGDka4Td8k1"
  , "cr:2": "https://media.graphcms.com/wBkPevITYSDFjDJC24bw"
  , "cr:3": "https://media.graphcms.com/3YV9K3eSS2AAE6AkWQ8g"
  , "cr:4": "https://media.graphcms.com/FIg9aZUGRyG1JtUySsTI"
  , "cr:5": "https://media.graphcms.com/nXL9PeOdRKilO9t0UsTH"
  , "tacscan:0": "https://media.graphcms.com/0pKaDRXQt22HmMitgEnQ"
  , "tacscan:1": "https://media.graphcms.com/wbMTsHNSSe5FgWwNvsJg"
  , "tacscan:2": "https://media.graphcms.com/PAlvGC6QR8C9oZdtcDAr"
  , "tacscan:3": "https://media.graphcms.com/kLVIdR8VR8B1Jz7802bf"
  , "tacscan:4": "https://media.graphcms.com/qzAL9DYcRVeb8NaUAK3L"
  , "tacscan:5": "https://media.graphcms.com/nuyC5KYyQEmC9K3PrekW"
  , "tacscan:6": "https://media.graphcms.com/xJpgtM6xTl2Vkz6bD0b9"
  , "tacscan:7": "https://media.graphcms.com/P6GyCvTMQRiKrXMPJS7M"
  , "tacscan:8": "https://media.graphcms.com/GElQvGXTIMCS3iCIruWQ"
  , "tacscan:9": "https://media.graphcms.com/1GZHhCEGTKdOAi0SHVSt"
  , "tacscan:10": "https://media.graphcms.com/YSw21QrTTQ6d7qK16ksH"
  , "tacscan:11": "https://media.graphcms.com/FvsPsUUdQVaUsP2xGa9I"
  , "tacscan:12": "https://media.graphcms.com/G7RkauzRCyrUA4wY2QKA"
  , "tacscan:13": "https://media.graphcms.com/iEjkziUgRqGhNf6uOxOc"
  , "tacscan:14": "https://media.graphcms.com/nPmHj4RBSeiuDuYTUNCg"
  , "tacscan:15": "https://media.graphcms.com/zSCZVCBRWuP5GYWtkbIj"
  , "tacscan:16": "https://media.graphcms.com/yjzDJDemSJWUJ4GNxBYs"
  , "tacscan:17": "https://media.graphcms.com/4n0iklChRcurWa1Z4Em5"
  , "tacscan:18": "https://media.graphcms.com/LNDXebYS3CzBRhuXsUfd"
  , "tacscan:19": "https://media.graphcms.com/DWMedK2cSDK7W7hKZm9P"
  , "tacscan:20": "https://media.graphcms.com/io5Lkk0FSq6bxRo8V0T2"
  , "tacscan:21": "https://media.graphcms.com/uqRv17YkRVC8V0I7EFJt"
  , "v:0": "https://media.graphcms.com/k7dpvlnTSXSxIClgEXWP"
  , "v:1": "https://media.graphcms.com/Zk4A0GVSHaPoAV6EbrRg"
  , "v:2": "https://media.graphcms.com/zIRV5VYLR8mZpXaEEtKT"
  , "v:3": "https://media.graphcms.com/66q2igNSsi5dTAcf12YC"
  , "v:4": "https://media.graphcms.com/iRjv5bKwRVOXlKyzjU0N"
  , "v:5": "https://media.graphcms.com/UuT7YAgZQDG9bRsFdaIV"
  , "bd:0": "https://media.graphcms.com/K9jDZnMbSEy6UMTDIfgH"
  , "bd:1": "https://media.graphcms.com/6cImEYjSdK0JMEfeLrsw"
  , "bd:2": "https://media.graphcms.com/DFFWUi45Q9o672c5kVDH"
  , "bd:3": "https://media.graphcms.com/0OmddUVGQfO2tKMqlQsY"
  , "bd:4": "https://media.graphcms.com/JF2FahOdRzK8DK8fGkpK"
  , "bd:5": "https://media.graphcms.com/MOnIVxoRRgGGW9ABpNix"
  , "bd:6": "https://media.graphcms.com/h9erpLBtSe66AqV67RSJ"
  , "bd:7": "https://media.graphcms.com/r6IWgRkUSKGUR6YTSK9T"
  , "bd:8": "https://media.graphcms.com/96g0QX9lSmKiWinSBPis"
  , "bd:9": "https://media.graphcms.com/K0jpKeJRECc4ffFxwJAt"
  , "bd:10": "https://media.graphcms.com/CQRiAawR8yRiC2PCXWyx"
  , "bd:11": "https://media.graphcms.com/SNKzHYQSCisZoqW0VAMk"
  , "bd:12": "https://media.graphcms.com/XxDeTSS9SKWY6zUwQxtA"
  , "bd:13": "https://media.graphcms.com/OYRD3VQTbKdFIZ0aKrzc"
  , "bd:14": "https://media.graphcms.com/TklAYIJERiSDteSaZUj4"
  , "bd:15": "https://media.graphcms.com/dt2g9hAMRn658wH6ZOHu"
  , "bd:16": "https://media.graphcms.com/5Gv8ESrTT2GPo1de3whj"
  , "bd:17": "https://media.graphcms.com/LxcmdDb7RPGgwKlLVvj3"
  , "bd:18": "https://media.graphcms.com/N4ffNS1QqKtpLIu6c8G1"
  , "bd:19": "https://media.graphcms.com/hvFB5eBkReqtn7CcYZ3O"
  , "bd:20": "https://media.graphcms.com/cBbDgdEERfukytafpaWR"
  , "bd:21": "https://media.graphcms.com/vbPCTIeITKumpfuJ6ZG6"
  , "bd:22": "https://media.graphcms.com/NzFxKsgQTneSbUfIqVWg"
  , "bd:23": "https://media.graphcms.com/p5LqfTktS2OQyCjL1u8Z"
  , "rm:0": "https://media.graphcms.com/6BeFKBVSS1OAlyo1R1M8"
  , "rm:1": "https://media.graphcms.com/CIIAaFhSTN2MACBbmHB5"
  , "blue:0": "https://media.graphcms.com/iZ2BSSSR6OulscQEbOdg"
  , "blue:1": "https://media.graphcms.com/dVpavx8fTLFijIJuTeqw"
  , "latibro:0": "https://media.graphcms.com/aHwJULITli4i5X0lgXvA"
  , "latibro:1": "https://media.graphcms.com/m8mfBcvgTc2GGjzo0wnD"
  , "latibro:2": "https://media.graphcms.com/O1bQpzES76NsEvzAw79X"
  , "latibro:3": "https://media.graphcms.com/waMQSTVPQIWnITn8knjv"
  , "latibro:4": "https://media.graphcms.com/tynfXH6AQq20qLOdlwtY"
  , "latibro:5": "https://media.graphcms.com/wzz4d1evSp2BKyYKQrXx"
  , "latibro:6": "https://media.graphcms.com/UBf9iKpVThCpdZH35zl5"
  , "latibro:7": "https://media.graphcms.com/pEiHR7hBR9Oxsgz05OSh"
  , "dr_few:0": "https://media.graphcms.com/UKdeB7pFSQawJpMP9zHR"
  , "dr_few:1": "https://media.graphcms.com/nCoebJi1QRSu5LKZIrho"
  , "dr_few:2": "https://media.graphcms.com/BpjYbRGATuGY9145Gtci"
  , "dr_few:3": "https://media.graphcms.com/MRksnSRQOkqDA2GciP4w"
  , "dr_few:4": "https://media.graphcms.com/S2UzxJgISbmcDJPCpK7v"
  , "dr_few:5": "https://media.graphcms.com/7EwZW9q9RdWrntS5jR4G"
  , "dr_few:6": "https://media.graphcms.com/j25OIBpvSaGzz7IbgmAr"
  , "dr_few:7": "https://media.graphcms.com/QWXfCpBiSwmcH4inBDay"
  , "rave2:0": "https://media.graphcms.com/vPvn5s0Tva6bxbpQP0VA"
  , "rave2:1": "https://media.graphcms.com/H7fsKADQRVu47Oj2R6mB"
  , "rave2:2": "https://media.graphcms.com/Q25RcbYaT8WnJnmbm9cf"
  , "rave2:3": "https://media.graphcms.com/3rgaUBllRk6G63O03tTx"
  , "rave2:4": "https://media.graphcms.com/9AJL8CQITF2ufDbGHMBd"
  , "rave2:5": "https://media.graphcms.com/JZjpBmQpQLmE2ZiWBFUn"
  , "koy:0": "https://media.graphcms.com/VfTLQU4ESLyd0O4bUUS1"
  , "koy:1": "https://media.graphcms.com/lsbuz3dkS9uIZFWQRzFq"
  , "glitch2:0": "https://media.graphcms.com/6U7rwo6YSjC0cR2Ij3yS"
  , "glitch2:1": "https://media.graphcms.com/eRFO6zTQBOx0fRZsQNgI"
  , "glitch2:2": "https://media.graphcms.com/I575TxRq2pqRpYpBML7g"
  , "glitch2:3": "https://media.graphcms.com/plpZuQFtSsaXhlcJK7nJ"
  , "glitch2:4": "https://media.graphcms.com/htsDCxL0RHSiShn6LnG6"
  , "glitch2:5": "https://media.graphcms.com/s54vNLUfS6ymbP3zudNl"
  , "glitch2:6": "https://media.graphcms.com/ciUw1qE9SKixUOXOOEj4"
  , "glitch2:7": "https://media.graphcms.com/4elMo0zhS3SopxjJAxwV"
  , "hmm:0": "https://media.graphcms.com/k3eYJhTPRXyowSKeEz40"
  , "arp:0": "https://media.graphcms.com/i2B20WXT7quS4oUTpZxL"
  , "arp:1": "https://media.graphcms.com/k6Rw6iwQbud1jMvbiaLK"
  , "made2:0": "https://media.graphcms.com/VoOOziC5QpmOubvJNwkE"
  , "uxay:0": "https://media.graphcms.com/GYmDLHi9Rjuvb9WrF5kv"
  , "uxay:1": "https://media.graphcms.com/qM9CH4oYR7ibNLoNVmqy"
  , "uxay:2": "https://media.graphcms.com/H9a7rwtUQGA8iTgDm0HQ"
  , "stomp:0": "https://media.graphcms.com/qJKha7duQxG7vtmpVpe1"
  , "stomp:1": "https://media.graphcms.com/7PJzB52LRhegSUTeMSKc"
  , "stomp:2": "https://media.graphcms.com/P3BK8d9eRIa2nI4c1Okv"
  , "stomp:3": "https://media.graphcms.com/rDk7DeHTaWa2jGbIFNGg"
  , "stomp:4": "https://media.graphcms.com/uXAjVNkSuP094mzka78A"
  , "stomp:5": "https://media.graphcms.com/Ra3yO5ZVQZa5KmveY6hs"
  , "stomp:6": "https://media.graphcms.com/wCyRnn1bQYWZtPULWzOP"
  , "stomp:7": "https://media.graphcms.com/2kJEXWTAR2eZ3YhbNqSs"
  , "stomp:8": "https://media.graphcms.com/LugJJFuKQUyJ5s89ItjD"
  , "stomp:9": "https://media.graphcms.com/WgaaQv33TGmcfgqK3YDF"
  , "tech:0": "https://media.graphcms.com/axbGjr8MTIehnA1ddwX4"
  , "tech:1": "https://media.graphcms.com/4Kmowt2uQlSZrWSmYTYV"
  , "tech:2": "https://media.graphcms.com/N4OySXAjQRWePTFnc2cU"
  , "tech:3": "https://media.graphcms.com/zj5AJudRDKXZEzlE2pML"
  , "tech:4": "https://media.graphcms.com/HdZrYUmyQNa0ry0DBB7N"
  , "tech:5": "https://media.graphcms.com/h1UdUpeQYKyPAbFaEHNA"
  , "tech:6": "https://media.graphcms.com/5JuporAyS4yuY2puiFlB"
  , "tech:7": "https://media.graphcms.com/CJJPa1QJW0OwfoW7A5WQ"
  , "tech:8": "https://media.graphcms.com/r5qspPixT3mC9s8OdUDT"
  , "tech:9": "https://media.graphcms.com/tp74pG3uTVqKrWHmRYa9"
  , "tech:10": "https://media.graphcms.com/K5i3EsQnQW6vXAJjU6a3"
  , "tech:11": "https://media.graphcms.com/1Ut8LyP7Rq2OYB51YOGQ"
  , "tech:12": "https://media.graphcms.com/xOooXVIQH4rh1zVjYBJA"
  , "sn:0": "https://media.graphcms.com/1e6kdDBSBKJPXZ4H3uwS"
  , "sn:1": "https://media.graphcms.com/gjDYEJkBQXM6fjzdqyuX"
  , "sn:2": "https://media.graphcms.com/Fmeeao0XQkWa39fz38rP"
  , "sn:3": "https://media.graphcms.com/6LgCoWVVSDK2xHLyll4F"
  , "sn:4": "https://media.graphcms.com/t0WjuGPnQsSIhSgvxivE"
  , "sn:5": "https://media.graphcms.com/ml8vuuw4Rn3pVvj2b57C"
  , "sn:6": "https://media.graphcms.com/CuqovrwTOKwJKqKQ1k4y"
  , "sn:7": "https://media.graphcms.com/sqoiZHURKSx84nEotjT5"
  , "sn:8": "https://media.graphcms.com/F2oEEObgRByzKJ4Zn6vM"
  , "sn:9": "https://media.graphcms.com/yqacqv9RtqYw0RLCG2Ig"
  , "sn:10": "https://media.graphcms.com/rJ5vJJXR72gFBX3XJTeV"
  , "sn:11": "https://media.graphcms.com/BwHnRUgATuu4y464HJt0"
  , "sn:12": "https://media.graphcms.com/7aDZRfdQqSNShWWb6aL6"
  , "sn:13": "https://media.graphcms.com/6ZA8ZkhIT6WtEptqX1eO"
  , "sn:14": "https://media.graphcms.com/Yhbk6Q5KTziJUvhrLKwL"
  , "sn:15": "https://media.graphcms.com/kqlZXaYKS4O9cexswN4m"
  , "sn:16": "https://media.graphcms.com/HRJzo40TTCQyymQgcI0Q"
  , "sn:17": "https://media.graphcms.com/nG2aaOa8S5K5CkKUiv3G"
  , "sn:18": "https://media.graphcms.com/SvZP8YjQHln2pFbQbjwj"
  , "sn:19": "https://media.graphcms.com/8SqI4vqKTPe9uRXbdsdB"
  , "sn:20": "https://media.graphcms.com/AdjzSDQTbmB9acsAx2X6"
  , "sn:21": "https://media.graphcms.com/H1E1hkJSQ0Tgv85n3w18"
  , "sn:22": "https://media.graphcms.com/sqzBQPlbScOl4fZFVxMb"
  , "sn:23": "https://media.graphcms.com/ooUsffEMRH68XSffhRiG"
  , "sn:24": "https://media.graphcms.com/PFIwkb1XTnSoGYOUdai1"
  , "sn:25": "https://media.graphcms.com/1t1oo9RTdCRTCHI4WzxX"
  , "sn:26": "https://media.graphcms.com/8seLXUokScO83rN6LGBA"
  , "sn:27": "https://media.graphcms.com/CgomYnBLQXa4PzTaa6cj"
  , "sn:28": "https://media.graphcms.com/pDQ2rF79RzKQ0N5VldHP"
  , "sn:29": "https://media.graphcms.com/sABGLYK2SOm6hBQc5XIg"
  , "sn:30": "https://media.graphcms.com/WndU1acuTWy6JehOndo3"
  , "sn:31": "https://media.graphcms.com/K7pJv15iTFOk9gAdb02p"
  , "sn:32": "https://media.graphcms.com/fTOS3DyVRymKJWfETTjK"
  , "sn:33": "https://media.graphcms.com/ubcmuiCMSt6Wq58o8bxw"
  , "sn:34": "https://media.graphcms.com/idkBuPM6TBqME8NUL0Qu"
  , "sn:35": "https://media.graphcms.com/MMX80FsoRBCAdq4yKRCr"
  , "sn:36": "https://media.graphcms.com/F0J0ymsyRUW1Xbem2xrb"
  , "sn:37": "https://media.graphcms.com/q9ElbTNOQ9OcwasA1ivE"
  , "sn:38": "https://media.graphcms.com/Atpm4t2PRvyTOJPixEqX"
  , "sn:39": "https://media.graphcms.com/6UbX7wwTeicKKIxD8YHv"
  , "sn:40": "https://media.graphcms.com/yszXlHBQQKCS8RCFDyf4"
  , "sn:41": "https://media.graphcms.com/3aYLVl41RmqeO3CFpfPx"
  , "sn:42": "https://media.graphcms.com/6PpTV0SSsKDC38f10Veq"
  , "sn:43": "https://media.graphcms.com/pTtoW0IjQZOECLmUAykE"
  , "sn:44": "https://media.graphcms.com/eB1FKTjTCS67rWmdrhBQ"
  , "sn:45": "https://media.graphcms.com/BrmI2VH8QFKOQDk1Cga5"
  , "sn:46": "https://media.graphcms.com/pFmKzKckRtCZL1NmwNB4"
  , "sn:47": "https://media.graphcms.com/9xrGZLGTXu2U41OmpyxZ"
  , "sn:48": "https://media.graphcms.com/9hx5rBdYSSy7SCB8kF27"
  , "sn:49": "https://media.graphcms.com/hPUfbNYXSAYLfZ4N9fAw"
  , "sn:50": "https://media.graphcms.com/M8QBH3gS1mvxDHdDwPzE"
  , "sn:51": "https://media.graphcms.com/Uk0nqhi4SpbPcVF6Sqpn"
  , "less:0": "https://media.graphcms.com/EP7Ybt3RReTvaAL38vK4"
  , "less:1": "https://media.graphcms.com/0pSGENsxQ80MhO4TAbAg"
  , "less:2": "https://media.graphcms.com/VgmBpZdrQhqMSpJyiKUg"
  , "less:3": "https://media.graphcms.com/Zl9Q47jrTwGcheGp9xvZ"
  , "off:0": "https://media.graphcms.com/dJITfZXlQHCrIdCht0jG"
  , "x_808sd:0": "https://media.graphcms.com/bFAGJzESRwSoebC4LCk6"
  , "x_808sd:1": "https://media.graphcms.com/2gqZL7RHRLmpu6OUfyJy"
  , "x_808sd:2": "https://media.graphcms.com/EbZNCTnrQwGIgtFaS5IZ"
  , "x_808sd:3": "https://media.graphcms.com/GRYSYbPnQAy5PBREUmx7"
  , "x_808sd:4": "https://media.graphcms.com/PxivjrSF7cFtS5d8WwQ6"
  , "x_808sd:5": "https://media.graphcms.com/p2O7PVsSLqHRlJADmz4i"
  , "x_808sd:6": "https://media.graphcms.com/9MJbGXbTvCiFleVTZ0j4"
  , "x_808sd:7": "https://media.graphcms.com/4KPuB3pDS6eSyOKXQ37G"
  , "x_808sd:8": "https://media.graphcms.com/9GWqMReUTwqbB1HXep8m"
  , "x_808sd:9": "https://media.graphcms.com/ezwAYX2OQfqSGoL8iyDT"
  , "x_808sd:10": "https://media.graphcms.com/5zPTEUSSgyGZyMgkCX4s"
  , "x_808sd:11": "https://media.graphcms.com/1O0yjP7mRWqNlsoPv0xJ"
  , "x_808sd:12": "https://media.graphcms.com/51zIYBnMRbWDJeq4HFgx"
  , "x_808sd:13": "https://media.graphcms.com/cB5NtUjMSxaHhSrGygQW"
  , "x_808sd:14": "https://media.graphcms.com/SLSGyrcWTrqYOFBIvJQc"
  , "x_808sd:15": "https://media.graphcms.com/2DZMKjPPR0KMU2nk2XPI"
  , "x_808sd:16": "https://media.graphcms.com/fRTMcFsrS2i5xanijcGx"
  , "x_808sd:17": "https://media.graphcms.com/5jKldaH2TVCzrGYTpJ6i"
  , "x_808sd:18": "https://media.graphcms.com/8vOuq4UKRVSW2ihMvU9V"
  , "x_808sd:19": "https://media.graphcms.com/cuf11M8TRYpc3mGLM3d4"
  , "x_808sd:20": "https://media.graphcms.com/deJduDJeQLiHv0mdP5pU"
  , "x_808sd:21": "https://media.graphcms.com/o15tdd88TLiFzkjjnPdq"
  , "x_808sd:22": "https://media.graphcms.com/lY2S56RKRrKyFRRg8DlN"
  , "x_808sd:23": "https://media.graphcms.com/9fqKRE7TTmCMWZpZWK1o"
  , "x_808sd:24": "https://media.graphcms.com/pqGOyZcuQbeihAyZ3mzV"
  , "trump:0": "https://media.graphcms.com/uEHpWlkR3uR5FZ06wDf5"
  , "trump:1": "https://media.graphcms.com/TkgRbug3Rsuzbb8Mh8wl"
  , "trump:2": "https://media.graphcms.com/ZconpPNRAiSLhDhrLceO"
  , "trump:3": "https://media.graphcms.com/wrbeLhTBVWvhlvStIpg9"
  , "trump:4": "https://media.graphcms.com/NdCD4gCyRAqpW9phbRQ7"
  , "trump:5": "https://media.graphcms.com/aM1Y2H7NRzKh8fdnnlus"
  , "trump:6": "https://media.graphcms.com/GFe5EFOGRhqydmamxhCg"
  , "trump:7": "https://media.graphcms.com/nSkrl9lQHu7x5bwXnV8G"
  , "trump:8": "https://media.graphcms.com/ibvdUjuQge1wihucjscR"
  , "trump:9": "https://media.graphcms.com/doJfKC0gSC5y6lwEU9EQ"
  , "trump:10": "https://media.graphcms.com/z2dpT3xSBiYVHfGMcs3k"
  , "bev:0": "https://media.graphcms.com/YFsvxUdTJOyD80wgJIGa"
  , "bev:1": "https://media.graphcms.com/hlsIemD9SaaMHrMBnZbQ"
  , "pad:0": "https://media.graphcms.com/Qz3GztfUTQGgzQhAKukq"
  , "pad:1": "https://media.graphcms.com/OkTmPF3LTii3wp5U3JEm"
  , "pad:2": "https://media.graphcms.com/f2gVkzKXQ8KOSFLZ8OkC"
  , "led:0": "https://media.graphcms.com/qcZmZhHTTUay095Qqg9w"
  , "perc:0": "https://media.graphcms.com/PnfrJ0vRMWRezWpOIp0L"
  , "perc:1": "https://media.graphcms.com/FmEINzC7QayDxkPAvmau"
  , "perc:2": "https://media.graphcms.com/13OXyqRqT6WCrqzb0SFD"
  , "perc:3": "https://media.graphcms.com/OyUIaDhGQofI0k8VE8Qn"
  , "perc:4": "https://media.graphcms.com/sw4SxXxfQcmptkZ21TMx"
  , "perc:5": "https://media.graphcms.com/nkNuKs3wRZCTuC3juuZa"
  , "pluck:1": "https://media.graphcms.com/nyF95rbVSDKdcRm1yyOg"
  , "pluck:2": "https://media.graphcms.com/zXnDIPNzSyin6DuO3ekc"
  , "pluck:3": "https://media.graphcms.com/eiN1gbFRR63aTH2q69zd"
  , "pluck:4": "https://media.graphcms.com/lCAEM9u2RUGXnZNNWC7T"
  , "pluck:5": "https://media.graphcms.com/m3wdEUCRJy2IKnQXGUOg"
  , "pluck:7": "https://media.graphcms.com/JzIcJFPwTUmGco6LlbFh"
  , "pluck:8": "https://media.graphcms.com/mT0xASBSR0K68IbvXtkD"
  , "pluck:9": "https://media.graphcms.com/Nj8XRMGmSUqkpVrS70nj"
  , "pluck:10": "https://media.graphcms.com/BCFiGakwRQeiKzOZREh2"
  , "pluck:11": "https://media.graphcms.com/xNQqzGYQW3hwOIHTwTGg"
  , "pluck:12": "https://media.graphcms.com/tm2ctobDQCW3mEi7JP47"
  , "pluck:14": "https://media.graphcms.com/wGe9FEQhSzCv5v8Z4M5L"
  , "pluck:15": "https://media.graphcms.com/dvXyScHbRX6dwqeRVll7"
  , "pluck:16": "https://media.graphcms.com/vrtqA42pT6mDpyVHAlGJ"
  , "bleep:0": "https://media.graphcms.com/HQN2IxJiRGSo2BM44b6D"
  , "bleep:1": "https://media.graphcms.com/uWRaPiOeTCWx0hQxdJAV"
  , "bleep:2": "https://media.graphcms.com/BOAfUPJCTE2ehNQr1KFr"
  , "bleep:3": "https://media.graphcms.com/VliE3WspQOy5i6wRBRUo"
  , "bleep:4": "https://media.graphcms.com/ZN0CsmoiQtKIsERmMqRG"
  , "bleep:5": "https://media.graphcms.com/08v1hLiSvCRYuD8ofIAB"
  , "bleep:6": "https://media.graphcms.com/QPGPDWBRcePlOttWvFiV"
  , "bleep:7": "https://media.graphcms.com/RrTNHFgSJufAMTZMCKeg"
  , "bleep:8": "https://media.graphcms.com/XLBoDU66QAGIVDVzdSNP"
  , "bleep:9": "https://media.graphcms.com/SxEbaTVaQpWd54nfIGbj"
  , "bleep:10": "https://media.graphcms.com/jeIJPH3QTiWeXBrpeCMs"
  , "bleep:11": "https://media.graphcms.com/mC31jj9QG6ylGLY8vomU"
  , "bleep:12": "https://media.graphcms.com/ZkBNAFDuTWwp6B83kiug"
  , "ht:0": "https://media.graphcms.com/1OIvrYQKSCGtX3W1PpAS"
  , "ht:1": "https://media.graphcms.com/ytw1adDnQfiKTeeA1l1K"
  , "ht:2": "https://media.graphcms.com/EY9nNBjJRqGdlQfDJpaP"
  , "ht:3": "https://media.graphcms.com/erQ3KTjBQUaKfIRALb8o"
  , "ht:4": "https://media.graphcms.com/puKz8RKZS8CnZFlZleXu"
  , "ht:5": "https://media.graphcms.com/hJq9a18Rtm22mFwUsHEU"
  , "ht:6": "https://media.graphcms.com/I3gha2lZQeGVzk8Tbv0E"
  , "ht:7": "https://media.graphcms.com/D9lcFjxTiyslJ6cdjFMm"
  , "ht:8": "https://media.graphcms.com/GmCpLDMSRiO5PSUuARW8"
  , "ht:9": "https://media.graphcms.com/6g652bh5RlmFIPUrFzV7"
  , "ht:10": "https://media.graphcms.com/SrZ0omEAT6aFl2AO2SLM"
  , "ht:11": "https://media.graphcms.com/CUKEh2kITOadORnQAD1u"
  , "ht:12": "https://media.graphcms.com/IrVY2EJTDa3wZcqzEIIQ"
  , "ht:13": "https://media.graphcms.com/GAxaFFc4QaefQJInzyq0"
  , "ht:14": "https://media.graphcms.com/Z0adX1faRn9fT5tRQtxH"
  , "ht:15": "https://media.graphcms.com/4lune0t6S0qQ40TBvZbV"
  , "ades4:0": "https://media.graphcms.com/i7laTlGuSqAfTTFNNkm0"
  , "ades4:1": "https://media.graphcms.com/LWKjbz1SkG4gKkoAB6fA"
  , "ades4:2": "https://media.graphcms.com/6LHpu0aySS2QideGJwUi"
  , "ades4:3": "https://media.graphcms.com/EQ4iKNlVQpuj6IVFRgWz"
  , "ades4:4": "https://media.graphcms.com/FhsyXgHpQsmpPsFNiWj0"
  , "ades4:5": "https://media.graphcms.com/2NZGqoX2RZid4JMQNNsI"
  , "proc:0": "https://media.graphcms.com/ZX4NC0ZvQwCv8VUyFoqk"
  , "proc:1": "https://media.graphcms.com/8khC8FSQFaKQtNpMDMoC"
  , "gretsch:0": "https://media.graphcms.com/YwaYjD4AR328XxnUV7qb"
  , "gretsch:1": "https://media.graphcms.com/xIu7Ef19Rzii9x1ZPNax"
  , "gretsch:2": "https://media.graphcms.com/iHnMyUPXSHS2ChkhQjh8"
  , "gretsch:3": "https://media.graphcms.com/etYibHBuTAGHCzTtkRSw"
  , "gretsch:4": "https://media.graphcms.com/b1kng78vSqWNjPlf3Cir"
  , "gretsch:5": "https://media.graphcms.com/AgKWrSlQE2Dt4qyZnzlw"
  , "gretsch:6": "https://media.graphcms.com/q2fp7x4DTdKymaiOtQur"
  , "gretsch:7": "https://media.graphcms.com/xNXjZWIeRI6o1r3JhRt0"
  , "gretsch:8": "https://media.graphcms.com/MEZW5zw0TDmZBRdpgK3d"
  , "gretsch:9": "https://media.graphcms.com/ch4dOS8jQtWbeo3t0Kj9"
  , "gretsch:10": "https://media.graphcms.com/9dkPCquwQLuYN26X3NRH"
  , "gretsch:11": "https://media.graphcms.com/moIstbhmRdqWnJ1BlrBK"
  , "gretsch:12": "https://media.graphcms.com/rATc1kNRvOcLg3bpOBmA"
  , "gretsch:13": "https://media.graphcms.com/OEeIorTTaxTKcPofJDLA"
  , "gretsch:14": "https://media.graphcms.com/cCBQ23h7SfW06m6z5s4i"
  , "gretsch:15": "https://media.graphcms.com/hfdVdAvtQO6Th2lLG51Y"
  , "gretsch:16": "https://media.graphcms.com/U0QLg6THTn7yMcMHKVGt"
  , "gretsch:17": "https://media.graphcms.com/RUJOJnN1QyWwGLy5licm"
  , "gretsch:18": "https://media.graphcms.com/XhM0muCgSsayYxyZIjIO"
  , "gretsch:19": "https://media.graphcms.com/i0qu1VkOQhel8OzbOxgc"
  , "gretsch:20": "https://media.graphcms.com/2ElYlCMRmaMwAbjOG6SQ"
  , "gretsch:21": "https://media.graphcms.com/4Ipz11MeTwmNgGyBwA1g"
  , "gretsch:22": "https://media.graphcms.com/i6Cum2pZTNKvN3XEx47L"
  , "gretsch:23": "https://media.graphcms.com/lMrSLwMTruy2xqeigXLD"
  , "outdoor:0": "https://media.graphcms.com/YffFO5wbQWWjtEvSvqrr"
  , "outdoor:1": "https://media.graphcms.com/NUWCLdpSyOYix7RM7K9z"
  , "outdoor:2": "https://media.graphcms.com/4Mm5vwI0Qyj9Qfnx2LHg"
  , "outdoor:3": "https://media.graphcms.com/ywaK7rXGT4SxHs9zV5vO"
  , "outdoor:4": "https://media.graphcms.com/uNkJfoW1RcaaMuRRoWQu"
  , "outdoor:5": "https://media.graphcms.com/AoIMxZ99SVmaoP5fne6u"
  , "techno:0": "https://media.graphcms.com/34A7fgDNQxyAMe1fQnzv"
  , "techno:1": "https://media.graphcms.com/JV0Nw5dATAi2YnSq2JCV"
  , "techno:2": "https://media.graphcms.com/0WU8qe2zRfWzxvR4QELg"
  , "techno:3": "https://media.graphcms.com/JqG4TPXxRbeVjVY4LUyV"
  , "techno:4": "https://media.graphcms.com/KQdnM0zT6gyFD45BdOoA"
  , "techno:5": "https://media.graphcms.com/vLIhR4RqeO9T9F9COhdw"
  , "techno:6": "https://media.graphcms.com/hZMe9kEDTl6w1fgY2RE8"
  , "ulgab:0": "https://media.graphcms.com/NsgeRuaRSaGA6m9Px5Is"
  , "ulgab:1": "https://media.graphcms.com/iEstrgcITneHnWAtNY1I"
  , "ulgab:2": "https://media.graphcms.com/KC27HTrNT8iPLq3pR93J"
  , "ulgab:3": "https://media.graphcms.com/hUW5sw4QFeOe8gKYt9cG"
  , "ulgab:4": "https://media.graphcms.com/YF51nKJSReU5negV6Xkg"
  , "breaks125:0": "https://media.graphcms.com/w9b8xoWXR42aL6LGcRum"
  , "breaks125:1": "https://media.graphcms.com/O8V1688rTc6rzvitRFNA"
  , "bin:0": "https://media.graphcms.com/B4689oQ3Skal48STH3JH"
  , "bin:1": "https://media.graphcms.com/Jfc4kUX8TJSLJUkagov6"
  , "x_808mc:0": "https://media.graphcms.com/PgP3Ffd9TAGhXCvqDqEe"
  , "x_808mc:1": "https://media.graphcms.com/4XUb9tsEQq6aFQVOREk7"
  , "x_808mc:2": "https://media.graphcms.com/iUnFnJfhRG2QtqCXzkq5"
  , "x_808mc:3": "https://media.graphcms.com/IG4gKUQPGOyxMPVMU9eQ"
  , "x_808mc:4": "https://media.graphcms.com/PXYjbz8ATNCARx6bJ4aZ"
  , "lt:0": "https://media.graphcms.com/8nHu4uC3QAuFjvSebauK"
  , "lt:1": "https://media.graphcms.com/Z51pc1pTYCFRvc8NBuuM"
  , "lt:2": "https://media.graphcms.com/S6xVYSJjQ0Kk6y4lKP5C"
  , "lt:3": "https://media.graphcms.com/EG6FrG4DS2akCB1POL6I"
  , "lt:4": "https://media.graphcms.com/xEKhq7VOTKSZ4MAS71un"
  , "lt:5": "https://media.graphcms.com/GTutywCNRqCgTn2ykONv"
  , "lt:6": "https://media.graphcms.com/SZBH0ytwSRWTNOAfINFw"
  , "lt:7": "https://media.graphcms.com/ACvHek48T3C4tPUatPA0"
  , "lt:8": "https://media.graphcms.com/tP95GhcRbaXhRt7XmN4m"
  , "lt:9": "https://media.graphcms.com/2ErSYBIuQ5Owg5Vd2Qhv"
  , "lt:10": "https://media.graphcms.com/Nay5rQQWRQePKk77TRwc"
  , "lt:11": "https://media.graphcms.com/o5XuI9GlQyOOAL2sLQQJ"
  , "lt:12": "https://media.graphcms.com/tJNVfRATPeD3chxxdOft"
  , "lt:13": "https://media.graphcms.com/0htV5lMvTU22kMlKLTug"
  , "lt:14": "https://media.graphcms.com/EahixybkSMak9WAQ3UqW"
  , "lt:15": "https://media.graphcms.com/tRShh9ATQS5FTGYfKsRQ"
  , "amencutup:0": "https://media.graphcms.com/yxHXJ76MSzxozopVb8X8"
  , "amencutup:1": "https://media.graphcms.com/8F0gUJQoSji94eA94WSC"
  , "amencutup:2": "https://media.graphcms.com/zB7hzlEQhqfN08IBGxtO"
  , "amencutup:3": "https://media.graphcms.com/6zjAMB7lRfO10V5Mz2uN"
  , "amencutup:4": "https://media.graphcms.com/4GNqf43MTRC8hJv4LVU9"
  , "amencutup:5": "https://media.graphcms.com/UmhMpK2SbqWZmUdj48Rg"
  , "amencutup:6": "https://media.graphcms.com/X89tgQQ5TjyjDjAAudth"
  , "amencutup:7": "https://media.graphcms.com/QkKQCa0vQvu6fE474Af9"
  , "amencutup:8": "https://media.graphcms.com/rUVkQzcTyKzfUAUHobIY"
  , "amencutup:9": "https://media.graphcms.com/Y76muZdWQZutttFAJPE0"
  , "amencutup:10": "https://media.graphcms.com/00NIZObjSWm6h8EPIh3F"
  , "amencutup:11": "https://media.graphcms.com/fvGdyrtRX2pTUEL6McM4"
  , "amencutup:12": "https://media.graphcms.com/arReqDffSeC5fsGeEeyg"
  , "amencutup:13": "https://media.graphcms.com/TYeSxIvcQ3yXz3YvVAqL"
  , "amencutup:14": "https://media.graphcms.com/Tr5l2YFSPya03AtPB0MQ"
  , "amencutup:15": "https://media.graphcms.com/TZrcrNi6THOGkcMXr1hI"
  , "amencutup:16": "https://media.graphcms.com/qS1orqDdQUytF8uLMrB8"
  , "amencutup:17": "https://media.graphcms.com/UceszPK4RumC9pbMOtoE"
  , "amencutup:18": "https://media.graphcms.com/4zd4btBGTBe3lx1zwfRg"
  , "amencutup:19": "https://media.graphcms.com/XpwEuYuaSReWxyMHh8Oq"
  , "amencutup:20": "https://media.graphcms.com/Ey8JJVcVTriDXtiuWulP"
  , "amencutup:21": "https://media.graphcms.com/e2vzsueRTiiJUcPhSwlf"
  , "amencutup:22": "https://media.graphcms.com/fl61KaaxSUWMnKUkXwbd"
  , "amencutup:23": "https://media.graphcms.com/xM0d1p4fRiuYJcYSnttP"
  , "amencutup:24": "https://media.graphcms.com/8vV7S7EESOjphRBx01ld"
  , "amencutup:25": "https://media.graphcms.com/dInDOiY4RmJWKsLOkGCc"
  , "amencutup:26": "https://media.graphcms.com/lsPAq4MfQdGdgHVpBlCk"
  , "amencutup:27": "https://media.graphcms.com/swwCojTTfaV0GXLJlTLw"
  , "amencutup:28": "https://media.graphcms.com/MV2rifUQvOxrBNkrMVNg"
  , "amencutup:29": "https://media.graphcms.com/qd4AjpNAQJPrIxdI2x16"
  , "amencutup:30": "https://media.graphcms.com/HAepu2edQrivAqtr6ffp"
  , "amencutup:31": "https://media.graphcms.com/bryiOpRmuENNVMM27jtQ"
  , "drum:0": "https://media.graphcms.com/W79bqMzSBWvCfc9w0r2Y"
  , "drum:1": "https://media.graphcms.com/4K1HOmRoR7GSgfliFLAH"
  , "drum:2": "https://media.graphcms.com/kQvMobyoQIOSIxn7M7wQ"
  , "drum:3": "https://media.graphcms.com/Fs50wxoQT6CPax70QEg9"
  , "drum:4": "https://media.graphcms.com/7AXVCMX5TqibyAEWurgr"
  , "drum:5": "https://media.graphcms.com/UdMa53ATSEmamirrsh64"
  , "coins:0": "https://media.graphcms.com/992n1ZUHSPm7EvYsd2aH"
  , "industrial:0": "https://media.graphcms.com/XuvQ2tofTP6b5iYHbwij"
  , "industrial:1": "https://media.graphcms.com/f4wbXv0T8axZTiatnpUA"
  , "industrial:2": "https://media.graphcms.com/MMH5zJPeRJC81BnFlzgB"
  , "industrial:3": "https://media.graphcms.com/bVMwFTsaSEuYGGI76Sf5"
  , "industrial:4": "https://media.graphcms.com/WfTybLnSjWKgR6kx1og8"
  , "industrial:5": "https://media.graphcms.com/OsL3BcdRKevCKnYUYjyT"
  , "industrial:6": "https://media.graphcms.com/DjMzYy6USAGgEbeJqfpy"
  , "industrial:7": "https://media.graphcms.com/mZ5Yg5PkSweL6dRWz0Rs"
  , "industrial:8": "https://media.graphcms.com/9M00c3n9TiKktWLUdOJl"
  , "industrial:9": "https://media.graphcms.com/ePBMqO3iTPKmkIwaHu22"
  , "industrial:10": "https://media.graphcms.com/Qi4W30aSz6pm0VLGWpRg"
  , "industrial:11": "https://media.graphcms.com/WSyPqx8XT5yXGEOGA0mW"
  , "industrial:12": "https://media.graphcms.com/9z3xbpTAGAF82yNc4dGw"
  , "industrial:13": "https://media.graphcms.com/yIXRjBnQTqEGgJCe6DQg"
  , "industrial:14": "https://media.graphcms.com/QiNBSfFRQ0q8T05jHvG6"
  , "industrial:15": "https://media.graphcms.com/PlqU1IeR66K1nJeRtjSU"
  , "industrial:16": "https://media.graphcms.com/DZDbZWtNR0aK4cHHGMH8"
  , "industrial:17": "https://media.graphcms.com/qQL4rGNPRs668iwagJAz"
  , "industrial:18": "https://media.graphcms.com/XH6XOE9aQSG1VXP60RCp"
  , "industrial:19": "https://media.graphcms.com/W3335ytSM26kUGdxEfXM"
  , "industrial:20": "https://media.graphcms.com/29IxRglTcKvJ7ppiAwQ7"
  , "industrial:21": "https://media.graphcms.com/w5DHbJTeRmSJJ0LuxNLn"
  , "industrial:22": "https://media.graphcms.com/5B0OB0RtRsuPu2mYUuwx"
  , "industrial:23": "https://media.graphcms.com/8gfejuZVRhWA4ssys39M"
  , "industrial:24": "https://media.graphcms.com/j6aPchj3RP6VxQn578vy"
  , "industrial:25": "https://media.graphcms.com/YfnAtu2RQa6GPHiGH2xA"
  , "industrial:26": "https://media.graphcms.com/hAjAxZUJR8KXeYrfGktV"
  , "industrial:27": "https://media.graphcms.com/VEF05VTjSfype0wAk69Q"
  , "industrial:28": "https://media.graphcms.com/t2FAsTaTWWLs8Szsifpb"
  , "industrial:29": "https://media.graphcms.com/K2GyTbVTVWdhe908yI8N"
  , "industrial:30": "https://media.graphcms.com/y4hP7n4XSz69E0CwAy8V"
  , "industrial:31": "https://media.graphcms.com/NCp0qonVRLDC20PeVPO9"
  , "tink:0": "https://media.graphcms.com/XBvsRy7aQnOlgamh92nP"
  , "tink:1": "https://media.graphcms.com/yuus2yDQf2NH90w18lVQ"
  , "tink:2": "https://media.graphcms.com/rRyyA78iQ0a8gmrokHgE"
  , "tink:3": "https://media.graphcms.com/SE2sDr0ZRuWCCludItBI"
  , "tink:4": "https://media.graphcms.com/FGvxwjA5TWW4cXbaZWQI"
  , "co:0": "https://media.graphcms.com/kDPXlGKjQAWRtt24EzdA"
  , "co:1": "https://media.graphcms.com/UCH4GDS7Qyqtd3roYMrF"
  , "co:2": "https://media.graphcms.com/UbkKABwwQhO97IStHXtc"
  , "co:3": "https://media.graphcms.com/ctK5tDfCTUW3T76FmGUg"
  , "fest:0": "https://media.graphcms.com/mjoatFJSPK6UDzjOSQxo"
  , "feelfx:0": "https://media.graphcms.com/vsWxO2tyT1SDqSAsrw6R"
  , "feelfx:1": "https://media.graphcms.com/0zajhWtRcSKdYoZ33R7K"
  , "feelfx:2": "https://media.graphcms.com/0SVwbu45Q7zvEnyXoAj1"
  , "feelfx:3": "https://media.graphcms.com/lKQ2zBGSqyiGitsnxHIo"
  , "feelfx:4": "https://media.graphcms.com/UwGfIdaQZiLOYUvAu67A"
  , "feelfx:5": "https://media.graphcms.com/clotWK5TQ6crMRBRjEI6"
  , "feelfx:6": "https://media.graphcms.com/0EfuNK7YT4ie6VlPQnTA"
  , "feelfx:7": "https://media.graphcms.com/i31RJxopSrWJHSLMEqsh"
  , "x_808cy:0": "https://media.graphcms.com/57OgxdIR8qyg9lrmdB40"
  , "x_808cy:1": "https://media.graphcms.com/mV7UmDSdRta96ceaBZte"
  , "x_808cy:2": "https://media.graphcms.com/isYlf4gvSvObMSYmAuyV"
  , "x_808cy:3": "https://media.graphcms.com/oHFDTSD8Q5m7uLXYImqA"
  , "x_808cy:4": "https://media.graphcms.com/786e9vbvTu6lj7PDMp6L"
  , "x_808cy:5": "https://media.graphcms.com/EQNAIXeTFiMhIAyv2mja"
  , "x_808cy:6": "https://media.graphcms.com/gIkgvBrGTcymhTNIkEjB"
  , "x_808cy:7": "https://media.graphcms.com/p7A20naSOKqx0ZPhdVC9"
  , "x_808cy:8": "https://media.graphcms.com/boPBKo5WSRSrufCHJM1o"
  , "x_808cy:9": "https://media.graphcms.com/eACdSNSTYibfovVfsW6W"
  , "x_808cy:10": "https://media.graphcms.com/nAOAh0QTUCb23C7CWjDQ"
  , "x_808cy:11": "https://media.graphcms.com/LxRvyQsZQra7xJCsJi4g"
  , "x_808cy:12": "https://media.graphcms.com/cecQlIkTuewURdZbQCvd"
  , "x_808cy:13": "https://media.graphcms.com/2Wp1wkajSiaNke3R9zcl"
  , "x_808cy:14": "https://media.graphcms.com/EFYcsmzdRB2XzcOiXPaq"
  , "x_808cy:15": "https://media.graphcms.com/ua1cT33SSPdRuv8J1TvV"
  , "x_808cy:16": "https://media.graphcms.com/kglCqJiSmKGO6vp1Mr7A"
  , "x_808cy:17": "https://media.graphcms.com/dIpqu6tMQzuvzyMPDdp6"
  , "x_808cy:18": "https://media.graphcms.com/Uk8jhsTYY8GnlbkKPA6Z"
  , "x_808cy:19": "https://media.graphcms.com/5oA2zHeqQAGL4ykyJooh"
  , "x_808cy:20": "https://media.graphcms.com/PxkY5lBSpqlEAqSU2dYQ"
  , "x_808cy:21": "https://media.graphcms.com/C4SXnlAT6KVhcWTZQjpC"
  , "x_808cy:22": "https://media.graphcms.com/VVQBlVBxRCmHdxbglqGt"
  , "x_808cy:23": "https://media.graphcms.com/vbyuT7fUQyOpW3Equ6yZ"
  , "x_808cy:24": "https://media.graphcms.com/hD09GlPQKyVIO94Oc8Ov"
  , "world:0": "https://media.graphcms.com/EJluC6FJSBmxgsCZPRFr"
  , "world:1": "https://media.graphcms.com/z75YT5nyRqiTy9JfXaew"
  , "world:2": "https://media.graphcms.com/avG8XKFWSKiYsWbaZAhM"
  , "f:0": "https://media.graphcms.com/E4KSqBHRSKOnvUu9SdAX"
  , "numbers:0": "https://media.graphcms.com/gNa4zy0vSzK7abiMhfoj"
  , "numbers:1": "https://media.graphcms.com/DyBXMCfyR1Sy9Vx83kuz"
  , "numbers:2": "https://media.graphcms.com/XEN6Mu8QTrekQbz4YdJC"
  , "numbers:3": "https://media.graphcms.com/q7wXdm7OTLuJuY0hJpbc"
  , "numbers:4": "https://media.graphcms.com/wVxgIpRRTi67zB4fvag9"
  , "numbers:5": "https://media.graphcms.com/UCoK25GQeiq6bAJtD0cQ"
  , "numbers:6": "https://media.graphcms.com/azq4Qk9RbafAR6JUACY7"
  , "numbers:7": "https://media.graphcms.com/pCVdSn1iS6y8j7aUv88w"
  , "numbers:8": "https://media.graphcms.com/VK2VbWsLS8WwgiMgqoNe"
  , "d:0": "https://media.graphcms.com/hNoAS5bjTLyP9GbAzBsV"
  , "d:1": "https://media.graphcms.com/rkQUkyEtR9m0VsQR0yTb"
  , "d:2": "https://media.graphcms.com/i6NzfblZTJy4fVqLNFsD"
  , "d:3": "https://media.graphcms.com/mheW5yjUQC2A0xLktdUy"
  , "padlong:0": "https://media.graphcms.com/4NVgNXjIQXy0KC4jC9Z2"
  , "sequential:0": "https://media.graphcms.com/IyV1gGarSDkrkrTIDOgk"
  , "sequential:1": "https://media.graphcms.com/GbVCdd3SR3i70bD3hOBn"
  , "sequential:2": "https://media.graphcms.com/ktTbnBapRnyoNjzmIuAj"
  , "sequential:3": "https://media.graphcms.com/vlWCkbnoSsKstZ5kkd10"
  , "sequential:4": "https://media.graphcms.com/XF7GSO4iSeiFH6CBzRty"
  , "sequential:5": "https://media.graphcms.com/S4inwZMpSFWCIOSHYUTu"
  , "sequential:6": "https://media.graphcms.com/pSdVRUobTbOLIobzcQYf"
  , "sequential:7": "https://media.graphcms.com/WDOAyxuCTwO6V4Hwlrow"
  , "stab:0": "https://media.graphcms.com/toaWCyKdSAiJdZxjphr0"
  , "stab:1": "https://media.graphcms.com/Lup4eS99SaqrEszuxipQ"
  , "stab:2": "https://media.graphcms.com/g9RDfvswRRepSlGWWaGV"
  , "stab:3": "https://media.graphcms.com/aWNTblzhSdyRYG2Jpalk"
  , "stab:4": "https://media.graphcms.com/Uz25fLEoRpO6TK83kd9U"
  , "stab:5": "https://media.graphcms.com/HN8aE0OZRpe6m944qAog"
  , "stab:6": "https://media.graphcms.com/7BMr1jZQCqpOFzFQmKIF"
  , "stab:7": "https://media.graphcms.com/cIeS7cQfWb0mRTJ5FUzA"
  , "stab:8": "https://media.graphcms.com/EfAG56joTAedLKSurVsz"
  , "stab:9": "https://media.graphcms.com/XezkqmDOR0uRgl2KbDk4"
  , "stab:10": "https://media.graphcms.com/dLEkISMwSMOpRyoqMz9y"
  , "stab:11": "https://media.graphcms.com/4YYIOZBlSDe8fM0TrLpZ"
  , "stab:12": "https://media.graphcms.com/SrVlA7oVRsmZLl8r5mEA"
  , "stab:13": "https://media.graphcms.com/PqnkjQ3YTTWG2BmWWq2x"
  , "stab:14": "https://media.graphcms.com/yB2pNskQQKWbYnR0pkKQ"
  , "stab:15": "https://media.graphcms.com/mGQCf0JhQUykeVpUvIfQ"
  , "stab:16": "https://media.graphcms.com/SkJzoepARaKSGPEa2Xjk"
  , "stab:17": "https://media.graphcms.com/QWTKg6nUSayXoI7Ijo0b"
  , "stab:18": "https://media.graphcms.com/mwRUoopdQXi7cOp9DK8v"
  , "stab:19": "https://media.graphcms.com/yoZGobxpSwewJ9LgXn9Q"
  , "stab:20": "https://media.graphcms.com/SgGeWJDSieugX2PVMOJA"
  , "stab:21": "https://media.graphcms.com/MJINmu7WT0KYH4yPfTTT"
  , "stab:22": "https://media.graphcms.com/nsaO6HfShc2jb9aw4x3w"
  , "electro1:0": "https://media.graphcms.com/MzkV1UcRz2EloF8tfajx"
  , "electro1:1": "https://media.graphcms.com/1oLH0C4ThmfZ5wBqcbcQ"
  , "electro1:2": "https://media.graphcms.com/6uVzLMFrSq2xth3MGYAZ"
  , "electro1:3": "https://media.graphcms.com/wxrDiGtRQlaM1RqfTK56"
  , "electro1:4": "https://media.graphcms.com/9zFkyWt5RISCgCWWkHy9"
  , "electro1:5": "https://media.graphcms.com/gZTKs4EdQPefs4fwYpk6"
  , "electro1:6": "https://media.graphcms.com/2Pd8go3rRvWwFZgnKrpQ"
  , "electro1:7": "https://media.graphcms.com/guenpCQ5S5qXLuQrmCKI"
  , "electro1:8": "https://media.graphcms.com/2A6RSmuYQqCHNEnpSsQS"
  , "electro1:9": "https://media.graphcms.com/G5rsvPXtTleXc2BdEgqb"
  , "electro1:10": "https://media.graphcms.com/gxtDaFr1TNCuzyqlo0On"
  , "electro1:11": "https://media.graphcms.com/k9Ep1b2qRSi0NMAVdLrp"
  , "electro1:12": "https://media.graphcms.com/VACOcS6eQnaYXUZSIPdG"
  , "ifdrums:0": "https://media.graphcms.com/AFN00S3SSUWDLFvSkEI0"
  , "ifdrums:1": "https://media.graphcms.com/jAlx6cX1QLq1E16EB3Zg"
  , "ifdrums:2": "https://media.graphcms.com/qNuXN7GfSdJhxqOiWhrw"
  , "invaders:0": "https://media.graphcms.com/HDXCvsNPRBuF43Co99yb"
  , "invaders:1": "https://media.graphcms.com/ZWGP6MAwSzqbIGriRqm7"
  , "invaders:2": "https://media.graphcms.com/gMVzpck5R4iFoL099G4j"
  , "invaders:3": "https://media.graphcms.com/nCxiqf8xS82wvHxGgxl7"
  , "invaders:4": "https://media.graphcms.com/c4fwxkCKQXeR2q66M4vc"
  , "invaders:5": "https://media.graphcms.com/OQ9LOCKdQjivP2Xj2ZOR"
  , "invaders:6": "https://media.graphcms.com/P9QXCTdRdSNLUL01Z3GL"
  , "invaders:7": "https://media.graphcms.com/nFHWCMuLScm1iIKDUOyZ"
  , "invaders:8": "https://media.graphcms.com/jkOKCoM6Ram1nDHRMgEX"
  , "invaders:9": "https://media.graphcms.com/WAZNubuQlq0F8srB9RRQ"
  , "invaders:10": "https://media.graphcms.com/i26NRyTKRtqwAVkJbAod"
  , "invaders:11": "https://media.graphcms.com/rTenjt9SR4GtcR4WUkmE"
  , "invaders:12": "https://media.graphcms.com/rzF1K8ZMQivWi3di0NxL"
  , "invaders:13": "https://media.graphcms.com/XWK5FpcQR6TNwur2m3R4"
  , "invaders:14": "https://media.graphcms.com/6j3VN7aRkeGOYGikvsvu"
  , "invaders:15": "https://media.graphcms.com/mRA8BSAtR1GtM5YJoKTp"
  , "invaders:16": "https://media.graphcms.com/0YuI0NHURqSGnplliYtb"
  , "invaders:17": "https://media.graphcms.com/dAAwr5V9SsOAtjqhmHzz"
  , "dist:0": "https://media.graphcms.com/gK28Zcx1SFmNuUxGC6VA"
  , "dist:1": "https://media.graphcms.com/AZVXj6K2RtCR1HyZ2Cv7"
  , "dist:2": "https://media.graphcms.com/ThKsM5uPRiGwdnRM14Mc"
  , "dist:3": "https://media.graphcms.com/6LHSLPlQayg90EuNeLZX"
  , "dist:4": "https://media.graphcms.com/dSJryLsNSgysv0m3Pqgr"
  , "dist:5": "https://media.graphcms.com/XPZT9ZYcR3iBVRBe6gdy"
  , "dist:6": "https://media.graphcms.com/T6iu2rGjQEeEYhMke4H1"
  , "dist:7": "https://media.graphcms.com/KnBoBe2VS8qcksIVJgY1"
  , "dist:8": "https://media.graphcms.com/bBEmyxnnRtmuOvU87Ikg"
  , "dist:9": "https://media.graphcms.com/V1YZOT2OQ9q1N8kZo31G"
  , "dist:10": "https://media.graphcms.com/S7oNMb4TbrzNVAqdwivg"
  , "dist:11": "https://media.graphcms.com/ZSUv9ZlgQ4uQICfLhLyh"
  , "dist:12": "https://media.graphcms.com/Ccspad7jQIyzEACVI2kg"
  , "dist:13": "https://media.graphcms.com/TOmk4LiZQWKxjdO9etAU"
  , "dist:14": "https://media.graphcms.com/ErKT7x1cSuyFZbnXMspL"
  , "dist:15": "https://media.graphcms.com/NwbHpZOqSYYN8A02qlR8"
  , "sundance:0": "https://media.graphcms.com/ikoy8JCS66I2a1MujuN0"
  , "sundance:1": "https://media.graphcms.com/rQwNfoTsO4x7TrhUSfgr"
  , "sundance:2": "https://media.graphcms.com/Uc3HQzW3TW21SZGvY59Z"
  , "sundance:3": "https://media.graphcms.com/2p0FEUj7Sb2MQGg162y2"
  , "sundance:4": "https://media.graphcms.com/fXq3W1gEQWyTzbN2Zt44"
  , "sundance:5": "https://media.graphcms.com/qy0UjvF4TAqKIbqPTcgc"
  , "speech:0": "https://media.graphcms.com/n5WeGZ9iSDGKbHKeqjsS"
  , "speech:1": "https://media.graphcms.com/W0r0wDk0SGuRpBzJxi9j"
  , "speech:2": "https://media.graphcms.com/5y2wQO2KQKeDM6djX5hf"
  , "speech:3": "https://media.graphcms.com/V5fzlU5gQsmFuiYCqjOD"
  , "speech:4": "https://media.graphcms.com/8ySAKCH3SGWe5xN7j6Qu"
  , "speech:5": "https://media.graphcms.com/yKerXzBcT0CFQQTHC9hw"
  , "speech:6": "https://media.graphcms.com/UmZc3ZfCRU2jxV8VhhL5"
  , "toys:0": "https://media.graphcms.com/YNBx5tIoTO6JaKDkV34W"
  , "toys:1": "https://media.graphcms.com/tMtKgeAR6AB0wU1frLEA"
  , "toys:2": "https://media.graphcms.com/4Lr0aRJvRbXTfamnNTGw"
  , "toys:3": "https://media.graphcms.com/fCUd42n1RNyii3s33pDL"
  , "toys:4": "https://media.graphcms.com/7NuNlOXGQBGpX4mwcE9w"
  , "toys:5": "https://media.graphcms.com/9qiA2UTkT7ibh8PiNjMK"
  , "toys:6": "https://media.graphcms.com/Xcvtw82dRsyWG38gcdP3"
  , "toys:7": "https://media.graphcms.com/38epIEiMQuZfUvOnoppm"
  , "toys:8": "https://media.graphcms.com/UgDDiSIDR1qWAfwpllMP"
  , "toys:9": "https://media.graphcms.com/QS6hbvAESmGRn6J8A07o"
  , "toys:10": "https://media.graphcms.com/jRjTeA8UQl6QLKi35JTW"
  , "toys:11": "https://media.graphcms.com/famlMQpqQjOxuQl4YOSO"
  , "toys:12": "https://media.graphcms.com/E1odzPMbRWS6ituDBT3z"
  , "bass0:0": "https://media.graphcms.com/6QCdEZsqSmcC4lsLoesQ"
  , "bass0:1": "https://media.graphcms.com/PSS2ZqCwTCen0HDNvY2L"
  , "bass0:2": "https://media.graphcms.com/6m38nwdhQKW9GDYtgRhL"
  , "realclaps:0": "https://media.graphcms.com/nmHgWHOoSLeC0SmgCLNN"
  , "realclaps:1": "https://media.graphcms.com/1QIFQHffT7WYGxSsBcSX"
  , "realclaps:2": "https://media.graphcms.com/IthyC8UQOue766XuMJVA"
  , "realclaps:3": "https://media.graphcms.com/jJbu3FkR5iMK21r8jHUf"
  , "dorkbot:0": "https://media.graphcms.com/hjG7ICe6Saim2i5l5BJW"
  , "dorkbot:1": "https://media.graphcms.com/dStBM9ZbTzi4TEjlJJRQ"
  , "arpy:0": "https://media.graphcms.com/1bDfgPiaQhOsqRmCM111"
  , "arpy:1": "https://media.graphcms.com/Lr8HKut3RLy455aHvUQ9"
  , "arpy:2": "https://media.graphcms.com/lrXUodzbT7WXLuKeSlQj"
  , "arpy:3": "https://media.graphcms.com/V1cbxBtsR6OirePHwIHm"
  , "arpy:4": "https://media.graphcms.com/8gaRrrqhTAezjLxxjyds"
  , "arpy:5": "https://media.graphcms.com/EL2vzVZfR6eFC2UmJvqC"
  , "arpy:6": "https://media.graphcms.com/vwrOvNR4TWOKKS8KL6F1"
  , "arpy:7": "https://media.graphcms.com/TMpeW3jTQS4keWC9uTAh"
  , "arpy:8": "https://media.graphcms.com/qArgdYUQT0SSeJ4HnfMl"
  , "arpy:9": "https://media.graphcms.com/XfkKlznfRkWxYQjBsUyW"
  , "arpy:10": "https://media.graphcms.com/MfgP1FdVQYma76Lu39aS"
  , "fire:0": "https://media.graphcms.com/nF1kMVSxSgutyd5uTDJ6"
  , "hoover:0": "https://media.graphcms.com/WYl1rjysRISkWMnDH2X8"
  , "hoover:1": "https://media.graphcms.com/pqNd2tSRiCYJ2mb9SA8L"
  , "hoover:2": "https://media.graphcms.com/VMrvI9YTRbe1PndgucRM"
  , "hoover:3": "https://media.graphcms.com/c1tE7OsCQpa2mFuUt7E0"
  , "hoover:4": "https://media.graphcms.com/5fRbR4tRFSMgwhiEZMCh"
  , "hoover:5": "https://media.graphcms.com/qJTwQYmTASOUS0AWoOkg"
  , "breath:0": "https://media.graphcms.com/1BREt4fZQRuMZ2du9ZeV"
  , "rave:0": "https://media.graphcms.com/oo8mPmVKTrWV6gWDZvK8"
  , "rave:1": "https://media.graphcms.com/WanE0msvTS6W28yXjQvk"
  , "rave:2": "https://media.graphcms.com/QAJz80wnQaCwLl3bYxJo"
  , "rave:3": "https://media.graphcms.com/0rNecDQWSjuFk03mxj5Z"
  , "rave:4": "https://media.graphcms.com/xIoQ0fVTeGrM9f0s3GDW"
  , "rave:5": "https://media.graphcms.com/3lCuFKrDSpq1Pw2IhsRz"
  , "rave:6": "https://media.graphcms.com/DReDHtX8QDi6jF1G5Pas"
  , "rave:7": "https://media.graphcms.com/EDjdtMxwTBamK6nxl5hn"
  , "bottle:0": "https://media.graphcms.com/OmkVOPRdRGaBJjKKsnoI"
  , "bottle:1": "https://media.graphcms.com/vL6GbCISFyJX5pGgp1AR"
  , "bottle:2": "https://media.graphcms.com/bhC8OFeTwe6HZrJjJqMx"
  , "bottle:3": "https://media.graphcms.com/Th0Isf83RGqoWFtgCCNY"
  , "bottle:4": "https://media.graphcms.com/kuAUTKeqRrWBGFpMpUbM"
  , "bottle:5": "https://media.graphcms.com/slCHgbyRZizSIlS6GCXS"
  , "bottle:6": "https://media.graphcms.com/rmdeFdefSNqrCjBmJcLG"
  , "bottle:7": "https://media.graphcms.com/gmIa2mkQR5G07fqlIJvS"
  , "bottle:8": "https://media.graphcms.com/ZUqcxRTQ7WSg9qpeDTL0"
  , "bottle:9": "https://media.graphcms.com/YfOXeDyqRJWQmp9ps5MW"
  , "bottle:10": "https://media.graphcms.com/ga06kCriSf9tXZf0U1NQ"
  , "bottle:11": "https://media.graphcms.com/KLFCd3BqTPqAnFA9NvGC"
  , "bottle:12": "https://media.graphcms.com/IbhLBbwbRDekrGIVBKEp"
  , "east:0": "https://media.graphcms.com/S52gJhY8RG2ocBC5uHR2"
  , "east:1": "https://media.graphcms.com/ICSrQ0E4QXaJMzLRYYFc"
  , "east:2": "https://media.graphcms.com/NGt0EJGRwuSDmDF8pZu8"
  , "east:3": "https://media.graphcms.com/nHOnPY29T3ShNAp4xn4q"
  , "east:4": "https://media.graphcms.com/SGjCac19T4WOnHMhbmdg"
  , "east:5": "https://media.graphcms.com/k76xC0FbSfe4xXeNCp6R"
  , "east:6": "https://media.graphcms.com/mu1q1hEQ022sIQ6uwfmw"
  , "east:7": "https://media.graphcms.com/ssWv7THSB2kqswaXboBw"
  , "east:8": "https://media.graphcms.com/6R4G0ECARZS1b4xmT4bo"
  , "linnhats:0": "https://media.graphcms.com/62jhPIZSUWrvUWv3YRyD"
  , "linnhats:1": "https://media.graphcms.com/9A3E2pQOR9yKKkaxWcWg"
  , "linnhats:2": "https://media.graphcms.com/6o419zLcTumbLSadGmDW"
  , "linnhats:3": "https://media.graphcms.com/YDobq3tuTxeHkKFuMmKf"
  , "linnhats:4": "https://media.graphcms.com/T6tKDlSXRLiK3zXJ5DBQ"
  , "linnhats:5": "https://media.graphcms.com/e8v7TApaTEizsOa9IXMl"
  , "speedupdown:0": "https://media.graphcms.com/T4nZmR9mQT2W1jFMRqfk"
  , "speedupdown:1": "https://media.graphcms.com/jjmdqk9uQXy6R0m6O2Ef"
  , "speedupdown:2": "https://media.graphcms.com/7fKdNuJsT9yElrClUwTR"
  , "speedupdown:3": "https://media.graphcms.com/361LHOwROdV0NUSotIQA"
  , "speedupdown:4": "https://media.graphcms.com/pUAJnybmSGeO0Dl5wD8E"
  , "speedupdown:5": "https://media.graphcms.com/kLUzybEbT8Sq7HepffXJ"
  , "speedupdown:6": "https://media.graphcms.com/qpuMUTsPR8a1ABSOU6KB"
  , "speedupdown:7": "https://media.graphcms.com/mEa41TYSQpiYbYURVS7d"
  , "speedupdown:8": "https://media.graphcms.com/wsgacFhPSmSofoybAyaR"
  , "cosmicg:0": "https://media.graphcms.com/lvLf9zIzQkyAORnEtd0p"
  , "cosmicg:1": "https://media.graphcms.com/snNX0LHqQ8iNFmkKv5ij"
  , "cosmicg:2": "https://media.graphcms.com/p7Z4pgaMR6yH5x6r2sVt"
  , "cosmicg:3": "https://media.graphcms.com/fSQfT9wOQqgL8fmjffS1"
  , "cosmicg:4": "https://media.graphcms.com/CXvc76pSRyaTKUUOfpEW"
  , "cosmicg:5": "https://media.graphcms.com/cVX6HyeOQdOF110LkAVX"
  , "cosmicg:6": "https://media.graphcms.com/m9SUAM16TLCcyZZhQJzn"
  , "cosmicg:7": "https://media.graphcms.com/MUG2QQN0RRyr7TkHQH1t"
  , "cosmicg:8": "https://media.graphcms.com/PmXf7SVASMOQr1uvllcf"
  , "cosmicg:9": "https://media.graphcms.com/tyyOZgzBT8qw3CwWnXYr"
  , "cosmicg:10": "https://media.graphcms.com/v4PvDehQSPOFtGIsEteM"
  , "cosmicg:11": "https://media.graphcms.com/yvEzJ3dRoCobOsTkoxBg"
  , "cosmicg:12": "https://media.graphcms.com/DoqwXSK1QBGOhYGo1TcP"
  , "cosmicg:13": "https://media.graphcms.com/NDM9yQx1SCam42XEC1In"
  , "cosmicg:14": "https://media.graphcms.com/rRDsBWIjTAuOtH9ayQqc"
  , "jvbass:0": "https://media.graphcms.com/zHbfhOs3T2i3xayhUcCH"
  , "jvbass:1": "https://media.graphcms.com/FlDX4RxVSneFFwCizLD4"
  , "jvbass:2": "https://media.graphcms.com/BneXmItVTHKzbDcHnUfB"
  , "jvbass:3": "https://media.graphcms.com/VEgKaJFTaWY9oXshESAP"
  , "jvbass:4": "https://media.graphcms.com/87uAE4CRsqzqVViLZfPO"
  , "jvbass:5": "https://media.graphcms.com/mVRWXUQs259uwzvtbWlA"
  , "jvbass:6": "https://media.graphcms.com/W5LoxWlQgGNFM7PqREgw"
  , "jvbass:7": "https://media.graphcms.com/djGW3CpSaSzt8QjPV5OB"
  , "jvbass:8": "https://media.graphcms.com/IPAcnWE3SYWmCpwuacoj"
  , "jvbass:9": "https://media.graphcms.com/r4whWBOPSjCadc8xKCgo"
  , "jvbass:10": "https://media.graphcms.com/Pmrr4tx7SnmCniIiXLsV"
  , "jvbass:11": "https://media.graphcms.com/RGWhijIkQamM5GSPKP1U"
  , "jvbass:12": "https://media.graphcms.com/XxZAK0MQxKrQzMHxZlwj"
  , "mash:0": "https://media.graphcms.com/SMb2RxmPTVe7OZH82HeJ"
  , "mash:1": "https://media.graphcms.com/RKGnwaqPQTCY9XLdxRve"
  , "feel:0": "https://media.graphcms.com/VB59KethR24HkbuWY2QU"
  , "feel:1": "https://media.graphcms.com/FKxvZsYvTmaN6XwD7fB0"
  , "feel:2": "https://media.graphcms.com/sQe1w0zdTU6gpUuhzEJl"
  , "feel:3": "https://media.graphcms.com/iw5NlTTXRbmx0QzpV2be"
  , "feel:4": "https://media.graphcms.com/dcgphZgRQZKP3Wr2euLW"
  , "feel:5": "https://media.graphcms.com/uPE43jgZRtWkj6WTloOR"
  , "feel:6": "https://media.graphcms.com/96XHKN6AS6qMg3Oye8lw"
  , "short:0": "https://media.graphcms.com/HAIgA5UQSJuGgC5qMisL"
  , "short:1": "https://media.graphcms.com/mbOOxZXFSO69m48QA8uM"
  , "short:2": "https://media.graphcms.com/ZdIW3MJQjixn0jhg3CFl"
  , "short:3": "https://media.graphcms.com/rCkyk7kOSKeAB8rVaoZc"
  , "short:4": "https://media.graphcms.com/F4jXUCPoRBO5LQBFV9uH"
  , "incoming:0": "https://media.graphcms.com/YykqVssQpWLo3dGS8K6W"
  , "incoming:1": "https://media.graphcms.com/oP6mfBShWmsPuEsUBCSQ"
  , "incoming:2": "https://media.graphcms.com/WUF38q5SOdLhoytVxT2Q"
  , "incoming:3": "https://media.graphcms.com/pfmKoZ7ARnKNWDFmdaQt"
  , "incoming:4": "https://media.graphcms.com/BUJW9XTjQH6ppZEfNxgr"
  , "incoming:5": "https://media.graphcms.com/z3oKZZRbSbePQSg8OG6s"
  , "incoming:6": "https://media.graphcms.com/ZS0mvR8iTGWPC3aPgS79"
  , "incoming:7": "https://media.graphcms.com/W7Ih7RK8S7GKJLwRSRqg"
  , "flick:0": "https://media.graphcms.com/7RjpOk2HR0qIgVe9uBSh"
  , "flick:1": "https://media.graphcms.com/jIpzt2fkToKCS3XiKgV0"
  , "flick:2": "https://media.graphcms.com/vMjE3urMShiOkfCopBgf"
  , "flick:3": "https://media.graphcms.com/upz0Q4j4QFmbTYJ4fpyg"
  , "flick:4": "https://media.graphcms.com/OS9Cu9kGRqWogp5bmVCs"
  , "flick:5": "https://media.graphcms.com/UWhXEwHbQmqcTcMiRRhl"
  , "flick:6": "https://media.graphcms.com/xCa7B6ARg6TzoI19n0g8"
  , "flick:7": "https://media.graphcms.com/tmKgZGbQRLG2Fo7K18wI"
  , "flick:8": "https://media.graphcms.com/ej85kGHMRfWUXv5rTzll"
  , "flick:9": "https://media.graphcms.com/EI5lUvjPQQ1hSAEe87x9"
  , "flick:10": "https://media.graphcms.com/fCmuH1lTfWDXHeeCyGI5"
  , "flick:11": "https://media.graphcms.com/ovAmIPNFQUiOgnGdKtwd"
  , "flick:12": "https://media.graphcms.com/w55XZntTIewBnvGB8t1t"
  , "flick:13": "https://media.graphcms.com/qTwDfK1QvCRLoYaXEhdM"
  , "flick:14": "https://media.graphcms.com/BoLKmrFPQcaRCOv8ptvw"
  , "flick:15": "https://media.graphcms.com/GYxG7gPGSG2OuugJatSm"
  , "flick:16": "https://media.graphcms.com/mTmaW0L0SwyAdMF9ZIhA"
  , "reverbkick:0": "https://media.graphcms.com/rEmkCMwwT56sEaFY2qPN"
  , "baa:0": "https://media.graphcms.com/WUFtGO09Q8as3fFFgUFm"
  , "baa:1": "https://media.graphcms.com/svP6E0AoQLGyGXPsM5an"
  , "baa:2": "https://media.graphcms.com/fLC8gzHlRYeDpMr66rk5"
  , "baa:3": "https://media.graphcms.com/eL8CsDFGTOOMOrxLf9Fx"
  , "baa:4": "https://media.graphcms.com/aWP3CSrRRCO5tvZUeNF1"
  , "baa:5": "https://media.graphcms.com/FQxW2qIKSFmBU9X0bgQd"
  , "baa:6": "https://media.graphcms.com/m85heTehTkWxkTitN5v9"
  , "fm:0": "https://media.graphcms.com/oOEaIwsjSx6tGhDckuZO"
  , "fm:1": "https://media.graphcms.com/uBRmKWqMSyaHTa7JpMHk"
  , "fm:2": "https://media.graphcms.com/WoezdUYWRcaezPSwxWeF"
  , "fm:3": "https://media.graphcms.com/h7SBk1hTMODRBTX95uU7"
  , "fm:4": "https://media.graphcms.com/o9zABRpsRdKQJC3V3kZa"
  , "fm:5": "https://media.graphcms.com/hMI2sQnASEhusuPD1xdK"
  , "fm:6": "https://media.graphcms.com/RZd7nhNfSA2C6d92Yl8a"
  , "fm:7": "https://media.graphcms.com/0BljsjS8ROblR075mMoR"
  , "fm:8": "https://media.graphcms.com/MXlVqJM2QieJeTd75KQM"
  , "fm:9": "https://media.graphcms.com/yku6Dl4VRXKAanZ4gJA9"
  , "fm:10": "https://media.graphcms.com/GvgIoW38RUWFuTSwWN7t"
  , "fm:11": "https://media.graphcms.com/FtHMJHI9Qnq4Ve0rr1wS"
  , "fm:12": "https://media.graphcms.com/x99o2gUySnCABC9sqhAE"
  , "fm:13": "https://media.graphcms.com/DtxSXlA8SKmIYno95agK"
  , "fm:14": "https://media.graphcms.com/nWUnt8NJTIuYqEHpEOlD"
  , "fm:15": "https://media.graphcms.com/dhOsv2VR3mdlEXD0k5BC"
  , "fm:16": "https://media.graphcms.com/I4oUI7SNQSK65inbDSrY"
  , "click:0": "https://media.graphcms.com/SBGks6FS4pTw4lNacRwe"
  , "click:1": "https://media.graphcms.com/4FkW7Nj1QlmiEp1jawVV"
  , "click:2": "https://media.graphcms.com/uwVZTGnRRMCvfsH78XEt"
  , "click:3": "https://media.graphcms.com/nDLXk1ywRwqtxsvoVv6o"
  , "control:0": "https://media.graphcms.com/aC3W52fAQvKGiKWxKnm9"
  , "control:1": "https://media.graphcms.com/yhl7M8PRIOvm4mXAnHOQ"
  , "peri:0": "https://media.graphcms.com/3aWu6KzTJH4VdeA4I8yg"
  , "peri:1": "https://media.graphcms.com/erPjnJoATjymeWtp0eQo"
  , "peri:2": "https://media.graphcms.com/sAOxE7xEQ5yNP4SOicBQ"
  , "peri:3": "https://media.graphcms.com/FRV6xDIQeaopYL0s2CaQ"
  , "peri:4": "https://media.graphcms.com/Q7ZZkVKQQUeAsJbKPTZJ"
  , "peri:5": "https://media.graphcms.com/4WPlhlAsSSGGaYVxnTg2"
  , "peri:6": "https://media.graphcms.com/cJdRx36jQ0OJk5vdzkOA"
  , "peri:7": "https://media.graphcms.com/xMS2qJqpQweSloBgIP0n"
  , "peri:8": "https://media.graphcms.com/cXLA0cGiSzyiHvbPEBVE"
  , "peri:9": "https://media.graphcms.com/g2Nfc1LSLW64BVrNekgA"
  , "peri:10": "https://media.graphcms.com/V4rX7BPMSDip4gcYfVHw"
  , "peri:11": "https://media.graphcms.com/nHcfhTkyR22fufMMzge9"
  , "peri:12": "https://media.graphcms.com/9YSfj4qQhe8IJltu0QWb"
  , "peri:13": "https://media.graphcms.com/RCi8BvkrRtCs96Hygw7I"
  , "peri:14": "https://media.graphcms.com/XdpBrW0ARHCPhhs6mTuZ"
  , "procshort:0": "https://media.graphcms.com/GcVCAXo6R0KUJXhd0tj5"
  , "procshort:1": "https://media.graphcms.com/rrLsGlCSLCP9ramh5XIA"
  , "procshort:2": "https://media.graphcms.com/RrjmvumSCCNhcZekYvPN"
  , "procshort:3": "https://media.graphcms.com/c2hdauQyQHO4F80G2qxn"
  , "procshort:4": "https://media.graphcms.com/tQVSuxjhQd6FaXKxhMMp"
  , "procshort:5": "https://media.graphcms.com/BbTyI711SAqviIwpnLfQ"
  , "procshort:6": "https://media.graphcms.com/i0Y3MjGARRmzONzOCm03"
  , "procshort:7": "https://media.graphcms.com/sHEhrJ8dQMaukZWnaLqE"
  , "hand:0": "https://media.graphcms.com/wtaeeLf5QiKxx1b68VwZ"
  , "hand:1": "https://media.graphcms.com/zDjOcdK8RHmiVQ08MZWj"
  , "hand:2": "https://media.graphcms.com/njHMldfcQ8iRpMYB9kKj"
  , "hand:3": "https://media.graphcms.com/2b3V9sVyQPyYE5o12nfR"
  , "hand:4": "https://media.graphcms.com/pHDOhbX1QV6R5MB8Eovc"
  , "hand:5": "https://media.graphcms.com/WpNGdN3tR1iZFaVThGY2"
  , "hand:6": "https://media.graphcms.com/b2aWFxu2TdqctJxXR4O3"
  , "hand:7": "https://media.graphcms.com/qXBmN3BUTIWFC6agGex3"
  , "hand:8": "https://media.graphcms.com/qfPOQnUGTkOkCZSxC3Ok"
  , "hand:9": "https://media.graphcms.com/BxS2tWY8T0U9ij5OJOkU"
  , "hand:10": "https://media.graphcms.com/8BpdKXWUTc2NuRPsonPX"
  , "hand:11": "https://media.graphcms.com/afeo7xPGSJi4WMs1rVDe"
  , "hand:12": "https://media.graphcms.com/Gj7tpiEYTeRuOt08mhQw"
  , "hand:13": "https://media.graphcms.com/bU8r4dYmRDeXWDTTPs21"
  , "hand:14": "https://media.graphcms.com/F0sFy0F8QGCefGWVBsS1"
  , "hand:15": "https://media.graphcms.com/1uc4WhvTtuO9DUdfpC7e"
  , "hand:16": "https://media.graphcms.com/rBWSeGaTYC4Y6R7Xdntq"
  , "future:0": "https://media.graphcms.com/92vIjk1PSGKy27PVBoUv"
  , "future:1": "https://media.graphcms.com/8UGL12M8TqsY8nyy6XXA"
  , "future:2": "https://media.graphcms.com/wm0ETRmvTByMcLK9wLDF"
  , "future:3": "https://media.graphcms.com/oEHwAYhCQm6dJnI4duI2"
  , "future:4": "https://media.graphcms.com/mnkSN9n9TIqBOdVh8w8n"
  , "future:5": "https://media.graphcms.com/GQ4OcYkcT5IscYw4jR5Q"
  , "future:6": "https://media.graphcms.com/nGC0JZ1bSFSxpHtr1Ezo"
  , "future:7": "https://media.graphcms.com/w5UzJo9R4Ob46sqYAa3V"
  , "future:8": "https://media.graphcms.com/dT8twvZbQgecdIvsYogi"
  , "future:9": "https://media.graphcms.com/D7IPeUveQgi1lQN6DIu7"
  , "future:10": "https://media.graphcms.com/SSGzZybaTKW1DKk6nr0K"
  , "future:11": "https://media.graphcms.com/goIEimVTKCuaRwIMjAjt"
  , "future:12": "https://media.graphcms.com/JaO5ddB0TOuTS2yRImKk"
  , "future:13": "https://media.graphcms.com/3u93eV6QzmzMvu6KBJ3A"
  , "future:14": "https://media.graphcms.com/Dogy2YwoRteOcPIP51DJ"
  , "future:15": "https://media.graphcms.com/ybpHQGQSSQCdKV1TYEaN"
  , "future:16": "https://media.graphcms.com/tHAEHsgdQEikqJJIrSZw"
  , "hh:0": "https://media.graphcms.com/LKCWs2oYQy2vG8ePMuaL"
  , "hh:1": "https://media.graphcms.com/t8ICKGIQ8WuEGxsdzULg"
  , "hh:2": "https://media.graphcms.com/tIPWwwFCRyq4qdERLr93"
  , "hh:3": "https://media.graphcms.com/7pXzOKvXTtKDv9hRDFof"
  , "hh:4": "https://media.graphcms.com/ie7hKfNRQ6ceN61MauAn"
  , "hh:5": "https://media.graphcms.com/o1SyjRaCRzevNmu5XCxO"
  , "hh:6": "https://media.graphcms.com/36t6a1lTSviPGKAnrSXw"
  , "hh:7": "https://media.graphcms.com/7VP8x96BT4iBQQeuVNie"
  , "hh:8": "https://media.graphcms.com/ZX8kTajxQxaqur29qnJY"
  , "hh:9": "https://media.graphcms.com/lbn4qphRxu3bvTJgMyYg"
  , "hh:10": "https://media.graphcms.com/UAfcQHvATIC2TrqtAa8c"
  , "hh:11": "https://media.graphcms.com/RDE5TlmaSeCoMicDMSpu"
  , "hh:12": "https://media.graphcms.com/v63HoRWmRxGnYwdPX40F"
  , "x_808ht:0": "https://media.graphcms.com/XS0Nijk1Qqq56t1W4oCc"
  , "x_808ht:1": "https://media.graphcms.com/4pR8kByQSnF8cHHdNTDA"
  , "x_808ht:2": "https://media.graphcms.com/x4FtL48qQhOBo3d72GgQ"
  , "x_808ht:3": "https://media.graphcms.com/ScdPsNGGS0iXmSGx5wtT"
  , "x_808ht:4": "https://media.graphcms.com/iI4vRrlLSPOqts0mVPdF"
  , "db:0": "https://media.graphcms.com/C5AOWjXhS7yVuEYRMToT"
  , "db:1": "https://media.graphcms.com/VUtduTEZR0mijDxu9JkP"
  , "db:2": "https://media.graphcms.com/GTs13LRhRFC6UhUHFzFg"
  , "db:3": "https://media.graphcms.com/PxQtzhXeSLWgeu2r0KsK"
  , "db:4": "https://media.graphcms.com/vZwAupjITmSxWRZ2dXfK"
  , "db:5": "https://media.graphcms.com/ctjXKVTlRmCWrG59sLRo"
  , "db:6": "https://media.graphcms.com/yeAKaGrhSnaoCadOXBz1"
  , "db:7": "https://media.graphcms.com/9tiJL1S9TBmFN9rBPACD"
  , "db:8": "https://media.graphcms.com/mO8DAQv0QWuxLhlk95YM"
  , "db:9": "https://media.graphcms.com/zIDIHNChRnSeBWLS2kyt"
  , "db:10": "https://media.graphcms.com/77R3J7clQGeyvVgb6eeT"
  , "db:11": "https://media.graphcms.com/qnANd6vQKmKkFtfsFkod"
  , "db:12": "https://media.graphcms.com/cQLm8k5dRQOlRyHSOLmS"
  ----- drones
  , "spacewind:0": "https://freesound.org/data/previews/370/370754_3104030-hq.mp3"
  , "ambienta:0": "https://freesound.org/data/previews/546/546360_10196790-hq.mp3"
  , "lowdark:0": "https://freesound.org/data/previews/579/579260_10522382-hq.mp3"
  , "harmonium:0": "https://freesound.org/data/previews/264/264442_4965426-hq.mp3"
  , "hollowair:0": "https://freesound.org/data/previews/370/370316_3104030-hq.mp3"
  , "digeridoo:0": "https://freesound.org/data/previews/197/197998_3684181-hq.mp3"
  }

---
class Entropy a where
  entropy :: a -> Number

instance entropyUnsampledTimeIs :: Entropy UnsampledTimeIs where
  entropy = unwrap >>> _.entropy

instance entropyTimeIs :: Entropy TimeIs where
  entropy = unwrap >>> _.entropy

instance entropyTimeIsAndWas :: Entropy (TimeIsAndWas TimeIs) where
  entropy = unwrap >>> _.timeIs >>> unwrap >>> _.entropy

instance entropyClockTimeIs :: Entropy ClockTimeIs where
  entropy = unwrap >>> _.entropy

instance entropyClockTimeIsAndWas :: Entropy (TimeIsAndWas ClockTimeIs) where
  entropy = unwrap >>> _.timeIs >>> unwrap >>> _.entropy

class ClockTime a where
  clockTime :: a -> Number

instance clockTimeTimeIs :: ClockTime TimeIs where
  clockTime = unwrap >>> _.clockTime

instance unsampledTimeTimeIs :: ClockTime UnsampledTimeIs where
  clockTime = unwrap >>> _.clockTime

instance clockTimeTimeIsAndWas :: ClockTime (TimeIsAndWas TimeIs) where
  clockTime = unwrap >>> _.timeIs >>> unwrap >>> _.clockTime

instance clockTimeClockTimeIs :: ClockTime ClockTimeIs where
  clockTime = unwrap >>> _.clockTime

instance clockTimeClockTimeIsAndWas :: ClockTime (TimeIsAndWas ClockTimeIs) where
  clockTime = unwrap >>> _.timeIs >>> unwrap >>> _.clockTime

class InitialEntropy a where
  initialEntropy :: a -> Number

instance initialEntropyTimeIs :: InitialEntropy TimeIs where
  initialEntropy = unwrap >>> _.initialEntropy

instance initialEntropyUnsampledTimeIs :: InitialEntropy UnsampledTimeIs where
  initialEntropy = unwrap >>> _.initialEntropy

instance initialEntropyTimeIsAndWas :: InitialEntropy (TimeIsAndWas TimeIs) where
  initialEntropy = unwrap >>> _.timeIs >>> unwrap >>> _.initialEntropy

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

instance bigCycleTimeUnsampledTimeIs :: BigCycleTime UnsampledTimeIs where
  bigCycleTime = unwrap >>> _.bigCycleTime

instance bigCycleTimeTimeIsAndWas :: BigCycleTime (TimeIsAndWas TimeIs) where
  bigCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.bigCycleTime

class LittleCycleTime a where
  littleCycleTime :: a -> Number

instance littleCycleTimeTimeIs :: LittleCycleTime TimeIs where
  littleCycleTime = unwrap >>> _.littleCycleTime

instance littleCycleTimeUnsampledTimeIs :: LittleCycleTime UnsampledTimeIs where
  littleCycleTime = unwrap >>> _.littleCycleTime

instance littleCycleTimeTimeIsAndWas :: LittleCycleTime (TimeIsAndWas TimeIs) where
  littleCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.littleCycleTime

class NormalizedClockTime a where
  normalizedClockTime :: a -> Number

instance normalizedClockTimeTimeIs :: NormalizedClockTime TimeIs where
  normalizedClockTime = unwrap >>> _.normalizedClockTime

instance normalizedClockTimeUnsampledTimeIs :: NormalizedClockTime UnsampledTimeIs where
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

instance normalizedBigCycleTimeUnsampledTimeIs :: NormalizedBigCycleTime UnsampledTimeIs where
  normalizedBigCycleTime = unwrap >>> _.normalizedBigCycleTime

instance normalizedBigCycleTimeTimeIsAndWas :: NormalizedBigCycleTime (TimeIsAndWas TimeIs) where
  normalizedBigCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedBigCycleTime

class NormalizedLittleCycleTime a where
  normalizedLittleCycleTime :: a -> Number

instance normalizedLittleCycleTimeTimeIs :: NormalizedLittleCycleTime TimeIs where
  normalizedLittleCycleTime = unwrap >>> _.normalizedLittleCycleTime

instance normalizedLittleCycleTimeUnsampledTimeIs :: NormalizedLittleCycleTime UnsampledTimeIs where
  normalizedLittleCycleTime = unwrap >>> _.normalizedLittleCycleTime

instance normalizedLittleCycleTimeTimeIsAndWas :: NormalizedLittleCycleTime (TimeIsAndWas TimeIs) where
  normalizedLittleCycleTime = unwrap >>> _.timeIs >>> unwrap >>> _.normalizedLittleCycleTime

class LittleCycleDuration a where
  littleCycleDuration :: a -> Number

instance littleCycleDurationTimeIs :: LittleCycleDuration TimeIs where
  littleCycleDuration = unwrap >>> _.littleCycleDuration

instance littleCycleDurationUnsampledTimeIs :: LittleCycleDuration UnsampledTimeIs where
  littleCycleDuration = unwrap >>> _.littleCycleDuration

instance littleCycleDurationTimeIsAndWas :: LittleCycleDuration (TimeIsAndWas TimeIs) where
  littleCycleDuration = unwrap >>> _.timeIs >>> unwrap >>> _.littleCycleDuration

class BigCycleDuration a where
  bigCycleDuration :: a -> Number

instance bigCycleDurationTimeIs :: BigCycleDuration TimeIs where
  bigCycleDuration = unwrap >>> _.bigCycleDuration

instance bigCycleDurationUnsampledTimeIs :: BigCycleDuration UnsampledTimeIs where
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
sample2drone :: Sample -> DroneNote
sample2drone sample = DroneNote
  { sample
  , forward: true
  , rateFoT: const 1.0
  , volumeFoT: const 1.0
  , loopStartFoT: const 0.0
  , loopEndFoT: const 0.0
  , tumultFoT: const calm
  }

note2drone :: Note -> DroneNote
note2drone (Note { sampleFoT, forward }) = DroneNote
  { sample: sampleFoT unlockSample
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
  ( Note
      <<<
        { sampleFoT: _
        , bufferOffsetFoT: const 0.0
        , rateFoT: const 1.0
        , forward: true
        , volumeFoT: const 1.0
        }
      <<< const
  )
  nameToSampleMO

dronesToSample :: Array (String /\ Sample)
dronesToSample =
  [ "spacewind" /\ spacewind_0__Sample
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
  ] <> dronesToSample

type ForwardBackwards = { forward :: BrowserAudioBuffer, backwards :: BrowserAudioBuffer }

sampleToUrls :: Map Sample BufferUrl
sampleToUrls = Map.fromFoldable $ map (\(a /\ b) -> Sample a /\ BufferUrl b) $ (Object.toUnfoldable :: _ -> Array _) $ urls
