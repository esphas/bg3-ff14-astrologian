---@meta
---@diagnostic disable

if context == nil then context = {} end

---@overload fun(resourceType:string, cost:double)
---@overload fun(resourceType:string, cost:double, level:string)
---@overload fun(resourceType:string, cost:double, level:string, isPercentage:bool)
---@overload fun(resourceType:string, cost:double, level:string, isPercentage:bool, ignoreResourceConsumeBoosts:bool)
---@param resourceType string
---@param cost double
---@param level string
---@param isPercentage bool
---@param ignoreResourceConsumeBoosts bool
---@param target Entity
function HasActionResource(resourceType, cost, level, isPercentage, ignoreResourceConsumeBoosts, target) end

---@overload fun(proficiency:string)
---@param proficiency string
---@param target Entity
function HasProficiency(proficiency, target) end

---@overload fun(proficiency:string)
---@param proficiency string
---@param target Entity
function IsOfProficiencyGroup(proficiency, target) end

---@overload fun(ability:Ability, skill:Skill)
---@param ability Ability
---@param skill Skill
---@param target Entity
function HasProficiencyBonus(ability, skill, target) end

---@overload fun()
---@param target Entity
function HasShieldEquipped(target) end

---@overload fun(properties:WeaponProperties)
---@param properties WeaponProperties
---@param target Entity
function HasWeaponProperty( properties, target) end

---@overload fun(proficiency:string)
---@param proficiency string
---@param target Entity
function IsWeaponOfProficiencyGroup(proficiency, target) end

---@overload fun(weaponFlags:string)
---@overload fun(weaponFlags:string, offHand:bool)
---@overload fun(weaponFlags:string, offHand:bool, checkBothWeaponSets:bool)
---@param weaponFlags string
---@param offHand bool
---@param checkBothWeaponSets bool
---@param target Entity
function WieldingWeapon(weaponFlags, offHand, checkBothWeaponSets, target) end

---@overload fun()
---@overload fun(target:Entity)
---@param target Entity
---@param source Entity
function CanHarm(target, source) end

---@overload fun()
---@param target Entity
function Locked(target) end

---@overload fun()
---@param target Entity
function Combat(target) end

---@overload fun()
---@overload fun(target:Entity)
---@param target Entity
---@param source Entity
function FacingMe(target, source) end

---@overload fun()
---@param target Entity
function IsConcentrating(target) end

---@overload fun()
---@param target Entity
function IsMoving(target) end

---@overload fun()
---@param target Entity
function WearingArmor(target) end

---@overload fun(attribute:string)
---@param attribute string
---@param target Entity
function HasAttribute(attribute, target) end

---@overload fun()
---@param target Entity
function Grounded(target) end

---@param flag DamageFlags
function HasDamageEffectFlag(flag) end

---@overload fun(passiveName:string)
---@param passiveName string
---@param target Entity
function HasPassive(passiveName, target) end

---@param spellId string
function SpellId(spellId) end

---@param spellId string
function IsSpellChildOrVariantFromContext(spellId) end

---@param statusId string
function StatusId(statusId) end

---@param status string
---@param statusGroup string
function StatusHasStatusGroup(status, statusGroup) end

---@overload fun()
---@param target Entity
function IsDowned(target) end

---@param removeCause StatusRemoveCause
function RemoveCause(removeCause) end

---@overload fun(instrumentType:InstrumentType)
---@param instrumentType InstrumentType
---@param target Entity
function HasInstrumentTypeEquipped(instrumentType, target) end

---@overload fun()
---@param target Entity
function IsProxy(target) end

---@overload fun()
---@overload fun(offHand:bool)
---@param offHand bool
---@param target Entity
function CanDisarmWieldingWeapon(offHand, target) end

---@overload fun()
---@overload fun(source:Entity)
---@param source Entity
---@param weapon Entity
function IsProficientWith(source, weapon) end

