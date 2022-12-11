{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 560.0, 466.0, 720.0, 364.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"active1" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"bubblesize" : 16,
					"fontsize" : 18.0,
					"id" : "obj-45",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 5,
					"outlettype" : [ "preset", "int", "preset", "int", "" ],
					"patching_rect" : [ 202.962265729904175, 128.79245337843895, 108.037734270095825, 27.20754662156105 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.569515137672397, 122.169804215431213, 130.653387072086389, 25.471696972846985 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-52", "number", "int", 60 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-52", "number", "int", 120 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-52", "number", "int", 240 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-52", "number", "int", 360 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-52", "number", "int", 480 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-52", "number", "int", 720 ]
						}
 ],
					"stored1" : [ 0.082673951983452, 0.363330066204071, 0.824637830257416, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.108312325477527, 40.924715621471407, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-43",
					"items" : [ "Two", "Timbres", ",", "One", "Timbre" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.11455238103872, 73.944337999820704, 100.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.840275080204037, 39.0, 130.338289079666083, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 357.943384647369385, 173.169811189174652, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 372.943384647369385, 250.113202810287476, 32.0, 22.0 ],
					"text" : "+ 30"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 289.830184161663055, 34.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 209.015277404785166, 125.0, 22.0 ],
					"text" : "expr ($i1 -1) * 58 + 43"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.943384647369385, 327.264151513576508, 232.0, 22.0 ],
					"text" : "clear, paintrect $1 0 $2 113 255. 0. 226 80"
				}

			}
