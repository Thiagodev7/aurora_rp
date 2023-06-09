local cfg = {}

local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local husky = { model = "a_c_husky" }
local chop = { model = "a_c_chop" }

for i=0,255 do
	surgery_female[i] = { 0,0 }
	surgery_male[i] = { 0,0 }
end

cfg.cloakroom_types = {
	["Fardamento H"] = {
	_config = { permissions = {"paramedico.permissao"} },
		["Cirurgião"] = {
			[1] = { 0,0 },
			[2] = { 4,0 },
			[3] = { 88,1 },
			[4] = { 96,0 },
			[6] = { 7,1 },
			[7] = { 5,0 },
			[8] = { 96,0 },
			[9] = { 21,1 },
			[10] = { -1,0 },
			[11] = { 9,0 },
			["p0"] = { -1,0 },
			["p1"] = { 0,0 },
			["p2"] = { -1,0 },
			["p6"] = { 3,0 },
	},
	["Cirurgiã"] = {
		[1] = {121,0,0},
		[2] = {18,0,0},
		[3] = {17,0,0},
		[4] = {38,1,0},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {0,0,1},
		[8] = {15,0,0},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {65,1,0},
		["p0"] = {17,7,0},
		["p1"] = {23,5,0},
		["p6"] = {-1,0},
	},
	["Doutor"] = {
        [1] = { -1,0 },
        [5] = { -1,0 },
        [7] = { 126,0 },
        [3] = { 4,0 },
        [4] = { 25,5 },
        [8] = { 31,4 },
        [6] = { 21,9 },
        [11] = { 31,7 },
        [9] = { -1,0 },
        [10] = { -1,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
    },
    ["Doutora"] = {       
        [1] = { -1,0 },
        [5] = { -1,0 },
        [7] = { 96,0 },
        [3] = { 0,0 },
        [4] = { 23,0 },
        [8] = { 38,4 },
        [6] = { 0,2 },
        [11] = { 57,7 },
        [9] = { -1,0 },
        [10] = { -1,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
	},
	["Socorrista M"] = {
        [1] = { 0,0 },
		[2] = { 4,0 },
		[3] = { 85,1 },
		[4] = { 96,0 },
		[6] = { 42,0 },
        [7] = { 5,0 },
        [8] = { 20,0 },
        [9] = { 0,0 },
        [10] = { 0,0 },
        [11] = { 250,0 },
        ["p0"] = { 122,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
    },
    ["Socorrista F"] = {       
        [1] = { 0,0 },
		[2] = { 9,0 },
		[3] = { 85,0 },
		[4] = { 99,0 },
		[6] = { 81,0 },
        [7] = { 96,0 },
        [8] = { 28,0 },
        [9] = { 0,0 },
        [10] = { 0,0 },
        [11] = { 258,0 },
        ["p0"] = { -1,0 },
        ["p1"] = { -1,0 },
        ["p2"] = { -1,0 },
        ["p6"] = { -1,0 },
	},
},

["LSPD"] = {
	_config = {},
		["RPM M Aluno"] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {0,0,0},
		[4] = {14,1,0},
		[5] = {-1,0,0},
		[6] = {7,2,0},
		[7] = {0,0,2},
		[8] = {15,0,0},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {97,0,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F Aluna"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {14,0,0},
		[4] = {107,3,0},
		[5] = {45,5,0},
		[6] = {27,0,0},
		[7] = {8,2,2},
		[8] = {34,0,0},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {212,0,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["RPM M Inst."] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {0,0,0},
		[4] = {31,2,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {0,0,2},
		[8] = {15,0,0},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {97,1,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F Inst."] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {14,0,0},
		[4] = {61,6,0},
		[5] = {45,5,0},
		[6] = {24,0,0},
		[7] = {8,2,2},
		[8] = {34,0,0},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {212,1,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["RPM M 1 Curta"] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {0,0,0},
		[4] = {31,2,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {0,0,2},
		[8] = {58,0,0},
		[9] = {22,0,0},
		[10] = {-1,0,0},
		[11] = {93,0,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F 1 Curta"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {14,0,0},
		[4] = {61,6,0},
		[5] = {45,5,0},
		[6] = {24,0,0},
		[7] = {7,2,2},
		[8] = {31,0,0},
		[9] = {24,0,0},
		[10] = {-1,0,0},
		[11] = {84,0,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["RPM M 1 Longa"] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {12,0,0},
		[4] = {31,2,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {0,0,2},
		[8] = {58,0,0},
		[9] = {22,0,0},
		[10] = {-1,0,0},
		[11] = {98,0,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F 1 Longa"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {14,0,0},
		[4] = {61,6,0},
		[5] = {45,5,0},
		[6] = {24,0,0},
		[7] = {8,2,2},
		[8] = {31,0,0},
		[9] = {24,0,0},
		[10] = {-1,0,0},
		[11] = {89,0,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["RPM M 2 Curta"] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {32,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {0,0,2},
		[8] = {58,0,0},
		[9] = {3,0,0},
		[10] = {-1,0,0},
		[11] = {93,1,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F 2 Curta"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {33,0,0},
		[4] = {61,9,0},
		[5] = {45,5,0},
		[6] = {24,0,0},
		[7] = {8,2,2},
		[8] = {31,0,0},
		[9] = {16,0,0},
		[10] = {-1,0,0},
		[11] = {84,1,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["RPM M 2 Longa"] = {
		[1] = {-1,0,0},
		[2] = {73,0,0},
		[3] = {31,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {0,0,2},
		[8] = {58,0,0},
		[9] = {3,0,0},
		[10] = {-1,0,0},
		[11] = {98,1,0},
		["p0"] = {85,0,0},
		["p1"] = {0,0,0},
		["p6"] = {20,0},
	},
	["RPM F 2 Longa"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {33,0,0},
		[4] = {61,9,0},
		[5] = {45,5,0},
		[6] = {24,0,0},
		[7] = {8,2,2},
		[8] = {31,0,0},
		[9] = {16,0,0},
		[10] = {-1,0,0},
		[11] = {89,1,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
	},
	["GSA M Piloto"] = {
		[1] = {121,0,0},
		[2] = {73,0,0},
		[3] = {53,0,0},
		[4] = {30,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {9,0,2},
		[8] = {80,2,0},
		[9] = {30,0,0},
		[10] = {-1,0,0},
		[11] = {48,0,0},
		["p0"] = {79,0,0},
		["p1"] = {5,7,0},
		["p6"] = {20,0},
	},
	["GSA F Piloto"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {19,0,0},
		[4] = {29,0,0},
		[5] = {45,5,0},
		[6] = {27,0,0},
		[7] = {16,0,2},
		[8] = {34,0,0},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {41,0,0},
		["p0"] = {78,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GSA M Atirador"] = {
		[1] = {121,0,0},
		[2] = {73,0,0},
		[3] = {52,0,0},
		[4] = {30,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {9,0,2},
		[8] = {80,2,0},
		[9] = {18,0,0},
		[10] = {-1,0,0},
		[11] = {93,2,0},
		["p0"] = {85,0,0},
		["p1"] = {5,7,0},
		["p6"] = {20,0},
	},
	["GSA F Atirador"] = {
		[1] = {-1,0,0},
		[2] = {15,0,0},
		[3] = {46,0,0},
		[4] = {29,0,0},
		[5] = {45,5,0},
		[6] = {27,0,0},
		[7] = {16,0,2},
		[8] = {119,0,0},
		[9] = {20,0,0},
		[10] = {-1,0,0},
		[11] = {84,2,0},
		["p0"] = {84,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GTM M"] = {
		[1] = {103,0,0},
		[2] = {73,0,0},
		[3] = {27,0,0},
		[4] = {87,1,0},
		[5] = {-1,0,0},
		[6] = {25,0,0},
		[7] = {9,0,2},
		[8] = {16,1,0},
		[9] = {15,2,0},
		[10] = {-1,0,0},
		[11] = {220,0,0},
		["p0"] = {86,0,0},
		["p1"] = {15,1,0},
		["p6"] = {20,0},
	},
	["GTM F"] = {
		[1] = {107,0,0},
		[2] = {15,0,0},
		[3] = {28,0,0},
		[4] = {98,0,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {121,0,0},
		[9] = {17,2,0},
		[10] = {-1,0,0},
		[11] = {230,0,0},
		["p0"] = {85,0,0},
		["p1"] = {25,6,0},
		["p6"] = {10,2},
	},
	["GIC M 1"] = {
		[1] = {52,0,0},
		[2] = {73,0,0},
		[3] = {33,0,0},
		[4] = {10,0,0},
		[5] = {-1,0,0},
		[6] = {25,0,0},
		[7] = {97,0,2},
		[8] = {21,0,0},
		[9] = {30,0,0},
		[10] = {-1,0,0},
		[11] = {213,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {20,0},
	},
	["GIC F 1"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {28,0,0},
		[4] = {30,0,0},
		[5] = {45,5,0},
		[6] = {40,0,0},
		[7] = {16,0,2},
		[8] = {181,1,0},
		[9] = {32,6,0},
		[10] = {-1,0,0},
		[11] = {218,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {15,2,0},
		["p6"] = {10,2},
	},
	["GIC M 2"] = {
		[1] = {52,0,0},
		[2] = {73,0,0},
		[3] = {33,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {25,0,0},
		[7] = {97,0,2},
		[8] = {16,1,0},
		[9] = {30,0,0},
		[10] = {-1,0,0},
		[11] = {214,0,0},
		["p0"] = {121,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {20,0},
	},
	["GIC F 2"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {36,0,0},
		[4] = {30,0,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {35,0,0},
		[9] = {32,6,0},
		[10] = {-1,0,0},
		[11] = {217,0,0},
		["p0"] = {59,9,0},
		["p1"] = {27,4,0},
		["p6"] = {10,2},
	},
	["GIC M 3"] = {
		[1] = {121,0,0},
		[2] = {73,0,0},
		[3] = {12,0,0},
		[4] = {47,0,0},
		[5] = {-1,0,0},
		[6] = {56,1,0},
		[7] = {97,0,2},
		[8] = {130,0,0},
		[9] = {30,0,0},
		[10] = {-1,0,0},
		[11] = {239,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {1,1,0},
		["p6"] = {5,0},
	},
	["GIC F 3"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {7,0,0},
		[4] = {36,2,0},
		[5] = {45,5,0},
		[6] = {42,2,0},
		[7] = {16,0,2},
		[8] = {39,2,0},
		[9] = {32,6,0},
		[10] = {-1,0,0},
		[11] = {203,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M Camuflado"] = {
		[1] = {52,3,0},
		[2] = {73,0,0},
		[3] = {166,2,0},
		[4] = {111,0,0},
		[5] = {-1,0,0},
		[6] = {59,8,0},
		[7] = {97,0,2},
		[8] = {0,0,2},
		[9] = {30,0,0},
		[10] = {-1,0,0},
		[11] = {194,0,0},
		["p0"] = {0,0,0},
		["p1"] = {1,1,0},
		["p6"] = {5,0},
	},
	["GOT F Camuflado"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {207,2,0},
		[4] = {118,0,0},
		[5] = {45,5,0},
		[6] = {62,8,0},
		[7] = {14,0,2},
		[8] = {122,18,2},
		[9] = {32,6,0},
		[10] = {-1,0,0},
		[11] = {196,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M 1 Curta"] = {
		[1] = {103,1,0},
		[2] = {73,0,0},
		[3] = {26,0,0},
		[4] = {106,0,0},
		[5] = {-1,0,0},
		[6] = {25,0,0},
		[7] = {33,0,2},
		[8] = {16,1,2},
		[9] = {15,0,0},
		[10] = {-1,0,0},
		[11] = {196,0,0},
		["p0"] = {57,0,0},
		["p1"] = {1,1,0},
		["p6"] = {20,0},
	},
	["GOT F 1 Curta"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {22,0,0},
		[4] = {113,0,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {119,0,2},
		[9] = {17,0,0},
		[10] = {-1,0,0},
		[11] = {200,0,0},
		["p0"] = {57,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M 1 Longa"] = {
		[1] = {103,1,0},
		[2] = {73,0,0},
		[3] = {28,0,0},
		[4] = {106,0,0},
		[5] = {-1,0,0},
		[6] = {25,0,0},
		[7] = {33,0,2},
		[8] = {16,1,2},
		[9] = {15,0,0},
		[10] = {-1,0,0},
		[11] = {198,0,0},
		["p0"] = {57,0,0},
		["p1"] = {1,1,0},
		["p6"] = {20,0},
	},
	["GOT F 1 Longa"] = {
		[1] = {107,1,0},
		[2] = {2,0,0},
		[3] = {22,0,0},
		[4] = {113,0,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {119,0,2},
		[9] = {17,0,0},
		[10] = {-1,0,0},
		[11] = {198,0,0},
		["p0"] = {57,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M 2 Curta"] = {
		[1] = {35,0,2},
		[2] = {73,0,0},
		[3] = {37,0,0},
		[4] = {106,1,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {33,0,2},
		[8] = {16,1,2},
		[9] = {15,0,0},
		[10] = {-1,0,0},
		[11] = {196,1,0},
		["p0"] = {41,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {20,0},
	},
	["GOT F 2 Curta"] = {
		[1] = {52,10,0},
		[2] = {2,0,0},
		[3] = {22,0,0},
		[4] = {113,1,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {119,0,2},
		[9] = {17,0,0},
		[10] = {-1,0,0},
		[11] = {200,1,0},
		["p0"] = {40,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M 2 Longa"] = {
		[1] = {35,0,2},
		[2] = {73,0,0},
		[3] = {27,0,0},
		[4] = {106,1,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {33,0,2},
		[8] = {16,1,2},
		[9] = {15,0,0},
		[10] = {-1,0,0},
		[11] = {198,1,0},
		["p0"] = {41,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {20,0},
	},
	["GOT F 2 Longa"] = {
		[1] = {52,10,0},
		[2] = {2,0,0},
		[3] = {22,0,0},
		[4] = {113,1,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {119,0,2},
		[9] = {17,0,0},
		[10] = {-1,0,0},
		[11] = {198,1,0},
		["p0"] = {40,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["GOT M Tática"] = {
		[1] = {35,0,0},
		[2] = {73,0,0},
		[3] = {35,0,0},
		[4] = {33,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {33,0,2},
		[8] = {16,1,2},
		[9] = {24,0,0},
		[10] = {-1,0,0},
		[11] = {54,0,0},
		["p0"] = {58,0,0},
		["p1"] = {25,4,0},
		["p6"] = {20,0},
	},
	["GOT F Tática"] = {
		[1] = {52,10,0},
		[2] = {2,0,0},
		[3] = {36,0,0},
		[4] = {115,2,0},
		[5] = {45,5,0},
		[6] = {25,0,0},
		[7] = {16,0,2},
		[8] = {119,0,2},
		[9] = {17,0,0},
		[10] = {-1,0,0},
		[11] = {42,0,0},
		["p0"] = {58,0,0},
		["p1"] = {27,4,0},
		["p6"] = {10,2},
	},
	["GOT M SPEED"] = { -- mudar cor do chapeu
		[1] = {121,0,0},
		[2] = {73,0,0},
		[3] = {17,0,0},
		[4] = {87,4,0},
		[5] = {-1,0,0},
		[6] = {62,0,0},
		[7] = {44,0,2},
		[8] = {80,2,2},
		[9] = {15,1,0},
		[10] = {-1,0,0},
		[11] = {220,1,0},
		["p0"] = {106,4,0},
		["p1"] = {-1,0,0},
		["p6"] = {21,0},
	},
	["GOT F SPEED"] = { --
		[1] = {121,0,0},
		[2] = {2,0,0},
		[3] = {36,0,0},
		[4] = {98,1,0},
		[5] = {45,5,0},
		[6] = {36,0,0},
		[7] = {16,0,2},
		[8] = {145,0,2},
		[9] = {17,1,0},
		[10] = {-1,0,0},
		[11] = {230,1,0},
		["p0"] = {105,4,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
	["Superior M"] = {
		[1] = {0,0,0},
		[2] = {73,0,0},
		[3] = {4,0,0},
		[4] = {24,0,0},
		[5] = {-1,0,0},
		[6] = {10,0,0},
		[7] = {57,0,2},
		[8] = {57,0,2},
		[9] = {29,0,0},
		[10] = {-1,0,0},
		[11] = {252,0,0},
		["p0"] = {114,3,0},
		["p1"] = {-1,0,0},
		["p6"] = {20,0},
	},
	["Superior F"] = { --
		[1] = {0,0,0},
		[2] = {2,0,0},
		[3] = {3,0,0},
		[4] = {7,2,0},
		[5] = {45,5,0},
		[6] = {42,2,0},
		[7] = {14,0,2},
		[8] = {14,0,2},
		[9] = {33,0,0},
		[10] = {-1,0,0},
		[11] = {260,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {10,2},
	},
},
["Mecanicos"] = {
	_config = { permissions = {"mecanico.permissao"} },
		["Mecânico Masculino 1"] = {
			[1] = {121,0,0},
			[2] = {30,0,0},
			[3] = {125,0,0},
			[4] = {38,0,0},
			[5] = {-1,0,0},
			[6] = {24,0,0},
			[7] = {-1,0,2},
			[8] = {89,0,2},
			[9] = {-1,0,0},
			[10] = {-1,0,0},
			[11] = {65,0,0},
			["p0"] = {-1,0,0},
			["p1"] = {-1,0,0},
			["p6"] = {-1,0},
	},
	["Mecânico Masculino 2"] = {
		[1] = {121,0,0},
		[2] = {30,0,0},
		[3] = {125,0,0},
		[4] = {39,1,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {-1,0,2},
		[8] = {88,0,2},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {66,1,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
},
["Mecânico Masculino 3"] = {
	[1] = {121,0,0},
	[2] = {30,0,0},
	[3] = {48,0,0},
	[4] = {45,0,0},
	[5] = {-1,0,0},
	[6] = {24,0,0},
	[7] = {-1,0,2},
	[8] = {88,0,2},
	[9] = {-1,0,0},
	[10] = {-1,0,0},
	[11] = {43,0,0},
	["p0"] = {-1,0,0},
	["p1"] = {-1,0,0},
	["p6"] = {-1,0},
},

	["Mecânico Feminino 1"] = {
	[1] = {-1,0,0},
	[2] = {14,0,0},
	[3] = {165,0,0},
	[4] = {38,0,0},
	[5] = {-1,0,0},
	[6] = {24,0,0},
	[7] = {8,0,2},
	[8] = {99,0,2},
	[9] = {-1,0,0},
	[10] = {-1,0,0},
	[11] = {59,0,0},
	["p0"] = {-1,0,0},
	["p1"] = {-1,0,0},
	["p6"] = {-1,0},
	},

	["Mecânico Feminino 2"] = {
		[1] = {-1,0,0},
		[2] = {14,0,0},
		[3] = {19,0,0},
		[4] = {39,1,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {8,0,2},
		[8] = {100,0,2},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {60,1,0},
		["p0"] = {-1,0,0},
		["p1"] = {-1,0,0},
		["p6"] = {-1,0},
		},

		["Mecânico Feminino 3"] = {
			[1] = {-1,0,0},
			[2] = {14,0,0},
			[3] = {54,0,0},
			[4] = {47,0,0},
			[5] = {-1,0,0},
			[6] = {24,0,0},
			[7] = {54,0,2},
			[8] = {100,0,2},
			[9] = {-1,0,0},
			[10] = {-1,0,0},
			[11] = {258,0,0},
			["p0"] = {-1,0,0},
			["p1"] = {-1,0,0},
			["p6"] = {-1,0},
			},
},	

["Fardamento Bratva"] = {
    _config = { permissions = {"bratva.permissao"} },
    ["Uniforme Masculino"] = {
		[1] = {0,0,0},
    	[2] = {18,0,0},
		[3] = {31,0,0},
		[4] = {10,0,0},
		[5] = {42,0,0},
		[6] = {10,0,1},
		[7] = {20,0,1},
		[8] = {33,0,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {142,0,0},
		["p0"] = {25,1,0},
		["p6"] = {1,0},
	},
	["Uniforme Feminino"] = {
		[1] = {-1,0,0},
    	[2] = {9,0,0},
		[3] = {41,0,0},
		[4] = {36,0,0},
		[5] = {-1,0,0},
		[6] = {19,9,0},
		[7] = {22,0,0},
		[8] = {38,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,0},
		[11] = {24,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {-1,0},
	},
},	

["Fardamento Cartel"] = {
    _config = { permissions = {"cartel.permissao"} },
    ["Uniforme Masculino"] = {
		[1] = {0,0,0},
    	[2] = {12,0,0},
		[3] = {4,0,0},
		[4] = {20,0,0},
		[5] = {0,0,0},
		[6] = {36,2,1},
		[7] = {20,0,1},
		[8] = {13,2,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {20,0,0},
		["p0"] = {64,4,0},
		["p6"] = {1,0},
	},
	["Uniforme Feminino"] = {
		[1] = {-1,0,0},
    	[2] = {9,0,0},
		[3] = {16,1,0},
		[4] = {7,0,0},
		[5] = {-1,0,0},
		[6] = {0,0,0},
		[7] = {22,10,1},
		[8] = {38,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,0},
		[11] = {139,0,0},
		["p0"] = {26,0,0},
		["p6"] = {-1,0},
	},
},	

["Fardamento SOA"] = {
    _config = { permissions = {"soa.permissao"} },
    ["Uniforme Masculino 1"] = {
		[1] = {0,0,0},
    	[2] = {12,0,0},
		[3] = {115,0,0},
		[4] = {72,0,0},
		[5] = {0,0,0},
		[6] = {81,0,1},
		[7] = {0,0,1},
		[8] = {2,0,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {162,0,0},
		["p0"] = {14,1,0},
		["p6"] = {29,0},
	},
	["Uniforme Masculino 2"] = {
		[1] = {0,0,0},
    	[2] = {12,0,0},
		[3] = {2,0,0},
		[4] = {72,0,0},
		[5] = {0,0,0},
		[6] = {39,0,1},
		[7] = {0,0,1},
		[8] = {141,0,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {173,1,0},
		["p0"] = {84,0,0},
		["p6"] = {29,0},
	},
	["Uniforme Feminino 1"] = {
		[1] = {51,1,0},
    	[2] = {9,0,0},
		[3] = {71,0,0},
		[4] = {11,1,0},
		[5] = {-1,0,0},
		[6] = {9,0,0},
		[7] = {11,0,0},
		[8] = {95,0,2},
		[9] = {-1,0,2},
		[10] = {0,0,0},
		[11] = {159,0,0},
		["p0"] = {83,0,0},
		["p6"] = {17,0},
	},

	["Uniforme Feminino 2"] = {
		[1] = {51,1,0},
    	[2] = {9,0,0},
		[3] = {71,0,0},
		[4] = {74,2,0},
		[5] = {-1,0,0},
		[6] = {85,0,0},
		[7] = {11,0,0},
		[8] = {95,0,2},
		[9] = {-1,0,2},
		[10] = {0,0,0},
		[11] = {175,1,0},
		["p0"] = {-1,0,0},
		["p6"] = {18,0},
	},
},	

["Fardamento LOST"] = {
    _config = { permissions = {"thelost.permissao"} },
    ["Uniforme Masculino 1"] = {
		[1] = {0,0,0},
    	[2] = {12,0,0},
		[3] = {15,0,0},
		[4] = {0,0,0},
		[5] = {0,0,0},
		[6] = {81,0,1},
		[7] = {0,0,1},
		[8] = {141,0,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {173,0,0},
		["p0"] = {83,0,0},
		["p6"] = {29,0},
	},
	["Uniforme Masculino 2"] = {
		[1] = {51,7,0},
    	[2] = {12,0,0},
		[3] = {15,0,0},
		[4] = {76,0,0},
		[5] = {0,0,0},
		[6] = {69,0,1},
		[7] = {0,0,1},
		[8] = {116,0,1},
		[9] = {0,0,0},
		[10] = {0,0,0},
		[11] = {162,1,0},
		["p0"] = {112,4,0},
		["p6"] = {29,0},
	},
	["Uniforme Feminino 1"] = {
		[1] = {0,0,0},
    	[2] = {9,0,0},
		[3] = {71,0,0},
		[4] = {43,0,0},
		[5] = {-1,0,0},
		[6] = {9,0,0},
		[7] = {11,0,0},
		[8] = {95,0,2},
		[9] = {-1,0,2},
		[10] = {0,0,0},
		[11] = {159,1,0},
		["p0"] = {111,4,0},
		["p6"] = {18,0},
	},
	["Uniforme Feminino 2"] = {
		[1] = {0,0,0},
    	[2] = {9,0,0},
		[3] = {71,0,0},
		[4] = {73,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {11,0,0},
		[8] = {95,0,2},
		[9] = {-1,0,2},
		[10] = {0,0,0},
		[11] = {175,0,0},
		["p0"] = {-1,0,0},
		["p6"] = {18,0},
	},
},	

["Uniforme Eletri"] = {
	_config = {},
		["Masculino"] = {
		[1] = {121,0,0},
		[2] = {10,0,0},
		[3] = {48,1,0},
		[4] = {38,3,0},
		[5] = {0,0,0},
		[6] = {25,0,0},
		[7] = {0,0,2},
		[8] = {57,0,0},
		[9] = {-1,0,0},
		[10] = {56,0,0},
		[11] = {65,3,0},
		["p0"] = {85,0,0},
		["p1"] = {9,0,0},
		["p6"] = {20,0},
	},
	["Feminino"] = {
		[2] = {4,0,0},
		[3] = {167,0,0},
		[4] = {38,2,2},
		[5] = {0,0,0},
		[6] = {24,0,0},
		[7] = {76,0,0},
		[8] = {31,0,0},
		[9] = {14,0,0},
		[10] = {0,0,0},
		[11] = {59,2,0},
		["p0"] = {86,0,0},
		["p6"] = {-1,0},
		["p1"] = {20,0},
	},
},

["SWAT"] = {
	_config = {},
		["SWAT M 1"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {0,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {1,0,2},
		[8] = {15,0,0},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {93,1,0},
		["p0"] = {120,0,0},
		["p1"] = {0,0,0},
		["p6"] = {3,0},
	},
	["SWAT M 2"] = {
		[1] = {51,0,0},
		[2] = {4,0,0},
		[3] = {1,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {1,0,2},
		[8] = {15,0,0},
		[9] = {16,0,0},
		[10] = {-1,0,0},
		[11] = {49,0,0},
		["p0"] = {93,0,0},
		["p1"] = {25,0,0},
		["p6"] = {3,0},
	},
	["SWAT M 3"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {17,3,0},
		[4] = {37,1,0},
		[5] = {-1,0,0},
		[6] = {60,6,0},
		[7] = {1,0,2},
		[8] = {15,0,0},
		[9] = {7,1,0},
		[10] = {-1,0,0},
		[11] = {53,1,0},
		["p0"] = {39,1,0},
		["p1"] = {0,0,0},
		["p6"] = {3,0},
	},
	["SWAT M 4"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {17,0,0},
		[4] = {31,1,0},
		[5] = {-1,0,0},
		[6] = {60,0,0},
		[7] = {1,0,2},
		[8] = {15,0,0},
		[9] = {15,1,0},
		[10] = {-1,0,0},
		[11] = {49,1,0},
		["p0"] = {75,1,0},
		["p1"] = {22,0,0},
		["p6"] = {3,0},
	},
},

["FIB"] = {
	_config = {},
		["FIB M 1"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {0,0,0},
		[4] = {31,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {1,0,2},
		[8] = {15,0,0},
		[9] = {-1,0,0},
		[10] = {-1,0,0},
		[11] = {93,1,0},
		["p0"] = {120,0,0},
		["p1"] = {0,0,0},
		["p6"] = {3,0},
	},
	["FIB M 2"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {14,0,0},
		[4] = {10,0,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {1,0,2},
		[8] = {60,0,0},
		[9] = {21,1,0},
		[10] = {-1,0,0},
		[11] = {103,0,0},
		["p0"] = {-1,0,0},
		["p1"] = {23,2,0},
		["p6"] = {3,0},
	},
	["FIB M 3"] = {
		[1] = {0,0,0},
		[2] = {4,0,0},
		[3] = {16,0,0},
		[4] = {31,4,0},
		[5] = {-1,0,0},
		[6] = {24,0,0},
		[7] = {2,0,2},
		[8] = {122,0,0},
		[9] = {7,2,2},
		[10] = {-1,0,0},
		[11] = {49,1,0},
		["p0"] = {39,0,0},
		["p1"] = {15,9,0},
		["p6"] = {5,0},
	},
},

}

cfg.cloakrooms = {
	{ "Personagem",3561.7365722656,3674.1333007813,29.121891021729 },
--	{ "Fardamento H",325.11767578125,-592.67657470703,43.261222839355 },  
--	{ "Uniforme Eletri",-822.2626953125,-731.65386962891,29.054933547974 },
--	{ "Mecanicos",826.89916992188,-956.45281982422,22.087619781494 },
--	{ "Fardamento Bratva",1394.9365234375,1157.1885986328,114.33358764648 },
--	{ "Fardamento Cartel",-1875.0538330078,2065.7475585938,146.57389831543 },
--	{ "Fardamento SOA",972.02111816406,-98.619552612305,75.846435546875 },
--	{ "Fardamento LOST",901.87738037109,-2116.4382324219,31.771179199219 },	
--	{ "LSPD",-1164.3236083984,-470.32073974609,53.307106018066 },
--	{ "SWAT",474.68276977539,-1090.9152832031,38.706539154053 },
--	{ "FIB",124.69493865967,-757.31414794922,242.15202331543 },
--	{ "Fardamento",457.30319213867,-991.01885986328,31.509584732056 }
}

return cfg

