Config = {}
Config.Locale = 'fr'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = {'police'},
		locked = false,
		maxDistance = 2.5,
		doors = {
			{objHash = 0xA3C5F5BC, objHeading = 270.0, objCoords = vector3(434.7, -980.6, 30.8)},
			{objHash = 0xA3C5F5BC, objHeading = -270.0, objCoords = vector3(434.7, -983.2, 30.8)}
		}
	},

	{
		textCoords = vector3(441.85, -998.27, 31.5),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = 0xA3C5F5BC, objHeading = 0.0, objCoords = vector3(440.73920, -998.74620, 30.81530)},
			{objHash = 0xA3C5F5BC, objHeading = 180.0, objCoords = vector3(443.06180, -998.74620, 30.81530)}
		}
	},

	{
		textCoords = vector3(457.02, -972.12, 31.5),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = 0xA3C5F5BC, objHeading = 0.0, objCoords = vector3(455.88620, -972.25430, 30.81531)},
			{objHash = 0xA3C5F5BC, objHeading = 180.0, objCoords = vector3(458.20870, -972.25430, 30.81531)}
		}
	},

	-- Parking
	{
		objHash = 0x6D191563,
		objHeading = 270.0,
		objCoords = vector3(464.15910, -974.66560, 26.37070),
		textCoords = vector3(464.1, -975.3, 27.1),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5
	},

	{
		objHash = 0x6D191563,
		objHeading = 90.0,
		objCoords = vector3(464.15660, -997.50930, 26.37070),
		textCoords = vector3(464.1, -996.97, 27.1),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5
	},

	-- Recepcion
	{
		objHash = 0xFA3CCA67,
		objHeading = 180.0,
		objCoords = vector3(440.52010, -986.23350, 30.82319),
		textCoords = vector3(441.19, -986.08, 31.5),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5
	},
	{
		objHash = 0xAC27AE32,
		objHeading = 0.0,
		objCoords = vector3(440.52010, -977.60110, 30.82319),
		textCoords = vector3(441.19, -977.41, 31.5),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5
	},

	-- Parking afuera
	{
		textCoords = vector3(471.41, -1009.0, 26.9),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = 0x8E5E7B9, objHeading = 90.0, objCoords = vector3(471.37580, -1010.19800, 26.40548)},
			{objHash = 0x8E5E7B9, objHeading = 270.0, objCoords = vector3(471.36790, -1007.79300, 26.40548)}
		}
	},

	{
		textCoords = vector3(468.72, -1000.43, 26.9),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = 0xEEC93374, objHeading = 180.0, objCoords = vector3(469.92740, -1000.54400, 26.40548)},
			{objHash = 0xEEC93374, objHeading = 0.0, objCoords = vector3(467.52220, -1000.54400, 26.40548)}
		}
	},



	-- Captain Office
	{
		objHash = 0Xfa3cca67,
		objHeading = 270.0,
		objCoords = vector3(458.65430, -990.64980, 30.82319),
		textCoords = vector3(458.65430, -990.0, 31.5),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objHash = 0xFCD204A6,
		objHeading = 180.0,
		objCoords = vector3(481.00840, -1004.11800, 26.48005),
		textCoords = vector3(481.65, -1004.11, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	{
		objHash = 0xFCD204A6,
		objHeading = 270.0,
		objCoords = vector3(476.61570, -1008.87500, 26.48005),
		textCoords = vector3(476.61, -1008.28, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 1
	{
		objHash = 0xFCD204A6,
		objHeading = 0.0,
		objCoords = vector3(477.91260, -1012.18900, 26.48005),
		textCoords = vector3(477.31, -1012.18900, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 2
	{
		objHash = 0xFCD204A6,
		objHeading = 0.0,
		objCoords = vector3(480.91280, -1012.18900, 26.48005),
		textCoords = vector3(480.31, -1012.18900, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 3
	{
		objHash = 0xFCD204A6,
		objHeading = 0.0,
		objCoords = vector3(483.91270, -1012.18900, 26.48005),
		textCoords = vector3(483.31, -1012.18900, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 4
	{
		objHash = 0xFCD204A6,
		objHeading = 180.0,
		objCoords = vector3(484.17640, -1007.73400, 26.48005),
		textCoords = vector3(484.77, -1007.73400, 27.2),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 1.25
	},

	--
	-- Mission Row Back
	--

	-- Back Gate
	{
		objHash = GetHashKey('hei_prop_station_gate'),
		objHeading = 90.0,
		objCoords = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 14,
		size = 2
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objHash = GetHashKey('v_ilev_shrfdoor'),
		objHeading = 30.0,
		objCoords = vector3(1855.1, 3683.5, 34.2),
		textCoords = vector3(1855.1, 3683.5, 35.0),
		authorizedJobs = {'police'},
		locked = false,
		maxDistance = 1.25
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		textCoords = vector3(-443.5, 6016.3, 32.0),
		authorizedJobs = {'police'},
		locked = false,
		maxDistance = 2.5,
		doors = {
			{objHash = GetHashKey('v_ilev_shrf2door'), objHeading = 315.0, objCoords  = vector3(-443.1, 6015.6, 31.7)},
			{objHash = GetHashKey('v_ilev_shrf2door'), objHeading = 135.0, objCoords  = vector3(-443.9, 6016.6, 31.7)}
		}
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objHash = GetHashKey('prop_gate_prison_01'),
		objCoords = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 12,
		size = 2
	},

	{
		objHash = GetHashKey('prop_gate_prison_01'),
		objCoords = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = {'police'},
		locked = true,
		maxDistance = 12,
		size = 2
	}
}