, 			{
				"box" : 				{
					"bgtransparent" : 1,
					"id" : "obj-32",
					"maxclass" : "lcd",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "list", "list", "int", "" ],
					"patching_rect" : [ 357.943384647369385, 365.830184161663055, 399.0, 113.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 193.490557134151459, 399.0, 113.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 16.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 58.5, 371.0, 38.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 78.924529135227203, 70.773585081100464, 275.075459241867065, 54.0 ],
					"text" : "Press the button to start and stop. Use the number box or presets to control bpm",
					"textcolor" : [ 0.552941176470588, 0.545098039215686, 0.545098039215686, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Bold Oblique",
					"fontsize" : 22.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 41.0, 414.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 39.0, 207.075461566448212, 28.0 ],
					"text" : "Wessel's illusion"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 786.537727296352386, 107.0, 109.0, 50.0 ],
					"text" : "to prove the illution works, you can click on this button to stop or restart it",
					"textcolor" : [ 0.0, 0.0, 0.043137254901961, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 598.11455238103872, 138.452829837799072, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 598.11455238103872, 107.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 598.11455238103872, 162.452829837799072, 75.0, 22.0 ],
					"text" : "s endillusion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 106.0, 1191.0, 690.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 644.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 613.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 539.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 576.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 502.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 465.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 428.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 428.0, 236.0, 241.000000000000057, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.5, 97.0, 73.0, 22.0 ],
									"text" : "r endillusion"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 54.0, 188.0, 96.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.25, 58.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-121",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 727.0, 644.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1091.666666666666288, 354.0, 75.0, 22.0 ],
									"text" : "set illusion-g"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 954.999999999999773, 355.0, 75.0, 22.0 ],
									"text" : "set illusion-c"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 795.333333333333258, 354.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 636.0, 359.0, 31.0, 22.0 ],
									"text" : "sig~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.0, 323.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 727.166666666666742, 435.0, 102.0, 22.0 ],
									"text" : "groove~ illusion-c"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 828.666666666666515, 354.0, 75.0, 22.0 ],
									"text" : "set illusion-e"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 727.0, 272.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 814.333333333333258, 499.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 814.333333333333258, 462.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 727.0, 534.0, 106.333333333333258, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1000.0, 272.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 863.666666666666515, 272.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 1068.666666666666288, 272.0, 42.0, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 931.999999999999773, 272.0, 42.0, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 239.000000000000028, 281.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 165.0, 281.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 202.000000000000028, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 128.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 91.0, 281.0, 22.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"patching_rect" : [ 795.333333333333258, 272.0, 52.333333333333258, 22.0 ],
									"text" : "t b 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 727.0, 236.0, 428.999999999999545, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 732.0, 145.0, 274.0, 22.0 ],
									"text" : "buffer~ illusion-g WesselIllusion_Marimba-sol.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 732.0, 118.0, 271.0, 22.0 ],
									"text" : "buffer~ illusion-e WesselIllusion_Marimba-mi.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 732.0, 91.0, 271.0, 22.0 ],
									"text" : "buffer~ illusion-c WesselIllusion_Marimba-do.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 54.0, 472.5, 40.0, 22.0 ],
									"text" : "* 0.08"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 54.0, 537.0, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 508.0, 39.0, 22.0 ],
									"text" : "$1 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 54.0, 434.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 54.0, 281.0, 32.0, 22.0 ],
									"text" : "t 1 b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 7,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 54.0, 236.0, 241.000000000000057, 22.0 ],
									"text" : "sel 1 2 3 4 5 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 608.0, 40.0, 22.0 ],
									"text" : "*~ 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 106.0, 674.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-39",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 89.0, 60.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-38",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 89.0, 411.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 583.0, 181.0, 33.0, 22.0 ],
													"text" : "* 19."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 583.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.001"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 583.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 524.0, 181.0, 33.0, 22.0 ],
													"text" : "* 17."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 524.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.003"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 524.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 466.0, 181.0, 33.0, 22.0 ],
													"text" : "* 15."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 466.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.007"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 466.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 408.0, 181.0, 33.0, 22.0 ],
													"text" : "* 13."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 408.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.016"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 408.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 350.0, 181.0, 32.0, 22.0 ],
													"text" : "* 11."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 350.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.031"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 350.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 294.0, 181.0, 29.5, 22.0 ],
													"text" : "* 9."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 294.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.063"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 294.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 236.0, 181.0, 29.5, 22.0 ],
													"text" : "* 7."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 236.0, 264.0, 54.0, 22.0 ],
													"text" : "*~ 0.125"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 236.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 183.0, 181.0, 29.5, 22.0 ],
													"text" : "* 5."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 183.0, 264.0, 47.0, 22.0 ],
													"text" : "*~ 0.25"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 183.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 136.0, 181.0, 29.5, 22.0 ],
													"text" : "* 3."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 264.0, 40.0, 22.0 ],
													"text" : "*~ 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 136.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 89.0, 181.0, 29.5, 22.0 ],
													"text" : "* 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 89.0, 124.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 316.0, 87.5, 22.0 ],
													"text" : "+~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 264.0, 34.0, 22.0 ],
													"text" : "*~ 1."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 89.0, 218.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"midpoints" : [ 98.5, 163.0, 145.5, 163.0 ],
													"order" : 8,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 98.5, 163.0, 192.5, 163.0 ],
													"order" : 7,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 98.5, 163.0, 245.5, 163.0 ],
													"order" : 6,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"midpoints" : [ 98.5, 163.0, 303.5, 163.0 ],
													"order" : 5,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 98.5, 163.0, 359.5, 163.0 ],
													"order" : 4,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"midpoints" : [ 98.5, 163.0, 417.5, 163.0 ],
													"order" : 3,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 98.5, 163.0, 475.5, 163.0 ],
													"order" : 2,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"midpoints" : [ 98.5, 163.0, 533.5, 163.0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"midpoints" : [ 98.5, 163.0, 592.5, 163.0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 9,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 270.0, 512.0, 83.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p cycle-timbre"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.25, 58.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.25, 25.0, 80.0, 22.0 ],
									"text" : "r Illusion-stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 431.0, 32.0, 22.0 ],
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 279.0, 309.0, 130.5, 22.0 ],
									"text" : "unpack i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 380.0, 393.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 325.0, 393.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 270.0, 393.0, 29.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 131.0, 137.0, 69.0, 22.0 ],
									"text" : "counter 1 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 97.0, 88.0, 22.0 ],
									"text" : "r Illusion-metro"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 270.0, 467.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-78",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 266.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-79",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 644.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 838.166666666666515, 405.5, 736.666666666666742, 405.5 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-11", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-11", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-11", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-11", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 804.833333333333258, 405.0, 736.666666666666742, 405.0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 964.499999999999773, 405.5, 736.666666666666742, 405.5 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 76.5, 347.5, 279.5, 347.5 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 1101.166666666666288, 405.5, 736.666666666666742, 405.5 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 63.5, 571.5, 300.5, 571.5 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-24", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-24", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-24", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 140.5, 222.5, 437.5, 222.5 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"midpoints" : [ 63.5, 228.5, 736.5, 228.5 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-41", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-41", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-41", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-41", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 2 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-46", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 821.499999999999886, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 150.5, 347.5, 389.5, 347.5 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"midpoints" : [ 224.500000000000028, 347.5, 334.5, 347.5 ],
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 140.5, 176.5, 21.5, 176.5 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"source" : [ "obj-62", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 952.999999999999773, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 279.5, 422.5, 279.5, 422.5 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 334.5, 422.5, 279.5, 422.5 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 389.5, 422.5, 279.5, 422.5 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"midpoints" : [ 288.5, 365.0, 290.0, 365.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"midpoints" : [ 344.25, 365.0, 345.0, 365.0 ],
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"midpoints" : [ 400.0, 365.0, 400.0, 365.0 ],
									"source" : [ "obj-67", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-70", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1089.666666666666288, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-70", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 873.166666666666515, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 1009.5, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 1 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 736.5, 402.0, 823.833333333333258, 402.0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 478.0, 134.0, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p arpeggio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.0, 268.0, 107.0, 22.0 ],
					"text" : "expr 1000/($f1/60)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 39.0, 430.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 790.283039569854736, 258.943391621112823, 81.0, 22.0 ],
					"text" : "loadmess -70"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 106.0, 126.0, 87.0, 22.0 ],
					"text" : "loadmess 0 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 41.0, 110.0, 22.0 ],
					"text" : "loadmess 60 64 67"
				}

			}
