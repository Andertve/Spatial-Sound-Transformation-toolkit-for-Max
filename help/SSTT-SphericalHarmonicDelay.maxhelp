{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 96.0, 1444.0, 852.0 ],
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 3,
                    "id": "obj-1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 4.0, 489.0, 83.0, 51.0 ],
                    "presentation_linecount": 2,
                    "text": "Set a 100 to hear the effect."
                }
            },
            {
                "box": {
                    "fontface": 3,
                    "fontname": "Arial",
                    "fontsize": 20.871338,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 14.0, 485.0, 30.0 ],
                    "text": "SSTT-Spherical-HarmonicDelay",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 46.0, 494.0, 47.0 ],
                    "text": "The Spherical Harmonic Delay and Pitch Processor delays and pitch-shifts the individual Ambisonic components in various ways. Try the presets to explore different results.\n"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 480.0, 144.0, 150.0, 39.0 ],
                    "text": "Click the bang button!"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-3",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 270.0, 466.0, 228.0, 79.0 ],
                    "text": "The example uses the Re-encoder module to make sure we arrive in ambisonic domain after doing multichannel pitch and delay processing"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 0,
                    "id": "obj-2",
                    "linecount": 13,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 580.0, 313.0, 478.0, 200.0 ],
                    "text": "\nThe Spread parameter distributes the pitch intervals across the Ambisonic components (except when a harmonic message is used).\nInterpolate_cents smoothly interpolates from no pitch shift to the values defined in the pitch list.\n\nThe pitch list can be specified as ratios (see Preset 1), as intervals (see Preset 2), or as a combination of both.\nThe Harmonic flag, followed by a value (e.g., 1 or another number), generates a pitch mapping in a harmonics series across the range of Ambisonic channels. Click the bang button after creating a map to apply it.\n\nThe delay component is randomized across the Ambisonic channels."
                }
            },
            {
                "box": {
                    "clipheight": 22.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Tibetan_Crystal_Singing_Bowl-3_hits_using_rubber_mallet_1.wav",
                                "filename": "Tibetan_Crystal_Singing_Bowl-3_hits_using_rubber_mallet_1.wav",
                                "filekind": "audiofile",
                                "id": "u392013480",
                                "loop": 0,
                                "content_state": {                                }
                            },
                            {
                                "absolutepath": "Rivero-MelodicVocals.wav",
                                "filename": "Rivero-MelodicVocals.wav",
                                "filekind": "audiofile",
                                "id": "u803001137",
                                "loop": 0,
                                "content_state": {
                                    "loop": 0
                                }
                            },
                            {
                                "absolutepath": "/Users/anderstveit_1/Documents/Mesmerism2-materiale/photophone/01-260507_1103.wav",
                                "filename": "01-260507_1103.wav",
                                "filekind": "audiofile",
                                "id": "u387007939",
                                "selection": [ 0.39285714285714285, 0.6533613445378151 ],
                                "loop": 0,
                                "content_state": {                                }
                            },
                            {
                                "absolutepath": "/Users/anderstveit_1/Documents/movingMachines-somax/1-Ossa-metacarpi-Lene-Grenager-Mixed-handedness.wav",
                                "filename": "1-Ossa-metacarpi-Lene-Grenager-Mixed-handedness.wav",
                                "filekind": "audiofile",
                                "id": "u598011208",
                                "selection": [ 0.32592592592592595, 0.4962962962962963 ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-228",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 561.0, 46.0, 531.0, 92.0 ],
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
                    "id": "obj-226",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 86.0, 758.0, 54.0, 22.0 ],
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
                    "id": "obj-216",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-ReEncoder.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 244.0, 334.0, 296.0, 94.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 448.88671875, 826.703125, 297.0, 78.0 ],
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
                    "id": "obj-207",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 86.0, 482.0, 154.0, 65.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 222.61328125, 524.4453125, 154.0, 65.0 ],
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
                    "id": "obj-206",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 86.0, 190.0, 300.0, 108.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 293.328125, 420.79296875, 287.0, 108.0 ],
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
                    "id": "obj-204",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 86.0, 572.0, 1131.0, 171.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 657.64453125, 490.546875, 1005.0, 170.0 ],
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
                    "id": "obj-14",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-SphericalHarmonicDelay.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 521.0, 182.0, 494.0, 124.0 ],
                    "prototypename": "SSTT-SHDProcessor-Source of Uncertainty",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-216", 1 ],
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-226", 0 ],
                    "source": [ "obj-204", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-207", 0 ],
                    "order": 1,
                    "source": [ "obj-206", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-216", 0 ],
                    "order": 0,
                    "source": [ "obj-206", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-204", 0 ],
                    "source": [ "obj-207", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-216", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-207", 1 ],
                    "source": [ "obj-216", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-228", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-206", 0 ],
                    "source": [ "obj-228", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-14::obj-12": [ "live.dial", "Spread", 0 ],
            "obj-14::obj-13": [ "live.dial[1]", "Interpolate cents", 0 ],
            "obj-14::obj-35": [ "ShowCh[16]", "showCh", 0 ],
            "obj-14::obj-82": [ "ShowChbox[3]", "showCh", 0 ],
            "obj-204::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-204::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-204::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-204::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-204::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-204::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-204::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-204::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-204::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-204::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-204::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-204::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-204::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-204::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-204::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-204::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-204::obj-4": [ "ShowCh[1]", "showCh", 0 ],
            "obj-204::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-204::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-204::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-204::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-204::obj-61": [ "live.menu[4]", "live.menu[4]", 0 ],
            "obj-204::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-204::obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "obj-204::obj-83": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-206::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-206::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-206::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-206::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-206::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-207::obj-35": [ "ShowCh[19]", "showCh", 0 ],
            "obj-207::obj-5": [ "drywet", "drywet", 0 ],
            "obj-207::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "obj-216::obj-67": [ "live.menu[39]", "live.menu[13]", 0 ],
            "obj-216::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "obj-216::obj-9": [ "ShowCh[5]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-14::obj-35": {
                    "parameter_longname": "ShowCh[16]"
                },
                "obj-14::obj-82": {
                    "parameter_longname": "ShowChbox[3]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}