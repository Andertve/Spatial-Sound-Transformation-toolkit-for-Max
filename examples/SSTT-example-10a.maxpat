{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 9,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 124.0, 1254.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 172.0, 724.0, 55.0, 22.0 ],
					"text" : "1 3 2 4 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 730.526341915130615, 333.0, 233.0, 181.0 ],
					"text" : "An explanation: We are going into the Re-Encoder with our messed up ambisonic signal, we decode it internally to a t-format SAD ( a spherical t-design resembling coincendal multimicrophones),which have more than the ambisonic channels, then in order to encode it back we connect it to a mc.* 1 which does not do anything other than help with getting back into the patch, then its being encoded as virtual sources to ambisonic and we now have establish a proper ambisonic signal."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 668.0, 393.0, 53.0, 22.0 ],
					"text" : "mc.*~ 1."
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-13",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-ReEncoder.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 390.0, 432.0, 297.0, 78.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1082.0, 366.0, 149.0, 62.0 ],
					"text" : "/waveshpr_gain 1, /waveshpr_drive 11, /spat_HOAblur 31.5, /drywet 85"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-24",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Spatial-waveshape.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 363.0, 233.0, 184.0, 75.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-HOA-Blur.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 390.0, 333.0, 191.0, 80.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1082.0, 333.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1082.0, 430.0, 119.0, 35.0 ],
					"text" : "spat5.osc.prepend /SSTT-example-10a/"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 100.0, 432.0, 154.0, 65.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1082.0, 478.0, 122.0, 22.0 ],
					"text" : "param.osc @auto 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 596.0, 118.0, 152.0, 127.0 ],
					"text" : "Since we are basically destroying the ambisonic  signal we can reEncode it gain so we are going back into ambisonic domain by going in to a intermediate format called T-format and then back again to B format /Ambisonic"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "/Users/anderstveit/Desktop/fscape-lectureRiga/Barislwav.wav",
								"filename" : "Barislwav.wav",
								"filekind" : "audiofile",
								"id" : "u410005876",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-8",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 100.0, 55.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"saved_attribute_attributes" : 					{
						"candicane2" : 						{
							"expression" : ""
						}
,
						"candicane3" : 						{
							"expression" : ""
						}
,
						"candicane4" : 						{
							"expression" : ""
						}
,
						"candicane5" : 						{
							"expression" : ""
						}
,
						"candicane6" : 						{
							"expression" : ""
						}
,
						"candicane7" : 						{
							"expression" : ""
						}
,
						"candicane8" : 						{
							"expression" : ""
						}

					}
,
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 737.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-encode.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 100.0, 118.0, 287.0, 108.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Decoder-Output.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 100.0, 545.0, 989.0, 170.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13::obj-67" : [ "live.menu[39]", "live.menu[13]", 0 ],
			"obj-13::obj-79" : [ "ShowCh[15]", "showCh", 0 ],
			"obj-13::obj-9" : [ "ShowCh[5]", "showCh", 0 ],
			"obj-1::obj-20" : [ "ShowCh[13]", "showCh", 0 ],
			"obj-1::obj-3" : [ "ambiorder", "ambiorder", 0 ],
			"obj-1::obj-57" : [ "live.text[15]", "live.text[9]", 0 ],
			"obj-1::obj-79" : [ "ShowCh[14]", "showCh", 0 ],
			"obj-24::obj-12" : [ "ShowCh[21]", "showCh", 0 ],
			"obj-24::obj-13" : [ "ShowCh[20]", "showCh", 0 ],
			"obj-24::obj-7" : [ "waveshpr_drive", "Nigel", 0 ],
			"obj-24::obj-8" : [ "waveshpr_gain", "Tufnel", 0 ],
			"obj-2::obj-10" : [ "Crossover", "Crossover", 0 ],
			"obj-2::obj-103::obj-21" : [ "speakersetup", "live.menu", 0 ],
			"obj-2::obj-12" : [ "live.menu[8]", "live.menu[2]", 0 ],
			"obj-2::obj-14" : [ "mc.live.gain~[2]", "loudspeakers", 0 ],
			"obj-2::obj-22::obj-102" : [ "live.toggle[436]", "live.toggle", 0 ],
			"obj-2::obj-22::obj-3" : [ "live.text[1]", "live.text[9]", 0 ],
			"obj-2::obj-22::obj-57" : [ "live.text[9]", "live.text[9]", 0 ],
			"obj-2::obj-22::obj-58" : [ "live.text[10]", "live.text[9]", 0 ],
			"obj-2::obj-22::obj-62" : [ "live.text[12]", "live.text[9]", 0 ],
			"obj-2::obj-22::obj-72" : [ "live.text[14]", "live.text[8]", 0 ],
			"obj-2::obj-25" : [ "live.tab[2]", "live.tab[2]", 0 ],
			"obj-2::obj-27" : [ "live.menu[9]", "live.menu", 0 ],
			"obj-2::obj-31" : [ "Headphones_vol", "headphones", 0 ],
			"obj-2::obj-38" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-2::obj-4" : [ "ShowCh[1]", "showCh", 0 ],
			"obj-2::obj-45" : [ "live.menu[10]", "live.menu", 0 ],
			"obj-2::obj-58" : [ "live.text[13]", "live.text[9]", 0 ],
			"obj-2::obj-7" : [ "live.menu[5]", "live.menu[1]", 0 ],
			"obj-2::obj-79" : [ "ShowCh[2]", "showCh", 0 ],
			"obj-3::obj-35" : [ "ShowCh[18]", "showCh", 0 ],
			"obj-3::obj-5" : [ "drywet", "Dry/Wet", 0 ],
			"obj-3::obj-82" : [ "ShowChbox[2]", "showCh", 0 ],
			"obj-5::obj-23" : [ "spat_HOAblur", "blur", 0 ],
			"obj-5::obj-4" : [ "ShowCh[6]", "showCh", 0 ],
			"obj-5::obj-79" : [ "ShowCh[22]", "showCh", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-13::obj-67" : 				{
					"parameter_longname" : "live.menu[39]"
				}
,
				"obj-24::obj-7" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "waveshpr_drive",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "waveshpr_drive"
				}
,
				"obj-24::obj-8" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "waveshpr_gain",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "waveshpr_gain"
				}
,
				"obj-2::obj-103::obj-21" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "speakersetup",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "speakersetup"
				}
,
				"obj-5::obj-23" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "spat_HOAblur",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "spat_HOAblur"
				}
,
				"obj-5::obj-4" : 				{
					"parameter_longname" : "ShowCh[6]"
				}
,
				"obj-5::obj-79" : 				{
					"parameter_longname" : "ShowCh[22]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Barislwav.wav",
				"bootpath" : "~/Desktop/fscape-lectureRiga",
				"patcherrelativepath" : "../../../../../Desktop/fscape-lectureRiga",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Decoder-Output.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-HOA-Blur.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Mixer.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-ReEncoder.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Spatial-waveshape.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-encode.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ambi_split_waveshape_router.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hoa_blur.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mcDryWet-mix.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "reencode_builder.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.grids.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.gui.control.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.headphoneeq~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.binaural~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.blur~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.decoder~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.encoder~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.known.speakersetups.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.osc.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.replace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.osc.routepass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.speaker.config.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.speaker.layout.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.transform.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.viewer.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat_decode_manager.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-hoa-encodeMain.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