, 			{
				"box" : 				{
					"coldcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontname" : "Helvetica",
					"fontsize" : 24.0,
					"hotcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"id" : "obj-14",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"overloadcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 790.283039569854736, 316.0, 191.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 549.509419620037079, 179.490557134151459, 85.0, 157.0 ],
					"saved_attribute_attributes" : 					{
						"tribordercolor" : 						{
							"expression" : ""
						}
,
						"tricolor" : 						{
							"expression" : ""
						}
,
						"trioncolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"tribordercolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"tricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"trioncolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"varname" : "live.gain~[1]",
					"warmcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"checkedcolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 106.0, 206.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.569515137672397, 72.207547783851624, 38.0, 38.0 ],
					"uncheckedcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 106.0, 161.0, 75.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 336.0, 82.0, 22.0 ],
					"text" : "s Illusion-stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 22.0, 272.0, 34.0, 22.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 106.0, 298.0, 75.0, 22.0 ],
					"text" : "metro 3000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 106.0, 336.0, 90.0, 22.0 ],
					"text" : "s Illusion-metro"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica",
					"fontsize" : 30.0,
					"hint" : "bpm",
					"htricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ],
					"id" : "obj-52",
					"maxclass" : "number",
					"maximum" : 1000,
					"minimum" : 60,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 162.0, 211.0, 101.0, 38.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 574.367244808673831, 72.207547783851624, 83.0, 38.0 ],
					"tricolor" : [ 1.0, 0.0, 0.886274509803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 39.0, 496.0, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 39.0, 463.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 790.283039569854736, 477.037736594676971, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"data" : [ 6811, "png", "IBkSG0fBZn....PCIgDQRA..A7H...PbHX....PK08hN....DLmPIQEBHf.B7g.YHB..ZHURDEDU3wY6ceGeTUk2GG+yYt2YlTnjPITDTPTZFBhJBXgW3JrOviETwUPbAEXIBnr1KnOXg00UE6thHntTTTQThzDbAETJhARnCoRlPKEfzKSlYt2m+XRBfBXFMP3N426Wu3el6jjyg4Nyu4dteOmixvn.SDBgPHB.1pqa.BgPHrdjhGBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDvjhGBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDvjhGBgPHBXRwCgPHDAryHEOTJGnTNOS7qVHDBw4.p0KdnT14G9gUy27MKAkxFfp19OgPHDh5X0pEOTpPX1ydNLfALXtga3uv7l27kq.QHDhfPpZqsgVkxNIlXBz+9eSbzilG.z91eArgM78zhVDEll9pM9yHDBg3b.0RW4gBe9L3Ye1+Y0EN.Xu60EwE2h.rW67mQHDBw4DpUJdnT1YG6Xq78e+O..sqcmOiXDCilzjlPbwsD4pNDmQ3OXF500MCgHfnTNq79AasUK0CrwpV0Zn3hKgy+7aCKZQym4LmOkIO4GmcsqjHu7xAkRq14OkP..1Xya9mI8zSCPN2RXEnvmOerl07cjWd4gUelRTK05MI93S..d9m+onac6J.pft0sKgBKrPxO+BQRckn1jRow6+9+G9tuaMnTxvhJN2mRoviGOLko7Rjd5YX4+B00nq4WobvouNihTSMMN+yusb629sV4i4fTRIMJszxvlMEPnnTd9i1dEhJYmvCOTBMzPAbfR9tIhy4YiPBwfvBKLBMzP.BwRW.oFT7vFqYMqlbyMWrY6WW.oppoG7fYQSaZSXUqZsXXTAZZ1YFy3ivlMarrk8szpVsC4deHp0nT5jTRohWuFDVXMBSyJpqaRBwokRYC2tcyAOXV7MeyJIojRGSSu00Mqe29MKdnT1X6aeWjbxofc6mrmtBOdpfRKsTZYKaA+3OtNz00XYKa4r8suSZSaZMoklKRKs8dFn4KpuRorwgNT1XXXhSmgZoeSnn9BEd85g7xKO1xV1FG5PYgooQcci52sZz77v+D8SC3j8TsA3lK4RtbF5PGBOyy7Br90uJFxPtKxJqrYzidD7ge3b.jgr5rmptG.Ay+etcdnG59nm87xY3CezDb2WquvNfAPv5HTXCnTt4adn7xu7+ftzkKGq74s0n64goo6S4wTJEfMb5zAd73g3i+G3NtiQRVYkM555LrgMD.2m1eGhZSZjXh+DgFZnz4N2EBVeinR4Eud8REUTAPEXZVdccSR7GfooIqYMqkt10NSTQ0B7WDI3hRYixJqL74yGkWd4.kgoo0s3we3zVYZZB3f10t1QbwsDtsa6N4.G3f.vUcU8h9129hUt5pUiRoym7IeNKcoqPRgjvRPoTXZZxTm5axt10dj4tiEQ.j1pS0vVoQwEeTJpnBYG6XWU+nQFYD7JuxTvoyHApPRCyYMNHrvBivBKLBtSgjCz00wgC6Db2OqOPgllOBO7vIrvBE+oPxZOGHN4rQngZfllMb5zI9SfZPcZqzXUqZkjc14fl1I9BpttcTJa7ge3rXkqb0mvwhN5tRlYlEYjwr4jWzQblfRYmsu8cw912AnYMadAsoPRozY26NIb6tBz0CMnseV+fBSSCxLy8w27MqDWtNXPZ.HrQEU3l8u+CxhW72vN1wdrz8yZPZqTjRJoQJojF55U8zMQW2AolZJ7EewBw7WTaXfC754JthqjMu4MU4vZIesvyVTJMxJqro3hKgDSbKXXXcO47zQorQt4dXzzzBp6m0GnT9G967yu.RIkzn7xqvRmBoSEkB73wKETPQr6cmD4kWAV594uYwCSSuLtwMNNwgsxN4k294Fuwg7qJbbK2xMvm9oygPBIBN26l0V+HEROyy73zpV0JF+3eHBd6q1ws65KosxN9euWvZARa.dI8z2KOvCLNtxq75H370SMfRHkTRkm3Idn5eosRoz4nGMGFxPFNqe8+b0Odiabi.fdziKkPBoQXZVbsbS8OJM15V+YLLLnG83x3buBa0NTJC73wKUTgGBlSgT8mzVo36+9ukK5htPZaaOeBFOuUo7ulO4OERtAJOnbXHqmm1JEd85i+9e+gY0q9Gq9QaSaZMe0W8oLnA8mI932LmKFyNkRm3haI7Ue0hjTHIrDTJEJkh24clNIl31jTHINmRMLsUNwecF67Ye1L4S9j4W8whIlnY9yeNzoN0C1zl1LyYNyC+oqpAbt02RxNgGd330qG7mNmf06Cicz00wt8pRgTvc+7XosJXrep.TDd3gS3gGJPvwR48ul+zVoooUYJjr1q4SmZUk1JsiKsUV2uPPMJsUe62tbxJqrQSSioLkW9DN5fFz.XaaaWryclBG5PYgKW6iW+0eGhJpnvgCcz00o7xciggOpKuw4JkNwGeB3ymO9jOY1V5KW7zQozYqac6jQF6iF23f49oF6bm6lRKsLLM0CZ6mfhzRaur7kuJxN6iZoSmyoiooAYjQlrjkrbRM0LBRWG7TTQEtIyL2OKbgKlDSb6V59YMJsUtbsORO8LYqacKjRJoA.MrgMfXicTDd3Mj0u9Mvm+4eIG5PYA.Oxi7TU+y27l2LF5PGBMoIMAe9p6NwWozH2bOLFFFrm8jTP6aBUJMNxQNJkWdEA48SajWd4SHgjUPc+DTTXgEw92+AHzPCyR+gMmNlllTTQEiKW6CvVPZ+z+ZaUwEWB6cutn7xcG7m1pwN1wB3j6+9is5GeRS5QXRS54.pf+1earjSN4bR+4OxQNBYjgKl5TeABIjlRc2PYoyTm5KfWudqrcGr9gM5nTOAspUsrxzVEL0OUb7a7SEWbQGWZqBl5mUw+vV4xkKt669tn+8+lH3se5ijSNEt+6erUl1Jqd+TG+eVmAGaDW7uN.tm8jDOxiLwJSak0seF.osxKIjvV.fNzg1SrwNJ.e7Vu0aT4Be3ImggIKYIKmG9geRl1zdm5rgWPobhGOdvqWuDLmNmp5mASosx+8yvAkUVA3x09nfBJnx0sKBpSak+9s+Pp31saBVWi3B9RakI6bm6gNzg1Sng1fpupXkJDRIk8Pt4dDpnB2TuHsUJkMJszhn3hKA.F3.G.MsosghJJGlwL9OU+7F3.G.QGcWoyctiLko7zbgWX6p9XyadeAIm7djjNIBHJkMpnBuL8o+dbYWVeoW855ne86+kd269wF23lNEaS.BQcGSSa7RuzqyvF18vQNxQqbOKOTVwJVFCZPCAWt12wMgqstpg8.GDd3QT4teEbUW0UBnQd4kOYms+MIpm64lDSdxu.u4a9xL8o+gL4I+LDarwxse6Ck0t1ehBJv+ZeUG6XOpiRXfcra2d0eK1fyz4.AWosx+vY73O9iya8Vu2Ibj8rmjAfG+we.r98ySE+W4g+z43.IsUVCJkFSe5uC268d+ba21P48e+owZW6Z4e8udUd5m9QIt3VZkard0CRa0xV1h4PG5vTPAEA.qacajJpvFG5PYRIkTJMrgMjF0nFwrm8rHojRFWt1Gu5qNUZYKaKcqaQyZW6OA.ewWDGEVXcykpoT5rwMFO97Yvrl0GXoubwSGkRmDRXqz3FmAgEVCsz8SkRmzSOUd6298OkOmu669QxKuRwJOScO87u7.szktB1+9yNnMX.llljd5YPbwsD18tS0x2O0zzo+8+53Mdi2kdzidgGOdXzi9twtcGjSN4xBVvWSaZSBbt0zYHvTiRaU1YmCtbse5TmtXRJoTXm6b2zxV1Z74yKMqYMkBKrHxImbofBJAcc63ymWRLwsRm5jaZQKhhV0pVxgNTVTVYkQlYtOLLN6+Fca1zH+7K.e9LHyLyLncsPRoznvBKBCCSKe+zlM6rxUt5SZhTz0049tuXIpnhBWtRuNn0clWUWMUokVJ4jygwkqLCJSgj+kjcCJqrxH6rygPBw5mpL61cPt4lMtbset3K9hX+6+.roMk.WvEzVtsaav31c43xUF00My+PpQosZTiZz.NIsz1FqbkeO55ZL4IOY.MZQKZJSXBOLwDykvPG58PQEcP9puZQzu9csL1wNQfhXAKXgbnCkEO8S+nzyd1OpaRXPvTZqL4Xuz4kiklCS7uNH4il27lyDlfUOsU5zvFFJaXC+7I7nNb3foLkmlm3IdJ722CVW0l8OrUolZZAoos53SOmG14N2MiabiNHHsUZ3x0tYjiLVtoa5+g28ceK17l2L2288v30qWd5m9I.bhU+71.HsUtoCcnibe2WrL0o9VL8o+NLtw8.LtwMV16dcw3G+CQlYtedrG6gnUspErwMtIF6XgUspUyt2cx7m+yWOQGcL.EU4Js6YWAWosxFom9twgC6z1119pSlhRYmhJJORJoTnoMsIX06mJkFCcnCge5m9YV8pWKNb3fdziX3Adfwy0e8WO9Sqh09MfmNAqosx+8yPiBJ3vjVZ6EOd7Rm5zECfkOsUUsyp9DOwj4xtrtyq9p+Kzzz4O8mF.e0W8oL7gOJhN5NyPFxcX4esL.uaMd44e9ISJojF2288HbjijGie7ikW4UdSty67ufKWt.BgK4R5BImbprssEOie7ODMtwMhW9k+GUNImrlmTbtDkxNqYM+HuzK8FL24NS5UutF.SRO8jYzid7ricrK5W+t155l4eXll9n0st07Ye1r3nGMOrYyFQFYD3+pqp3WshNKN2mRoSd4kGuwa7N7Qezb4nG8nXXXRG63Egc61s7oPx+WlwGSe5uEQDQDU9XdA7RW5RWX8q++hggYPwmCFfqsUPngFFKXAeL+y+4T40e82lO9i+LFyXFI8oO8hXhoar6cucb5zI+7OuIt9qefbdm24wbm6L4Ruz9.3AkJzyfcmSmfozVoXzi9do7xcyccWigW60dQhJpnXri89YvC9Fnm87xvmOCr98S+TJEMsoM.+WleU+Kz5A6dfAaosxFkWdgLhQLFV5RWwIbjsu8chCGNH7vCGqdZq.HhHBmpNW83OOMzPaJG6bXqMkgQA+F8BMV7hWJG3.GDMM+6oG1rogttc1vF1.ye9Kj7yu..p7aMXhWu9uYWcpScjQO5+JQEUTUNYtp61XnrYSmktzkgggA2zMcS0I2z9ZOlnT1vtcmrrk8M7ke4WC.W8U2aF8nGEKZQKhvCOb5ae6qkO0J0m4+CcTLyYNK5UutBhIltage8zDa1ryF23F4C9fYeReFgDRH7XO1CPaa64a4ug40GTiRaU94W.4jStmvNIHnnCc3B4Ye1IgOeF3ymOLL7gRowgObt71u86Qu68UfggMNvAN.006lf1roQIkTJFF9H2by0RmBopJf6ymORLwsQaZSqIrvBicu6jIkT1CW60dM3wiaxImCQc8+uK9iysa2TPAERt4lqk9CUsYyF+vOrtS5whLxH3AdfIPHgDB4jSVHm2dtuZTZqF4HGIm3NIXUN9zRXT4w0nzRygO+y+R5d2ilG5glD0MYvW8KZeftdUosZx0QsoZK1n7xKfG7AeLhLxHX1ydFDQDQvXFy3HwD2F+m+yLnEsH3biCJ3kc7+dni+0LEfNImbpLhQLT5e+uYrtm25uujd5oSxIm5Ibjl1zlvzm9awse62E96+V+gzo9f.dmDrJJkFFFdwkqLAf10tK.kxFllFDVXMfV1xVPhItU.OXZVVsZi92RU2WiRJIexHCWjc14Pm6bWwvv.Odr9q4SJUHL6YOGRM0zXQK5KnksrU.lrfELOF+3+677O+Kvzl1+Nn3lxU+fhsss3o0stUz7l2piK8bN4.GHcb4JS73wKV8zVoT57vO7D4fGLKhO9DHxHif9zmqjG9gmXkCIWQ00MQQ.32YzFz3vG9nL9w+2YEqXk.vHFwcxq8ZuDNcZGPm10tyGWt1Oms2UAUJEFFlL24NKdkW4MIiLbga2UPyadSossssLjgbymUaOmIXZ5lQLhgyXFycittyp+vlvBKDl8reeJpnhjBGVHJkc97O+qXEqXU7oe5GQG6Xz.v5W+ZH1XmHYkUtAEqgWlldoKcoqr3EOeJnfBwtc6zfFzH.kkdkPn9peWQ2Pory6+9yjErf3nnhJlhJpXl1zlIIjPBUuvG1hVDEEWbwXXT9YkD+nT5UlJrP4EewWk64dFG6ZW6gRK0+dFbVYkCwG+lOt07ImV3jHYRXgEJ555mvMPspYhcCaXCqqZXh.j+2uXiW7EedF3.6OCdvCi0t1UyW7EeJCe3igILgXY.C35pL8bNQobTW2j+CwzzakQtNRZPC7uaiJENrl9c90YLYcq6m9UO5d1SxbUWUeAfhKtTz00qbg+5L6UenT1XqacKr28lIG7fGjW7Ee0S5yygC6bfCbP95u9KvvvC8qeWKQFYjVxMjkS0jiKXdRyELopkg70st0vgO7QPWWmq4ZtJRIkznu88+A.lvD9az91eg7i+35XKaYaTVYUfSmZz+9ecX2tcK6q09a2Vy1t3X9cesv9+VCGiMa1nic7h.T3wSIDe7alXh4RPobbV4dd3wiGJqL2jPBakxJ6j+26AevIPu6cuozR8OK2MLrdEMDAWJub2TZokgSmNI2bykctycS25VWovBKhMu4sRe5SuXXC6ufa2tozRKBCiPrrEMDAWpAyyiSxOjxIyadeL20c82.ftzkNwS9jOBibjiFCC27JuxTYRS543+9e+Z5e++ymUF+c+WgSXrnE84L3AOrS3XZZZ7TO0ixTlxyg+QpqptbExaDE0o7OrU1Ye6KMF4HGKMoIMgYLi+M4medb22crzpV0Rl4LeWhHhlSUIZTteVhyEn8rO6jdt.+GyfN1wNQt4lCIjvVI5n6JsoMsgku7kw+2+2ywm8YeIOyy7jbO2yH4rWbQM.7PaaaavzzjryNGZbiaDCbf8mW+0+WLlwbO3e7U8VYaRhwp3bAFnT13e7OdAZbiaDyXFSiF0nFRSZRy3Vtkah3haQje94Qu6cepLoUx4shyM765JO.+2mAe97xJVwpXgKbwjQFYhRonqcsSbW20vnm87JpbBMc18a16e4avFkTh+glpAMHb7mgdOxUYHNmUYkUNgEVn3O4Q9GN0phCua2tIjPBotsAJD+B0nhG9SwzubRB5e0i7XA1ppT+b7KU30UeXcUSPPHXYcjQDrqpgS8jMQb4j73BQcqZvxShNyctyg8tWWnqqgRYiPBIDJu7xHu7xuxMdHeDYjQRXgEFMrg9uQ5kW9ubR3ELuuKHDBQ8K0fkmDSZbiaDMqYMEcc6TZokvq8Z+a1+98uyB10t1YxImbOgn61u9cs7W+q2I974O+1Nc5eNU30q2Jmg2V04WgPHDBnFEUWeby27sf+gsRiINwwgggOVvB9Xtwabf3zYHXXXx7m+BH1XmHEUTwjPBagQMp+JiYLiGvCyctyhDRXqbu26nnyc9xvZuKgIDBgnFeCyUJmrnEEG25sNbVvBlK25sNb7WDnbpZ+UX7iebL8o+g.PCZP3roM8CXylMhIl9P4kWNCZPCfksrEaoWedDBgPDfKOIe7G+4.vblymxcbG2Fuwa7pUtOc.fOt8a+VpdYau3hKg2689PZVyZJW3E1Nzzzn8suc0dsbgPHD0YpgosJT.ub4W9UQBIrkS3Xu7KOEd7Gex.lTXgGjt28qlLxvE.boWZLjXhqmbxIGRKszoW85Jvlsp1Q3DBgPXUUiRa0rl0GQRIkDYlYl+piOso8ATVYUfRYha2tojRJo5i4xUl7XO1SSjQFAZZ1Xkq76wvPJbHDBgUWMJsUMu4MEe95DW1kco7se62cBG2oSGz111FTJC.aznF0PxM2CC3ehOEQDMl1291iRYfGOUk1JgPHDVYAvjDzI6XG+L2vMLDxLy8W4iqXly7eyXFyDv+MO2GW4UdUDe7I..m240JRHg0wpW8Ov5V2OQrwNJtjKomHosRHDBqs.XmDzMQGc2XEqHNhKtkPwEWBW8U2aFzfF.llEgRonnhJjRJozp+4ZVyZJG3.6mwMtGj7xKeRJoTY4KeIRZqDBgvhKfVR1MM8Pm6bW4IexXnp8niiUHPibxI2pGxJ.tfK37o8suCbwW7EwV1x1nSc5hpsZ2BgPHpCUiJdbr01pimVkGKrp+UkQF6iCe3iT8y3NtiaiHhn0rhUrP16dyfdzitCniR8K+cIDBgvJoFk1pO3C9.RKszqdNb7KYZZhllC1vF1vIrx09i+35YO6IUzzTnoowBW3RvvvvBu8uJDBg.pgospss87PWWCMsS0ULnQd4cXV+52X0OxDlvX4pu5qAe9j6ugPHDAaBfzVc5lL514ce2WiINwGCSSS5YOub99ueoDd3MGYyqQHDhfO+t2Lnp9WfxIIm7tnu8cfjc14PaZy4wRW5WRLwzcY6xTHDhfTAzZa0ujRYm7y+HDarSjryNGZQKZNyZVSmXhoGRgCgPHBh86LsUl.ZTXgYyXG6DXMqYcDSLQyblyLn6cuO.dOtTXIDBgHXyu4vVoT5L8oOSRM0zPWWGkRgCGNvv.V4JWE+zOEO1sqyfG7MRm6bmwiG4FjKDBQvtZTZqt3KtCzvF1.b3vIJkM95udw7we7mQDQzHd1mcRboWZ2wmOOxtDnPHD0STCSakC.6jat6ioLkWhu7K+Zt4a9+kG8QePtnKpyU9rjUKWgPHpunFt7j3k7xKWF5PuaBIDmDWbyiq7J6CfIllkcFsAJDBg3bO0vn5pvimJvkq8U4tBXHRZpDBgndr.XRBpU4+7gLDUBgPT+VMZss5ce22kjSN0S4ZakPHDh5WpAosxfnitKDUTMCa1jUCWgPHDATZq9CMYzEBgPDDoFtSBJ2bbgPHDGib4DBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDvjhGBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDvjhGBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDvjhGBgPHBXRwCgPHDALo3gPHDh.lT7PHDBQ.SJdHDBgHfIEODBgPDv9+AGw8a5wOYnmA....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-53",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 357.943384647369385, 365.830184161663055, 399.0, 113.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.924529135227203, 193.490557134151459, 399.0, 113.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"order" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 1 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 115.5, 262.5, 31.5, 262.5 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-80", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-14" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
