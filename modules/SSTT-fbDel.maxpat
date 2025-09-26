{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 406.0, 121.0, 1000.0, 700.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Helvetica Bold",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 207.0, 594.0, 93.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 86.0, 3.0, 80.0, 16.0 ],
					"text" : "Fb-Delay-noW"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 484.0, 78.0, 22.0 ],
					"text" : "s SPTT_load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 135.0, 452.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "unpack7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 35,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 556.0, 264.0, 616.0, 22.0 ],
					"text" : "mc.unpack~ 35",
					"varname" : "fromAmbiWaveshapeminusW_fb"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "pack8",
					"maxclass" : "newobj",
					"numinlets" : 36,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 540.0, 388.0, 600.0, 22.0 ],
					"text" : "mc.pack~ 36",
					"varname" : "toAmbiAll_fb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.0, 191.0, 92.0, 22.0 ],
					"text" : "loadmess wet 1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 199.0, 214.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 199.0, 188.0, 39.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 376.0, 21.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 133.0, 24.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.818897637795276 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[1]",
							"parameter_mmax" : 1.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Fb",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.dial[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 199.0, 135.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 24.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[4]",
							"parameter_mmax" : 0.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "OutGain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 400.0, 135.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.0, 24.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 629.921259842519476 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.dial[5]",
							"parameter_mmax" : 4000.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "Del_time",
							"parameter_type" : 0,
							"parameter_unitstyle" : 2
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 511.0, 537.0, 150.0, 33.0 ],
					"text" : "fb delay on all SpH exept W (omni)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 843.0, 514.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 816.0, 557.5, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "multifb.js",
						"parameter_enable" : 0
					}
,
					"text" : "js multifb.js"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-19",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 458.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "pack7",
					"maxclass" : "newobj",
					"numinlets" : 35,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 556.0, 154.0, 616.0, 22.0 ],
					"text" : "mc.pack~ 35",
					"varname" : "toAmbiWaveshapeminusW_fb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 709.0, 529.0, 91.0, 22.0 ],
					"text" : "r orderCh-show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 846.0, 448.0, 69.0, 22.0 ],
					"text" : "r orderNum"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-13",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 695.0, 562.0, 40.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 232.0, 56.0, 31.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[1]",
							"parameter_mmax" : 128.0,
							"parameter_mmin" : 1.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "showCh",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "ShowChbox[2]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-12",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 875.0, 484.0, 40.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 232.0, 37.0, 31.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[2]",
							"parameter_mmax" : 128.0,
							"parameter_mmin" : 1.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "showCh",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "ShowChbox[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "unpack8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 36,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 517.0, 79.0, 577.0, 22.0 ],
					"text" : "mc.unpack~ 36",
					"varname" : "fromAmbiAll_fb"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.5 ],
					"id" : "obj-94",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 285.0, 505.5, 156.0, 69.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 1.0, 268.0, 78.0 ],
					"proportion" : 0.39,
					"rounded" : 18
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 216.0, 49.0, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 24.0, 62.0, 15.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-26", "live.dial", "float", 629.9212646484375, 5, "obj-29", "live.dial", "float", 0.818897664546967, 5, "obj-28", "live.dial", "float", 0.0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 517.0, 13.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 9,
								"minor" : 0,
								"revision" : 7,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 84.0, 131.0, 808.0, 370.0 ],
							"gridsize" : [ 15.0, 15.0 ],
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 100.0, 239.0, 35.0, 22.0 ],
										"id" : "obj-1",
										"numinlets" : 1,
										"numoutlets" : 0
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 40.0, 40.0, 30.0, 22.0 ],
										"outlettype" : [ "" ],
										"id" : "g_in1",
										"numinlets" : 0,
										"numoutlets" : 1
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 137.0, 321.0, 35.0, 22.0 ],
										"id" : "g_out1",
										"numinlets" : 1,
										"numoutlets" : 0
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "codebox",
										"patching_rect" : [ 100.0, 30.0, 611.0, 195.0 ],
										"outlettype" : [ "" ],
										"id" : "g_code",
										"fontsize" : 12.0,
										"numinlets" : 1,
										"fontname" : "<Monospaced>",
										"numoutlets" : 1,
										"fontface" : 0,
										"code" : "// Spherical per-channel feedback using Delay tap (Gen Codebox)\n\n// Parameters\nParam fb(0.6);        // 0..0.99 (be careful >0.9)\nParam delay_ms(120);  // milliseconds\nParam wet(1);         // 0=dry, 1=wet\nParam outgain(1);     // output trim\n\r\nDelay dl(192000);\n\n// Runtime\nsr     = samplerate;\ndSamp  = max(1, floor(delay_ms * 0.001 * sr));  // integer samples\n\nx      = in1;                 // input s\nxd     = dl.read(dSamp);      // delayed output\ny      = x + (clamp(fb, 0, 0.99) * xd);  // feedback comb: y = x + fb*y[n-d]\ndl.write(y);                  // store current output into delay line\n\nout1   = mix(x, y, clamp(wet, 0, 1)) * outgain;"
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "g_code", 0 ],
										"destination" : [ "obj-1", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "g_in1", 0 ],
										"destination" : [ "g_code", 0 ]
									}

								}
 ]
						}

					}
