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
		"rect" : [ 59.0, 106.0, 1212.0, 760.0 ],
		"default_fontface" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 446.0, 25.0, 215.0, 20.0 ],
					"text" : "//Exploding the sound into a space"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.650980392156863, 0.76078431372549, 0.584313725490196, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 491.0, 431.5, 35.0, 24.0 ],
					"text" : "d"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.650980392156863, 0.76078431372549, 0.584313725490196, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 644.0, 335.0, 46.0, 24.0 ],
					"text" : "a,b"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.650980392156863, 0.76078431372549, 0.584313725490196, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 644.0, 173.5, 35.0, 24.0 ],
					"text" : "c"
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
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-HOA_Focus.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 285.0, 400.0, 197.0, 87.0 ],
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
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-SpectrumSplit~.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 285.0, 290.0, 354.0, 96.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.650980392156863, 0.76078431372549, 0.584313725490196, 1.0 ],
					"bubble_bgcolor" : [ 0.650980392156863, 0.76078431372549, 0.584313725490196, 1.0 ],
					"id" : "obj-87",
					"linecount" : 20,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 105.0, 287.0, 275.0 ],
					"text" : "a) split the source sound into frequency multichannel bands ( in this case a 50-band resonance filter with 50 channels. I.e. each channel, one freq band.\n\nb) The Frequency band and corresponding channel as virtual sources into an Ambisonic encoder , The virtual sources are distributed by Fibonacci spiral).  \n\nc) rotating and scaling the distribution of Virtual sources are done by mapping MFCC bands to scaling and rotation around the axis.\nThe MFCC analysis of the spectrum is output by onset detection.\n\nd) Using virtual beamforming we can focus  and direct the frequency-distributed sound in space\nwhere it is resonating differently depending on the direction of the beam"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 20.5,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "bsclarinetsAirsnd3.aif",
								"filename" : "bsclarinetsAirsnd3.aif",
								"filekind" : "audiofile",
								"id" : "u353004504",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
, 							{
								"absolutepath" : "preparert piano 01.wav",
								"filename" : "preparert piano 01.wav",
								"filekind" : "audiofile",
								"id" : "u703014634",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"fontface" : 0,
					"formantcorrection" : 0,
					"id" : "obj-26",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 33.0, 51.0, 243.0, 43.0 ],
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
					"name" : "SSTT-MFCCmap.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 346.0, 110.0, 293.0, 147.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.0, 326.0, 169.0, 33.0 ],
					"text" : "// setting param value with OSC"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1051.0, 380.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1042.0, 421.0, 216.0, 22.0 ],
					"text" : "/drywet 100, /gain_spc 0., /ambiorder 5"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1042.0, 456.0, 111.0, 35.0 ],
					"text" : "spat5.osc.prepend /SSTT-example-6/"
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
					"patching_rect" : [ 1042.0, 493.0, 122.0, 22.0 ],
					"text" : "param.osc @auto 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 715.0, 58.0, 22.0 ],
					"text" : "mc.dac~"
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
					"patching_rect" : [ 33.0, 366.0, 154.0, 61.0 ],
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
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-encode.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 33.0, 138.0, 287.0, 105.0 ],
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
					"patching_rect" : [ 33.0, 529.0, 988.0, 174.0 ],
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-10", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"source" : [ "obj-3", 1 ]
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
			"obj-3::obj-30" : [ "live.numbox[14]", "live.numbox[9]", 0 ],
			"obj-3::obj-31" : [ "live.numbox[16]", "live.numbox[9]", 0 ],
			"obj-3::obj-46" : [ "live.numbox[17]", "live.numbox[9]", 0 ],
			"obj-3::obj-5" : [ "threshold", "Threshold", 0 ],
			"obj-3::obj-51" : [ "live.numbox[15]", "live.numbox[9]", 0 ],
			"obj-3::obj-62" : [ "live.dial[6]", "yaw", 0 ],
			"obj-4::obj-3" : [ "gain_spc", "Gain", 0 ],
			"obj-4::obj-58" : [ "live.text[22]", "live.text[9]", 0 ],
			"obj-4::obj-7" : [ "ShowCh[15]", "showCh", 0 ],
			"obj-4::obj-79" : [ "ShowCh[16]", "showCh", 0 ],
			"obj-4::obj-85::obj-40" : [ "live.numbox[13]", "live.numbox", 0 ],
			"obj-5::obj-57" : [ "live.text[2]", "live.text[9]", 0 ],
			"obj-5::obj-7" : [ "ShowCh[24]", "showCh", 0 ],
			"obj-5::obj-79" : [ "ShowCh[23]", "showCh", 0 ],
			"obj-5::obj-81" : [ "live.dial[7]", "el", 0 ],
			"obj-5::obj-82" : [ "ShowChbox[3]", "showCh", 0 ],
			"obj-5::obj-9" : [ "live.dial[13]", "selectivity", 0 ],
			"parameter_overrides" : 			{
				"obj-1::obj-103::obj-21" : 				{
					"parameter_longname" : "live.menu"
				}
,
				"obj-4::obj-3" : 				{
					"parameter_initial" : 0,
					"parameter_linknames" : 1,
					"parameter_longname" : "gain_spc",
					"parameter_osc_enabled" : 1,
					"parameter_osc_name" : "gain_spc"
				}
,
				"obj-5::obj-82" : 				{
					"parameter_longname" : "ShowChbox[3]",
					"parameter_shortname" : "showCh"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "SPTT-bandSplitter_Core~.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "./abstractions",
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
				"name" : "SSTT-HOA_Focus.maxpat",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-MFCCmap.maxpat",
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
				"name" : "SSTT-SpectrumSplit~.maxpat",
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
				"name" : "Specsplitter-setup.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "./javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bsclarinetsAirsnd3.aif",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "./media",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "fluid.mfcc~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "fluid.onsetfeature~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "focus-setup.js",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "./javascript",
				"type" : "TEXT",
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
				"name" : "preparert piano 01.wav",
				"bootpath" : "~/Documents/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "./media",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.grids.mxo",
				"type" : "iLaX"
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
				"name" : "spat5.hoa.focus.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.focus~.mxo",
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
				"patcherrelativepath" : "./javascript",
				"type" : "TEXT",
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
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
