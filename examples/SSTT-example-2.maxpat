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
		"rect" : [ 42.0, 91.0, 1231.0, 775.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1116.0, 606.0, 230.0, 22.0 ],
					"text" : "/rot-yaw_onoff 1, /autorotate 1, /drywet 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1120.0, 637.0, 207.0, 22.0 ],
					"text" : "spat5.osc.prepend /SSTT-example-2/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1120.0, 674.0, 122.0, 22.0 ],
					"text" : "param.osc @auto 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-16",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 482.0, 525.999951362609863, 145.0, 51.0 ],
					"presentation" : 1,
					"presentation_linecount" : 19,
					"presentation_rect" : [ 527.0, 536.0, 46.0, 265.0 ],
					"text" : "Optional recording of the ambisonic output before decoding"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 739.999929428100586, 446.24995744228363, 36.939391999999998, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 743.0, 510.0, 37.0, 24.0 ],
					"text" : "e"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 724.999930858612061, 241.249976992607117, 36.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1039.999960899353027, 494.166648387908936, 37.0, 24.0 ],
					"text" : "c"
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
					"patching_rect" : [ 216.249979376792908, 509.999951362609863, 255.0, 83.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.87499725818634, 523.333313941955566, 256.0, 71.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-100",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 207.499980211257935, 406.249961256980896, 36.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 477.499982357025146, 496.249981641769409, 37.0, 24.0 ],
					"text" : "f"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-99",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 819.999921798706055, 329.999968528747559, 36.939391999999998, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 751.458305239677429, 332.708321213722229, 37.0, 24.0 ],
					"text" : "d"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.0, 681.0, 35.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.374999642372131, 645.208309292793274, 35.0, 24.0 ],
					"text" : "g"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.499967336654663, 146.249986052513123, 35.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 621.249976873397827, 99.374996781349182, 36.0, 24.0 ],
					"text" : "a"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubble_bgcolor" : [ 0.705882352941177, 0.796078431372549, 0.592156862745098, 1.0 ],
					"bubble_outlinecolor" : [ 0.580392156862745, 0.631372549019608, 0.2, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.249964594841003, 292.499972105026245, 36.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 569.166645526885986, 149.374994874000549, 38.5, 24.0 ],
					"text" : "b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 794.0, 67.749986052513123, 363.0, 154.0 ],
					"presentation" : 1,
					"presentation_linecount" : 15,
					"presentation_rect" : [ 1066.041626572608948, 292.083322763442993, 187.0, 208.0 ],
					"text" : "The HOAdelay delays each ambisonic component in the defined HOA order in a harmonic or subharmonic series multiplied by the delay time (in ms) and feedback amount ( 0. 100.)\n\n1/Spherical component * ms\n1/Spherical component * fb\n\nExample:\nFor third order:\n1/16, 1/15 1/14 1/13 1/12 1/11 1/10 1/9 1/8 1/7 1/6 1/5 1/4 1/3 1/2 1/1  * parameter value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"linecount" : 21,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 887.0, 264.0, 201.0, 288.0 ],
					"presentation" : 1,
					"presentation_linecount" : 21,
					"presentation_rect" : [ 828.541635632514954, 186.874993443489075, 201.0, 288.0 ],
					"text" : "//What happens in this patch:\n\na) Encode a source to ambisonic \n\nb) Add HOA continuos rotation around z axis (Yaw)\n\nc) add a multichannel delay running in a parallel signal chain on the ambisonic signal\n\nd) rotate cont. the delayed HOA signal in opposite direction.\n\ne) Warp the delayed HOA signal.\n\nf) Mix the two signal together via dry/wet control\n\ng) Decode to loudspeakers ( or binaural simulation"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 404.999961376190186, 54.99999475479126, 276.0, 20.0 ],
					"text" : "// Simple Delay rotate and warp example"
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
					"patching_rect" : [ 468.749955296516418, 418.749960064888, 241.0, 77.0 ],
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
					"patching_rect" : [ 469.0, 302.0, 326.0, 100.0 ],
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
					"patching_rect" : [ 40.0, 247.0, 325.0, 101.0 ],
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
					"patching_rect" : [ 39.999996185302734, 376.249964118003845, 155.0, 67.0 ],
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
					"name" : "SSTT-Delay.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 468.749955296516418, 211.249979853630066, 241.0, 77.0 ],
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
					"patching_rect" : [ 40.0, 798.0, 54.0, 22.0 ],
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
					"patching_rect" : [ 39.999996185302734, 99.999990463256836, 287.0, 105.0 ],
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
					"patching_rect" : [ 39.999996185302734, 606.0, 988.0, 174.0 ],
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
					"destination" : [ "obj-2", 0 ],
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
					"destination" : [ "obj-5", 0 ],
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
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-32", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-18" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-10::obj-3" : [ "ShowCh[5]", "showCh", 0 ],
			"obj-10::obj-36" : [ "live.dial[5]", "Warp", 0 ],
			"obj-10::obj-79" : [ "ShowCh[19]", "showCh", 0 ],
			"obj-18::obj-20" : [ "ShowCh[12]", "showCh", 0 ],
			"obj-18::obj-25" : [ "live.toggle[19]", "live.toggle", 0 ],
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
			"obj-2::obj-12" : [ "ShowCh[24]", "showCh", 0 ],
			"obj-2::obj-13" : [ "ShowCh[25]", "showCh", 0 ],
			"obj-2::obj-26" : [ "DelayTime[1]", "DelayTime", 0 ],
			"obj-2::obj-30" : [ "Harmonics[1]", "harmonics", 0 ],
			"obj-2::obj-40" : [ "live.dial[12]", "Feedback", 0 ],
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
			"obj-5::obj-15" : [ "live.toggle[6]", "live.toggle", 0 ],
			"obj-5::obj-16" : [ "live.toggle[9]", "live.toggle", 0 ],
			"obj-5::obj-2" : [ "counter-rot", "counter-rot", 0 ],
			"obj-5::obj-20" : [ "ShowCh[3]", "showCh", 0 ],
			"obj-5::obj-26" : [ "live.toggle[7]", "autorotate", 0 ],
			"obj-5::obj-38::obj-10" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-15" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-19" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-5::obj-38::obj-3" : [ "live.tab[1]", "live.tab", 0 ],
			"obj-5::obj-38::obj-7" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-5::obj-79" : [ "ShowCh[4]", "showCh", 0 ],
			"obj-5::obj-91" : [ "live.dial[4]", "roll", 0 ],
			"obj-5::obj-92" : [ "live.dial[3]", "pitch", 0 ],
			"obj-5::obj-93" : [ "live.dial[7]", "yaw", 0 ],
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
				"obj-10::obj-18" : 				{
					"parameter_longname" : "live.tab[3]"
				}