---@overload fun()
---@overload fun(source:Entity)
---@overload fun(source:Entity, checkRanged:bool)
---@param source Entity
---@param checkRanged bool
---@param checkOffHand bool
function IsProficientWithEquippedWeapon(source, checkRanged, checkOffHand) end

---@overload fun()
---@param target Entity
function Dead(target) end

---@overload fun(flags:SpellFlags)
---@param flags SpellFlags
---@param source Entity
function HasSpellFlag(flags, source) end

---@overload fun(level:int)
---@param level int
---@param source Entity
function IsSpellLevel(level, source) end

---@overload fun()
---@param target Entity
function IsEquipped(target) end

---@overload fun()
---@param target Entity
function IsWeapon(target) end

---@overload fun()
---@param target Entity
function IsImprovisedWeapon(target) end

---@overload fun(slot:EquipmentSlot)
---@param slot EquipmentSlot
---@param target Entity
function EquipmentSlotIs(slot, target) end

---@overload fun(healingType:HealingType)
---@param healingType HealingType
---@param target Entity
function CanRegainHP(healingType, target) end

---@overload fun()
---@param target Entity
function HasVerbalComponentBlocked(target) end

---@overload fun()
---@param target Entity
function HasSpellCastBlocked(target) end

---@overload fun()
---@overload fun(source:Entity)
---@param source Entity
---@param target Entity
function CanSee(source, target) end

---@overload fun(passive:Entity, item:Entity)
---@param passive Entity
---@param item Entity
---@param source Entity
function IsPassiveSource(passive, item, source) end

---@overload fun(passive:Entity, item:Entity)
---@param passive Entity
---@param item Entity
---@param owner Entity
function IsPassiveOwner(passive, item, owner) end

---@overload fun(spell:string)
---@param spell string
---@param target Entity
function IsSpellAvailableFromClass(spell, target) end

---@overload fun()
---@param target Entity
function IsItemDisabled(target) end

---@overload fun()
---@param target Entity
function IsInActiveWeaponSet(target) end

---@param damageType DamageType
function SpellDamageTypeIs(damageType) end

---@param category SpellCategory
function SpellCategoryIs(category) end

---@param type SpellType
function SpellTypeIs(type) end

---@param school SpellSchool
function IsSpellOfSchool(school) end

---@overload fun(searchString:string)
---@param searchString string
---@param checkMetaConditions bool
function HasStringInSpellRoll(searchString, checkMetaConditions) end

---@overload fun(searchString:string)
---@param searchString string
---@param checkMetaConditions bool
function HasStringInFunctorConditions(searchString, checkMetaConditions) end

---@overload fun(searchString:string)
---@param searchString string
---@param checkMetaConditions bool
function HasStringInSpellConditions(searchString, checkMetaConditions) end

function HasAoEConditions() end

function HasExtendableStatus() end

---@overload fun(useCostDesc:string)
---@overload fun(useCostDesc:string, applyModifications:bool)
---@param useCostDesc string
---@param applyModifications bool
---@param source Entity
function HasUseCosts(useCostDesc, applyModifications, source) end

---@overload fun(type:StatsFunctorType)
---@param type StatsFunctorType
---@param minDuration float
function HasDuration(type, minDuration) end

---@param type StatsFunctorType
function HasFunctor(type) end

---@param statusId string
function PassiveHasStatus(statusId) end

---@param statusId string
function SpellHasStatus(statusId) end

function IsAnInstrumentRequired() end

---@overload fun()
---@param target Entity
function TurnBased(target) end

---@overload fun()
---@param target Entity
function Player(target) end

---@overload fun(tag:string)
---@param tag string
---@param target Entity
function Tagged(tag, target) end

---@overload fun(tagList:table)
---@param tagList table
---@param target Entity
function HasAnyTags(tagList, target) end

---@overload fun(tagList:table)
---@param tagList table
---@param target Entity
function HasNoTags(tagList, target) end

---@overload fun()
---@param target Entity
function Party(target) end

---@overload fun()
---@param target Entity
function Summon(target) end

