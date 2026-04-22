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
        "rect": [ 187.0, 131.0, 1251.0, 757.0 ],
        "boxes": [
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-8",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-DeCorr.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 65.0, 387.0, 253.0, 81.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 82.71484375, 786.5390625, 253.0, 81.0 ],
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
                    "id": "obj-7",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-MFCCmap.maxpat",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 440.0, 207.0, 293.0, 147.0 ],
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
                    "id": "obj-5",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-SpectrumSplit~.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 377.0, 366.0, 361.0, 94.0 ],
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
                    "id": "obj-16",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Omni-Verb.maxpat",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 383.0, 473.0, 299.0, 83.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 923.88671875, 711.41015625, 299.0, 83.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 744.0, 430.0, 58.0, 22.0 ],
                    "text": "loadbang"
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
                    "name": "SSTT-Mixer.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 65.0, 502.0, 154.0, 65.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 389.0, 292.0, 154.0, 65.0 ],
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
                    "id": "obj-20",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-Spectral-Interpolate.maxpat",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal", "multichannelsignal" ],
                    "patching_rect": [ 141.0, 176.0, 289.0, 182.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 744.0, 461.0, 177.0, 22.0 ],
                    "text": "/drywet 65, /Interp_Time 12000,"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 744.0, 490.0, 214.0, 22.0 ],
                    "text": "spat5.osc.prepend /SSTT-example-14/"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 744.0, 520.0, 113.0, 22.0 ],
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
                                "absolutepath": "Norwegian Hardanger Fiddle Music by Anne Hytta-npkotDu1-xY-256k-1655060006582.wav",
                                "filename": "Norwegian Hardanger Fiddle Music by Anne Hytta-npkotDu1-xY-256k-1655060006582.wav",
                                "filekind": "audiofile",
                                "id": "u876003887",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "BassClar.20_4.MEL_15.wav",
                                "filename": "BassClar.20_4.MEL_15.wav",
                                "filekind": "audiofile",
                                "id": "u392002814",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "bsclarinetsAirsnd3.aif",
                                "filename": "bsclarinetsAirsnd3.aif",
                                "filekind": "audiofile",
                                "id": "u650009356",
                                "loop": 1,
                                "content_state": {
                                    "loop": 1
                                }
                            },
                            {
                                "absolutepath": "Bari multi M8 pitched_01 (1).wav",
                                "filename": "Bari multi M8 pitched_01 (1).wav",
                                "filekind": "audiofile",
                                "id": "u075002603",
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
                    "patching_rect": [ 65.0, 10.0, 216.0, 44.0 ],
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
                    "id": "obj-3",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "SSTT-encode.maxpat",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "multichannelsignal" ],
                    "patching_rect": [ 65.0, 58.0, 324.0, 110.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 65.0, 767.0, 54.0, 22.0 ],
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
                    "patching_rect": [ 65.0, 583.0, 1131.0, 169.0 ],
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
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
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-16", 0 ]
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
                    "destination": [ "obj-5", 0 ],
                    "order": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 0,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "order": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-8", 0 ]
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
            "obj-10::obj-35": [ "ShowCh[18]", "showCh", 0 ],
            "obj-10::obj-5": [ "drywet", "drywet", 0 ],
            "obj-10::obj-82": [ "ShowChbox[2]", "showCh", 0 ],
            "obj-16::obj-18": [ "OmniVerb_diffusion", "Diffusion", 0 ],
            "obj-16::obj-2": [ "ShowCh[10]", "showCh", 0 ],
            "obj-16::obj-20": [ "Omniverb_damping", "Damping", 0 ],
            "obj-16::obj-32": [ "OmniVerb_decay", "decay_time", 0 ],
            "obj-16::obj-35": [ "OmniVerb_size", "size", 0 ],
            "obj-16::obj-79": [ "ShowCh[9]", "showCh", 0 ],
            "obj-20::obj-15": [ "live.numbox[19]", "live.numbox", 0 ],
            "obj-20::obj-34": [ "Interp Time", "Interp Time", 0 ],
            "obj-20::obj-35": [ "ShowCh[17]", "showCh", 0 ],
            "obj-20::obj-49": [ "Denoise[1]", "Denoise", 0 ],
            "obj-20::obj-55": [ "live.text", "live.text", 0 ],
            "obj-20::obj-56": [ "live.numbox[18]", "live.numbox", 0 ],
            "obj-20::obj-67": [ "live.menu[39]", "live.menu[13]", 0 ],
            "obj-20::obj-79": [ "ShowCh[3]", "showCh", 0 ],
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
            "obj-5::obj-3": [ "gain_spc", "Gain", 0 ],
            "obj-5::obj-58": [ "live.text[22]", "live.text[9]", 0 ],
            "obj-5::obj-7": [ "ShowCh[15]", "showCh", 0 ],
            "obj-5::obj-79": [ "ShowCh[16]", "showCh", 0 ],
            "obj-5::obj-85::obj-40": [ "live.numbox[13]", "live.numbox", 0 ],
            "obj-7::obj-30": [ "live.numbox[14]", "live.numbox[9]", 0 ],
            "obj-7::obj-31": [ "live.numbox[16]", "live.numbox[9]", 0 ],
            "obj-7::obj-46": [ "live.numbox[17]", "live.numbox[9]", 0 ],
            "obj-7::obj-5": [ "threshold", "Threshold", 0 ],
            "obj-7::obj-51": [ "live.numbox[15]", "live.numbox[9]", 0 ],
            "obj-7::obj-62": [ "live.dial[6]", "yaw", 0 ],
            "obj-8::obj-10": [ "Decorr-deltime", "DelTime", 0 ],
            "obj-8::obj-14": [ "ShowCh[20]", "showCh", 0 ],
            "obj-8::obj-5": [ "live.tab", "live.tab", 0 ],
            "obj-8::obj-79": [ "ShowCh[19]", "showCh", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-10::obj-35": {
                    "parameter_longname": "ShowCh[18]"
                },
                "obj-20::obj-34": {
                    "parameter_osc_enabled": 1,
                    "parameter_osc_name": "Interp_Time"
                },
                "obj-20::obj-79": {
                    "parameter_longname": "ShowCh[3]"
                },
                "obj-2::obj-103::obj-21": {
                    "parameter_longname": "speakersetup"
                },
                "obj-8::obj-14": {
                    "parameter_longname": "ShowCh[20]"
                },
                "obj-8::obj-79": {
                    "parameter_longname": "ShowCh[19]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}