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
		"rect" : [ 118.0, 125.0, 1254.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 648.0, 55.0, 22.0 ],
					"text" : "1 3 2 4 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 362.0, 329.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"data" : 					{
						"autosave" : 1,
						"snapshot" : 						{
							"filetype" : "C74Snapshot",
							"version" : 2,
							"minorversion" : 0,
							"name" : "snapshotlist",
							"origin" : "vst~",
							"type" : "list",
							"subtype" : "Undefined",
							"embed" : 1,
							"snapshot" : 							{

							}
,
							"snapshotlist" : 							{
								"current_snapshot" : 0,
								"entries" : [ 									{
										"filetype" : "C74Snapshot",
										"version" : 2,
										"minorversion" : 0,
										"name" : "",
										"origin" : "",
										"type" : "AudioUnit",
										"subtype" : "AudioEffect",
										"embed" : 0,
										"snapshot" : 										{

										}
,
										"fileref" : 										{
											"name" : "",
											"filename" : "_20250925.maxsnap",
											"filepath" : "~/Documents/Max 9/Snapshots",
											"filepos" : -1,
											"snapshotfileid" : "dac10e7433540f62dfd269b99e3d99f1"
										}

									}
 ]
							}

						}

					}
,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-68",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "multichannelsignal", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 413.0, 366.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "mc.vst~",
					"varname" : "mc.vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"linecount" : 15,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 68.0, 231.57895565032959, 208.0 ],
					"text" : "In fact any non-linear sound transformation to ambisonic will trash the ambisonic signal ( but it still might sound great!) however you can use the Re-Encoder which will decode to a t-format then do your non-linear processing then go from t-format to ambisonic where it will be a proper ambisonic signal. \n\nIn this example we use an vst plugin set in multichannel mode so that it has the number of instances of that plugin according to the t-format channels, in this case 49.."
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
					"patching_rect" : [ 413.0, 261.0, 297.0, 78.0 ],
					"viewvisibility" : 1
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
					"patching_rect" : [ 112.0, 667.0, 54.0, 22.0 ],
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
					"patching_rect" : [ 112.0, 473.0, 989.0, 170.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
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
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-70", 0 ]
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
			"obj-68" : [ "vst~[24]", "vst~[24]", 0 ],
			"parameter_overrides" : 			{
				"obj-13::obj-67" : 				{
					"parameter_longname" : "live.menu[39]"
				}
,
				"obj-2::obj-103::obj-21" : 				{
					"parameter_linknames" : 1,
					"parameter_longname" : "speakersetup",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "speakersetup"
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
				"name" : "SSTT-ReEncoder.maxpat",
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
				"name" : "_20250925.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
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
