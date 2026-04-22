{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 268.0, 202.0, 859.0, 760.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 251.5, 555.0, 79.0, 22.0 ],
                    "text": "prepend help"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 251.5, 588.0, 51.0, 22.0 ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-5",
                    "maxclass": "live.tab",
                    "num_lines_patching": 22,
                    "num_lines_presentation": 22,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 88.0, 150.0, 346.0, 392.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 39.0, 41.0, 313.0, 435.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "SSTT-AmbiCombiner", "SSTT-AmbiSplitter", "SSTT-Decoder-Output", "SSTT-DeCorr", "SSTT-Delay", "SSTT-encode", "SSTT-fbDel", "SSTT-Gran", "SSTT-HOA_Focus", "SSTT-HOA-Blur", "SSTT-MFCCmap", "SSTT-Mixer", "SSTT-Omni-Verb", "SSTT-record", "SSTT-ReEncoder", "SSTT-RingMod", "SSTT-Rotation", "SSTT-Spatial-waveshape", "SSTT-Spectral-Interpolate", "SSTT-SpectrumSplit~", "SSTT-SphericalHarmonicDelay", "SSTT-warp" ],
                            "parameter_longname": "live.tab",
                            "parameter_mmax": 21,
                            "parameter_modmode": 0,
                            "parameter_shortname": "live.tab",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.tab"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 75.0, 55.0, 150.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 37.0, 13.0, 275.0, 20.0 ],
                    "text": "List of modules in SSTT, click on/ select a module"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1700.0, 688.0, 151.0, 87.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 1792.0, 493.0, 406.0, 47.0 ],
                    "text": "\n* It will work in Max 8 but some functions like param osc handling introduced in Max 9 will have to be reprogrammed"
                }
            },
            {
                "box": {
                    "fontname": "Georgia",
                    "fontsize": 16.0,
                    "id": "obj-28",
                    "linecount": 73,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1483.0, 366.0, 207.0, 1352.0 ],
                    "presentation": 1,
                    "presentation_linecount": 28,
                    "presentation_rect": [ 1792.0, 1.0, 623.0, 534.0 ],
                    "text": "Spatial Sound Transformation toolkit for Max, is a collection of Max modules in the form of bpatchers build around IRCAM´s Spat5 library and has been developed throughout my own artistic practice and through lectures and workshops I have given in artistic and creative use of ambisonic over the past years.\n\nCombined with my interest in mapping, sonification and sound transformation have led me to create and explore artistic techniques of using (and misusing) ambisonics and other formats where these techniques emphasize thinking outside the box and establishing a direct relationship between shaping the material and “bending” the sounding space.\n\nThe toolkit offers a range of such methods, where spatiality arises naturally from the sound’s transformation rather than from a choreographed placement of point sources. Additionally, the toolkit simplifies both patching and working with ambisonics by providing automated channel and connection handling.\n\nThe toolkit is developed using Max 9*, spat5 library from Ircam, a few objects from the FluComa library, and javascript. \nSpat5 and FluComa needs to be installed before the use of this toolkit\n\nAs the toolkit is doing automatic handling of ambisonic ordering, channels and connections it is paramount that the included javascripts, abstractions and all related patches in this package are in the specified folder and not moved across as this may break the functionality.  Furthermore there is a chance of bugs and weirdness, and I will update rather infrequently trying to adress any issues or request should there be.\n\nanders.tveit@nmh.no\n\n"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 105.0, 303.0, 355.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 182.0, 63.0, 22.0 ],
                                    "text": "pack i 225"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 29.5, 127.0, 39.0, 22.0 ],
                                    "text": "-1680"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 77.5, 127.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 34.0, 221.0, 41.0, 22.0 ],
                                    "text": "line 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 259.0, 64.0, 22.0 ],
                                    "text": "offset $1 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "bang", "bang", "bang", "" ],
                                    "patching_rect": [ 34.0, 64.0, 54.0, 22.0 ],
                                    "text": "sel 0 1 2"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-14",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 34.0, 21.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-15",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 34.0, 297.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 39.0, 169.0, 43.5, 169.0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "midpoints": [ 87.0, 169.0, 43.5, 169.0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 575.0, 588.0, 43.0, 22.0 ],
                    "text": "p slide"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 575.0, 633.0, 67.0, 22.0 ],
                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                    "text": "thispatcher"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-27",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 575.0, 535.0, 30.0, 30.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            }
        ],
        "parameters": {
            "obj-5": [ "live.tab", "live.tab", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}