---@overload fun()
---@overload fun(target:Entity)
---@param target Entity
---@param position Vector3
function IsInSightPyramid(target, position) end

---@overload fun()
---@param target Entity
function FreshCorpse(target) end

---@overload fun(status:string)
---@overload fun(status:string, target:Entity)
---@param status string
---@param target Entity
---@param source Entity
function IsImmuneToStatus(status, target, source) end

---@overload fun()
---@param target Entity
function ActedThisRoundInCombat(target) end

---@overload fun()
---@param target Entity
function HadTurnInCombat(target) end

---@overload fun()
---@param target Entity
function IsSupply(target) end

---@overload fun()
---@param target Entity
function IsStoryItem(target) end

---@param modifierGuid string
---@param value any
function CheckRulesetModifier(modifierGuid, value) end

---@overload fun()
---@param target Entity
function HasAnySpells(target) end

---@overload fun()
---@overload fun(source:Entity)
---@overload fun(source:Entity, target:Entity)
---@param source Entity
---@param target Entity
---@param isMainHand bool
function GetAttackAdvantage(source, target, isMainHand) end

---@overload fun()
---@param target Entity
function GetActiveArmor(target) end

---@param from Vector3
---@param to Vector3
function Distance(from, to) end

---@param from Vector3
---@param target Entity
function DistanceToEntityHitBounds(from, target) end

---@overload fun()
---@param target Entity
function GetEquipmentSlot(target) end

---@overload fun(slot:string)
---@param slot string
---@param target Entity
function GetItemInEquipmentSlot(slot, target) end

---@overload fun()
---@param target Entity
function GetAttackWeapon(target) end

---@overload fun()
---@overload fun(source:Entity)
---@param source Entity
---@param isMainHand bool
function GetActiveWeapon(source, isMainHand) end

---@overload fun(ability:Ability)
---@param ability Ability
---@param source Entity
function CalculateSpellDC(ability, source) end

---@overload fun()
---@param source Entity
function CalculateManeuverSaveDC(source) end

---@overload fun()
---@overload fun(source:Entity)
---@param source Entity
---@param topOwner bool
function GetSummoner(source, topOwner) end

---@overload fun()
---@overload fun(source:Entity)
---@param source Entity
---@param topOwner bool
function GetOwner(source, topOwner) end

---@overload fun()
---@overload fun(caster:Entity)
---@param caster Entity
---@param weapon Entity
function GetSpellTargetRadius(caster, weapon) end

---@overload fun()
---@param caster Entity
function GetSpellAreaRadius(caster) end

---@overload fun(statusId:string)
---@param statusId string
---@param target Entity
function GetStatusDuration(statusId, target) end

---@param diceAmount int
---@param diceType DiceType
---@param additionalValue int
function Roll( diceAmount, diceType, additionalValue) end

---@overload fun(attackType:AttackType)
---@overload fun(attackType:AttackType, advantage:bool)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool)
--- for chance calc: source first
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, source:Entity)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, source:Entity, sourcePosition:Vector3)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, source:Entity, sourcePosition:Vector3, target:Entity)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, source:Entity, sourcePosition:Vector3, target:Entity, targetPosition:Vector3)
--- for condition checks: target first
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, target:Entity)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, target:Entity, targetPosition:Vector3)
---@overload fun(attackType:AttackType, advantage:bool, disadvantage:bool, target:Entity, targetPosition:Vector3, source:Entity)
---@param attackType AttackType
---@param advantage bool
---@param disadvantage bool
---@param target Entity
---@param targetPosition Vector3
---@param source Entity
---@param sourcePosition Vector3
function Attack(attackType, advantage, disadvantage, target, targetPosition, source, sourcePosition) end

---@overload fun(ability:Ability, dcOptions:int_or_RollOptions)
---@overload fun(ability:Ability, dcOptions:int_or_RollOptions, advantage:bool)
---@overload fun(ability:Ability, dcOptions:int_or_RollOptions, advantage:bool, disadvantage:bool)
---@param ability Ability
---@param dcOptions int_or_RollOptions
---@param advantage bool
---@param disadvantage bool
---@param target Entity
function SavingThrow(ability, dcOptions, advantage, disadvantage, target) end

