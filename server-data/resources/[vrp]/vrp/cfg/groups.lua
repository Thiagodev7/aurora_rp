local cfg = {}

cfg.groups = {
	["admin"] = {
		"admin.permissao",
		"fix.permissao",
		"dv.permissao",
		"god.permissao",
		"wl.permissao",
		"kick.permissao",
		"ban.permissao",
		"unban.permissao",
		"spotify.permissao",
		"money.permissao",
		"noclip.permissao",
		"containers.permissao",
		"ticket.permissao",
		"tp.permissao",
		"spawncar.permissao",
		"msg.permissao"
	},
	["mod"] = {
		"admin.permissao",
		"fix.permissao",
		"dv.permissao",
		"god.permissao",
		"ticket.permissao",
		"wl.permissao",
		"kick.permissao",
		"spotify.permissao",
		"ban.permissao",
		"unban.permissao",
		"noclip.permissao",
		"tp.permissao",
		"spawncar.permissao",
		"msg.permissao"
	},
	["sup"] = {
		"admin.permissao",
		"ticket.permissao",
		"fix.permissao",
		"dv.permissao",
		"wl.permissao",
		"kick.permissao"
	},
	["aprovadorwl"] = {
		"wl.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Concessionaria"] = {
		_config = {
			title = "Vendedor - Concessionaria",
			gtype = "job"
		},
		"tribunal.permissao"
	},
	["ConcessionariaPaycheck"] = {
		_config = {
		},
		"conce.permissao",
		"salarioconce.permissao",
		"tribunal.permissao",
		"sem.permissao"
	},
	["DONOConcessionaria"] = {
		_config = {
			title = "Dono - Concessionaria",
			gtype = "job"
		},
		"tribunal.permissao"
	},
	["DONOConcessionariaPaycheck"] = {
		_config = {
		},
		"tribunal.permissao",
		"conce.permissao",
		"salarioconcedono.permissao",
		"sem.permissao"
	},
---------------------------------------------------
---------------------------------------------------
	
	---------------------------------------------------
	---------------------------------------------------
	---------------------------------------------------
	["COMANDANTEPaycheck"] = {
		_config = {
		},
		"policia.permissao",
		"cmdgeral.permissao",
		"gic.permissao",
		"gsa.permissao",
		"gtm.permissao",
		"rpm.permissao",
		"portadp.permissao",
		"rpm1.permissao",
		"got1.permissao",
		"got.permissao",
		"salariocmd.permissao",
		"tribunal.permissao",
		"portadp.permissao",
		"addgrupo.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["COMANDANTE"] = {
		_config = {
			title = "Comandante Geral",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanacmdgeral.permissao"
	},
	["SUBCOMANDANTEPaycheck"] = {
		_config = {
		},
		"policia.permissao",
		"cmdgeral.permissao",
		"gic.permissao",
		"gsa.permissao",
		"gtm.permissao",
		"rpm.permissao",
		"portadp.permissao",
		"rpm1.permissao",
		"got1.permissao",
		"got.permissao",
		"salariosubcmd.permissao",
		"tribunal.permissao",
		"addgrupo.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["SUBCOMANDANTE"] = {
		_config = {
			title = "Sub-Comandante",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanacmdgeral.permissao"
	},

---------------------------------------------------
---------------------------------------------------
["ROCAM1Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"pm.permissao",
	"salariorocam.cabo",
	"tribunal.permissao",
	"portadp.permissao",
	"polpar.permissao"
},
["ROCAM1"] = {
	_config = {
		title = "ROCAM Cabo",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.cabo"
},
---------------------------------------------------
["ROCAM2Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"salariorocam.sargento",
	"portadp.permissao",
	"pm.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["ROCAM2"] = {
	_config = {
		title = "ROCAM Sargento",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.sargento"
},
---------------------------------------------------
["ROCAM3Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"salariorocam.subtenente",
	"pm.permissao",
	"portadp.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["ROCAM3"] = {
	_config = {
		title = "ROCAM Sub-Tenente",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.subtenente"
},
---------------------------------------------------
["ROCAM4Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"tribunal.permissao",
	"pm.permissao",
	"portadp.permissao",
	"salariorocam.tenente",
	"polpar.permissao"
},
["ROCAM4"] = {
	_config = {
		title = "ROCAM Tenente",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.tenente"
},
---------------------------------------------------
["ROCAM5Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"portadp.permissao",
	"pm.permissao",
	"tribunal.permissao",
	"salariorocam.capitao",
	"polpar.permissao"
},
["ROCAM5"] = {
	_config = {
		title = "ROCAM Capitão",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.capitao"
},
---------------------------------------------------
["ROCAM6Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"portadp.permissao",
	"pm.permissao",
	"tribunal.permissao",
	"salariorocam.major",
	"polpar.permissao"
},
["ROCAM6"] = {
	_config = {
		title = "ROCAM Major",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.major"
},
---------------------------------------------------
["ROCAM7Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"rocam.permissao",
	"tribunal.permissao",
	"pm.permissao",
	"portadp.permissao",
	"salariorocam.coronel",
	"polpar.permissao"
},
["ROCAM7"] = {
	_config = {
		title = "ROCAM Coronel",
		gtype = "job"
	},
	"tribunal.permissao",
	"portadp.permissao",
	"paisanarocam.coronel"
},
---------------------------------------------------
	---------------------------------------------------
	["GRPAE1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"grpae.permissao",
		"salariogrpae.1classe",
		"radar.pass",
		"portadp.permissao",
		"tribunal.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
    ["GRPAE1"] = {
		_config = {
			title = "GRPAe Primeira Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapoliciagam.1classe"
	},
	---------------------------------------------------
	["GRPAE2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"grpae.permissao",
		"salariogrpae.2classe",
		"portadp.permissao",
		"radar.pass",
		"tribunal.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
    ["GRPAE2"] = {
		_config = {
			title = "GRPAe Segunda Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapoliciagam.2classe"
	},
	---------------------------------------------------
	["GRPAE3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"grpae.permissao",
		"salariogrpae.3classe",
		"portadp.permissao",
		"radar.pass",
		"tribunal.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
    ["GRPAE3"] = {
		_config = {
			title = "GRPAe Terceira Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapoliciagam.3classe"
	},

	---------------------------------------------------
	---------------------------------------------------
	["PM1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"carropm.permissao",
		"portadp.permissao",
		"tribunal.permissao",
		"salariopm.recruta",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM1"] = {
		_config = {
			title = "PM Recruta",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.recruta"
	},
	---------------------------------------------------
	["PM2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"carropm.permissao",
		"portadp.permissao",
		"tribunal.permissao",
		"pm.soldado",
		"salariopm.soldado",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM2"] = {
		_config = {
			title = "PM Soldado",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.soldado"
	},
	---------------------------------------------------
	["PM3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"pm.cabo",
		"tribunal.permissao",
		"carropm.permissao",
		"portadp.permissao",
		"salariopm.cabo",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM3"] = {
		_config = {
			title = "PM Cabo",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.cabo"
	},
	---------------------------------------------------
	["PM4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"pm.sargento",
		"tribunal.permissao",
		"portadp.permissao",
		"carropm.permissao",
		"salariopm.sargento",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM4"] = {
		_config = {
			title = "PM Sargento",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.sargento"
	},
	---------------------------------------------------
	["PM5Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"pm.subtenente",
		"carropm.permissao",
		"portadp.permissao",
		"tribunal.permissao",
		"salariopm.subtenente",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM5"] = {
		_config = {
			title = "PM Sub-Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.subtenente"
	},
	---------------------------------------------------
	["PM6Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"pm.tenente",
		"carropm.permissao",
		"salariopm.tenente",
		"tribunal.permissao",
		"portadp.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM6"] = {
		_config = {
			title = "PM Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.tenente"
	},
	---------------------------------------------------
	["PM7Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"pm.capitao",
		"carropm.permissao",
		"portadp.permissao",
		"salariopm.capitao",
		"tribunal.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM7"] = {
		_config = {
			title = "PM Capitão",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.capitao"
	},
	---------------------------------------------------
	["PM8Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"carropm.permissao",
		"pm.major",
		"tribunal.permissao",
		"portadp.permissao",
		"salariopm.major",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM8"] = {
		_config = {
			title = "PM Major",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.major"
	},
	---------------------------------------------------
	["PM9Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pm.permissao",
		"carropm.permissao",
		"pm.coronel",
		"tribunal.permissao",
		"salariopm.coronel",
		"portadp.permissao",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PM9"] = {
		_config = {
			title = "PM Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"portadp.permissao",
		"paisanapolicia.coronel"
	},
	---------------------------------------------------
	---------------------------------------------------
	---------------------------------------------------
	["PC1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pcivil.permissao",
		"tribunal.permissao",
		"carropcivil.permissao",
		"pcivil.investigador",
		"salariopcivil.investigador",
		"polpar.permissao"
	},
	["PC1"] = {
		_config = {
			title = "Policia Civil - Investigador",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciapc.investigador"
	},
	---------------------------------------------------
	["PC2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pcivil.permissao",
		"carropcivil.permissao",
		"tribunal.permissao",
		"pcivil.perito",
		"salariopcivil.perito",
		"polpar.permissao"
	},
	["PC2"] = {
		_config = {
			title = "Policia Civil - Perito Criminal",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciapc.perito"
	},
	---------------------------------------------------
	["PC3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pcivil.permissao",
		"carropcivil.permissao",
		"tribunal.permissao",
		"pcivil.escrivao",
		"salariopcivil.escrivao",
		"polpar.permissao"
	},
	["PC3"] = {
		_config = {
			title = "Policia Civil - Escrivão",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciapc.escrivao"
	},
	---------------------------------------------------
	["PC4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"pcivil.permissao",
		"pcivil.delegado",
		"tribunal.permissao",
		"carropcivil.permissao",
		"salariopcivil.delegado",
		"polpar.permissao"
	},
	["PC4"] = {
		_config = {
			title = "Policia Civil - Delegado",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciapc.delegado"
	},
	---------------------------------------------------
	["PRF1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"prf.permissao",
		"prf.terceira",
		"carroprf.permissao",
		"tribunal.permissao",
		"salarioprf.primeira",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PRF1"] = {
		_config = {
			title = "PRF - Terceira Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanaprf.terceira"
	},
	---------------------------------------------------
	["PRF2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"prf.permissao",
		"prf.segunda",
		"tribunal.permissao",
		"carroprf.permissao",
		"salarioprf.segunda",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PRF2"] = {
		_config = {
			title = "PRF - Segunda Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanaprf.segunda"
	},
	---------------------------------------------------
	["PRF3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"prf.permissao",
		"carroprf.permissao",
		"prf.primeira",
		"tribunal.permissao",
		"salarioprf.primeira",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PRF3"] = {
		_config = {
			title = "PRF - Primeira Classe",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanaprf.primeira"
	},
	---------------------------------------------------
	["PRF4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"prf.permissao",
		"carroprf.permissao",
		"prf.especial",
		"tribunal.permissao",
		"salarioprf.especial",
		"policiaheli.permissao",
		"polpar.permissao"
	},
	["PRF4"] = {
		_config = {
			title = "PRF - Especial",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanaprf.especial"
	},
	---------------------------------------------------
	["FT1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"carroft.permissao",
		"recom.soldado",
		"salarioft.soldado",
		"tribunal.permissao",
		"polpar.permissao"
	},
	["FT1"] = {
		_config = {
			title = "FT Soldado",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.soldado"
	},
	---------------------------------------------------	
	["FT2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"recom.cabo",
		"tribunal.permissao",
		"carroft.permissao",
		"salarioft.cabo",
		"polpar.permissao"
	},
	["FT2"] = {
		_config = {
			title = "FT Cabo",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.cabo"
	},
	---------------------------------------------------	
	["FT3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"tribunal.permissao",
		"ft.permissao",
		"recom.sargento",
		"carroft.permissao",
		"salarioft.sargento",
		"polpar.permissao"
	},
	["FT3"] = {
		_config = {
			title = "FT Sargento",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.sargento"
	},
	---------------------------------------------------	
	["FT4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"carroft.permissao",
		"recom.tenente",
		"tribunal.permissao",
		"salarioft.subtenente",
		"polpar.permissao"
	},
	["FT4"] = {
		_config = {
			title = "FT Sub-Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.subtenente"
	},
	---------------------------------------------------	
	["FT5Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"carroft.permissao",
		"recom.tenente",
		"tribunal.permissao",
		"salarioft.tenente",
		"polpar.permissao"
	},
	["FT5"] = {
		_config = {
			title = "FT Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.tenente"
	},
	---------------------------------------------------	
	["FT6Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"tribunal.permissao",
		"recom.capitao",
		"carroft.permissao",
		"salarioft.capitao",
		"polpar.permissao"
	},
	["FT6"] = {
		_config = {
			title = "FT Capitão",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.capitao"
	},
	---------------------------------------------------	
	["FT7Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"tribunal.permissao",
		"carroft.permissao",
		"recom.major",
		"salarioft.major",
		"polpar.permissao"
	},
	["FT7"] = {
		_config = {
			title = "FT Major",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.major"
	},
	---------------------------------------------------	
	["FT8Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"recom.coronel",
		"tribunal.permissao",
		"carroft.permissao",
		"salarioft.tencoronel",
		"polpar.permissao"
	},
	["FT8"] = {
		_config = {
			title = "FT Ten-Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.tencoronel"
	},
	["FT9Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"ft.permissao",
		"recom.coronel",
		"tribunal.permissao",
		"carroft.permissao",
		"salarioft.coronel",
		"polpar.permissao"
	},
	["FT9"] = {
		_config = {
			title = "FT Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.coronel"
	},
	---------------------------------------------------
		---------------------------------------------------
			---------------------------------------------------
	["BAEP1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"carrobaep.permissao",
		"recom.soldado",
		"salariobaep.soldado",
		"tribunal.permissao",
		"polpar.permissao"
	},
	["BAEP1"] = {
		_config = {
			title = "BAEP Soldado",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.soldado"
	},
	---------------------------------------------------	
	["BAEP2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"recom.cabo",
		"tribunal.permissao",
		"carrobaep.permissao",
		"salariobaep.cabo",
		"polpar.permissao"
	},
	["BAEP2"] = {
		_config = {
			title = "BAEP Cabo",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.cabo"
	},
	---------------------------------------------------	
	["BAEP3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"tribunal.permissao",
		"baep.permissao",
		"recom.sargento",
		"carrobaep.permissao",
		"salariobaep.sargento",
		"polpar.permissao"
	},
	["BAEP3"] = {
		_config = {
			title = "BAEP Sargento",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.sargento"
	},
	---------------------------------------------------	
	["BAEP4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"carrobaep.permissao",
		"recom.tenente",
		"tribunal.permissao",
		"salariobaep.subtenente",
		"polpar.permissao"
	},
	["BAEP4"] = {
		_config = {
			title = "BAEP Sub-Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.subtenente"
	},
	---------------------------------------------------	
	["BAEP5Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"carrobaep.permissao",
		"recom.tenente",
		"tribunal.permissao",
		"salariobaep.tenente",
		"polpar.permissao"
	},
	["BAEP5"] = {
		_config = {
			title = "BAEP Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.tenente"
	},
	---------------------------------------------------	
	["BAEP6Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"tribunal.permissao",
		"recom.capitao",
		"carrobaep.permissao",
		"salariobaep.capitao",
		"polpar.permissao"
	},
	["BAEP6"] = {
		_config = {
			title = "BAEP Capitão",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.capitao"
	},
	---------------------------------------------------	
	["BAEP7Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"tribunal.permissao",
		"carrobaep.permissao",
		"recom.major",
		"salariobaep.major",
		"polpar.permissao"
	},
	["BAEP7"] = {
		_config = {
			title = "BAEP Major",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.major"
	},
	---------------------------------------------------	
	["BAEP8Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"recom.coronel",
		"tribunal.permissao",
		"carrobaep.permissao",
		"salariobaep.tencoronel",
		"polpar.permissao"
	},
	["BAEP8"] = {
		_config = {
			title = "BAEP Ten-Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.tencoronel"
	},
	["BAEP9Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"baep.permissao",
		"recom.coronel",
		"tribunal.permissao",
		"carrobaep.permissao",
		"salariobaep.coronel",
		"polpar.permissao"
	},
	["BAEP9"] = {
		_config = {
			title = "BAEP Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciarecom.coronel"
	},
	-------	---------------------------------------------------	
------------------------------------------	
	["ROTA1Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"tribunal.permissao",
		"bope.soldado",
		"carrorota.permissao",
		"rota.permissao",
		"salariorota.soldado",
		"polpar.permissao"
	},
	["ROTA1"] = {
		_config = {
			title = "ROTA Soldado",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.soldado"
	},
	---------------------------------------------------
	["ROTA2Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.cabo",
		"carrorota.permissao",
		"tribunal.permissao",
		"rota.permissao",
		"salariorota.cabo",
		"polpar.permissao"
	},
	["ROTA2"] = {
		_config = {
			title = "ROTA Cabo",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.cabo"
	},
	---------------------------------------------------
	["ROTA3Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.sargento",
		"carrorota.permissao",
		"tribunal.permissao",
		"rota.permissao",
		"salariorota.sargento",
		"polpar.permissao"
	},
	["ROTA3"] = {
		_config = {
			title = "ROTA Sargento",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.sargento"
	},
	---------------------------------------------------
	["ROTA4Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.tenente",
		"rota.permissao",
		"tribunal.permissao",
		"carrorota.permissao",
		"salariorota.subtenente",
		"polpar.permissao"
	},
	["ROTA4"] = {
		_config = {
			title = "ROTA Sub-Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.subtenente"
	},

	["ROTA5Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.tenente",
		"rota.permissao",
		"tribunal.permissao",
		"carrorota.permissao",
		"salariorota.tenente",
		"polpar.permissao"
	},
	["ROTA5"] = {
		_config = {
			title = "ROTA Tenente",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.tenente"
	},
	---------------------------------------------------
	["ROTA6Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.capitao",
		"carrorota.permissao",
		"tribunal.permissao",
		"salariorota.capitao",
		"rota.permissao",
		"polpar.permissao"
	},
	["ROTA6"] = {
		_config = {
			title = "ROTA Capitão",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.capitao"
	},
	---------------------------------------------------
	["ROTA7Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.major",
		"salariorota.major",
		"tribunal.permissao",
		"rota.permissao",
		"carrorota.permissao",
		"polpar.permissao"
	},
	["ROTA7"] = {
		_config = {
			title = "ROTA Major",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.major"
	},
	---------------------------------------------------
	["ROTA8Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.coronel",
		"carrorota.permissao",
		"tribunal.permissao",
		"rota.permissao",
		"salariorota.tencoronel",
		"polpar.permissao"
	},
	["ROTA8"] = {
		_config = {
			title = "ROTA Ten-Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.tencoronel"
	},
	---------------------------------------------------
	["ROTA9Paycheck"] = {
		_config = {
		},
		"policia.permissao",
		"bope.coronel",
		"carrorota.permissao",
		"tribunal.permissao",
		"rota.permissao",
		"salariorota.coronel",
		"polpar.permissao"
	},
	["ROTA9"] = {
		_config = {
			title = "ROTA Coronel",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanapoliciabope.coronel"
	},
	---------------------------------------------------
---------------------------------------------------
["EB1Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.soldado",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.soldado",
	"polpar.permissao"
},
["EB1"] = {
	_config = {
		title = "Exército Soldado",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.soldado"
},
---------------------------------------------------
["EB2Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.cabo",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.cabo",
	"polpar.permissao"
},
["EB2"] = {
	_config = {
		title = "Exército Cabo",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.cabo"
},
---------------------------------------------------
["EB3Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.sargento",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.sargento",
	"polpar.permissao"
},
["EB3"] = {
	_config = {
		title = "Exército Sargento",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.sargento"
},
---------------------------------------------------
["EB4Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.subtenente",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.subtenente",
	"polpar.permissao"
},
["EB4"] = {
	_config = {
		title = "Exército Sub-Tenente",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.subtenente"
},
---------------------------------------------------
["EB5Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.tenente",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.tenente",
	"polpar.permissao"
},
["EB5"] = {
	_config = {
		title = "Exército Tenente",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.tenente"
},
---------------------------------------------------
["EB6Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.capitao",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.capitao",
	"polpar.permissao"
},
["EB6"] = {
	_config = {
		title = "Exército Capitão",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.capitao"
},
---------------------------------------------------
["EB7Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.major",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.major",
	"polpar.permissao"
},
["EB7"] = {
	_config = {
		title = "Exército Major",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.major"
},
---------------------------------------------------
["EB8Paycheck"] = {
	_config = {
	},
	"policia.permissao",
	"tribunal.permissao",
	"eb.coronel",
	"carroeb.permissao",
	"exercito.permissao",
	"salarioeb.coronel",
	"polpar.permissao"
},
["EB8"] = {
	_config = {
		title = "Exército Coronel",
		gtype = "job"
	},
	"tribunal.permissao",
	"paisanapoliciaeb.coronel"
},

	---------------------------------------------------
	-- SAMU / SAÚDE  
	---------------------------------------------------
	["Hospital1Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"portahospital.permissao",
		"tribunal.permissao",
		"reviver.permissao",
		"estagiario.permissao",
		"polpar.permissao"
	},
	["Hospital1"] = {
		_config = {
			title = "Estagiário(a) SAMU",
			gtype = "job"
		},
			"paisanaestagiario.permissao",
			"samucontratado.permissao",
			"tribunal.permissao",
			"portahospital.permissao"
	},
	-----------------
	["Hospital2Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"portahospital.permissao",
		"tribunal.permissao",
		"reviver.permissao",
		"enfermeiro.permissao",
		"polpar.permissao"
	},
	["Hospital2"] = {
		_config = {
			title = "Enfermeiro(a) SAMU",
			gtype = "job"
		},
			"paisanaenfermeiro.permissao",
			"tribunal.permissao",
			"samucontratado.permissao",
			"portahospital.permissao"
	},
	-----------------
	["Hospital3Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"reviver.permissao",
		"tribunal.permissao",
		"portahospital.permissao",
		"paramedicosamu.permissao",
		"polpar.permissao"
	},
	["Hospital3"] = {
		_config = {
			title = "Paramédico(a) SAMU",
			gtype = "job"
		},
		"paisanaparamedico.permissao",
		"samucontratado.permissao",
		"tribunal.permissao",
		"portahospital.permissao"
	},
	-----------------
	["Hospital4Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"reviver.permissao",
		"tribunal.permissao",
		"portahospital.permissao",
		"clinicogeral.permissao",
		"polpar.permissao"
	},
	["Hospital4"] = {
		_config = {
			title = "Clinico(a) Geral SAMU",
			gtype = "job"
		},
		"paisanaclinicogeral.permissao",
		"tribunal.permissao",
		"samucontratado.permissao",
		"portahospital.permissao"
	},
	-------------------
	["Hospital5Paycheck"] = {
				_config = {
				},
				"paramedico.permissao",
				"portahospital.permissao",
				"tribunal.permissao",
				"reviver.permissao",
				"vicediretor.permissao",
				"polpar.permissao"
			},
	["Hospital5"] = {
				_config = {
					title = "Vice-Diretor(a) SAMU",
					gtype = "job"
				},
					"paisanaenfermeiro.permissao",
					"tribunal.permissao",
					"portahospital.permissao"
			},
	-----------------
	["Hospital6Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"tribunal.permissao",
		"reviver.permissao",
		"portahospital.permissao",
		"diretorgeral.permissao",
		"polpar.permissao"
	},
	["Hospital6"] = {
		_config = {
			title = "Diretor(a) Geral SAMU",
			gtype = "job"
		},
		"paisanadiretorgeral.permissao",
		"tribunal.permissao",
		"portahospital.permissao"
	},
	

	---------------------------------------------------
	-- BOMBEIROS 
	---------------------------------------------------
	["Bombeiro1Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"portahospital.permissao",
		"tribunal.permissao",
		"reviver.permissao",
		"bombeiros.permissao",
		"bombeiro1.permissao",
		"polpar.permissao"
	},
	["Bombeiro1"] = {
		_config = {
			title = "Estagiário(a) Bombeiro",
			gtype = "job"
		},
			"paisanabombeiro1.permissao",
			"tribunal.permissao",
			"portahospital.permissao"
	},
	-----------------
	["Bombeiro2Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"portahospital.permissao",
		"tribunal.permissao",
		"bombeiros.permissao",
		"reviver.permissao",
		"bombeiro2.permissao",
		"polpar.permissao"
	},
	["Bombeiro2"] = {
		_config = {
			title = "Enfermeiro(a) Bombeiro",
			gtype = "job"
		},
			"paisanabombeiro2.permissao",
			"tribunal.permissao",
			"portahospital.permissao"
	},
	-----------------
	["Bombeiro3Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"portahospital.permissao",
		"tribunal.permissao",
		"bombeiros.permissao",
		"reviver.permissao",
		"bombeiro3.permissao",
		"polpar.permissao"
	},
	["Bombeiro3"] = {
		_config = {
			title = "Paramédico(a) Bombeiro",
			gtype = "job"
		},
		"paisanabombeiro3.permissao",
		"tribunal.permissao",
		"portahospital.permissao"
	},
	-----------------
	["Bombeiro4Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"reviver.permissao",
		"tribunal.permissao",
		"portahospital.permissao",
		"bombeiros.permissao",
		"bombeiro4.permissao",
		"polpar.permissao"
	},
	["Bombeiro4"] = {
		_config = {
			title = "Clinico(a) Geral Bombeiro",
			gtype = "job"
		},
		"paisanabombeiro4.permissao",
		"tribunal.permissao",
		"portahospital.permissao"
	},
	-------------------
	["Bombeiro5Paycheck"] = {
				_config = {
				},
				"paramedico.permissao",
				"portahospital.permissao",
				"tribunal.permissao",
				"bombeiros.permissao",
				"reviver.permissao",
				"bombeiro5.permissao",
				"polpar.permissao"
			},
	["Bombeiro5"] = {
				_config = {
					title = "Vice-Diretor(a) Bombeiro",
					gtype = "job"
				},
				"paisanabombeiro5.permissao",
					"tribunal.permissao",
					"portahospital.permissao"
			},
	-----------------
	["Bombeiro6Paycheck"] = {
		_config = {
		},
		"paramedico.permissao",
		"tribunal.permissao",
		"reviver.permissao",
		"portahospital.permissao",
		"bombeiros.permissao",
		"bombeiro6.permissao",
		"polpar.permissao"
	},
	["Bombeiro6"] = {
		_config = {
			title = "Diretor(a) Geral Bombeiro",
			gtype = "job"
		},
		"paisanabombeiro6.permissao",
		"tribunal.permissao",
		"portahospital.permissao"
	},
	

	
	---------------------------------------------------
	---------------------------------------------------
	["Lider-MecanicoPaycheck"] = {
		_config = {
		},
		"mecanico.permissao",
		"lidermecanico.permissao",
		"bennys.permissao",
		"furios.permissao",
		"tribunal.permissao",
		"fixarpneu.permissao",
		"furios.portas",
		"lidermecanico.permissao",
		"lsc.use"
	},
	["Lider-Mecanico"] = {
		_config = {
			title = "Chefe - East Customs",
			gtype = "job"
		},
		"paisanamecanicolider.permissao"
	},
	---------------------------------------------------
	["MecanicoPaycheck2"] = {
		_config = {
		},
		"mecanico.permissao",
		"lidermecanico.permissao",
		"bennys.permissao",
		"furios.permissao",
		"fixarpneu.permissao",
		"tribunal.permissao",
		"gerentemecanico.permissao",
		"furios.portas",
		"lidermecanico.permissao",
		"lsc.use"
	},
	["Mecanico2"] = {
		_config = {
			title = "Gerente - East Customs",
			gtype = "job"
		},
		"paisanamecanicolider.permissao"
	},
	---------------------------------------------------
	["MecanicoPaycheck1"] = {
		_config = {
		},
		"mecanico.permissao",
		"salariomecanico.permissao",
		"bennys.permissao",
		"fixarpneu.permissao",
		"tribunal.permissao",
		"furios.permissao",
		"furios.portas",
		"roubonpc.permissao",
		"lsc.use"
	},
	["Mecanico1"] = {
		_config = {
			title = "Membro - East Customs",
			gtype = "job"
		},
		"tribunal.permissao",
		"paisanamecanico.permissao"
	},

---------------------------------------------------
---------------------------------------------------
["FARC1"] = {
	_config = {
		title = "FARC Cabo",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC2"] = {
	_config = {
		title = "FARC Sargento",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC3"] = {
	_config = {
		title = "FARC Sub-Tenente",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC4"] = {
	_config = {
		title = "FARC Tenente",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC5"] = {
	_config = {
		title = "FARC Capitão",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC6"] = {
	_config = {
		title = "FARC Major",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},
["FARC7"] = {
	_config = {
		title = "FARC Coronel",
		gtype = "job"
	},
	"farc.permissao",
	"tribunal.permissao",
	"polpar.permissao"
},

	---------------------------------------------------
	---------------------------------------------------
	["Advogado"] = {
		_config = {
			title = "Advogado",
			gtype = "job"
		},
		"tribunal.permissao"
	},
	["AdvogadoPaycheck"] = {
		_config = {
		},
		"tribunal.permissao",
		"advogado.permissao"
	},
	["Juiz"] = {
		_config = {
			title = "Juiz",
			gtype = "job"
		},
		"tribunal.permissao",
		"tribunal2.permissao"
	},
	["JuizPaycheck"] = {
		_config = {
		},
		"tribunal.permissao",
		"juiz.permissao"
	},

	["Civil"] = {
		_config = {
			title = "Civil",
			gtype = "job"
		},
		"tribunal.permissao",
		"roubonpc.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["TaxistaPaycheck"] = {
		_config = {
		},
		"taxista.permissao",
		"tribunal.permissao"
	},
	["Taxista"] = {
		_config = {
			title = "Membro - Taxista",
			gtype = "job"
		},
		"paisanataxista.permissao",
		"tribunal.permissao",
		"roubonpc.permissao"
	},

	["Lider-TaxistaPaycheck"] = {
		_config = {
		},
		"taxista.permissao",
		"tribunal.permissao"
	},
	["Lider-Taxista"] = {
		_config = {
			title = "Lider - Taxista",
			gtype = "job"
		},
		"paisanataxista.permissao",
		"tribunal.permissao",
		"lidertaxista.permissao",
		"roubonpc.permissao"
	},
	----------------------------------------------------------------------------------------------
	----------------------------------------------------------------------------------------------
	["Bronze"] = {
		_config = {
			title = "Bronze",
			gtype = "vip"
		},
		"bronze.permissao",
		"carrosvip.permissao"
	},
	["Prata"] = {
		_config = {
			title = "Prata",
			gtype = "vip"
		},
		"prata.permissao",
		"carrosvip.permissao"
	},
	["Ouro"] = {
		_config = {
			title = "Ouro",
			gtype = "vip"
		},
		"ouro.permissao",
		"spotify.permissao",
		"containers.permissao",
		"mochila.permissao",
		"carrosvip.permissao"
	},
	["Platina"] = {
		_config = {
			title = "Platina",
			gtype = "vip"
		},
		"platina.permissao",
		"mochila.permissao",
		"containers.permissao",
		"spotify.permissao",
		"carrosvip.permissao"
	},
	["Mochila"] = { --Grupo adicional para vips quando morrer não perderem a mochila (JÁ TEM NO OURO E PLATINA)
		_config = {
			title = "Mochila"
		},
		"mochila.permissao"
	},
	["Spotify"] = { --Grupo adicional para vips quando morrer não perderem a mochila (JÁ TEM NO OURO E PLATINA)
		_config = {
			title = "Spotify"
		},
		"spotify.permissao"
	},
	["VerificadoInsta"] = { --Grupo adicional para ganhar verificado no instagram
		_config = {
			title = "Spotify"
		},
		"instagram.verificado"
	},
	["VipArmas"] = { --Grupo adicional para vips poderem usar os comandos para acessorio da arma
		_config = {
			title = "VipArmas"
		},
		"armas.permissao"
	},
	----------------------------------------------------------------------------------------------
	----------------------------------------
	["BurguerShot1"] = {
		_config = {
			title = "BurguerShot - Funcionario",
			gtype = "job"
		},
		"tribunal.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao"
	},
	["BurguerShot1Paycheck"] = {
		_config = {
		},
		"burguershot.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao",
		"tribunal.permissao"
	},
	["BurguerShot2"] = {
		_config = {
			title = "BurguerShot - Gerente",
			gtype = "job"
		},
		"tribunal.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao"
	},
	["BurguerShot2Paycheck"] = {
		_config = {
		},
		"burguershot.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao",
		"tribunal.permissao"
	},
	["BurguerShot3"] = {
		_config = {
			title = "BurguerShot - Dono",
			gtype = "job"
		},
		"tribunal.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao"
	},
	["BurguerShot3Paycheck"] = {
		_config = {
		},
		"burguershot.permissao",
		"portaburguershot.permissao",
		"portadosfundos.permissao",
		"tribunal.permissao"
	},
	----------------------------------------------------------------------------------------------
	----------------------------------------
	["Lider-Amarelos"] = {
		_config = {
			title = "Chefe -  Amarelos",
			gtype = "job"
		},
		"amarelos.permissao",
		"roubonpc.permissao",
		"tribunal.permissao",
		"lideramarelos.permissao",
		"entrada.permissao"
	},
	["Amarelos1"] = {
		_config = {
			title = "Amarelos - Membro",
			gtype = "job"
		},
		"amarelos.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Amarelos2"] = {
		_config = {
			title = "Amarelos - Gerente",
			gtype = "job"
		},
		"amarelos.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	----------------------------------------
	["Lider-Roxos"] = {
		_config = {
			title = "Chefe - Roxos",
			gtype = "job"
		},
		"roxos.permissao",
		"roubonpc.permissao",
		"tribunal.permissao",
		"liderroxos.permissao",
		"entrada.permissao"
	},
	["Roxos1"] = {
		_config = {
			title = "Roxos - Membro",
			gtype = "job"
		},
		"tribunal.permissao",
		"roxos.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Roxos2"] = {
		_config = {
			title = "Roxos - Gerente",
			gtype = "job"
		},
		"roxos.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	-------------------------------------------
	["Lider-Verdes"] = {
		_config = {
			title = "Chefe - Verdes",
			gtype = "job"
		},
		"verdes.permissao",
		"liderverdes.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Verdes1"] = {
		_config = {
			title = "Verdes - Membro",
			gtype = "job"
		},
		"tribunal.permissao",
		"roubonpc.permissao",
		"verdes.permissao",
		"entrada.permissao"
	},
	["Verdes2"] = {
		_config = {
			title = "Verdes - Gerente",
			gtype = "job"
		},
		"tribunal.permissao",
		"roubonpc.permissao",
		"verdes.permissao",
		"entrada.permissao"
	},
	-------------------------------------------
	["Lider-Anonymous"] = {
			_config = {
				title = "Anonymous - Master",
				gtype = "job"
			},
			"anonymous.permissao",
			"lideranonymous.permissao",
			"tribunal.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
		["Anonymous2"] = {
			_config = {
				title = "Anonymous - Pleno",
				gtype = "job"
			},
			"tribunal.permissao",
			"roubonpc.permissao",
			"anonymous.permissao",
			"entrada.permissao"
		},
		["Anonymous1"] = {
			_config = {
				title = "Anonymous - Trainee",
				gtype = "job"
			},
			"tribunal.permissao",
			"roubonpc.permissao",
			"anonymous.permissao",
			"entrada.permissao"
		},
		-------------------------------------------
		["Lider-Driftking"] = {
			_config = {
				title = "Lider - Driftking",
				gtype = "job"
			},
			"driftking.permissao",
			"liderdriftking.permissao",
			"tribunal.permissao",
			"fixarpneu.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
		["Driftking2"] = {
			_config = {
				title = "Driftking - Gerente",
				gtype = "job"
			},
			"driftking.permissao",
			"tribunal.permissao",
			"fixarpneu.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
		["Driftking1"] = {
			_config = {
				title = "Driftking - Membro",
				gtype = "job"
			},
			"driftking.permissao",
			"tribunal.permissao",
			"fixarpneu.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
	--------------------------------------------------------------------------------
	--ORGANIZAÇÕES FARM ARMA--
	-------------------------------------------------------------------------------
	["Lider-Bratva"] = {
		_config = {
			title = "Líder Bratva",
			gtype = "job"
		},
		"bratva.permissao",
		"lidermafia.permissao",
		"tribunal.permissao",
		"mafia.permissao",
		"mafiaarmas.permissao",
		"contrabandista.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Bratva2"] = {
		_config = {
			title = "Bratva - Gerente",
			gtype = "job"
		},
		"bratva.permissao",
		"tribunal.permissao",
		"mafia.permissao",
		"mafiaarmas.permissao",
		"contrabandista.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Bratva1"] = {
		_config = {
			title = "Bratva - Membro",
			gtype = "job"
		},
		"bratva.permissao",
		"mafia.permissao",
		"contrabandista.permissao",
		"mafiaarmas.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
    ----------------------
	["Lider-Cartel"] = {
		_config = {
			title = "Líder - Cartel",
			gtype = "job"
		},
		"cartel.permissao",
		"lidermafia.permissao",
		"mafia.permissao",
		"mafiaarmas.permissao",
		"tribunal.permissao",
		"contrabandista.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Cartel1"] = {
		_config = {
			title = "Cartel - Membro",
			gtype = "job"
		},
		"cartel.permissao",
		"tribunal.permissao",
		"mafiaarmas.permissao",
		"mafia.permissao",
		"contrabandista.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Cartel2"] = {
		_config = {
			title = "Cartel - Gerente",
			gtype = "job"
		},
		"cartel.permissao",
		"tribunal.permissao",
		"mafiaarmas.permissao",
		"mafia.permissao",
		"contrabandista.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	-------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
	--ORGANIZAÇÕES FARM MUNIÇÃO--
	-------------------------------------------------------------------------------
	["Lider-Soa"] = {
			_config = {
				title = "Líder - SoA",
				gtype = "job"
			},
			"motoclub.permissao",
			"tribunal.permissao",
			"contrabandista.permissao",
			"soa.permissao",
			"municoes.permissao",
			"lidermc.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
	["SOA1"] = {
			_config = {
				title = "SoA - Membro",
				gtype = "job"
			},
			"motoclub.permissao",
			"roubonpc.permissao",
			"municoes.permissao",
			"contrabandista.permissao",
			"soa.permissao",
			"tribunal.permissao",
			"entrada.permissao"
		},
		["SOA2"] = {
			_config = {
				title = "SoA - Gerente",
				gtype = "job"
			},
			"motoclub.permissao",
			"roubonpc.permissao",
			"municoes.permissao",
			"contrabandista.permissao",
			"soa.permissao",
			"tribunal.permissao",
			"entrada.permissao"
		},
 ----------------------
	["Lider-TheLost"] = {
			_config = {
				title = "Líder - The Lost",
				gtype = "job"
			},
			"motoclub.permissao",
			"thelost.permissao",
			"tribunal.permissao",
			"municoes.permissao",
			"lidermc.permissao",
			"contrabandista.permissao",
			"roubonpc.permissao",
			"entrada.permissao"
		},
	["TheLost2"] = {
			_config = {
				title = "The Lost - Gerente",
				gtype = "job"
			},
			"motoclub.permissao",
			"contrabandista.permissao",
			"thelost.permissao",
			"roubonpc.permissao",
			"tribunal.permissao",
			"municoes.permissao",
			"entrada.permissao"
		},
		["TheLost1"] = {
			_config = {
				title = "The Lost - Membro",
				gtype = "job"
			},
			"motoclub.permissao",
			"contrabandista.permissao",
			"thelost.permissao",
			"roubonpc.permissao",
			"municoes.permissao",
			"tribunal.permissao",
			"entrada.permissao"
		},
	-------------------------------------------------------------------------------
	["Lider-Vanilla"] = {
		_config = {
			title = "Líder - Vanilla",
			gtype = "job"
		},
		"vanilla.permissao",
		"lidervanilla.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Vanilla1"] = {
		_config = {
			title = "Vanilla - Membro",
			gtype = "job"
		},
		"vanilla.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Vanilla2"] = {
		_config = {
			title = "Vanilla - Gerente",
			gtype = "job"
		},
		"vanilla.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	
	-------------------------------------------------------------------------------
	["Lider-Casino"] = {
		_config = {
			title = "Líder - Casino",
			gtype = "job"
		},
		"casino.permissao",
		"lidercasino.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Casino1"] = {
		_config = {
			title = "Casino - Membro",
			gtype = "job"
		},
		"casino.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},
	["Casino2"] = {
		_config = {
			title = "Casino - Gerente",
			gtype = "job"
		},
		"casino.permissao",
		"tribunal.permissao",
		"roubonpc.permissao",
		"entrada.permissao"
	},


	-------------------------------------------------------------------------------
	["HabilitacaoA"] = {
		_config = {
			title = "HabilitacaoA",
		},
		"carteiraA.permissao",
	},
	["HabilitacaoB"] = {
		_config = {
			title = "HabilitacaoB",
		},
		"carteiraB.permissao",
	},
	["HabilitacaoAB"] = {
		_config = {
			title = "HabilitacaoAB",
		},
		"carteiraAB.permissao",
	},
}

cfg.users = {
	[1] = { "admin" },
	[2] = { "admin" },
}

cfg.selectors = {}

return cfg