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
		"rect" : [ 59.0, 106.0, 1315.0, 700.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 751.0, 55.0, 22.0 ],
					"text" : "1 3 2 4 5"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Delay.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 536.0, 171.0, 241.0, 77.0 ],
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
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-AmbiCombiner.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.0, 267.0, 215.0, 82.499976396560669 ],
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
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-AmbiSplitter.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 465.0, 79.0, 257.0, 81.0 ],
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
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-record.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 81.0, 440.0, 255.0, 83.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.87499725818634, 523.333313941955566, 256.0, 71.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"linecount" : 29,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 141.0, 201.0, 395.0 ],
					"presentation" : 1,
					"presentation_linecount" : 29,
					"presentation_rect" : [ 828.541635632514954, 186.874993443489075, 201.0, 395.0 ],
					"text" : "//What happens in this patch:\n\na) Encode a source to ambisonic \n\nb) Add HOA continuos rotation around z axis (Yaw)\n\n\nc) Split in paralell the ambisonic signal using the Ambisonic splitter module\n\nd) add a multichannel delay on vertical part\n\ne) combine the horisontal and the vertical part using the ambi-combiner module\n\nf) rotate cont. the delayed HOA signal in opposite direction.\n\ng) Warp the delayed HOA signal.\n\nh) Mix the two signal together via dry/wet control\n\ni) Decode to loudspeakers ( or binaural simulation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-14",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.0, 8.0, 276.0, 60.0 ],
					"text" : "An Ambisonic signal has horizontal and vertical spherical components right? So what happens when we just delay the vertical spherical components?"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-warp.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.0, 478.0, 241.0, 77.0 ],
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
					"name" : "SSTT-Rotation.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.0, 359.0, 327.0, 106.0 ],
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
					"name" : "SSTT-Rotation.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 40.0, 209.0, 327.0, 101.0 ],
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
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "SSTT-Mixer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 40.0, 335.0, 155.0, 67.0 ],
					"viewvisibility" : 1
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
					"patching_rect" : [ 40.0, 38.0, 150.0, 30.0 ],
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
					"patching_rect" : [ 40.0, 761.0, 54.0, 22.0 ],
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
					"patching_rect" : [ 40.0, 83.0, 287.0, 105.0 ],
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
					"patching_rect" : [ 40.0, 568.0, 988.0, 174.0 ],
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
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-18" : [ "live.tab[1]", "live.tab", 0 ],
			"obj-10::obj-3" : [ "ShowCh[5]", "showCh", 0 ],
			"obj-10::obj-36" : [ "live.dial[18]", "Warp", 0 ],
			"obj-10::obj-79" : [ "ShowCh[8]", "showCh", 0 ],
			"obj-18::obj-20" : [ "ShowCh[12]", "showCh", 0 ],
			"obj-18::obj-25" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-18::obj-53" : [ "live.tab[8]", "live.tab[8]", 0 ],
			"obj-18::obj-79" : [ "ShowCh[11]", "showCh", 0 ],
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
			"obj-3::obj-35" : [ "ShowCh[18]", "showCh", 0 ],
			"obj-3::obj-5" : [ "live.dial[1]", "Dry/Wet", 0 ],
			"obj-3::obj-82" : [ "ShowChbox[2]", "showCh", 0 ],
			"obj-4::obj-14" : [ "live.toggle[2]", "yawonoff", 0 ],
			"obj-4::obj-15" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-4::obj-16" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-4::obj-2" : [ "live.toggle[1]", "counter-rot", 0 ],
			"obj-4::obj-20" : [ "ShowCh[6]", "showCh", 0 ],
			"obj-4::obj-26" : [ "live.toggle", "autorotate", 0 ],
			"obj-4::obj-38::obj-10" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-4::obj-38::obj-15" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-4::obj-38::obj-19" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-4::obj-38::obj-3" : [ "live.tab", "live.tab", 0 ],
			"obj-4::obj-38::obj-7" : [ "live.numbox", "live.numbox", 0 ],
			"obj-4::obj-79" : [ "ShowCh[7]", "showCh", 0 ],
			"obj-4::obj-91" : [ "live.dial[17]", "roll", 0 ],
			"obj-4::obj-92" : [ "live.dial[2]", "pitch", 0 ],
			"obj-4::obj-93" : [ "live.dial[6]", "yaw", 0 ],
			"obj-5::obj-14" : [ "live.toggle[5]", "yawonoff", 0 ],
			"obj-5::obj-15" : [ "live.toggle[8]", "live.toggle", 0 ],
			"obj-5::obj-16" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-5::obj-2" : [ "live.toggle[9]", "counter-rot", 0 ],
			"obj-5::obj-20" : [ "ShowCh[4]", "showCh", 0 ],
			"obj-5::obj-26" : [ "live.toggle[7]", "autorotate", 0 ],
			"obj-5::obj-38::obj-10" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-15" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-19" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-3" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-5::obj-38::obj-7" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-5::obj-79" : [ "ShowCh[3]", "showCh", 0 ],
			"obj-5::obj-91" : [ "live.dial[3]", "roll", 0 ],
			"obj-5::obj-92" : [ "live.dial[4]", "pitch", 0 ],
			"obj-5::obj-93" : [ "live.dial[7]", "yaw", 0 ],
			"obj-6::obj-24" : [ "ShowCh[10]", "showCh", 0 ],
			"obj-6::obj-79" : [ "ShowCh[9]", "showCh", 0 ],
			"obj-7::obj-24" : [ "ShowCh[16]", "showCh", 0 ],
			"obj-7::obj-79" : [ "ShowCh[15]", "showCh", 0 ],
			"obj-9::obj-12" : [ "ShowCh[17]", "showCh", 0 ],
			"obj-9::obj-13" : [ "ShowCh[19]", "showCh", 0 ],
			"obj-9::obj-26" : [ "DelayTime[2]", "DelayTime", 0 ],
			"obj-9::obj-30" : [ "Harmonics[2]", "harmonics", 0 ],
			"obj-9::obj-40" : [ "live.dial[5]", "Feedback", 0 ],
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
				"obj-10::obj-3" : 				{
					"parameter_longname" : "ShowCh[5]"
				}