,
					"id" : "genfb",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 556.0, 223.0, 128.0, 22.0 ],
					"text" : "mc.gen~ @title multifb",
					"varname" : "multifb",
					"wrapper_uniquekey" : "u038001594"
				}

			}
, 			{
				"box" : 				{
					"id" : "msgFb",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 105.0, 60.0, 22.0 ],
					"text" : "fb $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "numFb",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 79.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "msgDel",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.0, 215.0, 90.0, 22.0 ],
					"text" : "delay_ms $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "numDel",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 191.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "msgOG",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 248.0, 282.0, 80.0, 22.0 ],
					"text" : "outgain $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "numOG",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 248.0, 256.0, 50.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "unpack7", 0 ],
					"source" : [ "genfb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "genfb", 0 ],
					"source" : [ "msgDel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "genfb", 0 ],
					"source" : [ "msgFb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "genfb", 0 ],
					"source" : [ "msgOG", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "msgDel", 0 ],
					"source" : [ "numDel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "msgFb", 0 ],
					"source" : [ "numFb", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "msgOG", 0 ],
					"source" : [ "numOG", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "numDel", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "numFb", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "numOG", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "genfb", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "unpack8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 2,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "genfb", 0 ],
					"source" : [ "pack7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "pack8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 35 ],
					"source" : [ "unpack7", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 34 ],
					"source" : [ "unpack7", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 33 ],
					"source" : [ "unpack7", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 32 ],
					"source" : [ "unpack7", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 31 ],
					"source" : [ "unpack7", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 30 ],
					"source" : [ "unpack7", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 29 ],
					"source" : [ "unpack7", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 28 ],
					"source" : [ "unpack7", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 27 ],
					"source" : [ "unpack7", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 26 ],
					"source" : [ "unpack7", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 25 ],
					"source" : [ "unpack7", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 24 ],
					"source" : [ "unpack7", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 23 ],
					"source" : [ "unpack7", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 22 ],
					"source" : [ "unpack7", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 21 ],
					"source" : [ "unpack7", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 20 ],
					"source" : [ "unpack7", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 19 ],
					"source" : [ "unpack7", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 18 ],
					"source" : [ "unpack7", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 17 ],
					"source" : [ "unpack7", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 16 ],
					"source" : [ "unpack7", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 15 ],
					"source" : [ "unpack7", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 14 ],
					"source" : [ "unpack7", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 13 ],
					"source" : [ "unpack7", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 12 ],
					"source" : [ "unpack7", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 11 ],
					"source" : [ "unpack7", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 10 ],
					"source" : [ "unpack7", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 9 ],
					"source" : [ "unpack7", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 8 ],
					"source" : [ "unpack7", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 7 ],
					"source" : [ "unpack7", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 6 ],
					"source" : [ "unpack7", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 5 ],
					"source" : [ "unpack7", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 4 ],
					"source" : [ "unpack7", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 3 ],
					"source" : [ "unpack7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 2 ],
					"source" : [ "unpack7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 1 ],
					"source" : [ "unpack7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 34 ],
					"source" : [ "unpack8", 35 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 33 ],
					"source" : [ "unpack8", 34 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 32 ],
					"source" : [ "unpack8", 33 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 31 ],
					"source" : [ "unpack8", 32 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 30 ],
					"source" : [ "unpack8", 31 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 29 ],
					"source" : [ "unpack8", 30 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 28 ],
					"source" : [ "unpack8", 29 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 27 ],
					"source" : [ "unpack8", 28 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 26 ],
					"source" : [ "unpack8", 27 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 25 ],
					"source" : [ "unpack8", 26 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 24 ],
					"source" : [ "unpack8", 25 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 23 ],
					"source" : [ "unpack8", 24 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 22 ],
					"source" : [ "unpack8", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 21 ],
					"source" : [ "unpack8", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 20 ],
					"source" : [ "unpack8", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 19 ],
					"source" : [ "unpack8", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 18 ],
					"source" : [ "unpack8", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 17 ],
					"source" : [ "unpack8", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 16 ],
					"source" : [ "unpack8", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 15 ],
					"source" : [ "unpack8", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 14 ],
					"source" : [ "unpack8", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 13 ],
					"source" : [ "unpack8", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 12 ],
					"source" : [ "unpack8", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 11 ],
					"source" : [ "unpack8", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 10 ],
					"source" : [ "unpack8", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 9 ],
					"source" : [ "unpack8", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 8 ],
					"source" : [ "unpack8", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 7 ],
					"source" : [ "unpack8", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 6 ],
					"source" : [ "unpack8", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 5 ],
					"source" : [ "unpack8", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 4 ],
					"source" : [ "unpack8", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 3 ],
					"source" : [ "unpack8", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 2 ],
					"source" : [ "unpack8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 1 ],
					"source" : [ "unpack8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack7", 0 ],
					"source" : [ "unpack8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pack8", 0 ],
					"source" : [ "unpack8", 0 ]
				}

			}
 ]
	}

}