,
				"obj-10::obj-3" : 				{
					"parameter_longname" : "ShowCh[5]"
				}
,
				"obj-10::obj-36" : 				{
					"parameter_longname" : "live.dial[5]"
				}
,
				"obj-10::obj-79" : 				{
					"parameter_longname" : "ShowCh[19]"
				}
,
				"obj-18::obj-25" : 				{
					"parameter_longname" : "live.toggle[19]"
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
				"obj-1::obj-25" : 				{
					"parameter_invisible" : 0,
					"parameter_longname" : "live.tab[2]",
					"parameter_modmode" : 0,
					"parameter_range" : [ "Loudspeakers", "Binaural" ],
					"parameter_shortname" : "live.tab[2]",
					"parameter_type" : 2,
					"parameter_unitstyle" : 9
				}
,
				"obj-1::obj-31" : 				{
					"parameter_longname" : "mc.live.gain~[9]"
				}
,
				"obj-1::obj-45" : 				{
					"parameter_longname" : "live.menu[10]"
				}
,
				"obj-2::obj-12" : 				{
					"parameter_longname" : "ShowCh[24]"
				}
,
				"obj-2::obj-13" : 				{
					"parameter_longname" : "ShowCh[25]"
				}
,
				"obj-2::obj-26" : 				{
					"parameter_longname" : "DelayTime[1]"
				}
,
				"obj-2::obj-30" : 				{
					"parameter_longname" : "Harmonics[1]"
				}
,
				"obj-2::obj-40" : 				{
					"parameter_longname" : "live.dial[12]"
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
				"obj-4::obj-15" : 				{
					"parameter_longname" : "live.toggle[3]"
				}
,
				"obj-4::obj-16" : 				{
					"parameter_longname" : "live.toggle[4]"
				}
,
				"obj-4::obj-2" : 				{
					"parameter_longname" : "live.toggle[1]"
				}
,
				"obj-4::obj-20" : 				{
					"parameter_longname" : "ShowCh[6]"
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
					"parameter_longname" : "live.toggle[6]"
				}
,
				"obj-5::obj-16" : 				{
					"parameter_longname" : "live.toggle[9]"
				}
,
				"obj-5::obj-2" : 				{
					"parameter_longname" : "counter-rot"
				}
,
				"obj-5::obj-20" : 				{
					"parameter_longname" : "ShowCh[3]"
				}
,
				"obj-5::obj-26" : 				{
					"parameter_longname" : "live.toggle[7]"
				}
,
				"obj-5::obj-38::obj-10" : 				{
					"parameter_longname" : "live.numbox[7]"
				}
,
				"obj-5::obj-38::obj-15" : 				{
					"parameter_longname" : "live.numbox[8]"
				}
,
				"obj-5::obj-38::obj-19" : 				{
					"parameter_longname" : "live.numbox[9]"
				}
,
				"obj-5::obj-38::obj-3" : 				{
					"parameter_longname" : "live.tab[1]"
				}
,
				"obj-5::obj-38::obj-7" : 				{
					"parameter_longname" : "live.numbox[10]"
				}
,
				"obj-5::obj-79" : 				{
					"parameter_longname" : "ShowCh[4]"
				}
,
				"obj-5::obj-91" : 				{
					"parameter_longname" : "live.dial[4]"
				}
,
				"obj-5::obj-92" : 				{
					"parameter_longname" : "live.dial[3]"
				}
,
				"obj-5::obj-93" : 				{
					"parameter_longname" : "live.dial[7]"
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
				"name" : "SSTT-example-2.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-example-2[1].maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../../Snapshots",
				"type" : "mx@s",
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
				"name" : "spat5.osc.prepend.mxo",
				"type" : "iLaX"
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
		"autosave" : 0,
		"snapshot" : 		{
			"filetype" : "C74Snapshot",
			"version" : 2,
			"minorversion" : 0,
			"name" : "snapshotlist",
			"origin" : "jpatcher",
			"type" : "list",
			"subtype" : "Undefined",
			"embed" : 1,
			"snapshot" : 			{
				"valuedictionary" : 				{
					"parameter_values" : 					{
						"DelayTime[1]" : 1555.0,
						"Harmonics[1]" : 0.0,
						"ShowCh[11]" : 36.0,
						"ShowCh[12]" : 5.0,
						"ShowCh[13]" : 5.0,
						"ShowCh[14]" : 36.0,
						"ShowCh[18]" : 5.0,
						"ShowCh[19]" : 36.0,
						"ShowCh[1]" : 5.0,
						"ShowCh[24]" : 5.0,
						"ShowCh[25]" : 36.0,
						"ShowCh[2]" : 36.0,
						"ShowCh[3]" : 5.0,
						"ShowCh[4]" : 36.0,
						"ShowCh[5]" : 5.0,
						"ShowCh[6]" : 5.0,
						"ShowCh[7]" : 36.0,
						"ShowChbox[2]" : 36.0,
						"counter-rot" : 1.0,
						"live.dial" : 700.0,
						"live.dial[12]" : 0.0,
						"live.dial[17]" : 0.0,
						"live.dial[1]" : 0.0,
						"live.dial[2]" : 0.0,
						"live.dial[3]" : 0.0,
						"live.dial[4]" : 0.0,
						"live.dial[5]" : 0.0,
						"live.dial[6]" : 212.0,
						"live.dial[7]" : -212.0,
						"live.menu" : 0.0,
						"live.menu[10]" : 0.0,
						"live.menu[5]" : 4.0,
						"live.menu[8]" : 3.0,
						"live.menu[9]" : 0.0,
						"live.numbox" : 212.0,
						"live.numbox[10]" : 212.0,
						"live.numbox[1]" : 0.0,
						"live.numbox[20]" : 5.0,
						"live.numbox[2]" : 45.0,
						"live.numbox[3]" : 40.0,
						"live.numbox[6]" : 24.0,
						"live.numbox[7]" : 45.0,
						"live.numbox[8]" : 0.0,
						"live.numbox[9]" : 40.0,
						"live.tab" : 1.0,
						"live.tab[1]" : 1.0,
						"live.tab[2]" : 0.0,
						"live.tab[3]" : 1.0,
						"live.tab[8]" : 1.0,
						"live.text[10]" : 0.0,
						"live.text[12]" : 0.0,
						"live.text[13]" : 0.0,
						"live.text[14]" : 0.0,
						"live.text[15]" : 0.0,
						"live.text[1]" : 0.0,
						"live.text[9]" : 0.0,
						"live.toggle" : 1.0,
						"live.toggle[19]" : 0.0,
						"live.toggle[1]" : 0.0,
						"live.toggle[2]" : 1.0,
						"live.toggle[3]" : 0.0,
						"live.toggle[436]" : 0.0,
						"live.toggle[4]" : 0.0,
						"live.toggle[5]" : 1.0,
						"live.toggle[6]" : 0.0,
						"live.toggle[7]" : 1.0,
						"live.toggle[9]" : 0.0,
						"mc.live.gain~[2]" : -70.0,
						"mc.live.gain~[9]" : -70.0
					}

				}

			}
,
			"snapshotlist" : 			{
				"current_snapshot" : 0,
				"entries" : [ 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "SSTT-example-2",
						"origin" : "SSTT-example-2",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 0,
						"fileref" : 						{
							"name" : "SSTT-example-2",
							"filename" : "SSTT-example-2.maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "98e579098ae7a00571b0e5a43b653905"
						}

					}
, 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "SSTT-example-2[1]",
						"origin" : "SSTT-example-2",
						"type" : "patcher",
						"subtype" : "Undefined",
						"embed" : 1,
						"fileref" : 						{
							"name" : "SSTT-example-2[1]",
							"filename" : "SSTT-example-2[1].maxsnap",
							"filepath" : "~/Documents/Max 9/Snapshots",
							"filepos" : -1,
							"snapshotfileid" : "d00a727c38b81ff94c4beee1b02bd81a"
						}
,
						"snapshot" : 						{
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"DelayTime[1]" : 1555.0,
									"Harmonics[1]" : 0.0,
									"ShowCh[11]" : 36.0,
									"ShowCh[12]" : 5.0,
									"ShowCh[13]" : 5.0,
									"ShowCh[14]" : 36.0,
									"ShowCh[18]" : 5.0,
									"ShowCh[19]" : 36.0,
									"ShowCh[1]" : 5.0,
									"ShowCh[24]" : 5.0,
									"ShowCh[25]" : 36.0,
									"ShowCh[2]" : 36.0,
									"ShowCh[3]" : 5.0,
									"ShowCh[4]" : 36.0,
									"ShowCh[5]" : 5.0,
									"ShowCh[6]" : 5.0,
									"ShowCh[7]" : 36.0,
									"ShowChbox[2]" : 36.0,
									"counter-rot" : 0.0,
									"live.dial" : 700.0,
									"live.dial[12]" : 0.0,
									"live.dial[17]" : 0.0,
									"live.dial[1]" : 0.0,
									"live.dial[2]" : 0.0,
									"live.dial[3]" : 0.0,
									"live.dial[4]" : 0.0,
									"live.dial[5]" : 0.0,
									"live.dial[6]" : 205.0,
									"live.dial[7]" : 205.0,
									"live.menu" : 0.0,
									"live.menu[10]" : 0.0,
									"live.menu[5]" : 4.0,
									"live.menu[8]" : 3.0,
									"live.menu[9]" : 0.0,
									"live.numbox" : 205.0,
									"live.numbox[10]" : 205.0,
									"live.numbox[1]" : 0.0,
									"live.numbox[20]" : 5.0,
									"live.numbox[2]" : 45.0,
									"live.numbox[3]" : 40.0,
									"live.numbox[6]" : 24.0,
									"live.numbox[7]" : 45.0,
									"live.numbox[8]" : 0.0,
									"live.numbox[9]" : 40.0,
									"live.tab" : 1.0,
									"live.tab[1]" : 1.0,
									"live.tab[2]" : 0.0,
									"live.tab[3]" : 1.0,
									"live.tab[8]" : 1.0,
									"live.text[10]" : 0.0,
									"live.text[12]" : 0.0,
									"live.text[13]" : 0.0,
									"live.text[14]" : 0.0,
									"live.text[15]" : 0.0,
									"live.text[1]" : 0.0,
									"live.text[9]" : 0.0,
									"live.toggle" : 1.0,
									"live.toggle[19]" : 0.0,
									"live.toggle[1]" : 0.0,
									"live.toggle[2]" : 1.0,
									"live.toggle[3]" : 0.0,
									"live.toggle[436]" : 0.0,
									"live.toggle[4]" : 0.0,
									"live.toggle[5]" : 1.0,
									"live.toggle[6]" : 0.0,
									"live.toggle[7]" : 1.0,
									"live.toggle[9]" : 0.0,
									"mc.live.gain~[2]" : -70.0,
									"mc.live.gain~[9]" : -70.0
								}

							}

						}

					}
 ]
			}

		}

	}

}