,
				"obj-10::obj-36" : 				{
					"parameter_longname" : "live.dial[18]"
				}
,
				"obj-10::obj-79" : 				{
					"parameter_longname" : "ShowCh[8]"
				}
,
				"obj-18::obj-25" : 				{
					"parameter_longname" : "live.toggle[10]"
				}
,
				"obj-19::obj-3" : 				{
					"parameter_longname" : "live.numbox[20]"
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
,
				"obj-3::obj-5" : 				{
					"parameter_longname" : "live.dial[1]"
				}
,
				"obj-4::obj-14" : 				{
					"parameter_longname" : "live.toggle[2]"
				}
,
				"obj-4::obj-2" : 				{
					"parameter_longname" : "live.toggle[1]"
				}
,
				"obj-4::obj-26" : 				{
					"parameter_longname" : "live.toggle"
				}
,
				"obj-4::obj-79" : 				{
					"parameter_longname" : "ShowCh[7]"
				}
,
				"obj-4::obj-91" : 				{
					"parameter_longname" : "live.dial[17]"
				}
,
				"obj-4::obj-92" : 				{
					"parameter_longname" : "live.dial[2]"
				}
,
				"obj-4::obj-93" : 				{
					"parameter_longname" : "live.dial[6]"
				}
,
				"obj-5::obj-14" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-5::obj-15" : 				{
					"parameter_longname" : "live.toggle[8]"
				}
,
				"obj-5::obj-16" : 				{
					"parameter_longname" : "live.toggle[6]"
				}
,
				"obj-5::obj-2" : 				{
					"parameter_longname" : "live.toggle[9]"
				}
,
				"obj-5::obj-20" : 				{
					"parameter_longname" : "ShowCh[4]"
				}
,
				"obj-5::obj-26" : 				{
					"parameter_longname" : "live.toggle[7]"
				}
,
				"obj-5::obj-38::obj-10" : 				{
					"parameter_longname" : "live.numbox[9]"
				}
,
				"obj-5::obj-38::obj-15" : 				{
					"parameter_longname" : "live.numbox[7]"
				}
,
				"obj-5::obj-38::obj-19" : 				{
					"parameter_longname" : "live.numbox[8]"
				}
,
				"obj-5::obj-38::obj-3" : 				{
					"parameter_longname" : "live.tab[3]"
				}
,
				"obj-5::obj-38::obj-7" : 				{
					"parameter_longname" : "live.numbox[10]"
				}
,
				"obj-5::obj-79" : 				{
					"parameter_longname" : "ShowCh[3]"
				}
,
				"obj-5::obj-91" : 				{
					"parameter_longname" : "live.dial[3]"
				}
,
				"obj-5::obj-92" : 				{
					"parameter_longname" : "live.dial[4]"
				}
,
				"obj-5::obj-93" : 				{
					"parameter_longname" : "live.dial[7]"
				}
,
				"obj-6::obj-24" : 				{
					"parameter_longname" : "ShowCh[10]"
				}
,
				"obj-6::obj-79" : 				{
					"parameter_longname" : "ShowCh[9]"
				}
,
				"obj-7::obj-24" : 				{
					"parameter_longname" : "ShowCh[16]"
				}
,
				"obj-7::obj-79" : 				{
					"parameter_longname" : "ShowCh[15]"
				}
,
				"obj-9::obj-12" : 				{
					"parameter_longname" : "ShowCh[17]"
				}
,
				"obj-9::obj-13" : 				{
					"parameter_longname" : "ShowCh[19]"
				}
,
				"obj-9::obj-26" : 				{
					"parameter_longname" : "DelayTime[2]"
				}
,
				"obj-9::obj-30" : 				{
					"parameter_longname" : "Harmonics[2]"
				}
,
				"obj-9::obj-40" : 				{
					"parameter_longname" : "live.dial[5]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "SPTT-Ambi-Splitter-Combiner.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SPTT_RouterManager.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-AmbiCombiner.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-AmbiSplitter.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
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
				"name" : "SSTT-Delay.maxpat",
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
				"name" : "SSTT-Rotation.maxpat",
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
				"name" : "SSTT-record.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/modules",
				"patcherrelativepath" : "../modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-warp.maxpat",
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
				"name" : "mcDryWet-mix.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "record-setup.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.around.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/patchers",
				"patcherrelativepath" : "../../spat5/patchers",
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
				"name" : "spat5.hoa.rotate~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "spat5.hoa.warp~.mxo",
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
				"name" : "spat5.rec.svg",
				"bootpath" : "~/Documents/Max 9/Packages/spat5/media/images",
				"patcherrelativepath" : "../../spat5/media/images",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "spat5.sfrecord~.mxo",
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
				"name" : "spdelayHOA.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/abstractions",
				"patcherrelativepath" : "../abstractions",
				"type" : "JSON",
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
				"name" : "sptt-hoa-rotate.js",
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
, 			{
				"name" : "warp-setup.js",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
