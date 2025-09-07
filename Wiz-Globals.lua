-------------------------------------------------------------------------------------------------------------------
-- Tables and functions for commonly-referenced gear that job files may need, but
-- doesn't belong in the global Mote-Include file since they'd get clobbered on each
-- update.
-- Creates the 'gear' table for reference in other files.
--
-- Note: Function and table definitions should be added to user, but references to
-- the contained tables via functions (such as for the obi function, below) use only
-- the 'gear' table.
-------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------
-- Modify the sets table.  Any gear sets that are added to the sets table need to
-- be defined within this function, because sets isn't available until after the
-- include is complete.  It is called at the end of basic initialization in Mote-Include.
-------------------------------------------------------------------------------------------------------------------

function define_global_sets()

	-- Default items for utility gear values.
	gear.default.weaponskill_neck = "Asperity Necklace"
	gear.default.weaponskill_waist = "Caudata Belt"
	gear.default.obi_waist = "Cognition Belt"
	gear.default.obi_back = "Toro Cape"
	gear.default.obi_ring = "Strendu Ring"
	gear.default.fastcast_staff = ""
	gear.default.recast_staff = ""

	jse = {}

	jse.artifact = {}
	jse.artifact.head = {}
	jse.artifact.body = {}
	jse.artifact.hands = {}
	jse.artifact.legs = {}
	jse.artifact.feet = {}

	jse.relic = {}
	jse.relic.head = {}
	jse.relic.body = {}
	jse.relic.hands = {}
	jse.relic.legs = {}
	jse.relic.feet = {}

	jse.empyrean = {}
	jse.empyrean.head = {}
	jse.empyrean.body = {}
	jse.empyrean.hands = {}
	jse.empyrean.legs = {}
	jse.empyrean.feet = {}

	jse.earring = {}

end

-------------------------------------------------------------------------------------------------------------------
-- Functions to set user-specified binds, generally on load and unload.
-- Kept separate from the main include so as to not get clobbered when the main is updated.
-------------------------------------------------------------------------------------------------------------------

-- Function to bind GearSwap binds when loading a GS script.
function global_on_load()
		
	
	-- send_command('bind @f9 gs c cycle WeaponskillMode')
	send_command('bind f9 gs c reset DefenseMode')
	send_command('bind ^f9 gs c cycle PhysicalDefenseMode')
	send_command('bind !f9 gs c cycle MagicalDefenseMode')
	send_command('bind @f9 gs c cycle IdleMode')
	send_command('bind f10 gs c set DefenseMode Physical')
	send_command('bind ^f10 gs c cycle OffenseMode')
	send_command('bind !f10 gs c cycle HybridMode')
	send_command('bind @f10 gs c cycle CombatMode')
	send_command('bind f11 gs c set DefenseMode Magical')
	send_command('bind ^f11 gs c cycle CastingMode')
	send_command('bind !f11 gs c cycle RangedMode')
	send_command('bind f12 gs c update user')	
	send_command('bind ^k gs c toggle Kiting')	
	send_command('bind ^l gs c weaponlock')
end

-- Function to revert binds when unloading.
function global_on_unload()
	send_command('unbind f9')
	send_command('unbind ^f9')
	send_command('unbind !f9')
	send_command('unbind @f9')
	send_command('unbind f10')
	send_command('unbind ^f10')
	send_command('unbind !f10')
	send_command('unbind @f10')
	send_command('unbind f11')
	send_command('unbind ^f11')
	send_command('unbind !f11')
	send_command('unbind f12')
	send_command('unbind ^f12')
	send_command('unbind !f12')
	send_command('unbind ^k')
	send_command('unbind ^l')

end