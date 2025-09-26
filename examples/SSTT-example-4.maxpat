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
		"rect" : [ 139.0, 87.0, 1199.0, 760.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 126.0, 649.0, 55.0, 22.0 ],
					"text" : "1 3 2 4 5"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "STTMix" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-24",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 36.0, 321.0, 154.0, 61.0 ],
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
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-RingMod.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 170.999996185302734, 239.0, 237.0, 64.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-14",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 482.0, 156.0, 276.0, 87.0 ],
					"text" : "// Lets keep things simple, what if we Ringmodulate (RM) the ambisonic signal? So that the spherical harmonics i.e directional components are being RM , \n\nI.e timbre and spatial properties tied"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "BassClar.20_4.MEL_15.wav",
								"filename" : "BassClar.20_4.MEL_15.wav",
								"filekind" : "audiofile",
								"id" : "u732009114",
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
					"id" : "obj-22",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 39.999996185302734, 54.99999475479126, 150.0, 30.0 ],
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
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 657.0, 54.0, 22.0 ],
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
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-encode.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 36.0, 100.0, 287.0, 105.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 71.87499725818634, 96.874996304512024, 336.458320498466492, 80.996626853942871 ],
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
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Decoder-Output.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 36.0, 452.0, 988.0, 174.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.83333158493042, 593.749977350234985, 1196.874954342842102, 179.166659832000732 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-12::obj-36" : [ "RM_freq", "Frequency", 0 ],
			"obj-19::obj-20" : [ "ShowCh[13]", "showCh", 0 ],
			"obj-19::obj-3" : [ "ambiorder", "ambiorder", 0 ],
			"obj-19::obj-57" : [ "live.text[15]", "live.text[9]", 0 ],
			"obj-19::obj-79" : [ "ShowCh[14]", "showCh", 0 ],
			"obj-1::obj-10" : [ "Crossover", "Crossover", 0 ],
			"obj-1::obj-103::obj-21" : [ "live.menu", "live.menu", 0 ],
			"obj-1::obj-12" : [ "live.menu[8]", "live.menu[2]", 0 ],
			"obj-1::obj-14" : [ "mc.live.gain~[2]", "loudspeakers", 0 ],
			"obj-1::obj-22::obj-102" : [ "live.toggle[436]", "live.toggle", 0 ],
			"obj-1::obj-22::obj-3" : [ "live.text[1]", "live.text[9]", 0 ],
			"obj-1::obj-22::obj-57" : [ "live.text[9]", "live.text[9]", 0 ],
			"obj-1::obj-22::obj-58" : [ "live.text[10]", "live.text[9]", 0 ],
			"obj-1::obj-22::obj-62" : [ "live.text[12]", "live.text[9]", 0 ],
			"obj-1::obj-22::obj-72" : [ "live.text[14]", "live.text[8]", 0 ],
			"obj-1::obj-25" : [ "live.tab[2]", "live.tab[2]", 0 ],
			"obj-1::obj-27" : [ "live.menu[9]", "live.menu", 0 ],
			"obj-1::obj-31" : [ "Headphones_vol", "headphones", 0 ],
			"obj-1::obj-38" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-1::obj-4" : [ "ShowCh[1]", "showCh", 0 ],
			"obj-1::obj-45" : [ "live.menu[10]", "live.menu", 0 ],
			"obj-1::obj-58" : [ "live.text[13]", "live.text[9]", 0 ],
			"obj-1::obj-7" : [ "live.menu[5]", "live.menu[1]", 0 ],
			"obj-1::obj-79" : [ "ShowCh[2]", "showCh", 0 ],
			"obj-24::obj-35" : [ "ShowCh[3]", "showCh", 0 ],
			"obj-24::obj-5" : [ "drywet[1]", "Dry/Wet", 0 ],
			"obj-24::obj-82" : [ "ShowChbox[3]", "showCh", 0 ],
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
				"obj-12::obj-36" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "RM_freq",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "RM_freq",
					"parameter_range" : [ 5.0, 1500.0 ]
				}
,
				"obj-19::obj-3" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "ambiorder",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "ambiorder",
					"parameter_shortname" : "ambiorder"
				}
,
				"obj-1::obj-10" : 				{
					"parameter_longname" : "Crossover",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "Crossover",
					"parameter_shortname" : "Crossover"
				}
,
				"obj-1::obj-103::obj-21" : 				{
					"parameter_longname" : "live.menu"
				}
,
				"obj-1::obj-14" : 				{
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "Loudspeaker_vol"
				}
,
				"obj-1::obj-31" : 				{
					"parameter_initial" : -70.0,
					"parameter_initial_enable" : 1,
					"parameter_linknames" : 1,
					"parameter_longname" : "Headphones_vol",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "headphones_vol"
				}
,
				"obj-24::obj-35" : 				{
					"parameter_longname" : "ShowCh[3]"
				}
,
				"obj-24::obj-5" : 				{
					"parameter_longname" : "drywet[1]"
				}
,
				"obj-24::obj-82" : 				{
					"parameter_longname" : "ShowChbox[3]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "BassClar.20_4.MEL_15.wav",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "HOA-RingFx.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
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
				"name" : "SSTT-Mixer.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-RingMod.maxpat",
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
				"name" : "mcDryWet-mix.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "spat5.osc.route.mxo",
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
