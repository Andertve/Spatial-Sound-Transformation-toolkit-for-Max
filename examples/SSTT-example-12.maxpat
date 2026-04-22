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
        "rect": [ 134.0, 167.0, 1286.0, 700.0 ],
        "boxes": [
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-8",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 158.0, 268.0, 150.0, 79.0 ],
                    "text": "mixing between the granulated ambisonic signal and the dry ambisonic signal"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 919.0, 249.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 919.0, 279.0, 67.0, 22.0 ],
                    "text": "/drywet 75,"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 919.0, 307.0, 214.0, 22.0 ],
                    "text": "spat5.osc.prepend /SSTT-example-12/"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 919.0, 344.0, 113.0, 22.0 ],
                    "saved_object_attributes": {
                        "outputformat": "fullpacket"
                    },
                    "text": "param.osc @auto 1"
                }
            },
            {
                "box": {
                    "clipheight": 20.0,
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "EspressoHelling.wav",
                                "filename": "EspressoHelling.wav",
                                "filekind": "audiofile",
                                "id": "u730010820",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "Norwegian_Hardanger_Fiddle_Music.wav",
                                "filename": "Norwegian_Hardanger_Fiddle_Music.wav",
                                "filekind": "audiofile",
                                "id": "u057000877",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 140.0, 21.0, 164.0, 39.0 ],
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
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 130.0, 356.0, 154.0, 65.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 272.0, 482.0, 154.0, 65.0 ],
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
                    "id": "obj-10",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Gran.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 411.0, 233.0, 383.0, 114.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 1243.0, 489.0, 383.0, 114.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-6",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 497.0, 53.0, 263.0, 173.0 ],
                    "text": "Basically a Spat-granular + t-design encoder, accepts either an ambisonic input or a mono input (It extracts the W channel from the ambisonic input) \n\nThe output is a full sphere ambisonic signal where the grains have been mapped around a virtual sphere, \n\n\n"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 130.0, 76.0, 329.0, 108.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 633.6796875, 217.12890625, 287.0, 108.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 124.0, 632.0, 54.0, 22.0 ],
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
                    "id": "obj-2",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 124.0, 451.0, 1134.0, 170.0 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 1 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-14", 0 ]
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
                    "destination": [ "obj-1", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-10::obj-11": [ "live.dial[6]", " ", 0 ],
            "obj-10::obj-22": [ "ShowCh[3]", "showCh", 0 ],
            "obj-10::obj-23": [ "ShowCh[4]", "showCh", 0 ],
            "obj-10::obj-25": [ "live.numbox[3]", "preset-interp", 0 ],
            "obj-10::obj-38": [ "live.dial[19]", " ", 0 ],
            "obj-10::obj-40": [ "live.numbox[2]", "live.numbox[2]", 0 ],
            "obj-10::obj-5": [ "live.dial[2]", " ", 0 ],
            "obj-10::obj-50": [ "live.dial[3]", " ", 0 ],
            "obj-10::obj-67": [ "live.menu[39]", "live.menu[13]", 0 ],
            "obj-10::obj-73": [ "live.dial[23]", " ", 0 ],
            "obj-10::obj-76": [ "live.dial[20]", " ", 0 ],
            "obj-10::obj-78": [ "live.dial[5]", " ", 0 ],
            "obj-1::obj-35": [ "ShowCh[18]", "showCh", 0 ],
            "obj-1::obj-5": [ "drywet", "drywet", 0 ],
            "obj-1::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "obj-2::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-2::obj-103::obj-21": [ "speakersetup", "live.menu", 0 ],
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
            "obj-3::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-3::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-3::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-3::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-3::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-1::obj-35": {
                    "parameter_longname": "ShowCh[18]"
                },
                "obj-2::obj-103::obj-21": {
                    "parameter_longname": "speakersetup"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}