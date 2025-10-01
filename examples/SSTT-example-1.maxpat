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
		"rect" : [ 315.0, 87.0, 1044.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"bubbleside" : 2,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 378.0, 201.0, 39.0 ],
					"text" : "Binaural or loudspeaker decoding"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"bubbleside" : 2,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 389.0, 169.0, 39.0 ],
					"text" : "Headphone EQ for binaural"
				}

			}
, 			{
				"box" : 				{
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"id" : "obj-23",
					"linecount" : 18,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, 131.0, 178.0, 248.0 ],
					"text" : "NB\n\nThe bpatcers or modules are based on IRCAM Spat5 for the most although quite a lot  a few custom abstractions was made for this toolkit. \n\nHowever all of the specific functionality when it comes handling the order and channelcount dynamically, custom javascript are vital to this toolkit therefore please leave the js files and these bpatchers in the folder where they are, otherwise it will be broken."
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "hobbyvev.wav",
								"filename" : "hobbyvev.wav",
								"filekind" : "audiofile",
								"id" : "u378011820",
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
					"patching_rect" : [ 33.0, 30.0, 150.0, 30.0 ],
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
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"id" : "obj-17",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 303.0, 108.0, 235.0, 104.0 ],
					"text" : "Define the ambisonic order by entering number, and all the modules you use from this toolkit are dynamically changed to reflect the order and channel count. This information is displayed in the two small number boxes located in the lower‑right corner."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"bubbleside" : 2,
					"id" : "obj-16",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 790.0, 382.5, 153.0, 52.0 ],
					"text" : "Define your own loudspeaker setup"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"bubbleside" : 0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 646.0, 586.0, 153.0, 39.0 ],
					"text" : "Decoder settings"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"bubbleside" : 3,
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 484.0, 153.0, 37.0 ],
					"text" : "Preexisting Loudpspeaker setups"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"id" : "obj-13",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 626.0, 334.0, 64.0 ],
					"text" : "And, of course, a DAC object—in this case mc.dac~. Since the output from the Decoder Out module is multichannel, we use mc.dac~. For specific routing and channel selection you can use mc.unpack~ → dac~."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.0, 647.0, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"id" : "obj-10",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 294.0, 178.0, 60.0 ],
					"text" : "An input to the Encoder module,the Decoder Out  module and a dac~ must be in place connected in  the patch"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.733333333333333, 0.831372549019608, 0.694117647058824, 1.0 ],
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 203.0, 27.0, 231.0, 37.0 ],
					"text" : "Any mono/stereo input: Soundfile, live input or generated signal"
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
					"patching_rect" : [ 33.0, 87.0, 287.0, 105.0 ],
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
					"patching_rect" : [ 33.0, 419.0, 988.0, 174.0 ],
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
					"destination" : [ "obj-1", 0 ],
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
 ],
		"parameters" : 		{
			"obj-19::obj-20" : [ "ShowCh[13]", "showCh", 0 ],
			"obj-19::obj-3" : [ "live.numbox[20]", "ambiorder", 0 ],
			"obj-19::obj-57" : [ "live.text[15]", "live.text[9]", 0 ],
			"obj-19::obj-79" : [ "ShowCh[14]", "showCh", 0 ],
			"obj-1::obj-10" : [ "live.dial", "Crossover", 0 ],
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
			"obj-1::obj-31" : [ "mc.live.gain~[9]", "headphones", 0 ],
			"obj-1::obj-38" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-1::obj-4" : [ "ShowCh[1]", "showCh", 0 ],
			"obj-1::obj-45" : [ "live.menu[10]", "live.menu", 0 ],
			"obj-1::obj-58" : [ "live.text[13]", "live.text[9]", 0 ],
			"obj-1::obj-7" : [ "live.menu[5]", "live.menu[1]", 0 ],
			"obj-1::obj-79" : [ "ShowCh[2]", "showCh", 0 ],
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
				"obj-19::obj-3" : 				{
					"parameter_longname" : "live.numbox[20]"
				}
,
				"obj-19::obj-57" : 				{
					"parameter_longname" : "live.text[15]"
				}
,
				"obj-1::obj-10" : 				{
					"parameter_longname" : "live.dial"
				}
,
				"obj-1::obj-103::obj-21" : 				{
					"parameter_longname" : "live.menu"
				}
,
				"obj-1::obj-31" : 				{
					"parameter_longname" : "mc.live.gain~[9]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "SSTT-Decoder-Output.maxpat",
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
				"name" : "hobbyvev.wav",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/media",
				"patcherrelativepath" : "../media",
				"type" : "WAVE",
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
		"autosave" : 0,
		"stripecolor" : [ 0.227451, 0.247059, 0.266667, 1.0 ],
		"saved_attribute_attributes" : 		{
			"locked_bgcolor" : 			{
				"expression" : "themecolor.theme_editing_bgcolor"
			}

		}

	}

}
