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
        "rect": [ 74.0, 146.0, 1278.0, 759.0 ],
        "boxes": [
            {
                "box": {
                    "fontface": 3,
                    "fontname": "Arial",
                    "fontsize": 20.871338,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 29.0, 485.0, 30.0 ],
                    "text": "SSTT-Spatial-waveshape",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 35.0, 61.0, 743.0, 60.0 ],
                    "text": "The module wavshape-distort the Ambisonic exept the W (omni) component, I.e changing Changing the shape of a waveform = adding harmonics ( in frequency domain) It has two parameters, Nigel and Tufnel. ( drive and gain) and they go to 11..\nIt can get very loud!, Waveshaping a ambisonic signal destroys the phase of ambisonic which can be fun, but if you need it back into ambisonic you can use it in combination with Re-encoding module"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 378.0, 395.0, 53.0, 22.0 ],
                    "text": "mc.*~ 1."
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-13",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-ReEncoder.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 100.0, 430.0, 297.0, 95.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-24",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Spatial-waveshape.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 100.0, 321.0, 184.0, 75.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 296.0, 327.0, 420.0, 60.0 ],
                    "text": "Since we are basically destroying the ambisonic  signal we can use the reEncode module to reencode it back to ambisonic domain   by going via an intermediate format called T-format and then to B format /Ambisonic see Re-encoder help file"
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "BassClar.20_4.MEL_15.wav",
                                "filename": "BassClar.20_4.MEL_15.wav",
                                "filekind": "audiofile",
                                "id": "u885000076",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-8",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 100.0, 155.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 100.0, 747.0, 54.0, 22.0 ],
                    "text": "mc.dac~"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 100.0, 201.0, 326.0, 108.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 100.0, 571.0, 1132.0, 169.0 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-13::obj-67": [ "live.menu[39]", "live.menu[13]", 0 ],
            "obj-13::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "obj-13::obj-9": [ "ShowCh[5]", "showCh", 0 ],
            "obj-1::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-1::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-1::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-1::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-1::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-24::obj-12": [ "ShowCh[21]", "showCh", 0 ],
            "obj-24::obj-13": [ "ShowCh[20]", "showCh", 0 ],
            "obj-24::obj-7": [ "waveshpr_drive", "Nigel", 0 ],
            "obj-24::obj-8": [ "waveshpr_gain", "Tufnel", 0 ],
            "obj-2::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-2::obj-103::obj-21": [ "live.menu", "live.menu", 0 ],
            "obj-2::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-2::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-2::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-2::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-2::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-2::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-2::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-2::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-2::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-2::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-2::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-2::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-2::obj-4": [ "ShowCh[1]", "showCh", 0 ],
            "obj-2::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-2::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-2::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-2::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-2::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-2::obj-79": [ "ShowCh[2]", "showCh", 0 ],
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