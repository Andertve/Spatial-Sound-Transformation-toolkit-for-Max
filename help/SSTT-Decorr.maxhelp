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
        "rect": [ 134.0, 167.0, 1182.0, 776.0 ],
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
                    "patching_rect": [ 20.0, 14.0, 485.0, 30.0 ],
                    "text": "SSTT-DeCorr",
                    "varname": "autohelp_top_title"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "linecount": 7,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 46.0, 1053.0, 100.0 ],
                    "text": "Creates a diffuse field, suitable for generating a particle-trail–like effect when used with transient sounds, especially in combination with field rotation. Input: Ambisonic signal, Parameter: Delay time\nThe module delays each Ambisonic component according to the defined HOA order, using a harmonic series scaled by the delay time (in ms), up to one second (SR).\nDelay scaling follows:\n1 / (spherical component index) × delay time (ms)Example (3rd order):\n1/16, 1/15, 1/14, 1/13, 1/12, 1/11, 1/10, 1/9, 1/8, 1/7, 1/6, 1/5, 1/4, 1/3, 1/2, 1/1 × parameter value\nFeedback (Fb):\nBased on a feedback algorithm that generates non-linear ratios for the delay times."
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 729.0, 365.0, 311.0, 35.0 ],
                    "text": "/rot-yaw_onoff 1, /ambiorder 5, /autorotate 1, /drywet 70, /Decorr-deltime 1000"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 796.0, 319.0, 151.0, 33.0 ],
                    "text": "// setting param value with OSC"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 734.0, 330.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 727.0, 417.0, 235.0, 22.0 ],
                    "text": "spat5.osc.prepend /SSTT-Decorr.maxhelp/"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 727.0, 454.0, 122.0, 22.0 ],
                    "saved_object_attributes": {
                        "outputformat": "fullpacket"
                    },
                    "text": "param.osc @auto 1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 34.0, 716.0, 54.0, 22.0 ],
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
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Rotation.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 367.0, 421.0, 323.0, 101.0 ],
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
                    "id": "obj-4",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-DeCorr.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 367.0, 330.0, 261.0, 85.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "args": [ "STTMix" ],
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-24",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 34.0, 454.0, 154.0, 61.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "Meccano opptrekk 2 (nærmere) .aif",
                                "filename": "Meccano opptrekk 2 (nærmere) .aif",
                                "filekind": "audiofile",
                                "id": "u123011415",
                                "selection": [ 0.447916666666667, 0.0 ],
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            }
                        ]
                    },
                    "id": "obj-22",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 34.0, 169.0, 150.0, 30.0 ],
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
                    "id": "obj-19",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 34.0, 211.0, 304.0, 105.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.87499725818634, 96.87499630451202, 336.4583204984665, 80.99662685394287 ],
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
                    "id": "obj-1",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Decoder-Output.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 34.0, 536.0, 1133.0, 173.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 45.83333158493042, 593.749977350235, 1196.874954342842, 179.16665983200073 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "order": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-22", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-19::obj-16": [ "ambiorder[1]", "ambiorder", 0 ],
            "obj-19::obj-20": [ "ShowCh[13]", "showCh", 0 ],
            "obj-19::obj-3": [ "ambiorder", "ambiorder", 0 ],
            "obj-19::obj-57": [ "live.text[15]", "live.text[9]", 0 ],
            "obj-19::obj-79": [ "ShowCh[14]", "showCh", 0 ],
            "obj-1::obj-10": [ "Crossover", "Crossover", 0 ],
            "obj-1::obj-103::obj-21": [ "live.menu", "live.menu", 0 ],
            "obj-1::obj-12": [ "live.menu[8]", "live.menu[2]", 0 ],
            "obj-1::obj-14": [ "mc.live.gain~[2]", "loudspeakers", 0 ],
            "obj-1::obj-22::obj-102": [ "live.toggle[436]", "live.toggle", 0 ],
            "obj-1::obj-22::obj-3": [ "live.text[1]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-57": [ "live.text[9]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-58": [ "live.text[10]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-62": [ "live.text[12]", "live.text[9]", 0 ],
            "obj-1::obj-22::obj-72": [ "live.text[14]", "live.text[8]", 0 ],
            "obj-1::obj-25": [ "live.tab[2]", "live.tab[2]", 0 ],
            "obj-1::obj-27": [ "live.menu[9]", "live.menu", 0 ],
            "obj-1::obj-31": [ "Headphones_vol", "headphones", 0 ],
            "obj-1::obj-35": [ "Sub_ch_freq", "freq", 0 ],
            "obj-1::obj-36": [ "live.toggle[20]", "live.toggle[2]", 0 ],
            "obj-1::obj-38": [ "live.numbox[6]", "live.numbox", 0 ],
            "obj-1::obj-39": [ "Sub_ch_sel", "Sub_ch_sel", 0 ],
            "obj-1::obj-4": [ "ShowCh[1]", "showCh", 0 ],
            "obj-1::obj-45": [ "live.menu[10]", "live.menu", 0 ],
            "obj-1::obj-46": [ "Sub_ch_vol", "Sub_ch_vol", 0 ],
            "obj-1::obj-55": [ "live.toggle[19]", "live.toggle[2]", 0 ],
            "obj-1::obj-58": [ "live.text[13]", "live.text[9]", 0 ],
            "obj-1::obj-7": [ "live.menu[5]", "live.menu[1]", 0 ],
            "obj-1::obj-79": [ "ShowCh[2]", "showCh", 0 ],
            "obj-24::obj-35": [ "ShowCh[18]", "showCh", 0 ],
            "obj-24::obj-5": [ "drywet", "drywet", 0 ],
            "obj-24::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "obj-4::obj-10": [ "Decorr-deltime", "DelTime", 0 ],
            "obj-4::obj-14": [ "ShowCh[10]", "showCh", 0 ],
            "obj-4::obj-5": [ "live.tab", "live.tab", 0 ],
            "obj-4::obj-79": [ "ShowCh[9]", "showCh", 0 ],
            "obj-5::obj-14": [ "rot-yaw_onoff", "yawonoff", 0 ],
            "obj-5::obj-15": [ "live.toggle[3]", "live.toggle", 0 ],
            "obj-5::obj-16": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-5::obj-2": [ "counter-rot", "counter-rot", 0 ],
            "obj-5::obj-20": [ "ShowCh[6]", "showCh", 0 ],
            "obj-5::obj-26": [ "autorotate", "autorotate", 0 ],
            "obj-5::obj-38::obj-10": [ "live.numbox[2]", "live.numbox", 0 ],
            "obj-5::obj-38::obj-15": [ "live.numbox[1]", "live.numbox", 0 ],
            "obj-5::obj-38::obj-19": [ "live.numbox[3]", "live.numbox", 0 ],
            "obj-5::obj-38::obj-3": [ "live.tab[3]", "live.tab", 0 ],
            "obj-5::obj-38::obj-7": [ "live.numbox", "live.numbox", 0 ],
            "obj-5::obj-58": [ "live.numbox[4]", "live.numbox[4]", 0 ],
            "obj-5::obj-61": [ "live.numbox[5]", "live.numbox[4]", 0 ],
            "obj-5::obj-64": [ "live.numbox[7]", "live.numbox[4]", 0 ],
            "obj-5::obj-79": [ "ShowCh[15]", "showCh", 0 ],
            "obj-5::obj-91": [ "rot-roll", "roll", 0 ],
            "obj-5::obj-92": [ "rot-pitch", "pitch", 0 ],
            "obj-5::obj-93": [ "rot-yaw", "yaw", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-1::obj-103::obj-21": {
                    "parameter_longname": "live.menu"
                },
                "obj-24::obj-35": {
                    "parameter_longname": "ShowCh[18]"
                },
                "obj-4::obj-10": {
                    "parameter_linknames": 1,
                    "parameter_longname": "Decorr-deltime",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "Decorr-deltime"
                },
                "obj-5::obj-14": {
                    "parameter_longname": "rot-yaw_onoff",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "rot-yaw_onoff",
                    "parameter_shortname": "yawonoff"
                },
                "obj-5::obj-15": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-5::obj-16": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-5::obj-2": {
                    "parameter_linknames": 1,
                    "parameter_longname": "counter-rot",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "counter-rot",
                    "parameter_shortname": "counter-rot"
                },
                "obj-5::obj-20": {
                    "parameter_longname": "ShowCh[6]"
                },
                "obj-5::obj-26": {
                    "parameter_longname": "autorotate",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "autorotate",
                    "parameter_shortname": "autorotate"
                },
                "obj-5::obj-38::obj-3": {
                    "parameter_longname": "live.tab[3]"
                },
                "obj-5::obj-64": {
                    "parameter_longname": "live.numbox[7]"
                },
                "obj-5::obj-79": {
                    "parameter_longname": "ShowCh[15]"
                },
                "obj-5::obj-91": {
                    "parameter_longname": "rot-roll",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "rot-roll"
                },
                "obj-5::obj-92": {
                    "parameter_linknames": 1,
                    "parameter_longname": "rot-pitch",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "rot-pitch"
                },
                "obj-5::obj-93": {
                    "parameter_linknames": 1,
                    "parameter_longname": "rot-yaw",
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "rot-yaw"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}