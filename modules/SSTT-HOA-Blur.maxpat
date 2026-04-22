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
		"rect" : [ 191.0, 92.0, 1000.0, 700.0 ],
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
					"id" : "obj-7",
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
					"id" : "obj-6",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 496.0, 382.0, 50.0, 22.0 ]
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
					"patching_rect" : [ 230.0, 519.0, 93.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.0, 1.0, 86.0, 16.0 ],
					"text" : "Spat HOA-blur"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.684228897094727, 162.368426322937012, 91.0, 22.0 ],
					"text" : "r orderCh-show"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.0, 382.0, 69.0, 22.0 ],
					"text" : "r orderNum"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"id" : "obj-4",
					"ignoreclick" : 1,
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 414.0, 417.0, 39.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.0, 38.0, 26.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[6]",
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
					"patching_rect" : [ 528.684228897094727, 204.473690986633301, 39.0, 13.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.0, 53.0, 26.0, 13.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "ShowCh[22]",
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
					"angle" : 0.0,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 0.0 ],
					"border" : 2,
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.5 ],
					"id" : "obj-90",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.0, 502.0, 196.121216000000004, 65.888824 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 189.0, 75.0 ],
					"proportion" : 0.39,
					"rounded" : 18
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 474.0, 418.0, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "hoa_blur.js",
						"parameter_enable" : 0
					}
,
					"text" : "js hoa_blur.js"
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
					"patching_rect" : [ 156.0, 408.5, 30.0, 30.0 ]
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
					"patching_rect" : [ 68.0, 210.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"id" : "obj-23",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 186.0, 201.0, 44.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 14.0, 44.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_linknames" : 1,
							"parameter_longname" : "spat_HOAblur",
							"parameter_mmax" : 100.0,
							"parameter_modmode" : 0,
							"parameter_osc_enabled" : 1,
							"parameter_osc_name" : "spat_HOAblur",
							"parameter_shortname" : "blur",
							"parameter_type" : 0,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "spat_HOAblur"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.0, 257.0, 47.0, 21.0 ],
					"text" : "/blur $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 156.0, 329.0, 176.0, 49.0 ],
					"presentation_linecount" : 3,
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.hoa.blur~ @order 5 @dimension 3 @mc 1 @initwith \"/mode linear-spread\"",
					"varname" : "hoa_blur"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.0, 281.0, 29.0, 21.0 ],
					"text" : "thru"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 195.5, 320.827966332435608, 165.5, 320.827966332435608 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 0 ]
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
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
 ]
	}

}
