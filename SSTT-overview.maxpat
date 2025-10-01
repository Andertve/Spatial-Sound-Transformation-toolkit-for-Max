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
		"rect" : [ 192.0, 87.0, 1371.0, 779.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.5,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 441.0, 145.0, 287.0, 28.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 881.0, 225.0, 143.0, 28.0 ],
					"text" : "by Anders Tveit 2025\nNorwegian Academy of Music "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 115.0, 350.5, 220.0, 21.0 ],
					"text" : "script connect tab_overview 0 overview 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 677.0, 336.5, 359.0, 22.0 ],
					"text" : "script sendbox overview replace SSTT-ModuleOverview.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 363.0, 336.5, 361.0, 22.0 ],
					"text" : "script sendbox overview replace SSTT-ExamplesOverview.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 363.0, 381.5, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 54.0, 317.0, 106.0, 22.0 ],
					"text" : "sel 2"
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
					"name" : "SSTT-ModuleOverview.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ -1680.0, 0.0 ],
					"patching_rect" : [ 10.0, 386.0, 1313.0, 724.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 264.0, 1361.0, 740.0 ],
					"varname" : "overview",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.736950910211998, 0.736950732249687, 0.736950778673858, 1.0 ],
					"activebgoncolor" : [ 0.9, 0.65, 0.05, 1.0 ],
					"bgcolor" : [ 0.736950910211998, 0.736950732249687, 0.736950778673858, 1.0 ],
					"bgoncolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 1.0 ],
					"bordercolor" : [ 0.144131996740917, 0.144131949846078, 0.144131962041943, 1.0 ],
					"focusbordercolor" : [ 0.313725490196078, 0.313725490196078, 0.313725490196078, 0.0 ],
					"fontface" : 1,
					"fontname" : "Muna",
					"fontsize" : 18.0,
					"id" : "obj-14",
					"inactivetextoffcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"inactivetextoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 10.0, 260.0, 840.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 218.0, 840.0, 42.0 ],
					"rounded" : 8.0,
					"saved_attribute_attributes" : 					{
						"activebgcolor" : 						{
							"expression" : ""
						}
,
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"inactivetextoffcolor" : 						{
							"expression" : ""
						}
,
						"inactivetextoncolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"textoncolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "About", "Modules", "Examples" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.tab[13]",
							"parameter_mmax" : 2,
							"parameter_modmode" : 0,
							"parameter_shortname" : "live.tab[14]",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 3.0,
					"textcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"textoncolor" : [ 0.124064905296827, 0.124064860727621, 0.124064872278807, 1.0 ],
					"varname" : "tab_overview"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-86",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.0, 148.0, 386.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 209.0, 149.0, 206.0, 50.0 ],
					"text" : "A toolkit built around IRCAMs spat5 for exploration spatial sound transformation processes ."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Muna",
					"fontsize" : 54.0,
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 35.0, 413.0, 176.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 10.0, 29.0, 415.0, 176.0 ],
					"text" : "Spatial Sound\nTransformation Toolkit",
					"textcolor" : [ 1.0, 0.788235, 0.027451, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.203921568627451, 0.192156862745098, 0.184313725490196, 0.44 ],
					"bordercolor" : [ 0.619607843137255, 0.745098039215686, 0.952941176470588, 0.0 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 545.0, 150.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 2130.0, 267.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-14" : [ "live.tab[13]", "live.tab[14]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ],
					"buttons" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ModuleOverview.png",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/extras",
				"patcherrelativepath" : "./extras",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "SSTT-ModuleOverview.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Spatial-Transformation-toolkit/extras",
				"patcherrelativepath" : "./extras",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"elementcolor" : [ 0.686274509803922, 0.623529411764706, 0.623529411764706, 1.0 ],
		"stripecolor" : [ 0.227450980392157, 0.247058823529412, 0.266666666666667, 1.0 ],
		"saved_attribute_attributes" : 		{
			"locked_bgcolor" : 			{
				"expression" : "themecolor.theme_editing_bgcolor"
			}

		}

	}

}