---@overload fun(skill:Skill, dcOptions:int_or_RollOptions)
---@overload fun(skill:Skill, dcOptions:int_or_RollOptions, advantage:bool)
---@overload fun(skill:Skill, dcOptions:int_or_RollOptions, advantage:bool, disadvantage:bool)
---@overload fun(skill:Skill, dcOptions:int_or_RollOptions, advantage:bool, disadvantage:bool, target:Entity)
---@param skill Skill
---@param dcOptions int_or_RollOptions
---@param advantage bool
---@param disadvantage bool
---@param target Entity
---@param source Entity
function SkillCheck(skill, dcOptions, advantage, disadvantage, target, source) end

---@overload fun(skill:Skill, dc:int)
---@overload fun(skill:Skill, dc:int, advantage:bool)
---@overload fun(skill:Skill, dc:int, advantage:bool, disadvantage:bool)
---@overload fun(skill:Skill, dc:int, advantage:bool, disadvantage:bool, additionalValue:int)
---@overload fun(skill:Skill, dc:int, advantage:bool, disadvantage:bool, additionalValue:int, target:Entity)
---@param skill Skill
---@param dc int
---@param advantage bool
---@param disadvantage bool
---@param additionalValue int
---@param target Entity
---@param source Entity
function AbilityCheck(skill, dc, advantage, disadvantage, additionalValue, target, source) end

---@param ignoreFlags string
function CanShortRest(ignoreFlags) end

---@overload fun()
---@param target Entity
function GetTadpolePowersNumber(target) end

---@overload fun(power:string)
---@param power string
---@param target Entity
function HasTadpolePower(power, target) end

---@overload fun(permanentlyHostile:bool)
---@param permanentlyHostile bool
---@param target Entity
function IsInCombatWithHostilePartyMember(permanentlyHostile, target) end

---@overload fun()
---@param target Entity
function CrowdCharacter(target) end

---@param target Entity
---@param source Entity
function AreInSameCombat(target, source) end

---@overload fun(attribute:string)
---@param attribute string
---@param target Entity
function HasEquipmentWithAttribute(attribute, target) end

---@overload fun()
---@param target Entity
function IsCurrentTurnInCombat(target) end

function GetPreferredCastingAbility() end

function HasContextFlag(context) end

---@overload fun(target:Entity)
---@param target Entity
---@param source Entity
function Ally(target, source) end

---@overload fun(target:Entity)
---@param target Entity
---@param source Entity
function Enemy(target, source) end

---@overload fun()
---@param target Entity
function Character(target) end

---@overload fun()
---@param target Entity
function Item(target) end

---@overload fun()
---@overload fun(target:Entity)
---@param target Entity
---@param source Entity
function SummonOwner(target, source) end

function InSurface(gridStateStr, target, checkProxies) end

function Surface(gridStateStr, position, source) end

function CanTransformSurface(transformType, targetPosition, source) end

function HasStatus(status, target, source, ignoreDeletingStatuses) end

function HasAnyStatus(hasAnyStatuses, hasAllStatuses, hasNoneStatuses, target, source, ignoreDeletingStatuses) end

function CanPickup(target) end

function CanStand(templateId, position, source) end

function Immobilized(target) end

function Race(race, getOriginalRace, target) end

function IsInSunlight(target, checkClouds, checkGround) end

function CanMove(target, source, checkStack) end

function IsMovable(target) end

function IsUnimportant(target) end

function HasObscuredState(obscuredState, target) end

function HasObscuredStateAtPosition(obscuredState, position) end

function GetAlliesWithinRange(distance, target, source) end

function GetEnemiesWithinRange(distance, target, source) end

function GetItemsInInventory(target) end

function GetLiftingWeight(target, checkStacks) end

function ConditionResult(result) end
