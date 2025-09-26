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
		"rect" : [ 206.0, 87.0, 1100.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 833.0, 190.0, 311.0, 35.0 ],
					"text" : "/rot-yaw_onoff 1, /ambiorder 5, /autorotate 1, /drywet 70, /Decorr-deltime 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 827.0, 91.0, 151.0, 33.0 ],
					"text" : "// setting param value with OSC"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 838.0, 155.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 831.0, 242.0, 207.0, 22.0 ],
					"text" : "spat5.osc.prepend /SSTT-example-5/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 831.0, 279.0, 122.0, 22.0 ],
					"text" : "param.osc @auto 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 517.0, 113.0, 210.0, 74.0 ],
					"text" : "// Decorrelation then cont.rotate \n\nCreates a diffuse field, really suited for creating a particle-trail like effect when used with transient sounds"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 646.0, 54.0, 22.0 ],
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
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Rotation.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 369.0, 316.0, 323.0, 101.0 ],
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
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-DeCorr.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 369.0, 218.0, 261.0, 85.0 ],
					"viewvisibility" : 1
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
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Meccano opptrekk 2 (nærmere) .aif",
								"filename" : "Meccano opptrekk 2 (nærmere) .aif",
								"filekind" : "audiofile",
								"id" : "u123011415",
								"selection" : [ 0.447916666666667, 0.0 ],
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
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
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
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
			"obj-24::obj-35" : [ "ShowCh[18]", "showCh", 0 ],
			"obj-24::obj-5" : [ "drywet", "Dry/Wet", 0 ],
			"obj-24::obj-82" : [ "ShowChbox[2]", "showCh", 0 ],
			"obj-4::obj-10" : [ "Decorr-deltime", "DelTime", 0 ],
			"obj-4::obj-14" : [ "ShowCh[10]", "showCh", 0 ],
			"obj-4::obj-5" : [ "live.tab", "live.tab", 0 ],
			"obj-4::obj-79" : [ "ShowCh[9]", "showCh", 0 ],
			"obj-5::obj-14" : [ "rot-yaw_onoff", "yawonoff", 0 ],
			"obj-5::obj-15" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-5::obj-16" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-5::obj-2" : [ "counter-rot", "counter-rot", 0 ],
			"obj-5::obj-20" : [ "ShowCh[6]", "showCh", 0 ],
			"obj-5::obj-26" : [ "autorotate", "autorotate", 0 ],
			"obj-5::obj-38::obj-10" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-15" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-19" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-3" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-5::obj-38::obj-7" : [ "live.numbox", "live.numbox", 0 ],
			"obj-5::obj-79" : [ "ShowCh[15]", "showCh", 0 ],
			"obj-5::obj-91" : [ "rot-roll", "roll", 0 ],
			"obj-5::obj-92" : [ "rot-pitch", "pitch", 0 ],
			"obj-5::obj-93" : [ "rot-yaw", "yaw", 0 ],
			"parameter_overrides" : 			{
				"obj-1::obj-103::obj-21" : 				{
					"parameter_longname" : "live.menu"
				}
,
				"obj-4::obj-10" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "Decorr-deltime",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "Decorr-deltime"
				}
,
				"obj-5::obj-14" : 				{
					"parameter_longname" : "rot-yaw_onoff",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "rot-yaw_onoff",
					"parameter_shortname" : "yawonoff"
				}
,
				"obj-5::obj-2" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "counter-rot",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "counter-rot",
					"parameter_shortname" : "counter-rot"
				}
,
				"obj-5::obj-26" : 				{
					"parameter_longname" : "autorotate",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "autorotate",
					"parameter_shortname" : "autorotate"
				}
,
				"obj-5::obj-38::obj-3" : 				{
					"parameter_longname" : "live.tab[3]"
				}
,
				"obj-5::obj-79" : 				{
					"parameter_longname" : "ShowCh[15]"
				}
,
				"obj-5::obj-91" : 				{
					"parameter_longname" : "rot-roll",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "rot-roll"
				}
,
				"obj-5::obj-92" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "rot-pitch",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "rot-pitch"
				}
,
				"obj-5::obj-93" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "rot-yaw",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "rot-yaw"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Meccano opptrekk 2 (nærmere) .aif",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "./media",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-DeCorr.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Decoder-Output.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Mixer.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Rotation.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-encode.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mcDryWet-mix.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "./abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.around.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/SpektraFon-versjon-0.8/patchers",
				"patcherrelativepath" : "../Max 8/Projects/SpektraFon-versjon-0.8/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.gui.control.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../Max 9/Packages/spat5/patchers",
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
				"name" : "spat5.hoa.rotate~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.known.speakersetups.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../Max 9/Packages/spat5/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
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
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "./javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "spdecorrHOA.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "./abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-hoa-encodeMain.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "./javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-hoa-rotate.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "./javascript",
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
