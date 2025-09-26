{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 406.0, 106.0, 1000.0, 700.0 ],
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
					"patching_rect" : [ 437.0, 53.0, 93.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.0, 3.0, 85.0, 16.0 ],
					"text" : "Waveshpr-noW"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 594.0, 78.0, 22.0 ],
					"text" : "s SPTT_load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 145.0, 562.0, 58.0, 22.0 ],
					"text" : "loadbang"
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
					"patching_rect" : [ 404.0, 155.0, 464.0, 22.0 ],
					"text" : "mc.pack~ 35",
					"varname" : "toAmbiWaveshapeminusW"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 890.0, 190.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 22.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "waveshpr_gain",
							"parameter_mmax" : 11.0,
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "waveshpr_gain",
							"parameter_shortname" : "Tufnel",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "waveshpr_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 902.0, 59.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 22.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "waveshpr_drive",
							"parameter_mmax" : 11.0,
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "waveshpr_drive",
							"parameter_shortname" : "Nigel",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "waveshpr_drive"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.0, 530.0, 91.0, 22.0 ],
					"text" : "r orderCh-show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 694.0, 449.0, 69.0, 22.0 ],
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
					"patching_rect" : [ 543.0, 563.0, 40.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.0, 53.0, 27.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[20]",
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
					"patching_rect" : [ 723.0, 485.0, 40.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.0, 36.0, 27.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[21]",
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
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 461.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 493.0, 191.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "ambi_split_waveshape_router.js",
						"parameter_enable" : 0
					}
,
					"text" : "js ambi_split_waveshape_router.js"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.0, 535.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-1",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 272.0, 46.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 365.0, 80.0, 425.0, 22.0 ],
					"text" : "mc.unpack~ 36",
					"varname" : "fromAmbiAll"
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
								"revision" : 8,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 59.0, 106.0, 600.0, 260.0 ],
							"gridsize" : [ 15.0, 15.0 ],
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"patching_rect" : [ 100.0, 3.0, 30.0, 22.0 ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "g_in1",
										"outlettype" : [ "" ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"patching_rect" : [ 106.0, 222.0, 35.0, 22.0 ],
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "g_out1"
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "codebox",
										"patching_rect" : [ 100.0, 30.0, 400.0, 180.0 ],
										"numinlets" : 1,
										"fontface" : 0,
										"numoutlets" : 1,
										"id" : "g_code",
										"fontsize" : 12.0,
										"outlettype" : [ "" ],
										"fontname" : "<Monospaced>",
										"code" : "// HOA waveshaper (mc.gen~ codebox)\nParam drive(1);\nParam outgain(1);\n\nin = in1;\nprocessed = tanh(in * drive);\n//processed = clamp(in*drive, -0.8, 0.8);\n// k = 2; processed = (in*drive) / (1 + k*abs(in*drive));\n\nout1 = processed * outgain;"
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "g_in1", 0 ],
										"destination" : [ "g_code", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "g_code", 0 ],
										"destination" : [ "g_out1", 0 ]
									}

								}
 ]
						}

					}
,
					"id" : "waveshaper",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 404.0, 223.0, 210.0, 22.0 ],
					"text" : "mc.gen~ @title hoa_waveshaper",
					"wrapper_uniquekey" : "u784007536"
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
					"patching_rect" : [ 404.0, 265.0, 464.0, 22.0 ],
					"text" : "mc.unpack~ 35",
					"varname" : "fromAmbiWaveshapeminusW"
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
					"patching_rect" : [ 388.0, 389.0, 448.0, 22.0 ],
					"text" : "mc.pack~ 36",
					"varname" : "toAmbiAll"
				}

			}
, 			{
				"box" : 				{
					"id" : "msgDrive",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 915.0, 163.0, 70.0, 22.0 ],
					"text" : "drive $1"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "numDrive",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 915.0, 132.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "msgOG",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 915.0, 271.0, 80.0, 22.0 ],
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
					"patching_rect" : [ 915.0, 243.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 135.0, 465.0, 156.0, 69.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 182.0, 74.0 ],
					"proportion" : 0.39,
					"rounded" : 18
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "waveshaper", 0 ],
					"source" : [ "msgDrive", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "waveshaper", 0 ],
					"source" : [ "msgOG", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "msgDrive", 0 ],
					"source" : [ "numDrive", 0 ]
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
					"destination" : [ "unpack8", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "numDrive", 0 ],
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
					"destination" : [ "numOG", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "waveshaper", 0 ],
					"source" : [ "pack7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
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
, 			{
				"patchline" : 				{
					"destination" : [ "unpack7", 0 ],
					"source" : [ "waveshaper", 0 ]
				}

			}
 ]
	}

}
