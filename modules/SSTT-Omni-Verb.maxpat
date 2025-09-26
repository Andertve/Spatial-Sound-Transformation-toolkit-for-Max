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
		"rect" : [ 406.0, 166.0, 1000.0, 700.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.0, 484.0, 78.0, 22.0 ],
					"text" : "s SPTT_load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
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
					"id" : "obj-39",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 530.0, 158.0, 64.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 530.0, 211.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 28.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 40 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "OmniVerb_size",
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "OmniVerb_size",
							"parameter_shortname" : "size",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "OmniVerb_size"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 577.5, 211.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 58.0, 28.0, 54.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 60 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "OmniVerb_decay",
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "OmniVerb_decay",
							"parameter_shortname" : "decay_time",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "OmniVerb_decay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 625.0, 211.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 28.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 25 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Omniverb_damping",
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "OmniVerb_damping",
							"parameter_shortname" : "Damping",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "Omniverb_damping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 669.0, 211.0, 41.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 187.0, 28.0, 41.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 73 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "OmniVerb_diffusion",
							"parameter_modmode" : 3,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "OmniVerb_diffusion",
							"parameter_shortname" : "Diffusion",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "OmniVerb_diffusion"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Bold",
					"fontsize" : 10.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 282.0, 669.0, 75.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.0, 6.0, 80.0, 16.0 ],
					"text" : "Omni-verb"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-34",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 276.010638475418091, 163.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.0, 471.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 412.0, 91.0, 22.0 ],
					"text" : "r orderCh-show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 374.0, 296.0, 69.0, 22.0 ],
					"text" : "r orderNum"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-2",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 404.0, 336.0, 39.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 262.0, 45.0, 26.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[10]",
							"parameter_mmax" : 128.0,
							"parameter_mmin" : 1.0,
							"parameter_modmode" : 4,
							"parameter_shortname" : "showCh",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "OrderNum"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-79",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 431.0, 454.0, 39.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 262.0, 59.0, 26.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[9]",
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
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 79.0, 94.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.0, 167.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 336.0, 270.0, 103.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "ambiW-setup.js",
										"parameter_enable" : 0
									}
,
									"text" : "js ambiW-setup.js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 286.0, 189.0, 150.0, 20.0 ],
									"text" : "AmbiAll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 281.0, 101.0, 150.0, 20.0 ],
									"text" : "Ambi_minus_W"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 50.0, 40.000007313411714, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 18.0, 37.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 270.088630313411727, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 35,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 123.0, 127.0, 183.0, 22.0 ],
									"text" : "mc.unpack~ 35",
									"varname" : "Ambi_minus_W"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 36,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 104.0, 225.0, 164.0, 22.0 ],
									"text" : "mc.pack~ 36",
									"varname" : "AmbiAll"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 35 ],
									"source" : [ "obj-9", 34 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 34 ],
									"source" : [ "obj-9", 33 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 33 ],
									"source" : [ "obj-9", 32 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 32 ],
									"source" : [ "obj-9", 31 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 31 ],
									"source" : [ "obj-9", 30 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 30 ],
									"source" : [ "obj-9", 29 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 29 ],
									"source" : [ "obj-9", 28 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 28 ],
									"source" : [ "obj-9", 27 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 27 ],
									"source" : [ "obj-9", 26 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 26 ],
									"source" : [ "obj-9", 25 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 25 ],
									"source" : [ "obj-9", 24 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 24 ],
									"source" : [ "obj-9", 23 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 23 ],
									"source" : [ "obj-9", 22 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 22 ],
									"source" : [ "obj-9", 21 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 21 ],
									"source" : [ "obj-9", 20 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 20 ],
									"source" : [ "obj-9", 19 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 19 ],
									"source" : [ "obj-9", 18 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 18 ],
									"source" : [ "obj-9", 17 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 17 ],
									"source" : [ "obj-9", 16 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 16 ],
									"source" : [ "obj-9", 15 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 15 ],
									"source" : [ "obj-9", 14 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 14 ],
									"source" : [ "obj-9", 13 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 13 ],
									"source" : [ "obj-9", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 12 ],
									"source" : [ "obj-9", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 11 ],
									"source" : [ "obj-9", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 10 ],
									"source" : [ "obj-9", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 9 ],
									"source" : [ "obj-9", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 8 ],
									"source" : [ "obj-9", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 7 ],
									"source" : [ "obj-9", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 6 ],
									"source" : [ "obj-9", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 5 ],
									"source" : [ "obj-9", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 4 ],
									"source" : [ "obj-9", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 3 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 289.0, 369.0, 104.0, 22.0 ],
					"text" : "p re-combine"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 547.0, 356.0, 29.5, 22.0 ],
					"text" : "+~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "multichannelsignal" ],
					"patching_rect" : [ 276.010638475418091, 224.0, 92.0, 22.0 ],
					"text" : "mc.separate~ 1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Lato",
					"fontsize" : 13.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 677.945190000000025, 149.0, 115.0, 26.0 ],
					"text" : "Recall presets."
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.811765, 0.372549, 0.372549, 1.0 ],
					"fontname" : "Lato",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 543.0, 301.0, 93.0, 24.0 ],
					"text" : "yafr2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 13.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 461.974608999999987, 255.0, 60.0, 24.0 ],
					"text" : "*~ 0.707"
				}

			}
, 			{
				"box" : 				{
					"angle" : 0.0,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.5 ],
					"id" : "obj-90",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 652.0, 600.0, 196.121216000000004, 65.888824 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 298.0, 80.0 ],
					"proportion" : 0.39,
					"rounded" : 18
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 2 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 4 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 2,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 3,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
 ]
	}

}
