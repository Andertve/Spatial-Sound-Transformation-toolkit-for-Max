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
		"rect" : [ 218.0, 99.0, 1158.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
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
					"name" : "SSTT-Rotation.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 218.0, 191.0, 322.0, 100.0 ],
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
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-AmbiCombiner.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 90.0, 510.5, 218.0, 83.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"linecount" : 21,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 860.0, 75.0, 209.0, 288.0 ],
					"text" : "Spectral Interpol does spectral interpolation, it accepts multichannel, mono and ambisonic\n\nit has two outputs or modes 1) or leftmost outlet  is an ambisonic encoded signal using a t-design ( similar to the spat-gran example) the outlet 2 or rightmost is just processing the number of channels you feed in, so in this example we process only the vertical spherical harmonics or elevated ambisonic signal if you like from the ambi spliter, then combing the unprocessed horizontal components+processed components and then rotate it. you could/would have used the Re-Encoder here at the end of the chain in order to have everything proper in ambisonic again"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-AmbiSplitter.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 46.0, 313.0, 262.0, 80.0 ],
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
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Spectral-Interpolate.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 348.0, 313.0, 290.0, 184.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 896.0, 458.0, 169.0, 35.0 ],
					"text" : "/drywet 75, /Interp_Time 6400,"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 896.0, 504.0, 214.0, 22.0 ],
					"text" : "spat5.osc.prepend /SSTT-example-13/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 896.0, 541.0, 113.0, 22.0 ],
					"text" : "param.osc @auto 1"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 20.666666666666668,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "EspressoHelling.wav",
								"filename" : "EspressoHelling.wav",
								"filekind" : "audiofile",
								"id" : "u730010820",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "BassClar.20_4.MEL_15.wav",
								"filename" : "BassClar.20_4.MEL_15.wav",
								"filekind" : "audiofile",
								"id" : "u392002814",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "Bari multi M8 pitched_01 (1).wav",
								"filename" : "Bari multi M8 pitched_01 (1).wav",
								"filekind" : "audiofile",
								"id" : "u075002603",
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
					"id" : "obj-9",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 75.0, -8.0, 166.0, 65.0 ],
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
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-encode.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 75.0, 71.0, 287.0, 108.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 65.0, 766.0, 54.0, 22.0 ],
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
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Decoder-Output.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 90.0, 594.0, 989.0, 170.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-19", 0 ]
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
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-18::obj-24" : [ "ShowCh[29]", "showCh", 0 ],
			"obj-18::obj-79" : [ "ShowCh[30]", "showCh", 0 ],
			"obj-19::obj-14" : [ "rot-yaw_onoff[1]", "yawonoff", 0 ],
			"obj-19::obj-15" : [ "live.toggle[5]", "live.toggle", 0 ],
			"obj-19::obj-16" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-19::obj-2" : [ "counter-rot[1]", "counter-rot", 0 ],
			"obj-19::obj-20" : [ "ShowCh[33]", "showCh", 0 ],
			"obj-19::obj-26" : [ "autorotate[1]", "autorotate", 0 ],
			"obj-19::obj-38::obj-10" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-19::obj-38::obj-15" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-19::obj-38::obj-19" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-19::obj-38::obj-3" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-19::obj-38::obj-7" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-19::obj-79" : [ "ShowCh[34]", "showCh", 0 ],
			"obj-19::obj-91" : [ "rot-roll[1]", "roll", 0 ],
			"obj-19::obj-92" : [ "rot-pitch[1]", "pitch", 0 ],
			"obj-19::obj-93" : [ "rot-yaw[1]", "yaw", 0 ],
			"obj-20::obj-15" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-20::obj-34" : [ "Interp Time", "Interp Time", 0 ],
			"obj-20::obj-35" : [ "ShowCh[17]", "showCh", 0 ],
			"obj-20::obj-49" : [ "Denoise[1]", "Denoise", 0 ],
			"obj-20::obj-55" : [ "live.text", "live.text", 0 ],
			"obj-20::obj-56" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-20::obj-67" : [ "live.menu[39]", "live.menu[13]", 0 ],
			"obj-20::obj-79" : [ "ShowCh[3]", "showCh", 0 ],
			"obj-21::obj-24" : [ "ShowCh[32]", "showCh", 0 ],
			"obj-21::obj-79" : [ "ShowCh[31]", "showCh", 0 ],
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
			"obj-3::obj-20" : [ "ShowCh[13]", "showCh", 0 ],
			"obj-3::obj-3" : [ "ambiorder", "ambiorder", 0 ],
			"obj-3::obj-57" : [ "live.text[15]", "live.text[9]", 0 ],
			"obj-3::obj-79" : [ "ShowCh[14]", "showCh", 0 ],
			"parameter_overrides" : 			{
				"obj-19::obj-14" : 				{
					"parameter_longname" : "rot-yaw_onoff[1]"
				}
,
				"obj-19::obj-15" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-19::obj-16" : 				{
					"parameter_longname" : "live.toggle[6]"
				}
,
				"obj-19::obj-2" : 				{
					"parameter_longname" : "counter-rot[1]"
				}
,
				"obj-19::obj-20" : 				{
					"parameter_longname" : "ShowCh[33]"
				}
,
				"obj-19::obj-26" : 				{
					"parameter_longname" : "autorotate[1]"
				}
,
				"obj-19::obj-38::obj-10" : 				{
					"parameter_longname" : "live.numbox[7]"
				}
,
				"obj-19::obj-38::obj-15" : 				{
					"parameter_longname" : "live.numbox[9]"
				}
,
				"obj-19::obj-38::obj-19" : 				{
					"parameter_longname" : "live.numbox[8]"
				}
,
				"obj-19::obj-38::obj-3" : 				{
					"parameter_longname" : "live.tab[3]"
				}
,
				"obj-19::obj-38::obj-7" : 				{
					"parameter_longname" : "live.numbox[4]"
				}
,
				"obj-19::obj-79" : 				{
					"parameter_longname" : "ShowCh[34]"
				}
,
				"obj-19::obj-91" : 				{
					"parameter_longname" : "rot-roll[1]"
				}
,
				"obj-19::obj-92" : 				{
					"parameter_longname" : "rot-pitch[1]"
				}
,
				"obj-19::obj-93" : 				{
					"parameter_longname" : "rot-yaw[1]"
				}
,
				"obj-20::obj-34" : 				{
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "Interp_Time"
				}
,
				"obj-20::obj-79" : 				{
					"parameter_longname" : "ShowCh[3]"
				}
,
				"obj-21::obj-24" : 				{
					"parameter_longname" : "ShowCh[32]"
				}
,
				"obj-21::obj-79" : 				{
					"parameter_longname" : "ShowCh[31]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Bari multi M8 pitched_01 (1).wav",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "BassClar.20_4.MEL_15.wav",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "EspressoHelling.wav",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "SPTT-Ambi-Splitter-Combiner.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SPTT_RouterManager.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-AmbiCombiner.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-AmbiSplitter.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Decoder-Output.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Rotation.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-Spectral-Interpolate.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-encode.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SpecInterpol.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.around.maxpat",
				"bootpath" : "~/Documents/Max 8/Projects/SpektraFon-versjon-0.8/patchers",
				"patcherrelativepath" : "../../Max 8/Projects/SpektraFon-versjon-0.8/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.grids.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.gui.control.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../Max 9/Packages/spat5/patchers",
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
				"patcherrelativepath" : "../../Max 9/Packages/spat5/patchers",
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
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-hoa-encodeMain.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-hoa-rotate.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sptt-spectral-interp_spat.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
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
