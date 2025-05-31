---@meta
---@diagnostic disable

--#region Types

--Base Types
---@alias INTEGER64 integer
---@alias GUIDSTRING string

--Alias Types

--Custom Aliases (not generated with story_header.div)

---@alias EQUIPMENTSLOTNAME "Amulet"|"Boots"|"Breast"|"Cloak"|"Gloves"|"Helmet"|"Melee Main Weapon"|"Melee Offhand Weapon"|"Ranged Main Weapon"|"Ranged Offhand Weapon"|"Ring"|"Ring2"|"Underwear"|"VanityBody"|"VanityBoots"

---@alias CHARACTER GUIDSTRING
---@alias ITEM GUIDSTRING
---@alias TRIGGER GUIDSTRING
---@alias SPLINE GUIDSTRING
---@alias LEVELTEMPLATE GUIDSTRING
---@alias DIALOGRESOURCE GUIDSTRING
---@alias EFFECTRESOURCE GUIDSTRING
---@alias VOICEBARKRESOURCE GUIDSTRING
---@alias ANIMATION GUIDSTRING
---@alias TAG GUIDSTRING
---@alias FLAG GUIDSTRING
---@alias FACTION GUIDSTRING
---@alias TIMELINERESOURCE GUIDSTRING
---@alias ROOT GUIDSTRING
---@alias CHARACTERROOT ROOT
---@alias ITEMROOT ROOT
---@alias PLATFORM GUIDSTRING
---@alias DISTURBANCEPROPERTY GUIDSTRING
---@alias SHAPESHIFTRULE GUIDSTRING
---@alias DIFFICULTYCLASS GUIDSTRING
---@alias GOLDREWARD GUIDSTRING
---@alias TUTORIALEVENT GUIDSTRING
---@alias DLC GUIDSTRING
---@alias RULESETMODIFIER GUIDSTRING
---@alias UNIFIEDTUTORIAL GUIDSTRING

--Enum Types
---@alias DEATHTYPE
---| `0` # None
---| `1` # Acid
---| `2` # Chasm
---| `3` # DoT
---| `4` # Electrocution
---| `5` # Explode
---| `6` # Falling
---| `7` # Incinerate
---| `8` # KnockedDown
---| `9` # Lifetime
---| `10` # Necrotic
---| `11` # Physical
---| `12` # Psychic
---| `13` # Radiant
---| `14` # CinematicDeath
---| `15` # Cold
---| `16` # Disintegrate

---@alias GRAVITYTYPE
---| `0` # Enabled
---| `1` # Disabled
---| `2` # DisabledUntilMove

---@alias LQUANT
---| `0` # ANY
---| `1` # ALL

---@alias TAGCATEGORY
---| `0` # Undefined
---| `1` # Code
---| `2` # Dialog
---| `3` # Origin
---| `4` # Identity
---| `5` # Profession
---| `6` # Race
---| `7` # Race_Meta
---| `8` # Story
---| `9` # Voice
---| `10` # Background
---| `11` # Class
---| `12` # DialogHidden
---| `13` # Deity
---| `14` # Class_Deity
---| `15` # PlayerRace
---| `16` # CharacterSheet
---| `17` # SpellCondition

---@alias ARMOURSET
---| `0` # Normal
---| `1` # Vanity

---@alias CROWDBEHAVIOUR
---| `0` # Cower
---| `1` # Disperse
---| `2` # Flee

---@alias SPLATTERTYPE
---| `1` # Blood
---| `2` # Bruise
---| `4` # Dirt
---| `8` # Sweat

---@alias QUANTITY
---| `0` # NONE
---| `1` # BARELY
---| `2` # SOME
---| `3` # HALF
---| `4` # LOTS
---| `5` # MOST
---| `6` # ALL

---@alias TRADABLETYPE
---| `0` # Default
---| `1` # Tradable
---| `2` # NonTradable

---@alias EQUIPMENTSLOT
---| `0` # Helmet
---| `1` # Breast
---| `2` # Cloak
---| `3` # MeleeMainHand
---| `4` # MeleeOffHand
---| `5` # RangedMainHand
---| `6` # RangedOffHand
---| `7` # Ring
---| `8` # Underwear
---| `9` # Boots
---| `10` # Gloves
---| `11` # Amulet
---| `12` # Ring2
---| `13` # Wings
---| `14` # Horns
---| `15` # Overhead
---| `16` # MusicalInstrument
---| `17` # VanityBody
---| `18` # VanityBoots

---@alias UNSHEATHSTATE
---| `0` # Instrument
---| `1` # Melee
---| `2` # Ranged
---| `3` # Sheathed

---@alias CRITICALITYTYPE
---| `0` # None
---| `1` # Success
---| `2` # Fail

---@alias TRADEMODE
---| `0` # Barter
---| `3` # Trade
---| `2` # Donate
---| `1` # Default

---@alias JOINBLOCKTYPE
---| `0` # None
---| `1` # BlockNew
---| `2` # BlockAll

--#endregion

if Osi == nil then Osi = {} end

--#region Queries

---@param difficulty string
---@param level integer
---@return integer abilityValue
function Osi.AbilityGetDifficultyLevelMappedValue(difficulty, level) end

---@param object GUIDSTRING
---@return integer anubisEnabled
function Osi.AnubisGetIsEnabled(object) end

---@param target GUIDSTRING
---@param targetSkill string
---@return integer skillValue
function Osi.CalculatePassiveSkill(target, targetSkill) end

---@return integer longRestIsAllowed
function Osi.CanAllPartiesLongRest() end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanBePickpocketed(entity) end

---@param character CHARACTER
---@param spellID string
---@return CHARACTER target
function Osi.CanCastSpellOnEnemyInSameCombat(character, spellID) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanFight(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.CanJoinCombat(entity) end

---@param character CHARACTER
---@param item ITEM
---@param validateGoldCost integer
---@return integer bool
function Osi.CanLearnSpell(character, item, validateGoldCost) end

---@param character CHARACTER
---@return integer bool
function Osi.CanMove(character) end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.CanSee(source, target) end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.CanSeeCached(source, target) end

---@param character CHARACTER
---@param spellID string
---@return integer bool
function Osi.CanShowSpellForCharacter(character, spellID) end

---@param item ITEM
---@return integer bool
function Osi.CanSitOn(item) end

---@param character CHARACTER
---@return integer bool
function Osi.CanSpotSneakers(character) end

---@param trader CHARACTER
---@return integer bool
function Osi.CanTrade(trader) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@param type integer
---@param delta integer
---@return integer bool
function Osi.ChangeApprovalRating(ratingOwner, ratedCharacter, type, delta) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterCanIgnoreActiveCrimes(character) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterCanSpotCrimes(character) end

---@param character CHARACTER
---@return integer instanceID
function Osi.CharacterGetCrimeDialog(character) end

---@param character CHARACTER
---@return string region
function Osi.CharacterGetCrimeRegion(character) end

---@param character CHARACTER
---@return CHARACTER owner
function Osi.CharacterGetOwner(character) end

---@param character CHARACTER
---@param dlc DLC
---@return integer hasDLC
function Osi.CharacterHasDLC(character, dlc) end

---@param character CHARACTER
---@return integer bool
function Osi.CharacterIgnoreActiveCrimes(character) end

---@param character CHARACTER
---@param crime string
---@return integer bool
function Osi.CharacterIsCrimeEnabled(character, crime) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
---@param victim CHARACTER
---@param crimeID integer
---@return integer success
function Osi.CharacterRegisterCrime(player, crimeType, evidence, victim, crimeID) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
---@param victim CHARACTER
---@param x number
---@param y number
---@param z number
---@param crimeID integer
---@return integer success
function Osi.CharacterRegisterCrimeWithPosition(player, crimeType, evidence, victim, x, y, z, crimeID) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.CharacterRemoveTaggedItems(character, tags, amount) end

---@param itemTemplate CHARACTERROOT
---@param trigger TRIGGER
---@return integer count
function Osi.CharacterTemplatesInTrigger(itemTemplate, trigger) end

---@param modifier RULESETMODIFIER
---@param value integer
---@return integer result
function Osi.CheckRulesetModifierBool(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value number
---@return integer result
function Osi.CheckRulesetModifierFloat(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value integer
---@return integer result
function Osi.CheckRulesetModifierInt(modifier, value) end

---@param modifier RULESETMODIFIER
---@param value string
---@return integer result
function Osi.CheckRulesetModifierString(modifier, value) end

---@param combatGuid GUIDSTRING
---@return GUIDSTRING currentEntity
function Osi.CombatGetActiveEntity(combatGuid) end

---@param object GUIDSTRING
---@return GUIDSTRING combatGuid
function Osi.CombatGetGuidFor(object) end

---@param combatGuid GUIDSTRING
---@param partyMemberIndex integer
---@return CHARACTER partyMember
function Osi.CombatGetInvolvedPartyMember(combatGuid, partyMemberIndex) end

---@param combatGuid GUIDSTRING
---@return integer numPartyMembers
function Osi.CombatGetInvolvedPartyMembersCount(combatGuid) end

---@param combatGuid GUIDSTRING
---@param playerIndex integer
---@return CHARACTER player
function Osi.CombatGetInvolvedPlayer(combatGuid, playerIndex) end

---@param combatGuid GUIDSTRING
---@return integer numPlayers
function Osi.CombatGetInvolvedPlayersCount(combatGuid) end

---@param combatGuid GUIDSTRING
---@return integer active
function Osi.CombatIsActive(combatGuid) end

---@param stringA string
---@param stringB string
---@return string result
function Osi.Concatenate(stringA, stringB) end

---@param string string
---@param guidString GUIDSTRING
---@return string result
function Osi.ConcatenateGUID(string, guidString) end

---@param string string
---@param number integer
---@return string result
function Osi.ConcatenateInteger(string, number) end

---@param stringA string
---@param stringB string
---@return string result
function Osi.ConcatenateNewLine(stringA, stringB) end

---@param string string
---@param number number
---@return string result
function Osi.ConcatenateReal(string, number) end

---@param templateId GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateAt(templateId, x, y, z, temporary, playSpawn, spawnFinishEvent) end

---@param templateId GUIDSTRING
---@param anchor GUIDSTRING
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@param matchOrientation integer
---@return GUIDSTRING createdObject
function Osi.CreateAtObject(templateId, anchor, temporary, playSpawn, spawnFinishEvent, matchOrientation) end

---@return GUIDSTRING combatGuid
function Osi.CreateNarrativeCombat() end

---@param templateId GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param directionAngle integer
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateOutOfSightAtDirection(templateId, x, y, z, directionAngle, temporary, playSpawn, spawnFinishEvent) end

---@param templateId GUIDSTRING
---@param anchorObject GUIDSTRING
---@param directionFrom GUIDSTRING
---@param temporary integer
---@param playSpawn integer
---@param spawnFinishEvent string
---@return GUIDSTRING createdObject
function Osi.CreateOutOfSightAtDirectionFromObject(templateId, anchorObject, directionFrom, temporary, playSpawn, spawnFinishEvent) end

---@param crimeID integer
---@param criminal GUIDSTRING
---@return integer bool
function Osi.CrimeAddCriminal(crimeID, criminal) end

---@param crimeID integer
---@param evidence GUIDSTRING
---@return integer bool
function Osi.CrimeAddEvidence(crimeID, evidence) end

---@param crimeID integer
---@param evidence ITEM
---@param evidenceTemplate GUIDSTRING
---@param originalOwner CHARACTER
---@param amount integer
---@param totalGoldValue integer
---@return integer bool
function Osi.CrimeAddItemEvidence(crimeID, evidence, evidenceTemplate, originalOwner, amount, totalGoldValue) end

---@param crimeArea TRIGGER
---@return integer modifier
function Osi.CrimeAreaGetTensionModifier(crimeArea) end

---@param crimeID integer
---@param searcher CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
---@return integer someEvidenceFoundForCurrentCrime
---@return integer foundAllEvidenceForCurrentCrime
---@return integer guiltyFound
function Osi.CrimeFindEvidence(crimeID, searcher, criminal1, criminal2, criminal3, criminal4) end

---@param crimeID integer
---@param criminalIndex integer
---@return CHARACTER criminal
function Osi.CrimeGetCriminal(crimeID, criminalIndex) end

---@param crimeID integer
---@return CHARACTER criminal1
---@return CHARACTER criminal2
---@return CHARACTER criminal3
---@return CHARACTER criminal4
function Osi.CrimeGetCriminals(crimeID) end

---@param crimeID integer
---@return integer criminalsCount
function Osi.CrimeGetCriminalsCount(crimeID) end

---@param crimeID integer
---@return number range
function Osi.CrimeGetDetectionRange(crimeID) end

---@param crimeID integer
---@param index integer
---@return GUIDSTRING evidence
function Osi.CrimeGetEvidence(crimeID, index) end

---@param crimeID integer
---@return integer goldValue
function Osi.CrimeGetEvidenceValue(crimeID) end

---@param crimeID integer
---@param interrogator CHARACTER
---@return DIALOGRESOURCE interrogationDialog
function Osi.CrimeGetInterrogationDialog(crimeID, interrogator) end

---@param crimeID integer
---@return CHARACTER leadInvestigator
function Osi.CrimeGetLeadInvestigator(crimeID) end

---@return integer crimeID
function Osi.CrimeGetNewID() end

---@param crimeID integer
---@return integer numEvidence
function Osi.CrimeGetNumberOfEvidence(crimeID) end

---@param crimeID integer
---@return integer tension
function Osi.CrimeGetTension(crimeID) end

---@param crimeID integer
---@return string type
function Osi.CrimeGetType(crimeID) end

---@param crimeID integer
---@return CHARACTER crimeVictim
function Osi.CrimeGetVictim(crimeID) end

---@param crimeID integer
---@param evidence GUIDSTRING
---@return integer hasEvidence
function Osi.CrimeHasEvidence(crimeID, evidence) end

---@param crimeID integer
---@param disturbanceProperty DISTURBANCEPROPERTY
---@return integer hasProperty
function Osi.CrimeHasProperty(crimeID, disturbanceProperty) end

---@param crime integer
---@param criminal CHARACTER
---@return integer bool
function Osi.CrimeIgnoreCriminal(crime, criminal) end

---@param crimeID integer
---@param investigator CHARACTER
---@param suspect CHARACTER
---@return integer startInterrogation
---@return integer sucess
function Osi.CrimeInvestigatorConfrontSuspect(crimeID, investigator, suspect) end

---@param crimeID integer
---@param investigator CHARACTER
---@param ignoreCantTalk integer
---@return integer success
function Osi.CrimeInvestigatorEnterInterrogationState(crimeID, investigator, ignoreCantTalk) end

---@param crimeID integer
---@return integer bool
function Osi.CrimeIsContinuous(crimeID) end

---@param crimeID integer
---@return integer isSuspended
function Osi.CrimeIsSuspended(crimeID) end

---@param character CHARACTER
---@return integer bool
function Osi.CrimeIsTensionOverWarningTreshold(character) end

---@param crime integer
---@param criminal CHARACTER
---@return integer bool
function Osi.CrimeStopIgnoringCriminal(crime, criminal) end

---@param oldLead GUIDSTRING
---@param crimeID integer
---@param newLead GUIDSTRING
---@return integer bool
function Osi.CrimeTransferLeadershipTo(oldLead, crimeID, newLead) end

---@param crimeType string
---@return integer tension
function Osi.CrimeTypeGetTension(crimeType) end

---@param disturbanceType string
---@param disturbanceProperty DISTURBANCEPROPERTY
---@return integer hasProperty
function Osi.CrimeTypeHasProperty(disturbanceType, disturbanceProperty) end

---@param origin CHARACTER
---@param index integer
---@return TAG backgroundTag
function Osi.DataGetBackgroundTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetBackgroundTagCount(origin) end

---@param origin CHARACTER
---@param index integer
---@return TAG godTag
function Osi.DataGetGodTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetGodTagCount(origin) end

---@param type GOLDREWARD
---@param level integer
---@return integer value
function Osi.DataGetGoldValue(type, level) end

---@param origin CHARACTER
---@param index integer
---@return TAG reallyTag
function Osi.DataGetReallyTagAt(origin, index) end

---@param origin CHARACTER
---@return integer count
function Osi.DataGetReallyTagCount(origin) end

---@param dialog DIALOGRESOURCE
---@return integer allowDeadSpeakers
function Osi.DialogAllowDeadSpeakers(dialog) end

---@param instanceID integer
---@param actor GUIDSTRING
---@return integer speakerSlot
function Osi.DialogFindReservedSpeakerSlot(instanceID, actor) end

---@param instanceID integer
---@return string category
function Osi.DialogGetCategory(instanceID) end

---@param instanceID integer
---@param index integer
---@return GUIDSTRING npc
function Osi.DialogGetInvolvedNPC(instanceID, index) end

---@param instanceID integer
---@param index integer
---@return GUIDSTRING player
function Osi.DialogGetInvolvedPlayer(instanceID, index) end

---@param instanceID integer
---@return integer numberOfNPCs
function Osi.DialogGetNumberOfInvolvedNPCs(instanceID) end

---@param instanceID integer
---@return integer count
function Osi.DialogGetNumberOfInvolvedPlayers(instanceID) end

---@param dialog DIALOGRESOURCE
---@return integer isAllowingJoinCombat
function Osi.DialogIsAllowingJoinCombat(dialog) end

---@param dialog DIALOGRESOURCE
---@return integer isAutomated
function Osi.DialogIsAutomated(dialog) end

---@param instanceID integer
---@return integer isCrimeDialog
function Osi.DialogIsCrimeDialog(instanceID) end

---@param instanceID integer
---@param actor GUIDSTRING
---@return integer success
function Osi.DialogRemoveActorFromDialog(instanceID, actor) end

---@param dialog DIALOGRESOURCE
---@param speakerSlot integer
---@return integer hasLines
function Osi.DialogSpeakerHasLines(dialog, speakerSlot) end

---@param crimeID integer
---@param dialog DIALOGRESOURCE
---@param npc GUIDSTRING
---@param criminal1 GUIDSTRING
---@param criminal2 GUIDSTRING
---@param criminal3 GUIDSTRING
---@param criminal4 GUIDSTRING
---@return integer success
---@return integer dialogInstance
function Osi.DialogStartCrimeDialog(crimeID, dialog, npc, criminal1, criminal2, criminal3, criminal4) end

---@param ownerObject GUIDSTRING
---@param followObject GUIDSTRING
---@param surfaceType string
---@param radius number
---@param lifeTime number
---@return INTEGER64 surfaceActionHandle
function Osi.DrawSurfaceOnPath(ownerObject, followObject, surfaceType, radius, lifeTime) end

---@param object GUIDSTRING
---@return integer bool
function Osi.Exists(object) end

---@param faction FACTION
---@param parentNumber integer
---@return FACTION parentFaction
function Osi.FactionGetParentFaction(faction, parentNumber) end

---@param faction FACTION
---@param howMany LQUANT
---@param tag TAG
---@return integer bool
function Osi.FactionIsTagged(faction, howMany, tag) end

---@param trigger TRIGGER
---@return DIALOGRESOURCE dialog
---@return string type
function Osi.FindGossipCamp(trigger) end

---@param character CHARACTER
---@return DIALOGRESOURCE dialog
---@return string type
function Osi.FindGossipWorld(character) end

---@param sourceX number
---@param sourceY number
---@param sourceZ number
---@param radius number
---@param object GUIDSTRING
---@param avoidDangerousSurfaces integer
---@return number validPositionX
---@return number validPositionY
---@return number validPositionZ
function Osi.FindValidPosition(sourceX, sourceY, sourceZ, radius, object, avoidDangerousSurfaces) end

---@param guidString GUIDSTRING
---@return string result
function Osi.GUIDToString(guidString) end

---@param character CHARACTER
---@param attribute string
---@return integer value
function Osi.GetAbility(character, attribute) end

---@param player CHARACTER
---@param resourceName string
---@param resourceLevel integer
---@return number amount
function Osi.GetActionResourceValuePersonal(player, resourceName, resourceLevel) end

---@param target GUIDSTRING
---@return string archetype
function Osi.GetActiveArchetype(target) end

---@return string levelName
function Osi.GetActiveModStartupLevel() end

---@param target GUIDSTRING
---@return TAG aiHint
function Osi.GetAiHint(target) end

---@param dirFromX number
---@param dirFromZ number
---@param dirToX number
---@param dirToZ number
---@return integer angleDeg
function Osi.GetAngleXToDirection(dirFromX, dirFromZ, dirToX, dirToZ) end

---@param object GUIDSTRING
---@return string anubisConfig
function Osi.GetAnubisConfig(object) end

---@param entity GUIDSTRING
---@param splatterType SPLATTERTYPE
---@return QUANTITY splatterLevel
function Osi.GetAppliedSplatterLevel(entity, splatterType) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@return integer rating
function Osi.GetApprovalRating(ratingOwner, ratedCharacter) end

---@param character CHARACTER
---@return ARMOURSET eArmorSet
function Osi.GetArmourSet(character) end

---@param character CHARACTER
---@param player CHARACTER
---@return integer attitude
function Osi.GetAttitudeTowardsPlayer(character, player) end

---@param target GUIDSTRING
---@return string archetype
function Osi.GetBaseArchetype(target) end

---@param target GUIDSTRING
---@return FACTION faction
function Osi.GetBaseFaction(target) end

---@param item ITEM
---@return string damageType
function Osi.GetBaseWeaponDamageType(item) end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string bodyType
function Osi.GetBodyType(character, allowShapeshiftOverride) end

---@param item ITEM
---@return string bookID
function Osi.GetBookID(item) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return GUIDSTRING entity
function Osi.GetByTagInInventory(tags, inventoryHolder) end

---@param item ITEM
---@return integer bool
function Osi.GetCanInteract(item) end

---@param item ITEM
---@return integer bool
function Osi.GetCanPickUp(item) end

---@param target GUIDSTRING
---@return CHARACTER player
---@return number distance
function Osi.GetClosestAlivePlayer(target) end

---@param target GUIDSTRING
---@param userID integer
---@return CHARACTER player
---@return number distance
function Osi.GetClosestAliveUserPlayer(target, userID) end

---@param target GUIDSTRING
---@return CHARACTER player
---@return number distance
function Osi.GetClosestPlayer(target) end

---@param x number
---@param y number
---@param z number
---@return CHARACTER player
---@return number distance
function Osi.GetClosestPlayerToPosition(x, y, z) end

---@param target GUIDSTRING
---@return string groupID
function Osi.GetCombatGroupID(target) end

---@param user integer
---@return CHARACTER character
function Osi.GetCurrentCharacter(user) end

---@param character CHARACTER
---@return string deathType
function Osi.GetDeathType(character) end

---@return CHARACTER character
function Osi.GetDebugCharacter() end

---@param index integer
---@return string template
function Osi.GetDebugItem(index) end

---@param character CHARACTER
---@return DIALOGRESOURCE dialog
function Osi.GetDefaultDialog(character) end

---@param target CHARACTER
---@return string equipmentSet
function Osi.GetDefaultEquipmentSet(target) end

---@param character CHARACTER
---@return string state
function Osi.GetDefaultState(character) end

---@param object GUIDSTRING
---@return GUIDSTRING directInventoryHolder
function Osi.GetDirectInventoryOwner(object) end

---@param item ITEM
---@return integer bool
function Osi.GetDisableUse(item) end

---@param target GUIDSTRING
---@return string translatedStringKey
function Osi.GetDisplayName(target) end

---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@return number dist
function Osi.GetDistanceTo(object1, object2) end

---@param object GUIDSTRING
---@param x number
---@param y number
---@param z number
---@return number dist
function Osi.GetDistanceToPosition(object, x, y, z) end

---@return number enterCombatRange
function Osi.GetEnterCombatRange() end

---@param item ITEM
---@return EQUIPMENTSLOT preferredSlot
function Osi.GetEquipmentSlotForItem(item) end

---@param character CHARACTER
---@param slotName EQUIPMENTSLOTNAME
---@return ITEM item
function Osi.GetEquippedItem(character, slotName) end

---@param character CHARACTER
---@return ITEM item
function Osi.GetEquippedShield(character) end

---@param character CHARACTER
---@return ITEM item
function Osi.GetEquippedWeapon(character) end

---@param target GUIDSTRING
---@return FACTION faction
function Osi.GetFaction(target) end

---@param object GUIDSTRING
---@return GUIDSTRING firstInventoryCharacterHolder
function Osi.GetFirstInventoryOwnerCharacter(object) end

---@param flag FLAG
---@param object GUIDSTRING
---@return integer flagState
function Osi.GetFlag(flag, object) end

---@param flag FLAG
---@return string flagDescription
function Osi.GetFlagDescription(flag) end

---@param flag FLAG
---@return string flagName
function Osi.GetFlagName(flag) end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string gender
function Osi.GetGender(character, allowShapeshiftOverride) end

---@return number modifier
function Osi.GetGlobalPriceModifier() end

---@param inventoryHolder GUIDSTRING
---@return integer amount
function Osi.GetGold(inventoryHolder) end

---@param source GUIDSTRING
---@return integer amount
function Osi.GetGoldInMagicPockets(source) end

---@param dialog DIALOGRESOURCE
---@param index integer
---@return CHARACTER speaker
function Osi.GetGossipSpeaker(dialog, index) end

---@param character CHARACTER
---@return integer crimeID
function Osi.GetHandlingCrimeID(character) end

---@param character CHARACTER
---@return integer hasDefaultDialog
function Osi.GetHasDefaultDialog(character) end

---@param speaker GUIDSTRING
---@return integer hasOsirisDialog
function Osi.GetHasOsirisDialog(speaker) end

---@param proxyObject GUIDSTRING
---@return GUIDSTRING ownerObject
function Osi.GetHitProxyOwner(proxyObject) end

---@param entity GUIDSTRING
---@return integer hp
function Osi.GetHitpoints(entity) end

---@param entity GUIDSTRING
---@return number percentage
function Osi.GetHitpointsPercentage(entity) end

---@return CHARACTER character
function Osi.GetHostCharacter() end

---@param character CHARACTER
---@param allowShapeshiftOverride integer
---@return string identity
function Osi.GetIdentity(character, allowShapeshiftOverride) end

---@param entity GUIDSTRING
---@param faction FACTION
---@return integer relation
function Osi.GetIndividualRelation(entity, faction) end

---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@return number dist
function Osi.GetInnerDistanceTo(object1, object2) end

---@param object GUIDSTRING
---@param x number
---@param y number
---@param z number
---@return number dist
function Osi.GetInnerDistanceToPosition(object, x, y, z) end

---@param character CHARACTER
---@return integer interrupts
function Osi.GetInterruptCount(character) end

---@param object GUIDSTRING
---@return GUIDSTRING topLevelInventoryHolder
function Osi.GetInventoryOwner(object) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTagInInventory(tags, inventoryHolder) end

---@param tags string
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTagInPartyInventory(tags, character) end

---@param tags string
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTagInUserInventory(tags, character) end

---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTemplateInInventory(itemTemplate, inventoryHolder) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTemplateInPartyInventory(itemTemplate, character) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@return ITEM item
function Osi.GetItemByTemplateInUserInventory(itemTemplate, character) end

---@param itemTemplate ITEMROOT
---@param tags string
---@param inventoryHolder GUIDSTRING
---@return ITEM item
function Osi.GetItemByTemplateTagInInventory(itemTemplate, tags, inventoryHolder) end

---@param object GUIDSTRING
---@return integer level
function Osi.GetLevel(object) end

---@param entity GUIDSTRING
---@return integer maxHP
function Osi.GetMaxHitpoints(entity) end

---@return integer maxPartySize
function Osi.GetMaxPartySize() end

---@param item ITEM
---@return integer maxAmount
function Osi.GetMaxStackAmount(item) end

---@param name string
---@return integer major
---@return integer minor
---@return integer revision
---@return integer build
function Osi.GetModuleVersion(name) end

---@param character CHARACTER
---@return CHARACTER multiplayerCharacter
function Osi.GetMultiplayerCharacter(character) end

---@param object GUIDSTRING
---@return string obscuredState
function Osi.GetObscuredState(object) end

---@param x number
---@param y number
---@param z number
---@return string obscuredState
function Osi.GetObscuredStateAtPosition(x, y, z) end

---@param item ITEM
---@return CHARACTER character
function Osi.GetOriginalOwner(item) end

---@param item ITEM
---@return CHARACTER character
function Osi.GetOwner(item) end

---@param item ITEM
---@return PLATFORM platform
function Osi.GetParentPlatform(item) end

---@return number performGroupJoinRadius
function Osi.GetPerformGroupJoinRadius() end

---@param object GUIDSTRING
---@return PLATFORM platform
function Osi.GetPlatformUnderObject(object) end

---@param item ITEM
---@return integer bool
function Osi.GetPortalIsOpen(item) end

---@param target GUIDSTRING
---@return number x
---@return number y
---@return number z
function Osi.GetPosition(target) end

---@param player CHARACTER
---@param canPolymorphOverride integer
---@return string race
function Osi.GetRace(player, canPolymorphOverride) end

---@param object GUIDSTRING
---@return string region
function Osi.GetRegion(object) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@return integer relation
function Osi.GetRelation(sourceFaction, targetFaction) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@return integer relation
function Osi.GetRelationRaw(sourceFaction, targetFaction) end

---@param character CHARACTER
---@return integer userID
function Osi.GetReservedUserID(character) end

---@param target GUIDSTRING
---@return number xDeg
---@return number yDeg
---@return number zDeg
function Osi.GetRotation(target) end

---@param modifier RULESETMODIFIER
---@return integer value
function Osi.GetRulesetModifierBool(modifier) end

---@param modifier RULESETMODIFIER
---@return number value
function Osi.GetRulesetModifierFloat(modifier) end

---@param modifier RULESETMODIFIER
---@return integer value
function Osi.GetRulesetModifierInt(modifier) end

---@param modifier RULESETMODIFIER
---@return string value
function Osi.GetRulesetModifierString(modifier) end

---@param character CHARACTER
---@return integer state
function Osi.GetSafeRomanceOption(character) end

---@param spellSetID string
---@param spellIndex integer
---@return string spellID
function Osi.GetSpellFromSet(spellSetID, spellIndex) end

---@param item ITEM
---@return integer exactItemAmount
---@return integer totalAmount
function Osi.GetStackAmount(item) end

---@param object GUIDSTRING
---@return string statname
function Osi.GetStatString(object) end

---@param source GUIDSTRING
---@param statusID string
---@return number durationLeft
function Osi.GetStatusCurrentLifetime(source, statusID) end

---@param source GUIDSTRING
---@param statusID string
---@return integer turns
function Osi.GetStatusTurns(source, statusID) end

---@param statusID string
---@return string statusType
function Osi.GetStatusType(statusID) end

---@param target GUIDSTRING
---@return string surface
function Osi.GetSurfaceCloudAt(target) end

---@param target GUIDSTRING
---@return GUIDSTRING ownerCharacter
---@return GUIDSTRING ownerItem
function Osi.GetSurfaceCloudOwnerAt(target) end

---@param target GUIDSTRING
---@return string surface
function Osi.GetSurfaceGroundAt(target) end

---@param target GUIDSTRING
---@return CHARACTER ownerCharacter
---@return ITEM ownerItem
function Osi.GetSurfaceGroundOwnerAt(target) end

---@param surfaceIndex integer
---@return string surfaceName
function Osi.GetSurfaceNameByTypeIndex(surfaceIndex) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@return integer surfaceSize
function Osi.GetSurfaceSize(target, surfaceLayer) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@return integer surfaceTurns
function Osi.GetSurfaceTurns(target, surfaceLayer) end

---@param surface string
---@return integer index
function Osi.GetSurfaceTypeIndex(surface) end

---@param target GUIDSTRING
---@return string swarmGroup
function Osi.GetSwarmGroup(target) end

---@param character CHARACTER
---@return integer powers
function Osi.GetTadpolePowersCount(character) end

---@param item ITEM
---@return ITEM teleportTarget
function Osi.GetTeleportTarget(item) end

---@param target GUIDSTRING
---@return GUIDSTRING template
function Osi.GetTemplate(target) end

---@param number integer
---@return integer value
function Osi.GetTextEventParamInteger(number) end

---@param number integer
---@return number value
function Osi.GetTextEventParamReal(number) end

---@param number integer
---@return string value
function Osi.GetTextEventParamString(number) end

---@param number integer
---@return GUIDSTRING value
function Osi.GetTextEventParamUUID(number) end

---@param target GUIDSTRING
---@return string uuid
function Osi.GetUUID(target) end

---@param item ITEM
---@return integer bool
function Osi.GetUseRemotely(item) end

---@return integer userCount
function Osi.GetUserCount() end

---@param userId integer
---@return string userName
function Osi.GetUserName(userId) end

---@param userId integer
---@return string userProfileID
function Osi.GetUserProfileID(userId) end

---@param source GUIDSTRING
---@param varName string
---@return string varValue
function Osi.GetVarFixedString(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING varValue
function Osi.GetVarFixedStringUUID(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return number varValue
function Osi.GetVarFloat(source, varName) end

---@param target GUIDSTRING
---@param varName string
---@return number x
---@return number y
---@return number z
function Osi.GetVarFloat3(target, varName) end

---@param source GUIDSTRING
---@param varName string
---@return integer varValue
function Osi.GetVarInteger(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING uuid
function Osi.GetVarObject(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return string varValue
function Osi.GetVarString(source, varName) end

---@param source GUIDSTRING
---@param varName string
---@return GUIDSTRING uuid
function Osi.GetVarUUID(source, varName) end

---@param weapon ITEM
---@param character CHARACTER
---@return number score
function Osi.GetWeaponScoreForCharacter(weapon, character) end

---@param object GUIDSTRING
---@param locX number
---@param locY number
---@param locZ number
---@param locXDeg number
---@param locYDeg number
---@param locZDeg number
---@return number worldX
---@return number worldY
---@return number worldZ
---@return number worldXDeg
---@return number worldYDeg
---@return number worldZDeg
function Osi.GetWorldTransformFromLocal(object, locX, locY, locZ, locXDeg, locYDeg, locZDeg) end

---@param target GUIDSTRING
---@param status string
---@return integer bool
function Osi.HasActiveStatus(target, status) end

---@param target GUIDSTRING
---@param statusGroup string
---@return integer bool
function Osi.HasActiveStatusWithGroup(target, statusGroup) end

---@param character CHARACTER
---@param tag TAG
---@return integer bool
function Osi.HasAppearanceVisualTag(character, tag) end

---@param target GUIDSTRING
---@param status string
---@return integer bool
function Osi.HasAppliedStatus(target, status) end

---@param target GUIDSTRING
---@param statusType string
---@return integer bool
function Osi.HasAppliedStatusOfType(target, statusType) end

---@param target GUIDSTRING
---@param statusGroup string
---@return integer bool
function Osi.HasAppliedStatusWithGroup(target, statusGroup) end

---@return integer bool
function Osi.HasBeenDishonoured() end

---@param source GUIDSTRING
---@param target GUIDSTRING
---@return integer bool
function Osi.HasLineOfSight(source, target) end

---@param entity GUIDSTRING
---@param mainhandOffhandAny string
---@return integer bool
function Osi.HasMeleeWeaponEquipped(entity, mainhandOffhandAny) end

---@param character CHARACTER
---@return integer bool
function Osi.HasNoFollowFlag(character) end

---@param item ITEM
---@param useAction string
---@return integer bool
function Osi.HasOnUse(item, useAction) end

---@param entity GUIDSTRING
---@param passiveID string
---@return integer boolHasPassive
function Osi.HasPassive(entity, passiveID) end

---@param entity GUIDSTRING
---@param mainhandOffhandAny string
---@return integer bool
function Osi.HasRangedWeaponEquipped(entity, mainhandOffhandAny) end

---@param character CHARACTER
---@param recipeID string
---@return integer bool
function Osi.HasRecipeUnlocked(character, recipeID) end

---@param player CHARACTER
---@param itemTemplate GUIDSTRING
---@return integer bool
function Osi.HasRecipeUnlockedWithIngredient(player, itemTemplate) end

---@param character CHARACTER
---@param skill string
---@return integer value
function Osi.HasSkill(character, skill) end

---@param character CHARACTER
---@param spell string
---@return integer bool
function Osi.HasSpell(character, spell) end

---@param character CHARACTER
---@param power string
---@return integer bool
function Osi.HasTadpolePower(character, power) end

---@param entity GUIDSTRING
---@param tags string
---@return integer bool
function Osi.HasTaggedItem(entity, tags) end

---@param item ITEM
---@return integer bool
function Osi.IgnoreGenerics(item) end

---@param character1 CHARACTER
---@param character2 CHARACTER
---@return integer bool
function Osi.InSamePartyGroup(character1, character2) end

---@param a integer
---@param b integer
---@return integer quotient
function Osi.IntegerDivide(a, b) end

---@param a integer
---@param b integer
---@return integer maximum
function Osi.IntegerMax(a, b) end

---@param a integer
---@param b integer
---@return integer minimum
function Osi.IntegerMin(a, b) end

---@param num integer
---@param mod integer
---@return integer return
function Osi.IntegerModulo(num, mod) end

---@param a integer
---@param b integer
---@return integer product
function Osi.IntegerProduct(a, b) end

---@param a integer
---@param b integer
---@return integer result
function Osi.IntegerSubtract(a, b) end

---@param a integer
---@param b integer
---@return integer sum
function Osi.IntegerSum(a, b) end

---@param i integer
---@return number r
function Osi.IntegerToReal(i) end

---@param integer integer
---@return string result
function Osi.IntegerToString(integer) end

---@param inventoryHolder GUIDSTRING
---@return integer value
function Osi.InventoryGetGoldValue(inventoryHolder) end

---@param object GUIDSTRING
---@return integer active
function Osi.IsActive(object) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsAlly(character, otherCharacter) end

---@param character CHARACTER
---@return integer bool
function Osi.IsAnyTutorialShowingFor(character) end

---@param target GUIDSTRING
---@return integer bool
function Osi.IsBoss(target) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsCharacter(object) end

---@param levelName string
---@return integer bool
function Osi.IsCharacterCreationLevel(levelName) end

---@param item ITEM
---@return integer closed
function Osi.IsClosed(item) end

---@param door ITEM
---@return integer closing
function Osi.IsClosing(door) end

---@param item ITEM
---@return integer bool
function Osi.IsConsumable(item) end

---@param item ITEM
---@return integer isContainer
function Osi.IsContainer(item) end

---@param character CHARACTER
---@return integer isControlled
function Osi.IsControlled(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsDead(character) end

---@param item ITEM
---@return integer destroyed
function Osi.IsDestroyed(item) end

---@param item ITEM
---@return integer bool
function Osi.IsDestructible(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsDialogueBlocked(character) end

---@return integer isDropInCCActive
function Osi.IsDropInCCActive() end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsDroppedOnDeath(entity) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsEnemy(character, otherCharacter) end

---@param item ITEM
---@return integer bool
function Osi.IsEquipable(item) end

---@param item ITEM
---@param proficiencyGroup string
---@return integer bool
function Osi.IsEquipmentWithProficiency(item, proficiencyGroup) end

---@param item ITEM
---@return integer bool
function Osi.IsEquipped(item) end

---@param item ITEM
---@return integer bool
function Osi.IsFalling(item) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsFloating(object) end

---@param target GUIDSTRING
---@return integer bool
function Osi.IsForceUpdate(target) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsFreshCorpse(object) end

---@param levelName string
---@return integer bool
function Osi.IsGameLevel(levelName) end

---@return integer isRunning
function Osi.IsGameStateRunning() end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsGlobal(object) end

---@param proxyObject GUIDSTRING
---@return integer isProxy
function Osi.IsHitProxy(proxyObject) end

---@param ownerObject GUIDSTRING
---@return integer isProxyOwner
function Osi.IsHitProxyOwner(ownerObject) end

---@param character CHARACTER
---@return integer bool
function Osi.IsImmortal(character) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsImmuneToFallDamage(object) end

---@param target GUIDSTRING
---@param status string
---@param cause GUIDSTRING
---@return integer bool
function Osi.IsImmuneToStatus(target, status, cause) end

---@param target GUIDSTRING
---@param statusGroup string
---@param cause GUIDSTRING
---@return integer bool
function Osi.IsImmuneToStatusGroup(target, statusGroup, cause) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsInCombat(entity) end

---@param victim CHARACTER
---@return integer inDanger
function Osi.IsInDangerOfAttackOfOpportunity(victim) end

---@param x number
---@param y number
---@param x2 number
---@param character CHARACTER
---@param radius number
---@param alsoIfCanStopMovement integer
---@return integer isDangerous
function Osi.IsInDangerousSurfaceFor(x, y, x2, character, radius, alsoIfCanStopMovement) end

---@param playerCharacter CHARACTER
---@return integer isInFTB
function Osi.IsInForceTurnBasedMode(playerCharacter) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInInventory(object) end

---@param object GUIDSTRING
---@param inventory GUIDSTRING
---@return integer bool
function Osi.IsInInventoryOf(object, inventory) end

---@param object GUIDSTRING
---@param source GUIDSTRING
---@return integer bool
function Osi.IsInMagicPockets(object, source) end

---@param entity GUIDSTRING
---@param combatGuid GUIDSTRING
---@return integer bool
function Osi.IsInNarrativeCombat(entity, combatGuid) end

---@param character CHARACTER
---@param target CHARACTER
---@return integer bool
function Osi.IsInPartyWith(character, target) end

---@param object GUIDSTRING
---@param trigger TRIGGER
---@return integer bool
function Osi.IsInTrigger(object, trigger) end

---@param character CHARACTER
---@return integer bool
function Osi.IsInteractionDisabled(character) end

---@param inventoryHolder GUIDSTRING
---@return integer bool
function Osi.IsInventoryEmpty(inventoryHolder) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInvisible(object) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsInvisibleByScript(object) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsItem(object) end

---@param item ITEM
---@return integer bool
function Osi.IsJunk(item) end

---@param item ITEM
---@return integer bool
function Osi.IsLadder(item) end

---@param item ITEM
---@return integer locked
function Osi.IsLocked(item) end

---@param item ITEM
---@return integer bool
function Osi.IsMovable(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsMovementBlocked(character) end

---@param item ITEM
---@return integer bool
function Osi.IsMoving(item) end

---@param combatGuid GUIDSTRING
---@return integer bool
function Osi.IsNarrativeCombat(combatGuid) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
---@return integer bool
function Osi.IsNeutral(character, otherCharacter) end

---@param object GUIDSTRING
---@return integer bool
function Osi.IsOnStage(object) end

---@param character CHARACTER
---@return integer bool
function Osi.IsOnlyPlayer(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsOnlyPlayerInParty(character) end

---@param item ITEM
---@return integer opened
function Osi.IsOpened(item) end

---@param door ITEM
---@return integer opening
function Osi.IsOpening(door) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPartyFollower(character) end

---@param character CHARACTER
---@param includeNotControlable integer
---@return integer bool
function Osi.IsPartyMember(character, includeNotControlable) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPeanutAvailable(character) end

---@param character CHARACTER
---@return integer bool
function Osi.IsPlayer(character) end

---@param item CHARACTER
---@return integer isPoisoned
function Osi.IsPoisoned(item) end

---@param character CHARACTER
---@param equipment ITEM
---@return integer isProficient
function Osi.IsProficientWith(character, equipment) end

---@param item ITEM
---@return integer bool
function Osi.IsPublicDomain(item) end

---@param item ITEM
---@param includeThrown integer
---@return integer bool
function Osi.IsRangedWeapon(item, includeThrown) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposed(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedConstrained(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedLying(entity) end

---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
---@return integer bool
function Osi.IsReposedOnEntity(entity, onEntity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedSitting(entity) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsReposedStanding(entity) end

---@param speaker GUIDSTRING
---@return integer success
function Osi.IsSpeakerReserved(speaker) end

---@param character GUIDSTRING
---@param spellID string
---@return integer bool
function Osi.IsSpellActive(character, spellID) end

---@param statusID string
---@param statusGroup string
---@return integer bool
function Osi.IsStatusFromGroup(statusID, statusGroup) end

---@param item ITEM
---@return integer bool
function Osi.IsStoryItem(item) end

---@param item ITEM
---@return integer stuck
function Osi.IsStuck(item) end

---@param stringA string
---@param stringB string
---@return integer bool
function Osi.IsSubstring(stringA, stringB) end

---@param potentialSummon GUIDSTRING
---@return integer bool
function Osi.IsSummon(potentialSummon) end

---@param target GUIDSTRING
---@param tag TAG
---@return integer bool
function Osi.IsTagged(target, tag) end

---@param item ITEM
---@return integer bool
function Osi.IsTorch(item) end

---@param entity GUIDSTRING
---@return integer bool
function Osi.IsTradable(entity) end

---@param item ITEM
---@return integer bool
function Osi.IsTrap(item) end

---@param item ITEM
---@return integer bool
function Osi.IsTrapArmed(item) end

---@param item ITEM
---@return integer bool
function Osi.IsTrapDiscovered(item) end

---@param item ITEM
---@return integer bool
function Osi.IsWeapon(item) end

---@param character CHARACTER
---@return integer bool
function Osi.IsWeaponUnsheathed(character) end

---@param item ITEM
---@return integer value
function Osi.ItemGetGoldValue(item) end

---@param item ITEM
---@return integer value
function Osi.ItemGetSupplyValue(item) end

---@param item ITEM
---@param character CHARACTER
---@param moveAndReport integer
---@return integer bool
function Osi.ItemIsInPartyInventory(item, character, moveAndReport) end

---@param item ITEM
---@param character CHARACTER
---@param moveAndReport integer
---@return integer bool
function Osi.ItemIsInUserInventory(item, character, moveAndReport) end

---@param tags string
---@param inventoryHolder GUIDSTRING
---@return integer count
function Osi.ItemTagIsInInventory(tags, inventoryHolder) end

---@param object GUIDSTRING
---@return string translatedStringKey
function Osi.ObjectGetTitle(object) end

---@param entity GUIDSTRING
---@param timer string
---@return integer exists
function Osi.ObjectTimerExists(entity, timer) end

---@param looter CHARACTER
---@param target CHARACTER
---@return integer bool
function Osi.OpenCharacterLootUI(looter, target) end

---@param player CHARACTER
---@param resourceName string
---@return number amount
function Osi.PartyGetActionResourceValue(player, resourceName) end

---@param character CHARACTER
---@return integer gold
function Osi.PartyGetGold(character) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.PartyRemoveTaggedItems(character, tags, amount) end

---@param object GUIDSTRING
---@param target GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param sourceBone string
---@param targetBone string
---@return INTEGER64 fxHandle
function Osi.PlayLoopBeamEffect(object, target, fxName, sourceBone, targetBone) end

---@param object GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param boneName string
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffect(object, fxName, boneName, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffectAtPosition(fxName, x, y, z, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param xAngle number
---@param yAngle number
---@param zAngle number
---@param scale number
---@return INTEGER64 fxHandle
function Osi.PlayLoopEffectAtPositionAndRotation(fxName, x, y, z, xAngle, yAngle, zAngle, scale) end

---@param x number
---@param y number
---@param z number
---@param trigger TRIGGER
---@return integer bool
function Osi.PositionIsInTrigger(x, y, z, trigger) end

---@param quest string
---@return string parentQuest
function Osi.QuestGetParent(quest) end

---@param quest string
---@return string rewardTarget
function Osi.QuestGetRewardTarget(quest) end

---@param character CHARACTER
---@param quest string
---@return integer bool
function Osi.QuestIsAccepted(character, quest) end

---@param quest string
---@return integer bool
function Osi.QuestIsClosed(quest) end

---@param questID string
---@param stateID string
---@return integer result
function Osi.QuestUpdateExists(questID, stateID) end

---@param questID string
---@param stateID string
---@return string topLevelQuestID
function Osi.QuestUpdateGetTopLevel(questID, stateID) end

---@param character CHARACTER
---@param quest string
---@param update string
---@return integer bool
function Osi.QuestUpdateIsUnlocked(character, quest, update) end

---@param modulo integer
---@return integer random
function Osi.Random(modulo) end

---@param a number
---@param b number
---@return number quotient
function Osi.RealDivide(a, b) end

---@param a number
---@param b number
---@return number maximum
function Osi.RealMax(a, b) end

---@param a number
---@param b number
---@return number minimum
function Osi.RealMin(a, b) end

---@param a number
---@param b number
---@return number product
function Osi.RealProduct(a, b) end

---@param a number
---@return number sqrRoot
function Osi.RealSqrRoot(a) end

---@param a number
---@param b number
---@return number result
function Osi.RealSubtract(a, b) end

---@param a number
---@param b number
---@return number sum
function Osi.RealSum(a, b) end

---@param r number
---@return integer i
function Osi.RealToInteger(r) end

---@param number number
---@return string result
function Osi.RealToString(number) end

---@param ratingOwner CHARACTER
---@param ratedCharacter CHARACTER
---@return integer bool
function Osi.RemoveApprovalRating(ratingOwner, ratedCharacter) end

---@param translatedStringKey string
---@return string translatedString
function Osi.ResolveTranslatedString(translatedStringKey) end

---@param target GUIDSTRING
---@param tagExpression string
---@return integer bool
function Osi.SatisfiesTagExpression(target, tagExpression) end

---@param speaker GUIDSTRING
---@param allowAutomatedDialogs integer
---@return DIALOGRESOURCE dialog
---@return integer instanceID
function Osi.SpeakerGetDialog(speaker, allowAutomatedDialogs) end

---@param spellID string
---@param spellFlag string
---@return integer hasFlag
function Osi.SpellHasSpellFlag(spellID, spellFlag) end

---@param dialog DIALOGRESOURCE
---@param allowAttack integer
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@param speaker7 GUIDSTRING
---@param speaker8 GUIDSTRING
---@param triggerID GUIDSTRING
---@return integer success
---@return integer dialogInstance
function Osi.StartBehaviorDialog_Internal(dialog, allowAttack, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6, speaker7, speaker8, triggerID) end

---@param dialog DIALOGRESOURCE
---@param allowAttack integer
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@param allowSpellVocal integer
---@return integer success
---@return integer dialogInstance
function Osi.StartDialog_Internal(dialog, allowAttack, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6, allowSpellVocal) end

---@param timeline TIMELINERESOURCE
---@param speaker1 GUIDSTRING
---@param speaker2 GUIDSTRING
---@param speaker3 GUIDSTRING
---@param speaker4 GUIDSTRING
---@param speaker5 GUIDSTRING
---@param speaker6 GUIDSTRING
---@return integer success
function Osi.StartGameplayTimeline(timeline, speaker1, speaker2, speaker3, speaker4, speaker5, speaker6) end

---@param dialog DIALOGRESOURCE
---@param trigger TRIGGER
---@return integer success
---@return integer dialogID
function Osi.StartWorldTimeline(dialog, trigger) end

---@param statName string
---@param player CHARACTER
---@return integer amount
function Osi.StatStringGetCountInMagicPockets(statName, player) end

---@param statName string
---@param inventoryHolder GUIDSTRING
---@return integer amount
function Osi.StatStringIsInInventory(statName, inventoryHolder) end

---@param target GUIDSTRING
---@return integer bool
function Osi.StayInAiHints(target) end

---@param string string
---@param start integer
---@param count integer
---@return string result
function Osi.Substring(string, start, count) end

---@param tags string
---@param source GUIDSTRING
---@return integer amount
function Osi.TaggedItemsGetCountInMagicPockets(tags, source) end

---@param itemTemplate ITEMROOT
---@return integer bool
function Osi.TemplateCanSitOn(itemTemplate) end

---@param template ROOT
---@param source GUIDSTRING
---@return integer amount
function Osi.TemplateGetCountInMagicPockets(template, source) end

---@param itemTemplate ITEMROOT
---@return string stringHandle
function Osi.TemplateGetDisplayString(itemTemplate) end

---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@return integer count
function Osi.TemplateIsInInventory(itemTemplate, inventoryHolder) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param moveAndReport integer
---@return integer countMoved
function Osi.TemplateIsInPartyInventory(itemTemplate, character, moveAndReport) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param moveAndReport integer
---@return integer count
function Osi.TemplateIsInUserInventory(itemTemplate, character, moveAndReport) end

---@param timer string
---@return integer exists
function Osi.TimerExists(timer) end

---@param trigger TRIGGER
---@return number x
---@return number y
---@return number z
function Osi.TriggerGetRandomPosition(trigger) end

---@param character CHARACTER
---@return integer gold
function Osi.UserGetGold(character) end

---@param userID integer
---@return integer state
function Osi.UserGetSafeRomanceOption(userID) end

---@param character CHARACTER
---@param tags string
---@param amount integer
---@return integer amountRemoved
function Osi.UserRemoveTaggedItems(character, tags, amount) end

---@param character CHARACTER
---@param toObject GUIDSTRING
---@param tags string
---@param amount integer
---@return integer amountTransfered
function Osi.UserTransferTaggedItems(character, toObject, tags, amount) end

---@param userID integer
---@return integer bool
function Osi.WasTutorialCompletedForUser(userID) end
--#endregion

--#region Calls

function Osi.ActOver() end

---@param levelTemplate LEVELTEMPLATE
function Osi.ActivatePersistentLevelTemplate(levelTemplate) end

---@param levelTemplate LEVELTEMPLATE
function Osi.ActivatePersistentLevelTemplateWithCombat(levelTemplate) end

---@overload fun(player:CHARACTER, trader:CHARACTER, canSell:integer)
---@overload fun(player:CHARACTER, trader:CHARACTER, canSell:integer, tradeMode:TRADEMODE)
---@param player CHARACTER
---@param trader CHARACTER
---@param canSell integer
---@param tradeMode TRADEMODE
---@param initiallySelectedTradeObject GUIDSTRING
---@param itemsTagFilter string
function Osi.ActivateTrade(player, trader, canSell, tradeMode, initiallySelectedTradeObject, itemsTagFilter) end

---@param object GUIDSTRING
---@param amount integer
function Osi.AddActionPoints(object, amount) end

---@param character CHARACTER
---@param player CHARACTER
---@param delta integer
function Osi.AddAttitudeTowardsPlayer(character, player, delta) end

---@param character CHARACTER
---@param goal GUIDSTRING
---@param categoryId string
function Osi.AddBackgroundGoal(character, goal, categoryId) end

---@param object GUIDSTRING
---@param boosts string
---@param sourceID string
---@param cause GUIDSTRING
function Osi.AddBoosts(object, boosts, sourceID, cause) end

---@param object GUIDSTRING
---@param preset string
function Osi.AddCustomMaterialOverride(object, preset) end

---@param object GUIDSTRING
---@param resource string
---@param filter string
function Osi.AddCustomMaterialResourceOverride(object, resource, filter) end

---@param character CHARACTER
---@param visual GUIDSTRING
function Osi.AddCustomVisualOverride(character, visual) end

---@param bookname string
---@param entryname string
function Osi.AddEntryToCustomBook(bookname, entryname) end

---@param character CHARACTER
---@param gain integer
function Osi.AddExplorationExperience(character, gain) end

---@param object GUIDSTRING
---@param fogVolume GUIDSTRING
function Osi.AddFogVolume(object, fogVolume) end

---@param inventoryHolder GUIDSTRING
---@param amount integer
function Osi.AddGold(inventoryHolder, amount) end

---@param source GUIDSTRING
---@param amount integer
function Osi.AddGoldToMagicPockets(source, amount) end

---@param bookname string
---@param entryname string
function Osi.AddIllustrationToCustomBook(bookname, entryname) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.AddPartyFollower(follower, leader) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.AddPassive(entity, passiveID) end

---@param character CHARACTER
---@param tag TAG
function Osi.AddPreferredAiTargetTag(character, tag) end

---@overload fun(character:CHARACTER, spell:string)
---@overload fun(character:CHARACTER, spell:string, showNotification:integer)
---@param character CHARACTER
---@param spell string
---@param showNotification integer
---@param addContainerSpells integer
function Osi.AddSpell(character, spell, showNotification, addContainerSpells) end

---@param character CHARACTER
---@param amount integer
function Osi.AddTadpole(character, amount) end

---@param character CHARACTER
---@param power string
---@param ignorePrerequisites integer
function Osi.AddTadpolePower(character, power, ignorePrerequisites) end

---@param source integer
---@param target integer
function Osi.AddToParty(source, target) end

---@param object GUIDSTRING
---@param rtpcName string
function Osi.AddTrackedSoundEntity(object, rtpcName) end

---@param character CHARACTER
---@param item ITEM
function Osi.AiAddInterestingItem(character, item) end

---@param character CHARACTER
---@param item ITEM
function Osi.AiRemoveInterestingItem(character, item) end

---@param isAllowed integer
function Osi.AllowNewPlayers(isAllowed) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearAt(character, target, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearAtPosition(character, x, y, z, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, target:CHARACTER, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target CHARACTER
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOnTrailOutOfSightTo(character, target, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOutOfSightTo(character, target, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, directionFrom:GUIDSTRING, playSpawn:integer, customSpawnAnimation:ANIMATION, appearedEvent:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param directionFrom GUIDSTRING
---@param playSpawn integer
---@param customSpawnAnimation ANIMATION
---@param appearedEvent string
---@param preventTeleportOnFailure integer
function Osi.AppearOutOfSightToPosition(character, x, y, z, directionFrom, playSpawn, customSpawnAnimation, appearedEvent, preventTeleportOnFailure) end

---@overload fun(object:GUIDSTRING, damage:integer, damageType:string)
---@param object GUIDSTRING
---@param damage integer
---@param damageType string
---@param source GUIDSTRING
function Osi.ApplyDamage(object, damage, damageType, source) end

---@overload fun(object:GUIDSTRING, status:string, duration:number)
---@overload fun(object:GUIDSTRING, status:string, duration:number, force:integer)
---@param object GUIDSTRING
---@param status string
---@param duration number
---@param force integer
---@param source GUIDSTRING
function Osi.ApplyStatus(object, status, duration, force, source) end

---@param userID integer
---@param character CHARACTER
function Osi.AssignToUser(userID, character) end

---@overload fun(parentObject:GUIDSTRING, proxyObject:GUIDSTRING)
---@param parentObject GUIDSTRING
---@param proxyObject GUIDSTRING
---@param attachment string
function Osi.AttachHitProxy(parentObject, proxyObject, attachment) end

---@param springObject GUIDSTRING
---@param attachedBone string
---@param attachToObject GUIDSTRING
---@param attachToBone string
function Osi.AttachSpring(springObject, attachedBone, attachToObject, attachToBone) end

---@param attaching CHARACTER
---@param toCharacter CHARACTER
function Osi.AttachToPartyGroup(attaching, toCharacter) end

---@overload fun(character:CHARACTER, target:GUIDSTRING)
---@param character CHARACTER
---@param target GUIDSTRING
---@param alwaysHit integer
function Osi.Attack(character, target, alwaysHit) end

function Osi.AutoSave() end

---@param character GUIDSTRING
function Osi.BlockFlee(character) end

---@param character CHARACTER
---@param block integer
function Osi.BlockNewCrimeReactions(character, block) end

---@param character CHARACTER
---@param name string
---@param time number
---@param hideUI integer
---@param smooth integer
---@param hideShroud integer
function Osi.CameraActivate(character, name, time, hideUI, smooth, hideShroud) end

---@param character CHARACTER
function Osi.CharacterDisableAllCrimes(character) end

---@param character CHARACTER
---@param crime string
function Osi.CharacterDisableCrime(character, crime) end

---@param character CHARACTER
function Osi.CharacterEnableAllCrimes(character) end

---@param character CHARACTER
---@param crime string
function Osi.CharacterEnableCrime(character, crime) end

---@param character CHARACTER
---@param enable integer
function Osi.CharacterEnableCrimeWarnings(character, enable) end

---@param target CHARACTER
---@param equipmentSet string
function Osi.CharacterGiveEquipmentSet(target, equipmentSet) end

---@param character CHARACTER
---@param player CHARACTER
---@param timer number
function Osi.CharacterIgnoreCharacterActiveCrimes(character, player, timer) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, movementSpeed:string, event:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param movementSpeed string
---@param event string
---@param moveID integer
function Osi.CharacterMoveTo(character, target, movementSpeed, event, moveID) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param dialog DIALOGRESOURCE
---@param moveID string
---@param movementSpeed string
---@param timeout number
function Osi.CharacterMoveToAndTalk(character, target, dialog, moveID, movementSpeed, timeout) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param moveId string
---@param reason string
function Osi.CharacterMoveToAndTalkFail(character, target, moveId, reason) end

---@overload fun(character:CHARACTER, x:number, y:number, z:number, movementSpeed:string, event:string)
---@param character CHARACTER
---@param x number
---@param y number
---@param z number
---@param movementSpeed string
---@param event string
---@param moveID integer
function Osi.CharacterMoveToPosition(character, x, y, z, movementSpeed, event, moveID) end

---@param character CHARACTER
---@param turn integer
function Osi.CharacterSendGlobalCombatCounter(character, turn) end

---@param player CHARACTER
---@param crimeType string
---@param evidence GUIDSTRING
function Osi.CharacterStopCrime(player, crimeType, evidence) end

---@param player CHARACTER
---@param crime integer
function Osi.CharacterStopCrimeWithID(player, crime) end

---@param character CHARACTER
function Osi.ClearCanOpenDoorsOverride(character) end

---@param object GUIDSTRING
function Osi.ClearCustomMaterialOverrides(object) end

---@param object GUIDSTRING
function Osi.ClearCustomMaterialResourceOverrides(object) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.ClearDialogTag(target, tag) end

---@overload fun(flag:FLAG)
---@overload fun(flag:FLAG, object:GUIDSTRING)
---@overload fun(flag:FLAG, object:GUIDSTRING, dialogInstance:integer)
---@param flag FLAG
---@param object GUIDSTRING
---@param dialogInstance integer
---@param sendFlagClearEventIfChanged integer
function Osi.ClearFlag(flag, object, dialogInstance, sendFlagClearEventIfChanged) end

---@param entity GUIDSTRING
function Osi.ClearGodOverride(entity) end

---@param entity GUIDSTRING
---@param faction FACTION
function Osi.ClearIndividualRelation(entity, faction) end

---@param source GUIDSTRING
---@param flag FLAG
---@param sendFlagClearEventsIfChanged integer
function Osi.ClearMagicPocketsFlag(source, flag, sendFlagClearEventsIfChanged) end

---@param item ITEM
function Osi.ClearOriginalOwner(item) end

---@param item ITEM
function Osi.ClearOwnership(item) end

---@param faction1 FACTION
---@param faction2 FACTION
function Osi.ClearRelation(faction1, faction2) end

---@overload fun(character:CHARACTER, seconds:number, fadeID:string)
---@param character CHARACTER
---@param seconds number
---@param fadeID string
---@param timelineFade integer
function Osi.ClearScreenFade(character, seconds, fadeID, timelineFade) end

---@param springObject GUIDSTRING
function Osi.ClearSpring(springObject) end

---@param object GUIDSTRING
function Osi.ClearStoryBoosts(object) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.ClearTag(target, tag) end

---@param userID integer
---@param seconds number
function Osi.ClearTimelineScreenFade(userID, seconds) end

---@param character CHARACTER
function Osi.ClearTradeGeneratedItems(character) end

---@param source GUIDSTRING
---@param varName string
function Osi.ClearVarObject(source, varName) end

---@param source GUIDSTRING
---@param varName string
function Osi.ClearVarUUID(source, varName) end

---@param item ITEM
function Osi.Close(item) end

---@param character CHARACTER
---@param type integer
---@param uIInstance string
function Osi.CloseStoryElementUI(character, type, uIInstance) end

---@param character CHARACTER
---@param uIName string
function Osi.CloseUI(character, uIName) end

---@param object GUIDSTRING
function Osi.CombatKillFor(object) end

---@param userID integer
function Osi.CompleteTutorialForUser(userID) end

---@param constellationObject GUIDSTRING
---@param inputSocketName string
---@param sender GUIDSTRING
---@param objectParam GUIDSTRING
function Osi.ConstellationTriggerInputSocket(constellationObject, inputSocketName, sender, objectParam) end

---@param target CHARACTER
---@param source CHARACTER
function Osi.CopyCharacterEquipment(target, source) end

---@overload fun(target:GUIDSTRING, spellID:string, casterLevel:integer)
---@param target GUIDSTRING
---@param spellID string
---@param casterLevel integer
---@param caster2 GUIDSTRING
function Osi.CreateExplosion(target, spellID, casterLevel, caster2) end

---@overload fun(x:number, y:number, z:number, spellID:string, casterLevel:integer)
---@param x number
---@param y number
---@param z number
---@param spellID string
---@param casterLevel integer
---@param caster2 GUIDSTRING
function Osi.CreateExplosionAtPosition(x, y, z, spellID, casterLevel, caster2) end

---@param target GUIDSTRING
---@param spellID string
function Osi.CreateProjectileStrikeAt(target, spellID) end

---@param x number
---@param y number
---@param z number
---@param spellID string
function Osi.CreateProjectileStrikeAtPosition(x, y, z, spellID) end

---@param target GUIDSTRING
---@param surfaceType string
---@param cellAmountMin integer
---@param cellAmountMax integer
---@param growAmountMin integer
---@param growAmountMax integer
---@param growTime number
function Osi.CreatePuddle(target, surfaceType, cellAmountMin, cellAmountMax, growAmountMin, growAmountMax, growTime) end

---@overload fun(target:GUIDSTRING, surfaceType:string, radius:number, lifetime:number)
---@param target GUIDSTRING
---@param surfaceType string
---@param radius number
---@param lifetime number
---@param source GUIDSTRING
function Osi.CreateSurface(target, surfaceType, radius, lifetime, source) end

---@overload fun(x:number, y:number, z:number, surfaceType:string, radius:number, lifetime:number)
---@param x number
---@param y number
---@param z number
---@param surfaceType string
---@param radius number
---@param lifetime number
---@param source GUIDSTRING
function Osi.CreateSurfaceAtPosition(x, y, z, surfaceType, radius, lifetime, source) end

---@param crimeArea TRIGGER
function Osi.CrimeAreaResetTensionModifier(crimeArea) end

---@param crimeArea TRIGGER
---@param modifier integer
function Osi.CrimeAreaSetTensionModifier(crimeArea, modifier) end

function Osi.CrimeClearAll() end

---@param crimeID integer
---@param interrogator CHARACTER
function Osi.CrimeConfrontationDone(crimeID, interrogator) end

---@param crimeID integer
---@param fallbackOwner CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeDropEvidenceFromCriminals(crimeID, fallbackOwner, criminal1, criminal2, criminal3, criminal4) end

---@param criminal GUIDSTRING
---@param npc GUIDSTRING
---@param ignoreDuration integer
function Osi.CrimeIgnoreAllCrimesForCriminal(criminal, npc, ignoreDuration) end

---@param crimeID integer
---@param npc GUIDSTRING
function Osi.CrimeIgnoreCrime(crimeID, npc) end

---@param crimeID integer
---@param interrogator CHARACTER
---@param foundEvidence integer
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeInterrogationDone(crimeID, interrogator, foundEvidence, criminal1, criminal2, criminal3, criminal4) end

---@param targetCrimeID integer
---@param sourceCrimeID integer
function Osi.CrimeMergeEvidenceFrom(targetCrimeID, sourceCrimeID) end

---@param crimeID integer
---@param criminal1 GUIDSTRING
---@param criminal2 GUIDSTRING
---@param criminal3 GUIDSTRING
---@param criminal4 GUIDSTRING
function Osi.CrimeResetInterrogationForCriminals(crimeID, criminal1, criminal2, criminal3, criminal4) end

---@param crimeID integer
---@param x number
---@param y number
---@param z number
---@param onlyInvestigate integer
function Osi.CrimeResumeWithPosition(crimeID, x, y, z, onlyInvestigate) end

---@param crimeID integer
---@param npc GUIDSTRING
function Osi.CrimeStopIgnoringCrime(crimeID, npc) end

---@param crimeID integer
function Osi.CrimeSuspend(crimeID) end

---@param crimeID integer
---@param criminal CHARACTER
---@param includingNearbyOnGround integer
---@param target GUIDSTRING
function Osi.CrimeTransferEvidenceTo(crimeID, criminal, includingNearbyOnGround, target) end

---@param crimeID integer
function Osi.DEV_CrimeForceResolve(crimeID) end

---@param object GUIDSTRING
---@param config string
function Osi.DEV_EnableAnubis(object, config) end

---@param message string
function Osi.DebugBreak(message) end

---@param flag integer
function Osi.DebugDialogSkillCheck(flag) end

---@param text string
function Osi.DebugLog(text) end

---@param object GUIDSTRING
---@param text string
function Osi.DebugText(object, text) end

---@param target GUIDSTRING
---@param tag TAG
---@param block integer
function Osi.Debug_BlockTag(target, tag, block) end

---@param entity GUIDSTRING
---@param moveAsideCharacters integer
---@param sendItemsToCamp integer
function Osi.DeclutterArea(entity, moveAsideCharacters, sendItemsToCamp) end

---@param levelTemplate GUIDSTRING
---@param moveAsideCharacters integer
---@param sendItemsToCamp integer
function Osi.DeclutterLevelTemplate(levelTemplate, moveAsideCharacters, sendItemsToCamp) end

---@param levelName string
function Osi.DeleteLevelCache(levelName) end

---@param combatGuid GUIDSTRING
function Osi.DestroyNarrativeCombat(combatGuid) end

---@param platform GUIDSTRING
function Osi.DestroyPlatform(platform) end

---@param parentObject GUIDSTRING
function Osi.DetachAllHitProxies(parentObject) end

---@param character CHARACTER
function Osi.DetachFromPartyGroup(character) end

---@param parentObject GUIDSTRING
---@param proxyObject GUIDSTRING
function Osi.DetachHitProxy(parentObject, proxyObject) end

---@param springObject GUIDSTRING
---@param attachedBone string
function Osi.DetachSpring(springObject, attachedBone) end

---@param instanceID integer
---@param actor GUIDSTRING
function Osi.DialogAddActor(instanceID, actor) end

---@param instanceID integer
---@param actor GUIDSTRING
---@param index integer
function Osi.DialogAddActorAt(instanceID, actor, index) end

---@param instanceID integer
---@param actor GUIDSTRING
---@param force integer
---@param peanut integer
---@param considerSpeakerGroups integer
function Osi.DialogAddActorAtReservedSlot(instanceID, actor, force, peanut, considerSpeakerGroups) end

---@param instanceID integer
---@param immediate integer
function Osi.DialogRequestBehaviorGracefulStop(instanceID, immediate) end

---@param speaker GUIDSTRING
function Osi.DialogRequestSmoothStop(speaker) end

---@param speaker GUIDSTRING
function Osi.DialogRequestStop(speaker) end

---@param dialog DIALOGRESOURCE
---@param speaker GUIDSTRING
function Osi.DialogRequestStopForDialog(dialog, speaker) end

---@param speaker GUIDSTRING
function Osi.DialogRequestStopTimelineDialogs(speaker) end

---@param instanceID integer
---@param trigger TRIGGER
function Osi.DialogSetTeleportPartyOnEnded(instanceID, trigger) end

---@param instanceID integer
---@param level string
function Osi.DialogSetTeleportPartyToLevelOnEnded(instanceID, level) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value string
function Osi.DialogSetVariableFixedString(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value string
function Osi.DialogSetVariableFixedStringForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value number
function Osi.DialogSetVariableFloat(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value number
function Osi.DialogSetVariableFloatForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value integer
function Osi.DialogSetVariableInt(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value integer
function Osi.DialogSetVariableIntForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param value string
function Osi.DialogSetVariableString(dialog, variable, value) end

---@param instanceID integer
---@param variable string
---@param value string
function Osi.DialogSetVariableStringForInstance(instanceID, variable, value) end

---@param dialog DIALOGRESOURCE
---@param variable string
---@param stringHandleValue string
function Osi.DialogSetVariableTranslatedString(dialog, variable, stringHandleValue) end

---@param instanceID integer
---@param variable string
---@param stringHandleValue string
---@param referenceStringValue string
function Osi.DialogSetVariableTranslatedStringForInstance(instanceID, variable, stringHandleValue, referenceStringValue) end

---@overload fun(target:GUIDSTRING)
---@overload fun(target:GUIDSTRING, deathType:DEATHTYPE, generateTreasure:integer)
---@overload fun(target:GUIDSTRING, deathType:DEATHTYPE, source:GUIDSTRING, generateTreasure:integer, immediate:integer)
---@param target GUIDSTRING
---@param deathType DEATHTYPE
---@param source GUIDSTRING
---@param generateTreasure integer
---@param immediate integer
---@param impactForce number
function Osi.Die(target, deathType, source, generateTreasure, immediate, impactForce) end

---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.DisableTutorialEvent(entity, event) end

---@overload fun(character:CHARACTER, target:GUIDSTRING, movementSpeed:string, increaseSpeed:integer, disappearEvent:string)
---@param character CHARACTER
---@param target GUIDSTRING
---@param movementSpeed string
---@param increaseSpeed integer
---@param disappearEvent string
---@param storyTransactionID integer
function Osi.DisappearOutOfSightTo(character, target, movementSpeed, increaseSpeed, disappearEvent, storyTransactionID) end

---@param avatarEntity GUIDSTRING
---@param bool integer
function Osi.DismissAvatar(avatarEntity, bool) end

---@param item ITEM
function Osi.Drop(item) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.DropTo(item, x, y, z) end

---@param enabled integer
function Osi.EnableCampWaypoint(enabled) end

---@param enabled integer
function Osi.EnableSendToCamp(enabled) end

---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.EnableTutorialEvent(entity, event) end

---@param outcome string
function Osi.EndActivity(outcome) end

---@param combatGuid GUIDSTRING
function Osi.EndCombat(combatGuid) end

---@param entity GUIDSTRING
function Osi.EndRepose(entity) end

---@param target GUIDSTRING
function Osi.EndTurn(target) end

---@param object GUIDSTRING
---@param handledInStory integer
function Osi.EnterChasmProcessed(object, handledInStory) end

---@param source GUIDSTRING
---@param target GUIDSTRING
function Osi.EnterCombat(source, target) end

---@param playerCharacter CHARACTER
---@param zoneID GUIDSTRING
function Osi.EnterSharedTurnBaseMode(playerCharacter, zoneID) end

---@overload fun(character:CHARACTER, item:ITEM)
---@overload fun(character:CHARACTER, item:ITEM, addToMainInventoryOnFail:integer)
---@overload fun(character:CHARACTER, item:ITEM, addToMainInventoryOnFail:integer, showNotification:integer)
---@param character CHARACTER
---@param item ITEM
---@param addToMainInventoryOnFail integer
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.Equip(character, item, addToMainInventoryOnFail, showNotification, clearOriginalOwner) end

---@param target GUIDSTRING
---@param escortGroup string
function Osi.EscortAddCharacter(target, escortGroup) end

---@param escortGroup string
function Osi.EscortRemoveAll(escortGroup) end

---@param target GUIDSTRING
function Osi.EscortRemoveCharacter(target) end

---@param target GUIDSTRING
---@param escortGroup string
function Osi.EscortSetLeader(target, escortGroup) end

---@param target GUIDSTRING
---@param escortGroup string
---@param priority integer
function Osi.EscortSetLeaderPriority(target, escortGroup, priority) end

---@param character CHARACTER
---@param deal integer
---@param attitudeDiff integer
function Osi.ExecuteDeal(character, deal, attitudeDiff) end

---@param faction FACTION
---@param bool integer
function Osi.FactionSetLootOwned(faction, bool) end

function Osi.FireOsirisEvents() end

---@param character CHARACTER
---@param fleeFromRelationType string
---@param fleeRange number
function Osi.FleeFrom(character, fleeFromRelationType, fleeRange) end

---@param fleeingCharacter CHARACTER
---@param fleeFrom GUIDSTRING
---@param fleeRange number
function Osi.FleeFromObject(fleeingCharacter, fleeFrom, fleeRange) end

---@param character CHARACTER
function Osi.FlushOsirisQueue(character) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.Follow(follower, leader) end

---@param playerCharacter CHARACTER
---@param onOff integer
function Osi.ForceTurnBasedMode(playerCharacter, onOff) end

---@param character CHARACTER
function Osi.Freeze(character) end

function Osi.GameEnd() end

---@param movie string
function Osi.GameEndWithMovie(movie) end

---@param player CHARACTER
---@param trader CHARACTER
function Osi.GenerateItems(player, trader) end

---@param inventoryHolder GUIDSTRING
---@param treasureID string
---@param level integer
---@param finder CHARACTER
function Osi.GenerateTreasure(inventoryHolder, treasureID, level, finder) end

---@param character CHARACTER
---@param amount number
---@param optionalReasonLocalizedTextKey string
---@param optionalDescriptionLocalizedTextKey string
function Osi.GiveInspirationPoints(character, amount, optionalReasonLocalizedTextKey, optionalDescriptionLocalizedTextKey) end

---@param dialog DIALOGRESOURCE
---@param successful integer
function Osi.GossipCompleted(dialog, successful) end

---@param activityId string
function Osi.HideActivity(activityId) end

---@param type string
function Osi.HideAllActivities(type) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.HideTutorial(character, tutorialGuid) end

---@param criminal CHARACTER
---@param crimeID integer
---@param radius number
---@param optionalTagExpression string
function Osi.IgnoreCrimeInRadiusWithTags(criminal, crimeID, radius, optionalTagExpression) end

---@param criminal CHARACTER
---@param radius number
---@param optionalTagExpression string
---@param duration integer
function Osi.IgnoreCrimesInRadiusWithTagsForDuration(criminal, radius, optionalTagExpression, duration) end

---@param character CHARACTER
function Osi.InitializePlayerData(character) end

---@param item ITEM
---@param trigger TRIGGER
function Osi.ItemDragTo(item, trigger) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.ItemDragToPosition(item, x, y, z) end

---@overload fun(item:ITEM, target:GUIDSTRING, speed:number, acceleration:number, useRotation:integer)
---@param item ITEM
---@param target GUIDSTRING
---@param speed number
---@param acceleration number
---@param useRotation integer
---@param event string
function Osi.ItemMoveTo(item, target, speed, acceleration, useRotation, event) end

---@overload fun(item:ITEM, x:number, y:number, z:number, speed:number, acceleration:number)
---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param speed number
---@param acceleration number
---@param event string
function Osi.ItemMoveToPosition(item, x, y, z, speed, acceleration, event) end

---@param item ITEM
---@param angleDeg number
---@param speedDegPerSec number
function Osi.ItemRotateY(item, angleDeg, speedDegPerSec) end

---@param item ITEM
---@param angleDeg number
---@param speedDegPerSec number
function Osi.ItemRotateYToAngle(item, angleDeg, speedDegPerSec) end

---@param object GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateActiveObjectsInSameCombatGroup(object, event, completionEvent) end

---@param event string
---@param completionEvent string
function Osi.IterateCharacters(event, completionEvent) end

---@param center GUIDSTRING
---@param radius number
---@param event string
---@param completionEvent string
function Osi.IterateCharactersAround(center, radius, event, completionEvent) end

---@param ownerObject GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateHitProxies(ownerObject, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateInventory(inventoryHolder, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param tags string
---@param event string
---@param completionEvent string
function Osi.IterateInventoryByTag(inventoryHolder, tags, event, completionEvent) end

---@param inventoryHolder GUIDSTRING
---@param template GUIDSTRING
---@param event string
---@param completionEvent string
function Osi.IterateInventoryByTemplate(inventoryHolder, template, event, completionEvent) end

---@param origin CHARACTER
---@param event string
---@param finishEvent string
function Osi.IterateOriginTags(origin, event, finishEvent) end

---@param event string
---@param completionEvent string
function Osi.IteratePlayerCharacters(event, completionEvent) end

---@param category TAGCATEGORY
---@param event string
---@param finishEvent string
function Osi.IterateTagsCategory(category, event, finishEvent) end

---@param event string
---@param completionEvent string
function Osi.IterateUsers(event, completionEvent) end

---@param target GUIDSTRING
function Osi.LeaveCombat(target) end

---@param userId integer
function Osi.LeaveParty(userId) end

---@param playerCharacter CHARACTER
function Osi.LeaveSharedTurnBaseMode(playerCharacter) end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.LieOnEntity(entity, entity2) end

---@param entity GUIDSTRING
function Osi.LieOnGround(entity) end

---@param savegame string
function Osi.LoadGame(savegame) end

---@param levelTemplate LEVELTEMPLATE
function Osi.LoadLevelTemplate(levelTemplate) end

---@param preset string
---@param teleportToTarget GUIDSTRING
function Osi.LoadPartyPreset(preset, teleportToTarget) end

---@param item ITEM
---@param key string
function Osi.Lock(item, key) end

---@param item ITEM
---@param lock integer
function Osi.LockUnequip(item, lock) end

---@param waypointName string
---@param character CHARACTER
function Osi.LockWaypoint(waypointName, character) end

---@overload fun(character:CHARACTER, target:GUIDSTRING)
---@param character CHARACTER
---@param target GUIDSTRING
---@param duration number
function Osi.LookAtEntity(character, target, duration) end

---@param character CHARACTER
---@param trigger TRIGGER
---@param snapToTarget integer
function Osi.LookFromTrigger(character, trigger, snapToTarget) end

---@param character CHARACTER
---@param requestAccepted integer
function Osi.LootRequestProcessed(character, requestAccepted) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
function Osi.MagicPocketsDestroyLocalItemsByTag(source, tags, amount) end

---@param source GUIDSTRING
---@param itemTemplate ITEMROOT
---@param amount integer
function Osi.MagicPocketsDestroyLocalItemsByTemplate(source, itemTemplate, amount) end

---@param source GUIDSTRING
---@param object GUIDSTRING
function Osi.MagicPocketsDrop(source, object) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
function Osi.MagicPocketsDropByTag(source, tags, amount) end

---@param source GUIDSTRING
---@param root ROOT
---@param amount integer
function Osi.MagicPocketsDropByTemplate(source, root, amount) end

---@param source GUIDSTRING
---@param object GUIDSTRING
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveTo(source, object, destinationInventory, showNotification, clearOriginalOwner) end

---@param source GUIDSTRING
---@param tags string
---@param amount integer
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveToByTag(source, tags, amount, destinationInventory, showNotification, clearOriginalOwner) end

---@param source GUIDSTRING
---@param template ROOT
---@param amount integer
---@param destinationInventory GUIDSTRING
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.MagicPocketsMoveToByTemplate(source, template, amount, destinationInventory, showNotification, clearOriginalOwner) end

---@param character CHARACTER
function Osi.MakeNPC(character) end

---@param source CHARACTER
---@param target CHARACTER
---@param ignoreVote integer
function Osi.MakePeace(source, target, ignoreVote) end

---@overload fun(targetCharacter:CHARACTER)
---@overload fun(targetCharacter:CHARACTER, ownerCharacter:CHARACTER)
---@param targetCharacter CHARACTER
---@param ownerCharacter CHARACTER
---@param canBeReassigned integer
function Osi.MakePlayer(targetCharacter, ownerCharacter, canBeReassigned) end

---@param target CHARACTER
function Osi.MakePlayerActive(target) end

---@param source CHARACTER
---@param target CHARACTER
---@param ignoreVote integer
function Osi.MakeWar(source, target, ignoreVote) end

---@param markerID string
---@param newRegionID string
function Osi.MapMarkerChangeLevel(markerID, newRegionID) end

---@overload fun(fromObject:GUIDSTRING, toObject:GUIDSTRING)
---@overload fun(fromObject:GUIDSTRING, toObject:GUIDSTRING, moveEquippedArmor:integer, moveEquippedWeapons:integer, clearOriginalOwner:integer)
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedArmor integer
---@param moveEquippedWeapons integer
---@param clearOriginalOwner integer
---@param moveVanityClothing integer
function Osi.MoveAllItemsTo(fromObject, toObject, moveEquippedArmor, moveEquippedWeapons, clearOriginalOwner, moveVanityClothing) end

---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedArmor integer
---@param moveEquippedWeapons integer
---@param clearOriginalOwner integer
---@param moveVanityClothing integer
function Osi.MoveAllLootableItemsTo(fromObject, toObject, moveEquippedArmor, moveEquippedWeapons, clearOriginalOwner, moveVanityClothing) end

---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param moveEquippedItems integer
---@param clearOriginalOwner integer
function Osi.MoveAllStoryItemsTo(fromObject, toObject, moveEquippedItems, clearOriginalOwner) end

---@param character CHARACTER
---@param item ITEM
---@param target GUIDSTRING
---@param amount integer
---@param event string
function Osi.MoveItemTo(character, item, target, amount, event) end

---@param character CHARACTER
---@param container ITEM
function Osi.MoveWeaponsToContainer(character, container) end

---@param character CHARACTER
---@param event string
---@param fadeInOnEnd integer
function Osi.MoviePlay(character, event, fadeInOnEnd) end

---@param character CHARACTER
---@param eventName string
function Osi.MusicPlayForPeer(character, eventName) end

---@param eventName string
function Osi.MusicPlayGeneral(eventName) end

---@param character CHARACTER
---@param eventName string
function Osi.MusicPlayOnCharacter(character, eventName) end

function Osi.NotifyCharacterCreationFinished() end

function Osi.NotifyCharacterCreationSkipped() end

---@param entity GUIDSTRING
---@param timer string
---@param localizedTextKey string
---@param time2 integer
---@param shouldTickOnTurnStart integer
function Osi.ObjectQuestTimerLaunch(entity, timer, localizedTextKey, time2, shouldTickOnTurnStart) end

---@param object GUIDSTRING
---@param localizedTextKey string
function Osi.ObjectSetTitle(object, localizedTextKey) end

---@param object GUIDSTRING
---@param isHide integer
function Osi.ObjectSetTitleHidden(object, isHide) end

---@param entity GUIDSTRING
---@param timer string
function Osi.ObjectTimerCancel(entity, timer) end

---@overload fun(entity:GUIDSTRING, timer:string, time2:integer)
---@param entity GUIDSTRING
---@param timer string
---@param time2 integer
---@param shouldTickOnTurnStart integer
function Osi.ObjectTimerLaunch(entity, timer, time2, shouldTickOnTurnStart) end

---@param character CHARACTER
function Osi.OnCompanionDismissed(character) end

---@param item ITEM
function Osi.Open(item) end

---@param character CHARACTER
---@param item ITEM
function Osi.OpenCraftUI(character, item) end

---@param character CHARACTER
---@param bookname string
function Osi.OpenCustomBookUI(character, bookname) end

---@param character CHARACTER
---@param message string
function Osi.OpenMessageBox(character, message) end

---@param character CHARACTER
---@param message string
---@param choice1 string
---@param choice2 string
function Osi.OpenMessageBoxChoice(character, message, choice1, choice2) end

---@param character CHARACTER
---@param message string
function Osi.OpenMessageBoxYesNo(character, message) end

---@param character CHARACTER
---@param bookname string
---@param bookGuid ITEM
function Osi.OpenReferencedBookUI(character, bookname, bookGuid) end

---@param character CHARACTER
---@param currentWaypoint string
---@param item ITEM
---@param isFleeing integer
function Osi.OpenWaypointUI(character, currentWaypoint, item, isFleeing) end

---@param character CHARACTER
---@param count integer
function Osi.PartyAddGold(character, count) end

---@param player CHARACTER
---@param resourceName string
---@param delta number
function Osi.PartyIncreaseActionResourceValue(player, resourceName, delta) end

---@param combatGuid GUIDSTRING
function Osi.PauseCombat(combatGuid) end

---@overload fun(character:CHARACTER, item:ITEM, event:string)
---@param character CHARACTER
---@param item ITEM
---@param event string
---@param forcePickUpOnFailure integer
function Osi.Pickup(character, item, event, forcePickUpOnFailure) end

---@param platform GUIDSTRING
---@param spline SPLINE
---@param startNodeId integer
---@param endNodeId integer
---@param speed number
---@param eventId string
---@param ignoreTurnbased integer
function Osi.PlatformMoveOnSpline(platform, spline, startNodeId, endNodeId, speed, eventId, ignoreTurnbased) end

---@param platform GUIDSTRING
---@param targetX number
---@param targetY number
---@param targetZ number
---@param speed number
---@param eventId string
---@param ignoreTurnbased integer
function Osi.PlatformMoveTo(platform, targetX, targetY, targetZ, speed, eventId, ignoreTurnbased) end

---@param object GUIDSTRING
---@param bool integer
function Osi.PlatformSetOnStage(object, bool) end

---@overload fun(sourceObject:GUIDSTRING, animation:ANIMATION)
---@param sourceObject GUIDSTRING
---@param animation ANIMATION
---@param event string
function Osi.PlayAnimation(sourceObject, animation, event) end

---@param object GUIDSTRING
---@param target GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param sourceBone string
---@param targetBone string
function Osi.PlayBeamEffect(object, target, fxName, sourceBone, targetBone) end

---@overload fun(object:GUIDSTRING, fxName:EFFECTRESOURCE)
---@overload fun(object:GUIDSTRING, fxName:EFFECTRESOURCE, bone:string)
---@param object GUIDSTRING
---@param fxName EFFECTRESOURCE
---@param bone string
---@param scale number
function Osi.PlayEffect(object, fxName, bone, scale) end

---@overload fun(fxName:EFFECTRESOURCE, x:number, y:number, z:number)
---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param scale number
function Osi.PlayEffectAtPosition(fxName, x, y, z, scale) end

---@param fxName EFFECTRESOURCE
---@param x number
---@param y number
---@param z number
---@param yangle number
---@param scale number
function Osi.PlayEffectAtPositionAndRotation(fxName, x, y, z, yangle, scale) end

---@param character CHARACTER
---@param soundEvent string
function Osi.PlayHUDSound(character, soundEvent) end

---@param character CHARACTER
---@param soundResource GUIDSTRING
function Osi.PlayHUDSoundResource(character, soundResource) end

---@param sourceObject GUIDSTRING
---@param startAnimation ANIMATION
---@param loopAnimation ANIMATION
---@param endAnimation ANIMATION
---@param loopVariation1 ANIMATION
---@param loopVariation2 ANIMATION
---@param loopVariation3 ANIMATION
---@param loopVariation4 ANIMATION
function Osi.PlayLoopingAnimation(sourceObject, startAnimation, loopAnimation, endAnimation, loopVariation1, loopVariation2, loopVariation3, loopVariation4) end

---@param character CHARACTER
---@param dialogGuidString DIALOGRESOURCE
---@param nodePrefix string
function Osi.PlayMovieForDialog(character, dialogGuidString, nodePrefix) end

---@param object GUIDSTRING
---@param soundEvent string
function Osi.PlaySound(object, soundEvent) end

---@param object GUIDSTRING
---@param soundResource GUIDSTRING
function Osi.PlaySoundResource(object, soundResource) end

---@param character CHARACTER
function Osi.PopUnsheathedState(character) end

---@param startingDialog integer
function Osi.PrepareLevelStartingDialog(startingDialog) end

---@param achievementID string
---@param character CHARACTER
---@param progress integer
function Osi.ProgressAchievement(achievementID, character, progress) end

---@overload fun(character:CHARACTER)
---@param character CHARACTER
---@param sendPurgedEvent integer
function Osi.PurgeOsirisQueue(character, sendPurgedEvent) end

---@param character CHARACTER
---@param eState UNSHEATHSTATE
function Osi.PushUnsheathedState(character, eState) end

---@param character CHARACTER
---@param questID string
function Osi.QuestAdd(character, questID) end

---@param questID string
function Osi.QuestClose(questID) end

---@param messageId string
function Osi.QuestMessageHide(messageId) end

---@param messageId string
---@param localizedTextKey string
function Osi.QuestMessageShow(messageId, localizedTextKey) end

---@param messageId string
---@param localizedTextKey string
---@param initialCount integer
---@param totalCount integer
---@param localizedCountTextKey string
function Osi.QuestMessageWithCounterShow(messageId, localizedTextKey, initialCount, totalCount, localizedCountTextKey) end

---@param quest string
---@param categoryID string
function Osi.QuestSetCategory(quest, categoryID) end

---@overload fun(questID:string, stateID:string)
---@param character CHARACTER
---@param questID string
---@param stateID string
function Osi.QuestUpdate(character, questID, stateID) end

---@param messageId string
---@param deltaUpdateAmount integer
function Osi.QuestUpdateMessageCounter(messageId, deltaUpdateAmount) end

---@param eventId string
function Osi.ReadyCheckCancel(eventId) end

---@param eventId string
---@param translationId string
---@param force integer
---@param initiator CHARACTER
function Osi.ReadyCheckGlobal(eventId, translationId, force, initiator) end

---@param eventId string
---@param translationId string
---@param force integer
---@param initiator CHARACTER
---@param character1 CHARACTER
---@param character2 CHARACTER
---@param character3 CHARACTER
function Osi.ReadyCheckSpecific(eventId, translationId, force, initiator, character1, character2, character3) end

---@param entity GUIDSTRING
---@param timer string
function Osi.RealtimeObjectTimerCancel(entity, timer) end

---@param entity GUIDSTRING
---@param timer string
---@param time2 integer
function Osi.RealtimeObjectTimerLaunch(entity, timer, time2) end

---@param character CHARACTER
---@param recruiter CHARACTER
function Osi.RegisterAsCompanion(character, recruiter) end

---@param waypointName string
---@param item ITEM
function Osi.RegisterWaypoint(waypointName, item) end

---@param character CHARACTER
function Osi.RemoveAllPartyFollowers(character) end

---@param character CHARACTER
function Osi.RemoveAllTadpolePowers(character) end

---@param object CHARACTER
---@param boosts string
---@param removeOnlyFirstDescMatch integer
---@param sourceID string
---@param cause GUIDSTRING
function Osi.RemoveBoosts(object, boosts, removeOnlyFirstDescMatch, sourceID, cause) end

---@param object GUIDSTRING
---@param preset string
function Osi.RemoveCustomMaterialOverride(object, preset) end

---@param object GUIDSTRING
---@param resource string
function Osi.RemoveCustomMaterialResourceOverride(object, resource) end

---@param character CHARACTER
---@param visual GUIDSTRING
function Osi.RemoveCustomVisualOvirride(character, visual) end

---@param bookname string
---@param entryname string
function Osi.RemoveEntryFromCustomBook(bookname, entryname) end

---@param object GUIDSTRING
function Osi.RemoveFogVolume(object) end

---@param source GUIDSTRING
---@param amount integer
function Osi.RemoveGoldFromMagicPockets(source, amount) end

---@param target GUIDSTRING
function Osi.RemoveHarmfulStatuses(target) end

---@param bookname string
---@param entryname string
function Osi.RemoveIllustrationFromCustomBook(bookname, entryname) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.RemovePartyFollower(follower, leader) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.RemovePassive(entity, passiveID) end

---@param character CHARACTER
---@param tag TAG
function Osi.RemovePreferredAiTargetTag(character, tag) end

---@overload fun(character:CHARACTER, spell:string)
---@param character CHARACTER
---@param spell string
---@param removeContainerSpells integer
function Osi.RemoveSpell(character, spell, removeContainerSpells) end

---@param entity GUIDSTRING
function Osi.RemoveSplatters(entity) end

---@overload fun(target:GUIDSTRING, status:string)
---@param target GUIDSTRING
---@param status string
---@param cause GUIDSTRING
function Osi.RemoveStatus(target, status, cause) end

---@overload fun(target:GUIDSTRING, statusGroup:string)
---@param target GUIDSTRING
---@param statusGroup string
---@param cause GUIDSTRING
function Osi.RemoveStatusesWithGroup(target, statusGroup, cause) end

---@param target GUIDSTRING
---@param statusType string
---@param cause GUIDSTRING
function Osi.RemoveStatusesWithType(target, statusType, cause) end

---@param character CHARACTER
---@param die integer
function Osi.RemoveSummons(character, die) end

---@param target GUIDSTRING
---@param surfaceLayer string
---@param radius number
function Osi.RemoveSurfaceLayer(target, surfaceLayer, radius) end

---@param x number
---@param y number
---@param z number
---@param surfaceLayer string
---@param radius number
function Osi.RemoveSurfaceLayerAtPosition(x, y, z, surfaceLayer, radius) end

---@param object GUIDSTRING
function Osi.RemoveTrackedSoundEntity(object) end

---@param object GUIDSTRING
function Osi.RemoveTransforms(object) end

---@overload fun(roller:CHARACTER, rollSubject:GUIDSTRING, rollType:string, difficultyClassID:DIFFICULTYCLASS, event:string)
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param skillOrAbility string
---@param difficultyClassID DIFFICULTYCLASS
---@param rollerAdvantage integer
---@param event string
function Osi.RequestActiveRoll(roller, rollSubject, rollType, skillOrAbility, difficultyClassID, rollerAdvantage, event) end

---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param rollerSkillOrAbility string
---@param subjectSkillOrAbility string
---@param rollerAdvantage integer
---@param subjectAdvantage integer
---@param event string
function Osi.RequestActiveRollVersusSkill(roller, rollSubject, rollType, rollerSkillOrAbility, subjectSkillOrAbility, rollerAdvantage, subjectAdvantage, event) end

function Osi.RequestAdvanceDay() end

---@param target CHARACTER
function Osi.RequestAutoLevel(target) end

---@param item ITEM
function Osi.RequestDelete(item) end

---@param character CHARACTER
function Osi.RequestDeleteTemporary(character) end

---@param initiator CHARACTER
function Osi.RequestEndTheDay(initiator) end

---@param character CHARACTER
function Osi.RequestGatherAtCamp(character) end

---@param target CHARACTER
function Osi.RequestInitialLevel(target) end

---@param initiator CHARACTER
---@param isForced integer
function Osi.RequestLongRest(initiator, isForced) end

function Osi.RequestLongRestConfirmed() end

---@param localizedTextKey string
function Osi.RequestLongRestDeny(localizedTextKey) end

---@param character CHARACTER
function Osi.RequestLongRestFinish(character) end

---@param timeline TIMELINERESOURCE
function Osi.RequestLongRestSetTimeline(timeline) end

function Osi.RequestLongRestSyncedFinish() end

function Osi.RequestLongRestWaiting() end

---@param player CHARACTER
---@param tutorialID string
function Osi.RequestModalTutorial(player, tutorialID) end

---@overload fun(roller:CHARACTER, rollSubject:GUIDSTRING, rollType:string, difficultyClassID:DIFFICULTYCLASS, event:string)
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param skillOrAbility string
---@param difficultyClassID DIFFICULTYCLASS
---@param rollerAdvantage integer
---@param event string
function Osi.RequestPassiveRoll(roller, rollSubject, rollType, skillOrAbility, difficultyClassID, rollerAdvantage, event) end

---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param rollType string
---@param rollerSkillOrAbility string
---@param subjectSkillOrAbility string
---@param rollerAdvantage integer
---@param subjectAdvantage integer
---@param event string
function Osi.RequestPassiveRollVersusSkill(roller, rollSubject, rollType, rollerSkillOrAbility, subjectSkillOrAbility, rollerAdvantage, subjectAdvantage, event) end

---@param x number
---@param y number
---@param z number
---@param target GUIDSTRING
---@param source GUIDSTRING
function Osi.RequestPing(x, y, z, target, source) end

---@param character CHARACTER
---@param requestId integer
---@param requestAccepted integer
function Osi.RequestProcessed(character, requestId, requestAccepted) end

---@param target GUIDSTRING
function Osi.RequestRespec(target) end

---@param target GUIDSTRING
---@param archetype string
function Osi.RequestSetBaseArchetype(target, archetype) end

---@param target GUIDSTRING
---@param swarmGroup string
function Osi.RequestSetSwarmGroup(target, swarmGroup) end

---@param entity GUIDSTRING
function Osi.ResetCanBePickpocketed(entity) end

---@param character CHARACTER
function Osi.ResetCooldowns(character) end

---@param entity GUIDSTRING
function Osi.ResetIsDroppedOnDeath(entity) end

---@param entity GUIDSTRING
function Osi.ResetIsTradable(entity) end

---@param faction1 FACTION
---@param faction2 FACTION
function Osi.ResetRelation(faction1, faction2) end

---@param userID integer
---@param askPlayer integer
function Osi.ResetTutorialsRequest(userID, askPlayer) end

---@param character CHARACTER
function Osi.RestoreAnubisState(character) end

---@param character CHARACTER
function Osi.RestoreParty(character) end

---@param combatGuid GUIDSTRING
function Osi.ResumeCombat(combatGuid) end

---@overload fun(character:CHARACTER)
---@param character CHARACTER
---@param resurrectAnimationOverride ANIMATION
---@param resetXPReward integer
function Osi.Resurrect(character, resurrectAnimationOverride, resetXPReward) end

---@param character CHARACTER
function Osi.SaveAnubisState(character) end

---@overload fun(item:ITEM, x:number, y:number, z:number)
---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param maxDistance number
function Osi.ScatterAt(item, x, y, z, maxDistance) end

---@param inventoryHolder GUIDSTRING
function Osi.ScatterStoryItems(inventoryHolder) end

---@param character CHARACTER
---@param seconds number
---@param fadeStyle integer
---@param fadeID string
function Osi.ScreenFadeTo(character, seconds, fadeStyle, fadeID) end

---@param sourceEntity GUIDSTRING
---@param targetEntity GUIDSTRING
---@param event string
function Osi.SendArenaCameraEvent(sourceEntity, targetEntity, event) end

---@param notificationType integer
---@param stringParam string
---@param inNumberOfRounds integer
function Osi.SendArenaNotification(notificationType, stringParam, inNumberOfRounds) end

---@param entity GUIDSTRING
---@param player CHARACTER
function Osi.SendToCampChest(entity, player) end

---@param achievementID string
---@param value integer
function Osi.SetAchievementProgress(achievementID, value) end

---@param achievementID string
---@param character CHARACTER
---@param progress integer
function Osi.SetAchievementProgressForPlayer(achievementID, character, progress) end

---@param target GUIDSTRING
---@param aiHint TAG
function Osi.SetAiHint(target, aiHint) end

---@param entity GUIDSTRING
---@param isAmbushing integer
function Osi.SetAmbushing(entity, isAmbushing) end

---@param object GUIDSTRING
---@param eventName string
function Osi.SetAnimationEvent(object, eventName) end

---@param object GUIDSTRING
---@param eventName string
---@param userParam integer
function Osi.SetAnimationEventInt(object, eventName, userParam) end

---@param character CHARACTER
---@param eArmorSet ARMOURSET
function Osi.SetArmourSet(character, eArmorSet) end

---@param character CHARACTER
---@param isBlocked integer
function Osi.SetBlockDismiss(character, isBlocked) end

---@param qualityIndex integer
function Osi.SetCampQuality(qualityIndex) end

---@param entity GUIDSTRING
---@param bool integer
function Osi.SetCanBePickpocketed(entity, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetCanExamine(item, bool) end

---@param entity GUIDSTRING
---@param enabled integer
function Osi.SetCanFight(entity, enabled) end

---@param character CHARACTER
---@param canGossip integer
function Osi.SetCanGossip(character, canGossip) end

---@param item ITEM
---@param bool integer
function Osi.SetCanInteract(item, bool) end

---@param entity GUIDSTRING
---@param enabled integer
function Osi.SetCanJoinCombat(entity, enabled) end

---@param character CHARACTER
---@param canOpenDoors integer
function Osi.SetCanOpenDoorsOverride(character, canOpenDoors) end

---@param item ITEM
---@param bool integer
function Osi.SetCanPickUp(item, bool) end

---@param character CHARACTER
---@param canSpotSneakers integer
function Osi.SetCanSpotSneakers(character, canSpotSneakers) end

---@param trader CHARACTER
---@param bool integer
function Osi.SetCanTrade(trader, bool) end

---@param character CHARACTER
---@param bool integer
function Osi.SetCharacterLootOwned(character, bool) end

---@param character CHARACTER
---@param value integer
function Osi.SetCharacterLootable(character, value) end

---@param character GUIDSTRING
---@param portrait GUIDSTRING
function Osi.SetCharacterOnPortraitPainting(character, portrait) end

---@param target GUIDSTRING
---@param groupID string
---@param enemy GUIDSTRING
function Osi.SetCombatGroupAndEnterCombat(target, groupID, enemy) end

---@param target GUIDSTRING
---@param groupID string
function Osi.SetCombatGroupID(target, groupID) end

---@param character CHARACTER
---@param treasure string
function Osi.SetCustomTradeTreasure(character, treasure) end

---@param ownerObject GUIDSTRING
---@param value integer
function Osi.SetDetached(ownerObject, value) end

---@param item ITEM
---@param bool integer
function Osi.SetDisableUse(item, bool) end

---@param character CHARACTER
---@param value integer
function Osi.SetDoNotFaceFlag(character, value) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param unicast integer
function Osi.SetDualEntityEvent(object1, object2, event, unicast) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string, dialog:DIALOGRESOURCE)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param dialog DIALOGRESOURCE
---@param unicast integer
function Osi.SetDualEntityEventDialog(object1, object2, event, dialog, unicast) end

---@overload fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string, realParam:number)
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
---@param realParam number
---@param unicast integer
function Osi.SetDualEntityEventReal(object1, object2, event, realParam, unicast) end

---@param bookname string
---@param edition integer
function Osi.SetEditionForCustomBook(bookname, edition) end

---@param state integer
function Osi.SetEndTheDayState(state) end

---@overload fun(object:GUIDSTRING, event:string)
---@param object GUIDSTRING
---@param event string
---@param unicast integer
function Osi.SetEntityEvent(object, event, unicast) end

---@overload fun(object:GUIDSTRING, event:string, dialog:DIALOGRESOURCE)
---@param object GUIDSTRING
---@param event string
---@param dialog DIALOGRESOURCE
---@param unicast integer
function Osi.SetEntityEventDialog(object, event, dialog, unicast) end

---@overload fun(object:GUIDSTRING, event:string, guidParam:GUIDSTRING)
---@param object GUIDSTRING
---@param event string
---@param guidParam GUIDSTRING
---@param unicast integer
function Osi.SetEntityEventGuid(object, event, guidParam, unicast) end

---@overload fun(object:GUIDSTRING, event:string, realParam:number)
---@param object GUIDSTRING
---@param event string
---@param realParam number
---@param unicast integer
function Osi.SetEntityEventReal(object, event, realParam, unicast) end

---@param target GUIDSTRING
---@param faction FACTION
function Osi.SetFaction(target, faction) end

---@overload fun(flag:FLAG)
---@overload fun(flag:FLAG, object:GUIDSTRING)
---@overload fun(flag:FLAG, object:GUIDSTRING, dialogInstance:integer)
---@param flag FLAG
---@param object GUIDSTRING
---@param dialogInstance integer
---@param sendFlagSetEventIfChanged integer
function Osi.SetFlag(flag, object, dialogInstance, sendFlagSetEventIfChanged) end

---@param follower CHARACTER
---@param leader CHARACTER
function Osi.SetFollowCharacter(follower, leader) end

---@param target GUIDSTRING
---@param bool integer
function Osi.SetForceUpdate(target, bool) end

---@param modifier number
function Osi.SetGlobalPriceModifier(modifier) end

---@param entity GUIDSTRING
---@param god GUIDSTRING
function Osi.SetGodOverride(entity, god) end

---@overload fun(item:ITEM, gravityType:GRAVITYTYPE)
---@param item ITEM
---@param gravityType GRAVITYTYPE
---@param instigator GUIDSTRING
function Osi.SetGravity(item, gravityType, instigator) end

---@param speaker GUIDSTRING
---@param hasDialog integer
function Osi.SetHasDialog(speaker, hasDialog) end

---@param speaker GUIDSTRING
---@param hasOsirisDialog integer
function Osi.SetHasOsirisDialog(speaker, hasOsirisDialog) end

---@overload fun(entity:GUIDSTRING, hp:integer)
---@param entity GUIDSTRING
---@param hp integer
---@param healTypes string
function Osi.SetHitpoints(entity, hp, healTypes) end

---@overload fun(entity:GUIDSTRING, percentage:number)
---@param entity GUIDSTRING
---@param percentage number
---@param healTypes string
function Osi.SetHitpointsPercentage(entity, percentage, healTypes) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param source2 GUIDSTRING
---@param target2 GUIDSTRING
function Osi.SetHostileAndEnterCombat(sourceFaction, targetFaction, source2, target2) end

---@param player CHARACTER
---@param item ITEM
function Osi.SetHotbarItem(player, item) end

---@param character CHARACTER
---@param bool integer
function Osi.SetImmortal(character, bool) end

---@param entity GUIDSTRING
---@param combatGuid GUIDSTRING
---@param bool integer
function Osi.SetInNarrativeCombat(entity, combatGuid, bool) end

---@param entity GUIDSTRING
---@param faction FACTION
---@param relation integer
function Osi.SetIndividualRelation(entity, faction, relation) end

---@param target GUIDSTRING
---@param enabled integer
function Osi.SetIsBoss(target, enabled) end

---@param entity GUIDSTRING
---@param bool integer
function Osi.SetIsDroppedOnDeath(entity, bool) end

---@param character CHARACTER
---@param isInDangerZone integer
function Osi.SetIsInDangerZone(character, isInDangerZone) end

---@param entity GUIDSTRING
---@param eIsTradableType TRADABLETYPE
function Osi.SetIsTradable(entity, eIsTradableType) end

---@param joinBlockType JOINBLOCKTYPE
function Osi.SetJoinBlock(joinBlockType) end

---@param item ITEM
---@param bool integer
function Osi.SetKnown(item, bool) end

---@param object GUIDSTRING
---@param level integer
function Osi.SetLevel(object, level) end

---@param instanceID integer
---@param startingDialog integer
function Osi.SetLevelStartingDialog(instanceID, startingDialog) end

---@param isEnabled integer
function Osi.SetLongRestAvailable(isEnabled) end

---@param source GUIDSTRING
---@param flag FLAG
---@param sendFlagSetEventsIfChanged integer
function Osi.SetMagicPocketsFlag(source, flag, sendFlagSetEventsIfChanged) end

---@param partySizeOverride integer
function Osi.SetMaxPartySizeOverride(partySizeOverride) end

---@param item ITEM
---@param bool integer
function Osi.SetMovable(item, bool) end

---@param character CHARACTER
---@param flagValue integer
function Osi.SetNoFollowFlag(character, flagValue) end

---@param object GUIDSTRING
---@param bool integer
function Osi.SetOnStage(object, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetOnlyOwnerCanUse(item, bool) end

---@param item ITEM
---@param newOwner CHARACTER
function Osi.SetOriginalOwner(item, newOwner) end

---@param item ITEM
---@param newOwner CHARACTER
function Osi.SetOwner(item, newOwner) end

---@param playersAreDreaming integer
function Osi.SetPlayersAreDreaming(playersAreDreaming) end

---@param item ITEM
---@param bool integer
function Osi.SetPortalIsOpen(item, bool) end

---@param itemOrChar GUIDSTRING
---@param reaction string
---@param priority integer
function Osi.SetReactionPriority(itemOrChar, reaction, priority) end

---@param character CHARACTER
---@param value integer
function Osi.SetReadyCheckBlocked(character, value) end

---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param relation integer
function Osi.SetRelation(sourceFaction, targetFaction, relation) end

---@param character CHARACTER
---@param otherCharacter CHARACTER
function Osi.SetRelationTemporaryHostile(character, otherCharacter) end

---@param isEnabled integer
function Osi.SetShortRestAvailable(isEnabled) end

---@param item ITEM
---@param amount integer
function Osi.SetStackAmount(item, amount) end

---@param target GUIDSTRING
---@param enabled integer
function Osi.SetStayInAiHints(target, enabled) end

---@param target GUIDSTRING
---@param localizedTextKey string
function Osi.SetStoryDisplayName(target, localizedTextKey) end

---@param item ITEM
---@param bool integer
function Osi.SetStoryItem(item, bool) end

---@param character CHARACTER
---@param reason string
function Osi.SetStoryShortRestDisabled(character, reason) end

---@param character CHARACTER
function Osi.SetStoryShortRestEnabled(character) end

---@param character CHARACTER
---@param subRegionID string
---@param showNotification integer
function Osi.SetSubRegionName(character, subRegionID, showNotification) end

---@param character CHARACTER
---@param tadpoleTreeState integer
function Osi.SetTadpoleTreeState(character, tadpoleTreeState) end

---@param target GUIDSTRING
---@param tag TAG
function Osi.SetTag(target, tag) end

---@param nPCtrader CHARACTER
---@param tag TAG
---@param modifier number
function Osi.SetTagPriceModifier(nPCtrader, tag, modifier) end

---@param source ITEM
---@param teleportTarget GUIDSTRING
function Osi.SetTeleportTargetOverride(source, teleportTarget) end

---@param item ITEM
---@param bool integer
function Osi.SetTrapArmed(item, bool) end

---@param item ITEM
---@param bool integer
function Osi.SetTrapDiscovered(item, bool) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.SetTutorialShown(character, tutorialGuid) end

---@param item ITEM
---@param bool integer
function Osi.SetUseRemotely(item, bool) end

---@param target GUIDSTRING
---@param varName string
---@param varValue string
function Osi.SetVarFixedString(target, varName, varValue) end

---@param target GUIDSTRING
---@param varName string
---@param varValue number
function Osi.SetVarFloat(target, varName, varValue) end

---@param target GUIDSTRING
---@param varName string
---@param x number
---@param y number
---@param z number
function Osi.SetVarFloat3(target, varName, x, y, z) end

---@param target GUIDSTRING
---@param varName string
---@param varValue integer
function Osi.SetVarInteger(target, varName, varValue) end

---@param source GUIDSTRING
---@param varName string
---@param object GUIDSTRING
function Osi.SetVarObject(source, varName, object) end

---@param target GUIDSTRING
---@param varName string
---@param varValue string
function Osi.SetVarString(target, varName, varValue) end

---@param source GUIDSTRING
---@param varName string
---@param object GUIDSTRING
function Osi.SetVarUUID(source, varName, object) end

---@param object GUIDSTRING
---@param bool integer
function Osi.SetVisible(object, bool) end

---@param character CHARACTER
---@param enabled integer
---@param immediately integer
function Osi.SetWeaponUnsheathed(character, enabled, immediately) end

---@param playerCharacter CHARACTER
---@param onOff integer
function Osi.SharedTurnBaseMode(playerCharacter, onOff) end

---@param activityId string
function Osi.ShowActivity(activityId) end

---@param type string
function Osi.ShowAllActivities(type) end

---@param character CHARACTER
---@param error string
function Osi.ShowError(character, error) end

---@overload fun()
---@param reason string
function Osi.ShowGameOverMenu(reason) end

---@param character CHARACTER
---@param markerID string
---@param show integer
function Osi.ShowMapMarker(character, markerID, show) end

---@param character CHARACTER
---@param text string
function Osi.ShowNotification(character, text) end

---@param character CHARACTER
---@param type integer
---@param uIInstance string
function Osi.ShowStoryElementUI(character, type, uIInstance) end

---@param character CHARACTER
---@param tutorialGuid UNIFIEDTUTORIAL
function Osi.ShowTutorial(character, tutorialGuid) end

---@param enable integer
function Osi.ShroudRender(enable) end

function Osi.ShutdownCrimeSystem() end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.SitOnEntity(entity, entity2) end

---@param entity GUIDSTRING
function Osi.SitOnGround(entity) end

---@param character CHARACTER
---@param eventName string
function Osi.SonyRealtimeMultiplayerEvent(character, eventName) end

---@param entity GUIDSTRING
---@param entity2 GUIDSTRING
function Osi.StandOnEntity(entity, entity2) end

---@param activityId string
function Osi.StartActivity(activityId) end

---@param spline SPLINE
---@param character CHARACTER
---@param fadeTime number
---@param hideUI integer
---@param freeze integer
---@param startIndex integer
function Osi.StartCameraSpline(spline, character, fadeTime, hideUI, freeze, startIndex) end

---@param target GUIDSTRING
function Osi.StartChangeAppearance(target) end

function Osi.StartCharacterCreation() end

---@param target GUIDSTRING
function Osi.StartHenchmen(target) end

---@param bark VOICEBARKRESOURCE
---@param source CHARACTER
function Osi.StartInteractiveVoiceBark(bark, source) end

---@param player CHARACTER
---@param npc CHARACTER
---@param success integer
function Osi.StartPickpocket(player, npc, success) end

---@param target GUIDSTRING
function Osi.StartRespec(target) end

---@param target GUIDSTRING
function Osi.StartRespecRestore(target) end

---@param target GUIDSTRING
function Osi.StartRespecToOathbreaker(target) end

---@param target GUIDSTRING
---@param subclass GUIDSTRING
function Osi.StartRespecToSubclass(target, subclass) end

---@param character CHARACTER
function Osi.StartSightEvents(character) end

---@param bark VOICEBARKRESOURCE
---@param source CHARACTER
function Osi.StartVoiceBark(bark, source) end

---@param character CHARACTER
---@param target GUIDSTRING
---@param snapToTarget integer
function Osi.SteerTo(character, target, snapToTarget) end

---@param character CHARACTER
---@param fxName string
function Osi.StopAllEffectsWithName(character, fxName) end

---@param target GUIDSTRING
---@param abort integer
function Osi.StopAnimation(target, abort) end

---@param spline SPLINE
---@param character CHARACTER
function Osi.StopCameraSpline(spline, character) end

---@param surfaceActionHandle INTEGER64
function Osi.StopDrawSurfaceOnPath(surfaceActionHandle) end

---@param follower CHARACTER
function Osi.StopFollow(follower) end

---@param fxHandle INTEGER64
function Osi.StopLoopEffect(fxHandle) end

---@param targetObject GUIDSTRING
function Osi.StopPatrol(targetObject) end

---@param character CHARACTER
function Osi.StopSightEvents(character) end

---@param dialogID integer
function Osi.StopWorldTimeline(dialogID) end

---@param levelName string
---@param event string
---@param movie string
function Osi.TeleportPartiesToLevelWithMovie(levelName, event, movie) end

---@param target GUIDSTRING
---@param event string
---@param movie string
function Osi.TeleportPartiesWithMovie(target, event, movie) end

---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer)
---@overload fun(sourceObject:GUIDSTRING, targetObject:GUIDSTRING, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer, teleportSummons:integer)
---@param sourceObject GUIDSTRING
---@param targetObject GUIDSTRING
---@param event string
---@param teleportLinkedCharacters integer
---@param teleportPartyFollowers integer
---@param teleportSummons integer
---@param leaveCombat integer
---@param snapToGround integer
function Osi.TeleportTo(sourceObject, targetObject, event, teleportLinkedCharacters, teleportPartyFollowers, teleportSummons, leaveCombat, snapToGround) end

---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number)
---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number, event:string, teleportLinkedCharacters:integer)
---@overload fun(sourceObject:GUIDSTRING, x:number, y:number, z:number, event:string, teleportLinkedCharacters:integer, teleportPartyFollowers:integer, teleportSummons:integer)
---@param sourceObject GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param event string
---@param teleportLinkedCharacters integer
---@param teleportPartyFollowers integer
---@param teleportSummons integer
---@param leaveCombat integer
---@param snapToGround integer
function Osi.TeleportToPosition(sourceObject, x, y, z, event, teleportLinkedCharacters, teleportPartyFollowers, teleportSummons, leaveCombat, snapToGround) end

---@overload fun(itemTemplate:ITEMROOT, inventoryHolder:GUIDSTRING, count:integer)
---@param itemTemplate ITEMROOT
---@param inventoryHolder GUIDSTRING
---@param count integer
---@param showNotification integer
function Osi.TemplateAddTo(itemTemplate, inventoryHolder, count, showNotification) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateDropFromCharacter(itemTemplate, character, count) end

---@param itemTemplate ITEMROOT
---@param object GUIDSTRING
---@param count integer
function Osi.TemplateRemoveFrom(itemTemplate, object, count) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateRemoveFromParty(itemTemplate, character, count) end

---@param itemTemplate ITEMROOT
---@param character CHARACTER
---@param count integer
function Osi.TemplateRemoveFromUser(itemTemplate, character, count) end

---@param timer string
function Osi.TimerCancel(timer) end

---@param timer string
---@param time2 integer
function Osi.TimerLaunch(timer, time2) end

---@param timer string
function Osi.TimerPause(timer) end

---@param timer string
function Osi.TimerUnpause(timer) end

---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING)
---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING, amount:integer)
---@overload fun(object:GUIDSTRING, targetObject:GUIDSTRING, amount:integer, showNotification:integer)
---@param object GUIDSTRING
---@param targetObject GUIDSTRING
---@param amount integer
---@param showNotification integer
---@param clearOriginalOwner integer
function Osi.ToInventory(object, targetObject, amount, showNotification, clearOriginalOwner) end

---@param item ITEM
---@param x number
---@param y number
---@param z number
---@param pitch number
---@param yaw number
---@param roll number
function Osi.ToTransform(item, x, y, z, pitch, yaw, roll) end

---@param entity GUIDSTRING
---@param passiveID string
function Osi.TogglePassive(entity, passiveID) end

---@param eventName string
---@param eventData string
---@param character CHARACTER
function Osi.TrackAnalyticsInfo(eventName, eventData, character) end

---@param character CHARACTER
---@param toCharacter CHARACTER
function Osi.TransferItemsToCharacter(character, toCharacter) end

---@param character CHARACTER
function Osi.TransferItemsToParty(character) end

---@param character CHARACTER
function Osi.TransferItemsToUser(character) end

---@param object GUIDSTRING
---@param targetTemplate GUIDSTRING
---@param shapeshiftRules SHAPESHIFTRULE
function Osi.Transform(object, targetTemplate, shapeshiftRules) end

---@param target GUIDSTRING
---@param transformType string
---@param transformLayer string
---@param radius number
---@param lifetime number
---@param owner GUIDSTRING
function Osi.TransformSurface(target, transformType, transformLayer, radius, lifetime, owner) end

---@param x number
---@param y number
---@param z number
---@param transformType string
---@param transformLayer string
---@param radius number
---@param lifetime number
---@param owner GUIDSTRING
function Osi.TransformSurfaceAtPosition(x, y, z, transformType, transformLayer, radius, lifetime, owner) end

---@param areaTrigger TRIGGER
function Osi.TriggerClearItemsOwner(areaTrigger) end

---@param trigger TRIGGER
function Osi.TriggerDespawnCrowd(trigger) end

---@param trigger TRIGGER
---@param event string
---@param completionEvent string
function Osi.TriggerLaunchIterator(trigger, event, completionEvent) end

---@param character CHARACTER
---@param movieName string
function Osi.TriggerMovieEndFadeIn(character, movieName) end

---@param trigger TRIGGER
---@param character CHARACTER
function Osi.TriggerRegisterForCharacter(trigger, character) end

---@param trigger TRIGGER
function Osi.TriggerRegisterForItems(trigger) end

---@param trigger TRIGGER
function Osi.TriggerRegisterForPlayers(trigger) end

---@param trigger TRIGGER
---@param itemTemplate ITEMROOT
function Osi.TriggerRemoveItemTemplates(trigger, itemTemplate) end

---@param trigger TRIGGER
function Osi.TriggerResetAtmosphere(trigger) end

---@param trigger TRIGGER
function Osi.TriggerResetLighting(trigger) end

---@param trigger TRIGGER
---@param atmosphereUUID string
function Osi.TriggerSetAtmosphere(trigger, atmosphereUUID) end

---@param trigger TRIGGER
---@param behaviour CROWDBEHAVIOUR
function Osi.TriggerSetCrowdBehaviour(trigger, behaviour) end

---@param trigger TRIGGER
---@param enable integer
function Osi.TriggerSetCrowdSpawningEnable(trigger, enable) end

---@param areaTrigger TRIGGER
---@param owner CHARACTER
function Osi.TriggerSetItemsOwner(areaTrigger, owner) end

---@param trigger TRIGGER
---@param lightingUUID string
function Osi.TriggerSetLighting(trigger, lightingUUID) end

---@param trigger TRIGGER
---@param name string
---@param value number
---@param recursive integer
function Osi.TriggerSetSoundRTPC(trigger, name, value, recursive) end

---@param trigger TRIGGER
---@param stateGroup string
---@param state2 string
---@param recursive integer
function Osi.TriggerSetSoundState(trigger, stateGroup, state2, recursive) end

---@param trigger TRIGGER
---@param character CHARACTER
function Osi.TriggerUnregisterForCharacter(trigger, character) end

---@param trigger TRIGGER
function Osi.TriggerUnregisterForItems(trigger) end

---@param trigger TRIGGER
function Osi.TriggerUnregisterForPlayers(trigger) end

---@param entity GUIDSTRING
---@param timer string
function Osi.TurnBasedTimerCancel(entity, timer) end

---@param entity GUIDSTRING
---@param timer string
---@param localizedTextKey string
---@param time2 integer
function Osi.TurnBasedTimerLaunch(entity, timer, localizedTextKey, time2) end

---@param character GUIDSTRING
function Osi.UnblockFlee(character) end

---@param character CHARACTER
---@param item ITEM
function Osi.Unequip(character, item) end

---@param character CHARACTER
function Osi.Unfreeze(character) end

---@param target GUIDSTRING
function Osi.UnloadItem(target) end

---@param levelTemplate LEVELTEMPLATE
function Osi.UnloadLevelTemplate(levelTemplate) end

---@overload fun(item:ITEM)
---@param item ITEM
---@param character CHARACTER
function Osi.Unlock(item, character) end

---@param achievementID string
---@param character CHARACTER
function Osi.UnlockAchievement(achievementID, character) end

---@param character CHARACTER
---@param dlc DLC
function Osi.UnlockCustomDLC(character, dlc) end

---@param recipeID string
function Osi.UnlockJournalRecipe(recipeID) end

---@param character CHARACTER
---@param recipeID string
---@param showNotification integer
function Osi.UnlockRecipe(character, recipeID, showNotification) end

---@param item ITEM
---@param character CHARACTER
function Osi.UnlockRecipes(item, character) end

---@param waypointName string
---@param trigger TRIGGER
---@param character CHARACTER
function Osi.UnlockWaypoint(waypointName, trigger, character) end

---@param character CHARACTER
function Osi.UnregisterAsCompanion(character) end

---@overload fun(character:CHARACTER, item:ITEM, event:string)
---@param character CHARACTER
---@param item ITEM
---@param useItem integer
---@param isInteraction integer
---@param event string
function Osi.Use(character, item, useItem, isInteraction, event) end

---@overload fun(caster:GUIDSTRING, spellID:string, target:GUIDSTRING)
---@overload fun(caster:GUIDSTRING, spellID:string, target:GUIDSTRING, target2:GUIDSTRING)
---@param caster GUIDSTRING
---@param spellID string
---@param target GUIDSTRING
---@param target2 GUIDSTRING
---@param withoutMove integer
function Osi.UseSpell(caster, spellID, target, target2, withoutMove) end

---@overload fun(caster:GUIDSTRING, spellID:string, x:number, y:number, z:number)
---@param caster GUIDSTRING
---@param spellID string
---@param x number
---@param y number
---@param z number
---@param withoutMove integer
function Osi.UseSpellAtPosition(caster, spellID, x, y, z, withoutMove) end

---@param character CHARACTER
---@param count integer
function Osi.UserAddGold(character, count) end
--#endregion
	
---@param object GUIDSTRING
function Osi.Activated(object) end
	
---@param instanceID integer
---@param player GUIDSTRING
---@param oldIndex integer
---@param newIndex integer
function Osi.ActorSpeakerIndexChanged(instanceID, player, oldIndex, newIndex) end
	
---@param object GUIDSTRING
---@param inventoryHolder GUIDSTRING
---@param addType string
function Osi.AddedTo(object, inventoryHolder, addType) end
	
function Osi.AllLoadedFlagsInPresetReceivedEvent() end
	
---@param object GUIDSTRING
---@param eventName string
---@param wasFromLoad integer
function Osi.AnimationEvent(object, eventName, wasFromLoad) end
	
---@param character CHARACTER
---@param appearEvent string
function Osi.AppearTeleportFailed(character, appearEvent) end
	
---@param ratingOwner CHARACTER
---@param ratedEntity CHARACTER
---@param attemptedApprovalChange integer
---@param clampedApprovalChange integer
---@param newApproval integer
function Osi.ApprovalRatingChangeAttempt(ratingOwner, ratedEntity, attemptedApprovalChange, clampedApprovalChange, newApproval) end
	
---@param ratingOwner CHARACTER
---@param ratedEntity CHARACTER
---@param newApproval integer
function Osi.ApprovalRatingChanged(ratingOwner, ratedEntity, newApproval) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.ArmedTrapUsed(character, item) end
	
---@param character CHARACTER
---@param eArmorSet ARMOURSET
function Osi.ArmorSetChanged(character, eArmorSet) end
	
---@param character CHARACTER
function Osi.AttachedToPartyGroup(character) end
	
---@param defender GUIDSTRING
---@param attackerOwner GUIDSTRING
---@param attacker2 GUIDSTRING
---@param damageType string
---@param damageAmount integer
---@param damageCause string
---@param storyActionID integer
function Osi.AttackedBy(defender, attackerOwner, attacker2, damageType, damageAmount, damageCause, storyActionID) end
	
---@param disarmableItem ITEM
---@param character CHARACTER
---@param itemUsedToDisarm ITEM
---@param bool integer
function Osi.AttemptedDisarm(disarmableItem, character, itemUsedToDisarm, bool) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogEnded(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogForceStopping(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogRequestFailed(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.AutomatedDialogStarted(dialog, instanceID) end
	
---@param character CHARACTER
---@param goal GUIDSTRING
function Osi.BackgroundGoalFailed(character, goal) end
	
---@param character CHARACTER
---@param goal GUIDSTRING
function Osi.BackgroundGoalRewarded(character, goal) end
	
---@param target CHARACTER
---@param oldFaction FACTION
---@param newFaction FACTION
function Osi.BaseFactionChanged(target, oldFaction, newFaction) end
	
---@param spline SPLINE
---@param character CHARACTER
---@param event string
---@param index integer
---@param last integer
function Osi.CameraReachedNode(spline, character, event, index, last) end
	
---@param lootingTarget GUIDSTRING
---@param canBeLooted integer
function Osi.CanBeLootedCapabilityChanged(lootingTarget, canBeLooted) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastSpellFailed(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.CastedSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param character CHARACTER
function Osi.ChangeAppearanceCancelled(character) end
	
---@param character CHARACTER
function Osi.ChangeAppearanceCompleted(character) end
	
function Osi.CharacterCreationFinished() end
	
function Osi.CharacterCreationStarted() end
	
---@param character CHARACTER
---@param item ITEM
---@param slotName EQUIPMENTSLOTNAME
function Osi.CharacterDisarmed(character, item, slotName) end
	
---@param character CHARACTER
function Osi.CharacterJoinedParty(character) end
	
---@param character CHARACTER
function Osi.CharacterLeftParty(character) end
	
---@param character CHARACTER
function Osi.CharacterLoadedInPreset(character) end
	
---@param player CHARACTER
---@param lootedCharacter CHARACTER
function Osi.CharacterLootedCharacter(player, lootedCharacter) end
	
---@param character CHARACTER
function Osi.CharacterMadePlayer(character) end
	
---@param character CHARACTER
function Osi.CharacterMoveFailedUseJump(character) end
	
---@param character CHARACTER
---@param target GUIDSTRING
---@param moveID string
---@param failureReason string
function Osi.CharacterMoveToAndTalkFailed(character, target, moveID, failureReason) end
	
---@param character CHARACTER
---@param target GUIDSTRING
---@param dialog DIALOGRESOURCE
---@param moveID string
function Osi.CharacterMoveToAndTalkRequestDialog(character, target, dialog, moveID) end
	
---@param character CHARACTER
---@param moveID integer
function Osi.CharacterMoveToCancelled(character, moveID) end
	
---@param character CHARACTER
---@param crimeRegion string
---@param crimeID integer
---@param priortiyName string
---@param primaryDialog DIALOGRESOURCE
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
---@param isPrimary integer
function Osi.CharacterOnCrimeSensibleActionNotification(character, crimeRegion, crimeID, priortiyName, primaryDialog, criminal1, criminal2, criminal3, criminal4, isPrimary) end
	
---@param player CHARACTER
---@param npc CHARACTER
function Osi.CharacterPickpocketFailed(player, npc) end
	
---@param player CHARACTER
---@param npc CHARACTER
---@param item ITEM
---@param itemTemplate GUIDSTRING
---@param amount integer
---@param goldValue integer
function Osi.CharacterPickpocketSuccess(player, npc, item, itemTemplate, amount, goldValue) end
	
---@param character CHARACTER
---@param oldUserID integer
---@param newUserID integer
function Osi.CharacterReservedUserIDChanged(character, oldUserID, newUserID) end
	
---@param character CHARACTER
---@param crimeRegion string
---@param unavailableForCrimeID integer
---@param busyCrimeID integer
function Osi.CharacterSelectedAsBestUnavailableFallbackLead(character, crimeRegion, unavailableForCrimeID, busyCrimeID) end
	
---@param character CHARACTER
function Osi.CharacterSelectedClimbOn(character) end
	
---@param character CHARACTER
---@param userID integer
function Osi.CharacterSelectedForUser(character, userID) end
	
---@param character CHARACTER
---@param item ITEM
---@param itemRootTemplate GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param oldOwner CHARACTER
---@param srcContainer ITEM
---@param amount integer
---@param goldValue integer
function Osi.CharacterStoleItem(character, item, itemRootTemplate, x, y, z, oldOwner, srcContainer, amount, goldValue) end
	
---@param character CHARACTER
---@param tag TAG
---@param event string
function Osi.CharacterTagEvent(character, tag, event) end
	
---@param item ITEM
function Osi.Closed(item) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatEnded(combatGuid) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatPaused(combatGuid) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatResumed(combatGuid) end
	
---@param combatGuid GUIDSTRING
---@param round integer
function Osi.CombatRoundStarted(combatGuid, round) end
	
---@param combatGuid GUIDSTRING
function Osi.CombatStarted(combatGuid) end
	
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
---@param character CHARACTER
---@param newItem ITEM
function Osi.Combined(item1, item2, item3, item4, item5, character, newItem) end
	
---@param character CHARACTER
---@param userID integer
function Osi.CompanionSelectedForUser(character, userID) end
	
function Osi.CreditsEnded() end
	
---@param character CHARACTER
---@param crime string
function Osi.CrimeDisabled(character, crime) end
	
---@param character CHARACTER
---@param crime string
function Osi.CrimeEnabled(character, crime) end
	
---@param victim CHARACTER
---@param crimeType string
---@param crimeID integer
---@param evidence GUIDSTRING
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.CrimeIsRegistered(victim, crimeType, crimeID, evidence, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param actedOnImmediately integer
function Osi.CrimeProcessingStarted(crimeID, actedOnImmediately) end
	
---@param defender CHARACTER
---@param attackOwner CHARACTER
---@param attacker CHARACTER
---@param storyActionID integer
function Osi.CriticalHitBy(defender, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param bookName string
function Osi.CustomBookUIClosed(character, bookName) end
	
---@param dlc DLC
---@param userID integer
---@param installed integer
function Osi.DLCUpdated(dlc, userID, installed) end
	
---@param object GUIDSTRING
function Osi.Deactivated(object) end
	
---@param character CHARACTER
function Osi.DeathSaveStable(character) end
	
---@param entity GUIDSTRING
---@param newDeathType DEATHTYPE
function Osi.DeathTypeChanged(entity, newDeathType) end
	
---@param item ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.DestroyedBy(item, destroyer, destroyerOwner, storyActionID) end
	
---@param item ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.DestroyingBy(item, destroyer, destroyerOwner, storyActionID) end
	
---@param character CHARACTER
function Osi.DetachedFromPartyGroup(character) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
function Osi.DialogActorJoinFailed(dialog, instanceID, actor) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
---@param speakerIndex integer
function Osi.DialogActorJoined(dialog, instanceID, actor, speakerIndex) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
---@param actor GUIDSTRING
---@param instanceEnded integer
function Osi.DialogActorLeft(dialog, instanceID, actor, instanceEnded) end
	
---@param target CHARACTER
---@param player CHARACTER
function Osi.DialogAttackRequested(target, player) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogEnded(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogForceStopping(dialog, instanceID) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogRequestFailed(dialog, instanceID) end
	
---@param character CHARACTER
---@param success integer
---@param dialog DIALOGRESOURCE
---@param isDetectThoughts integer
---@param criticality CRITICALITYTYPE
function Osi.DialogRollResult(character, success, dialog, isDetectThoughts, criticality) end
	
---@param target GUIDSTRING
---@param player GUIDSTRING
function Osi.DialogStartRequested(target, player) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.DialogStarted(dialog, instanceID) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.DialogueCapabilityChanged(character, isEnabled) end
	
---@param character CHARACTER
function Osi.Died(character) end
	
---@param difficultyLevel integer
function Osi.DifficultyChanged(difficultyLevel) end
	
---@param character CHARACTER
---@param moveID integer
function Osi.DisappearOutOfSightToCancelled(character, moveID) end
	
---@param donatedObject ITEM
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param donatedObjectValue integer
function Osi.Donated(donatedObject, fromObject, toObject, donatedObjectValue) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param character CHARACTER
function Osi.DoorTemplateClosing(itemTemplate, item2, character) end
	
---@param character CHARACTER
---@param isDowned integer
function Osi.DownedChanged(character, isDowned) end
	
---@param object GUIDSTRING
---@param mover CHARACTER
function Osi.DroppedBy(object, mover) end
	
---@param object1 GUIDSTRING
---@param object2 GUIDSTRING
---@param event string
function Osi.DualEntityEvent(object1, object2, event) end
	
---@param character CHARACTER
function Osi.Dying(character) end
	
---@param character CHARACTER
function Osi.EndTheDayRequested(character) end
	
---@param opponentLeft GUIDSTRING
---@param opponentRight GUIDSTRING
function Osi.EnterCombatFailed(opponentLeft, opponentRight) end
	
---@param object GUIDSTRING
---@param cause GUIDSTRING
---@param chasm GUIDSTRING
---@param fallbackPosX number
---@param fallbackPosY number
---@param fallbackPosZ number
function Osi.EnteredChasm(object, cause, chasm, fallbackPosX, fallbackPosY, fallbackPosZ) end
	
---@param object GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.EnteredCombat(object, combatGuid) end
	
---@param object GUIDSTRING
function Osi.EnteredForceTurnBased(object) end
	
---@param object GUIDSTRING
---@param objectRootTemplate ROOT
---@param level string
function Osi.EnteredLevel(object, objectRootTemplate, level) end
	
---@param object GUIDSTRING
---@param zoneId GUIDSTRING
function Osi.EnteredSharedForceTurnBased(object, zoneId) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.EnteredTrigger(character, trigger) end
	
---@param object GUIDSTRING
---@param event string
function Osi.EntityEvent(object, event) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.EquipFailed(item, character) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.Equipped(item, character) end
	
---@param oldLeader GUIDSTRING
---@param newLeader GUIDSTRING
---@param group string
function Osi.EscortGroupLeaderChanged(oldLeader, newLeader, group) end
	
---@param character CHARACTER
---@param originalItem ITEM
---@param level string
---@param newItem ITEM
function Osi.FailedToLoadItemInPreset(character, originalItem, level, newItem) end
	
---@param entity GUIDSTRING
---@param cause GUIDSTRING
function Osi.Falling(entity, cause) end
	
---@param entity GUIDSTRING
---@param cause GUIDSTRING
function Osi.Fell(entity, cause) end
	
---@param flag FLAG
---@param speaker GUIDSTRING
---@param dialogInstance integer
function Osi.FlagCleared(flag, speaker, dialogInstance) end
	
---@param object GUIDSTRING
---@param flag FLAG
function Osi.FlagLoadedInPresetEvent(object, flag) end
	
---@param flag FLAG
---@param speaker GUIDSTRING
---@param dialogInstance integer
function Osi.FlagSet(flag, speaker, dialogInstance) end
	
---@param participant GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.FleeFromCombat(participant, combatGuid) end
	
---@param character CHARACTER
function Osi.FollowerCantUseItem(character) end
	
---@param companion CHARACTER
function Osi.ForceDismissCompanion(companion) end
	
---@param source GUIDSTRING
---@param target GUIDSTRING
---@param storyActionID integer
function Osi.ForceMoveEnded(source, target, storyActionID) end
	
---@param source GUIDSTRING
---@param target GUIDSTRING
---@param storyActionID integer
function Osi.ForceMoveStarted(source, target, storyActionID) end
	
---@param target CHARACTER
function Osi.GainedControl(target) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.GameBookInterfaceClosed(item, character) end
	
---@param gameMode string
---@param isEditorMode integer
---@param isStoryReload integer
function Osi.GameModeStarted(gameMode, isEditorMode, isStoryReload) end
	
---@param key string
---@param value string
function Osi.GameOption(key, value) end
	
---@param inventoryHolder GUIDSTRING
---@param changeAmount integer
function Osi.GoldChanged(inventoryHolder, changeAmount) end
	
---@param target CHARACTER
function Osi.GotUp(target) end
	
---@param character CHARACTER
---@param trader CHARACTER
---@param characterValue integer
---@param traderValue integer
function Osi.HappyWithDeal(character, trader, characterValue, traderValue) end
	
---@param player CHARACTER
function Osi.HenchmanAborted(player) end
	
---@param player CHARACTER
---@param hireling CHARACTER
function Osi.HenchmanSelected(player, hireling) end
	
---@param proxy GUIDSTRING
---@param target GUIDSTRING
---@param attackerOwner GUIDSTRING
---@param attacker2 GUIDSTRING
---@param storyActionID integer
function Osi.HitProxy(proxy, target, attackerOwner, attacker2, storyActionID) end
	
---@param entity GUIDSTRING
---@param percentage number
function Osi.HitpointsChanged(entity, percentage) end
	
---@param instanceID integer
---@param oldDialog DIALOGRESOURCE
---@param newDialog DIALOGRESOURCE
---@param oldDialogStopping integer
function Osi.InstanceDialogChanged(instanceID, oldDialog, newDialog, oldDialogStopping) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.InteractionCapabilityChanged(character, isEnabled) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.InteractionFallback(character, item) end
	
---@param item ITEM
---@param isBoundToInventory integer
function Osi.InventoryBoundChanged(item, isBoundToInventory) end
	
---@param character CHARACTER
---@param sharingEnabled integer
function Osi.InventorySharingChanged(character, sharingEnabled) end
	
---@param item ITEM
---@param trigger TRIGGER
---@param mover GUIDSTRING
function Osi.ItemEnteredTrigger(item, trigger, mover) end
	
---@param item ITEM
---@param trigger TRIGGER
---@param mover GUIDSTRING
function Osi.ItemLeftTrigger(item, trigger, mover) end
	
---@param target ITEM
---@param oldX number
---@param oldY number
---@param oldZ number
---@param newX number
---@param newY number
---@param newZ number
function Osi.ItemTeleported(target, oldX, oldY, oldZ, newX, newY, newZ) end
	
---@param defender CHARACTER
---@param attackOwner GUIDSTRING
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.KilledBy(defender, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param spell string
function Osi.LearnedSpell(character, spell) end
	
---@param object GUIDSTRING
---@param combatGuid GUIDSTRING
function Osi.LeftCombat(object, combatGuid) end
	
---@param object GUIDSTRING
function Osi.LeftForceTurnBased(object) end
	
---@param object GUIDSTRING
---@param level string
function Osi.LeftLevel(object, level) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.LeftTrigger(character, trigger) end
	
---@param levelName string
---@param isEditorMode integer
function Osi.LevelGameplayReady(levelName, isEditorMode) end
	
---@param levelName string
---@param isEditorMode integer
function Osi.LevelGameplayStarted(levelName, isEditorMode) end
	
---@param newLevel string
function Osi.LevelLoaded(newLevel) end
	
---@param levelTemplate LEVELTEMPLATE
function Osi.LevelTemplateLoaded(levelTemplate) end
	
---@param level string
function Osi.LevelUnloading(level) end
	
---@param character CHARACTER
function Osi.LeveledUp(character) end
	
function Osi.LongRestCancelled() end
	
function Osi.LongRestFinished() end
	
function Osi.LongRestStartFailed() end
	
function Osi.LongRestStarted() end
	
---@param character CHARACTER
---@param targetCharacter CHARACTER
function Osi.LostSightOf(character, targetCharacter) end
	
---@param character CHARACTER
---@param event string
function Osi.MainPerformerStarted(character, event) end
	
---@param character CHARACTER
---@param message string
---@param resultChoice string
function Osi.MessageBoxChoiceClosed(character, message, resultChoice) end
	
---@param character CHARACTER
---@param message string
function Osi.MessageBoxClosed(character, message) end
	
---@param character CHARACTER
---@param message string
---@param result integer
function Osi.MessageBoxYesNoClosed(character, message, result) end
	
---@param defender CHARACTER
---@param attackOwner CHARACTER
---@param attacker CHARACTER
---@param storyActionID integer
function Osi.MissedBy(defender, attackOwner, attacker, storyActionID) end
	
---@param name string
---@param major integer
---@param minor integer
---@param revision integer
---@param build integer
function Osi.ModuleLoadedinSavegame(name, major, minor, revision, build) end
	
---@param character CHARACTER
---@param isEnabled integer
function Osi.MoveCapabilityChanged(character, isEnabled) end
	
---@param item ITEM
function Osi.Moved(item) end
	
---@param movedEntity GUIDSTRING
---@param character CHARACTER
function Osi.MovedBy(movedEntity, character) end
	
---@param movedObject GUIDSTRING
---@param fromObject GUIDSTRING
---@param toObject GUIDSTRING
---@param isTrade integer
function Osi.MovedFromTo(movedObject, fromObject, toObject, isTrade) end
	
---@param movieName string
function Osi.MovieFinished(movieName) end
	
---@param movieName string
function Osi.MoviePlaylistFinished(movieName) end
	
---@param dialog DIALOGRESOURCE
---@param instanceID integer
function Osi.NestedDialogPlayed(dialog, instanceID) end
	
---@param character CHARACTER
---@param oldLevel integer
---@param newLevel integer
function Osi.ObjectAvailableLevelChanged(character, oldLevel, newLevel) end
	
---@param object GUIDSTRING
---@param timer string
function Osi.ObjectTimerFinished(object, timer) end
	
---@param object GUIDSTRING
---@param toTemplate GUIDSTRING
function Osi.ObjectTransformed(object, toTemplate) end
	
---@param object GUIDSTRING
---@param obscuredState string
function Osi.ObscuredStateChanged(object, obscuredState) end
	
---@param crimeID integer
---@param investigator CHARACTER
---@param wasLead integer
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeConfrontationDone(crimeID, investigator, wasLead, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param investigator CHARACTER
---@param fromState string
---@param toState string
function Osi.OnCrimeInvestigatorSwitchedState(crimeID, investigator, fromState, toState) end
	
---@param oldCrimeID integer
---@param newCrimeID integer
function Osi.OnCrimeMergedWith(oldCrimeID, newCrimeID) end
	
---@param crimeID integer
---@param victim CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeRemoved(crimeID, victim, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param criminal CHARACTER
function Osi.OnCrimeResetInterrogationForCriminal(crimeID, criminal) end
	
---@param crimeID integer
---@param victim CHARACTER
---@param criminal1 CHARACTER
---@param criminal2 CHARACTER
---@param criminal3 CHARACTER
---@param criminal4 CHARACTER
function Osi.OnCrimeResolved(crimeID, victim, criminal1, criminal2, criminal3, criminal4) end
	
---@param crimeID integer
---@param criminal CHARACTER
function Osi.OnCriminalMergedWithCrime(crimeID, criminal) end
	
---@param isEditorMode integer
function Osi.OnShutdown(isEditorMode) end
	
---@param carriedObject GUIDSTRING
---@param carriedObjectTemplate ROOT
---@param carrier GUIDSTRING
---@param storyActionID integer
---@param pickupPosX number
---@param pickupPosY number
---@param pickupPosZ number
function Osi.OnStartCarrying(carriedObject, carriedObjectTemplate, carrier, storyActionID, pickupPosX, pickupPosY, pickupPosZ) end
	
---@param target CHARACTER
function Osi.OnStoryOverride(target) end
	
---@param thrownObject GUIDSTRING
---@param thrownObjectTemplate ROOT
---@param thrower GUIDSTRING
---@param storyActionID integer
---@param throwPosX number
---@param throwPosY number
---@param throwPosZ number
function Osi.OnThrown(thrownObject, thrownObjectTemplate, thrower, storyActionID, throwPosX, throwPosY, throwPosZ) end
	
---@param item ITEM
function Osi.Opened(item) end
	
---@param partyPreset string
---@param levelName string
function Osi.PartyPresetLoaded(partyPreset, levelName) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.PickupFailed(character, item) end
	
---@param character CHARACTER
function Osi.PingRequested(character) end
	
---@param object GUIDSTRING
function Osi.PlatformDestroyed(object) end
	
---@param object GUIDSTRING
---@param eventId string
function Osi.PlatformMovementCanceled(object, eventId) end
	
---@param object GUIDSTRING
---@param eventId string
function Osi.PlatformMovementFinished(object, eventId) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.PreMovedBy(item, character) end
	
---@param character CHARACTER
---@param uIInstance string
---@param type integer
function Osi.PuzzleUIClosed(character, uIInstance, type) end
	
---@param character CHARACTER
---@param uIInstance string
---@param type integer
---@param command string
---@param elementId integer
function Osi.PuzzleUIUsed(character, uIInstance, type, command, elementId) end
	
---@param character CHARACTER
---@param questID string
function Osi.QuestAccepted(character, questID) end
	
---@param questID string
function Osi.QuestClosed(questID) end
	
---@param character CHARACTER
---@param topLevelQuestID string
---@param stateID string
function Osi.QuestUpdateUnlocked(character, topLevelQuestID, stateID) end
	
---@param object GUIDSTRING
function Osi.QueuePurged(object) end
	
---@param caster GUIDSTRING
---@param storyActionID integer
---@param spellID string
---@param rollResult integer
---@param randomCastDC integer
function Osi.RandomCastProcessed(caster, storyActionID, spellID, rollResult, randomCastDC) end
	
---@param object GUIDSTRING
function Osi.ReactionInterruptActionNeeded(object) end
	
---@param character CHARACTER
---@param reactionInterruptName string
function Osi.ReactionInterruptAdded(character, reactionInterruptName) end
	
---@param object GUIDSTRING
---@param reactionInterruptPrototypeId string
---@param isAutoTriggered integer
function Osi.ReactionInterruptUsed(object, reactionInterruptPrototypeId, isAutoTriggered) end
	
---@param id string
function Osi.ReadyCheckFailed(id) end
	
---@param id string
function Osi.ReadyCheckPassed(id) end
	
---@param sourceFaction FACTION
---@param targetFaction FACTION
---@param newRelation integer
---@param permanent integer
function Osi.RelationChanged(sourceFaction, targetFaction, newRelation, permanent) end
	
---@param object GUIDSTRING
---@param inventoryHolder GUIDSTRING
function Osi.RemovedFrom(object, inventoryHolder) end
	
---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
function Osi.ReposeAdded(entity, onEntity) end
	
---@param entity GUIDSTRING
---@param onEntity GUIDSTRING
function Osi.ReposeRemoved(entity, onEntity) end
	
---@param character CHARACTER
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
---@param requestID integer
function Osi.RequestCanCombine(character, item1, item2, item3, item4, item5, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanDisarmTrap(character, item, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanLockpick(character, item, requestID) end
	
---@param looter CHARACTER
---@param target CHARACTER
function Osi.RequestCanLoot(looter, target) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanMove(character, item, requestID) end
	
---@param character CHARACTER
---@param object GUIDSTRING
---@param requestID integer
function Osi.RequestCanPickup(character, object, requestID) end
	
---@param character CHARACTER
---@param item ITEM
---@param requestID integer
function Osi.RequestCanUse(character, item, requestID) end
	
function Osi.RequestEndTheDayFail() end
	
function Osi.RequestEndTheDaySuccess() end
	
---@param character CHARACTER
function Osi.RequestGatherAtCampFail(character) end
	
---@param character CHARACTER
function Osi.RequestGatherAtCampSuccess(character) end
	
---@param player CHARACTER
---@param npc CHARACTER
function Osi.RequestPickpocket(player, npc) end
	
---@param character CHARACTER
---@param trader CHARACTER
---@param tradeMode TRADEMODE
---@param itemsTagFilter string
function Osi.RequestTrade(character, trader, tradeMode, itemsTagFilter) end
	
---@param character CHARACTER
function Osi.RespecCancelled(character) end
	
---@param character CHARACTER
function Osi.RespecCompleted(character) end
	
function Osi.RestorePartyFinished() end
	
---@param character CHARACTER
function Osi.Resurrected(character) end
	
---@param eventName string
---@param roller CHARACTER
---@param rollSubject GUIDSTRING
---@param resultType integer
---@param isActiveRoll integer
---@param criticality CRITICALITYTYPE
function Osi.RollResult(eventName, roller, rollSubject, resultType, isActiveRoll, criticality) end
	
---@param modifier RULESETMODIFIER
---@param old integer
---@param new integer
function Osi.RulesetModifierChangedBool(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old number
---@param new number
function Osi.RulesetModifierChangedFloat(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old integer
---@param new integer
function Osi.RulesetModifierChangedInt(modifier, old, new) end
	
---@param modifier RULESETMODIFIER
---@param old string
---@param new string
function Osi.RulesetModifierChangedString(modifier, old, new) end
	
---@param userID integer
---@param state integer
function Osi.SafeRomanceOptionChanged(userID, state) end
	
function Osi.SavegameLoadStarted() end
	
function Osi.SavegameLoaded() end
	
---@param character CHARACTER
---@param targetCharacter CHARACTER
---@param targetWasSneaking integer
function Osi.Saw(character, targetCharacter, targetWasSneaking) end
	
---@param item ITEM
---@param x number
---@param y number
---@param z number
function Osi.ScatteredAt(item, x, y, z) end
	
---@param userID integer
---@param fadeID string
function Osi.ScreenFadeCleared(userID, fadeID) end
	
---@param userID integer
---@param fadeID string
function Osi.ScreenFadeDone(userID, fadeID) end
	
---@param character CHARACTER
---@param race string
---@param gender string
---@param shapeshiftStatus string
function Osi.ShapeshiftChanged(character, race, gender, shapeshiftStatus) end
	
---@param entity GUIDSTRING
---@param percentage number
function Osi.ShapeshiftedHitpointsChanged(entity, percentage) end
	
---@param object GUIDSTRING
function Osi.ShareInitiative(object) end
	
---@param character CHARACTER
---@param capable integer
function Osi.ShortRestCapable(character, capable) end
	
---@param character CHARACTER
function Osi.ShortRestProcessing(character) end
	
---@param character CHARACTER
function Osi.ShortRested(character) end
	
---@param item ITEM
---@param stackedWithItem ITEM
function Osi.StackedWith(item, stackedWithItem) end
	
---@param defender GUIDSTRING
---@param attackOwner CHARACTER
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.StartAttack(defender, attackOwner, attacker, storyActionID) end
	
---@param x number
---@param y number
---@param z number
---@param attackOwner CHARACTER
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.StartAttackPosition(x, y, z, attackOwner, attacker, storyActionID) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StartedDisarmingTrap(character, item) end
	
---@param character CHARACTER
function Osi.StartedFleeing(character) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StartedLockpicking(character, item) end
	
---@param caster GUIDSTRING
---@param spell string
---@param isMostPowerful integer
---@param hasMultipleLevels integer
function Osi.StartedPreviewingSpell(caster, spell, isMostPowerful, hasMultipleLevels) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusApplied(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusAttempt(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param storyActionID integer
function Osi.StatusAttemptFailed(object, status, causee, storyActionID) end
	
---@param object GUIDSTRING
---@param status string
---@param causee GUIDSTRING
---@param applyStoryActionID integer
function Osi.StatusRemoved(object, status, causee, applyStoryActionID) end
	
---@param target GUIDSTRING
---@param tag TAG
---@param sourceOwner GUIDSTRING
---@param source2 GUIDSTRING
---@param storyActionID integer
function Osi.StatusTagCleared(target, tag, sourceOwner, source2, storyActionID) end
	
---@param target GUIDSTRING
---@param tag TAG
---@param sourceOwner GUIDSTRING
---@param source2 GUIDSTRING
---@param storyActionID integer
function Osi.StatusTagSet(target, tag, sourceOwner, source2, storyActionID) end
	
---@param character CHARACTER
---@param item1 ITEM
---@param item2 ITEM
---@param item3 ITEM
---@param item4 ITEM
---@param item5 ITEM
function Osi.StoppedCombining(character, item1, item2, item3, item4, item5) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StoppedDisarmingTrap(character, item) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.StoppedLockpicking(character, item) end
	
---@param character CHARACTER
function Osi.StoppedSneaking(character) end
	
---@param character CHARACTER
---@param subQuestID string
---@param stateID string
function Osi.SubQuestUpdateUnlocked(character, subQuestID, stateID) end
	
---@param templateId GUIDSTRING
---@param amount integer
function Osi.SupplyTemplateSpent(templateId, amount) end
	
---@param object GUIDSTRING
---@param group string
function Osi.SwarmAIGroupJoined(object, group) end
	
---@param object GUIDSTRING
---@param group string
function Osi.SwarmAIGroupLeft(object, group) end
	
---@param object GUIDSTRING
---@param oldCombatGuid GUIDSTRING
---@param newCombatGuid GUIDSTRING
function Osi.SwitchedCombat(object, oldCombatGuid, newCombatGuid) end
	
---@param character CHARACTER
---@param power string
function Osi.TadpolePowerAssigned(character, power) end
	
---@param target GUIDSTRING
---@param tag TAG
function Osi.TagCleared(target, tag) end
	
---@param tag TAG
---@param event string
function Osi.TagEvent(tag, event) end
	
---@param target GUIDSTRING
---@param tag TAG
function Osi.TagSet(target, tag) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.TeleportToFleeWaypoint(character, trigger) end
	
---@param character CHARACTER
function Osi.TeleportToFromCamp(character) end
	
---@param character CHARACTER
---@param trigger TRIGGER
function Osi.TeleportToWaypoint(character, trigger) end
	
---@param target CHARACTER
---@param cause CHARACTER
---@param oldX number
---@param oldY number
---@param oldZ number
---@param newX number
---@param newY number
---@param newZ number
---@param spell string
function Osi.Teleported(target, cause, oldX, oldY, oldZ, newX, newY, newZ, spell) end
	
---@param character CHARACTER
function Osi.TeleportedFromCamp(character) end
	
---@param character CHARACTER
function Osi.TeleportedToCamp(character) end
	
---@param objectTemplate ROOT
---@param object2 GUIDSTRING
---@param inventoryHolder GUIDSTRING
---@param addType string
function Osi.TemplateAddedTo(objectTemplate, object2, inventoryHolder, addType) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param destroyer CHARACTER
---@param destroyerOwner CHARACTER
---@param storyActionID integer
function Osi.TemplateDestroyedBy(itemTemplate, item2, destroyer, destroyerOwner, storyActionID) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param trigger TRIGGER
---@param owner CHARACTER
---@param mover GUIDSTRING
function Osi.TemplateEnteredTrigger(itemTemplate, item2, trigger, owner, mover) end
	
---@param itemTemplate ITEMROOT
---@param character CHARACTER
function Osi.TemplateEquipped(itemTemplate, character) end
	
---@param characterTemplate CHARACTERROOT
---@param defender CHARACTER
---@param attackOwner GUIDSTRING
---@param attacker GUIDSTRING
---@param storyActionID integer
function Osi.TemplateKilledBy(characterTemplate, defender, attackOwner, attacker, storyActionID) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param trigger TRIGGER
---@param owner CHARACTER
---@param mover GUIDSTRING
function Osi.TemplateLeftTrigger(itemTemplate, item2, trigger, owner, mover) end
	
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param character CHARACTER
function Osi.TemplateOpening(itemTemplate, item2, character) end
	
---@param objectTemplate ROOT
---@param object2 GUIDSTRING
---@param inventoryHolder GUIDSTRING
function Osi.TemplateRemovedFrom(objectTemplate, object2, inventoryHolder) end
	
---@param itemTemplate ITEMROOT
---@param character CHARACTER
function Osi.TemplateUnequipped(itemTemplate, character) end
	
---@param character CHARACTER
---@param itemTemplate ITEMROOT
---@param item2 ITEM
---@param sucess integer
function Osi.TemplateUseFinished(character, itemTemplate, item2, sucess) end
	
---@param character CHARACTER
---@param itemTemplate ITEMROOT
---@param item2 ITEM
function Osi.TemplateUseStarted(character, itemTemplate, item2) end
	
---@param template1 ITEMROOT
---@param template2 ITEMROOT
---@param template3 ITEMROOT
---@param template4 ITEMROOT
---@param template5 ITEMROOT
---@param character CHARACTER
---@param newItem ITEM
function Osi.TemplatesCombined(template1, template2, template3, template4, template5, character, newItem) end
	
---@param enemy CHARACTER
---@param sourceFaction FACTION
---@param targetFaction FACTION
function Osi.TemporaryHostileRelationRemoved(enemy, sourceFaction, targetFaction) end
	
---@param character1 CHARACTER
---@param character2 CHARACTER
---@param success integer
function Osi.TemporaryHostileRelationRequestHandled(character1, character2, success) end
	
---@param event string
function Osi.TextEvent(event) end
	
---@param userID integer
---@param dialogInstanceId integer
---@param dialog2 DIALOGRESOURCE
function Osi.TimelineScreenFadeStarted(userID, dialogInstanceId, dialog2) end
	
---@param timer string
function Osi.TimerFinished(timer) end
	
---@param character CHARACTER
---@param trader CHARACTER
function Osi.TradeEnds(character, trader) end
	
---@param trader CHARACTER
function Osi.TradeGenerationEnded(trader) end
	
---@param trader CHARACTER
function Osi.TradeGenerationStarted(trader) end
	
---@param object GUIDSTRING
function Osi.TurnEnded(object) end
	
---@param object GUIDSTRING
function Osi.TurnStarted(object) end
	
---@param character CHARACTER
---@param message string
function Osi.TutorialBoxClosed(character, message) end
	
---@param userId integer
---@param entryId GUIDSTRING
function Osi.TutorialClosed(userId, entryId) end
	
---@param entity CHARACTER
---@param event TUTORIALEVENT
function Osi.TutorialEvent(entity, event) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.UnequipFailed(item, character) end
	
---@param item ITEM
---@param character CHARACTER
function Osi.Unequipped(item, character) end
	
---@param item ITEM
---@param character CHARACTER
---@param key ITEM
function Osi.Unlocked(item, character, key) end
	
---@param character CHARACTER
---@param recipe string
function Osi.UnlockedRecipe(character, recipe) end
	
---@param character CHARACTER
---@param item ITEM
---@param sucess integer
function Osi.UseFinished(character, item, sucess) end
	
---@param character CHARACTER
---@param item ITEM
function Osi.UseStarted(character, item) end
	
---@param userID integer
---@param avatar CHARACTER
---@param daisy CHARACTER
function Osi.UserAvatarCreated(userID, avatar, daisy) end
	
---@param userID integer
---@param chest ITEM
function Osi.UserCampChestChanged(userID, chest) end
	
---@param character CHARACTER
---@param isFullRest integer
function Osi.UserCharacterLongRested(character, isFullRest) end
	
---@param userID integer
---@param userName string
---@param userProfileID string
function Osi.UserConnected(userID, userName, userProfileID) end
	
---@param userID integer
---@param userName string
---@param userProfileID string
function Osi.UserDisconnected(userID, userName, userProfileID) end
	
---@param userID integer
---@param userEvent string
function Osi.UserEvent(userID, userEvent) end
	
---@param sourceUserID integer
---@param targetUserID integer
---@param war integer
function Osi.UserMakeWar(sourceUserID, targetUserID, war) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpell(caster, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param x number
---@param y number
---@param z number
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellAtPosition(caster, x, y, z, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param trigger TRIGGER
---@param storyActionID integer
function Osi.UsingSpellInTrigger(caster, spell, spellType, spellElement, trigger, storyActionID) end
	
---@param caster GUIDSTRING
---@param target GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellOnTarget(caster, target, spell, spellType, spellElement, storyActionID) end
	
---@param caster GUIDSTRING
---@param target GUIDSTRING
---@param spell string
---@param spellType string
---@param spellElement string
---@param storyActionID integer
function Osi.UsingSpellOnZoneWithTarget(caster, target, spell, spellType, spellElement, storyActionID) end
	
---@param bark VOICEBARKRESOURCE
---@param instanceID integer
function Osi.VoiceBarkEnded(bark, instanceID) end
	
---@param bark VOICEBARKRESOURCE
function Osi.VoiceBarkFailed(bark) end
	
---@param bark VOICEBARKRESOURCE
---@param instanceID integer
function Osi.VoiceBarkStarted(bark, instanceID) end
	
---@param object GUIDSTRING
---@param isOnStageNow integer
function Osi.WentOnStage(object, isOnStageNow) end


if Ext == nil then Ext = {} end

-- #region Callbacks
---@alias OsirisActivatedCallback fun(object:GUIDSTRING)
---@alias OsirisActorSpeakerIndexChangedCallback fun(instanceID:integer, player:GUIDSTRING, oldIndex:integer, newIndex:integer)
---@alias OsirisAddedToCallback fun(object:GUIDSTRING, inventoryHolder:GUIDSTRING, addType:string)
---@alias OsirisAllLoadedFlagsInPresetReceivedEventCallback fun()
---@alias OsirisAnimationEventCallback fun(object:GUIDSTRING, eventName:string, wasFromLoad:integer)
---@alias OsirisAppearTeleportFailedCallback fun(character:CHARACTER, appearEvent:string)
---@alias OsirisApprovalRatingChangeAttemptCallback fun(ratingOwner:CHARACTER, ratedEntity:CHARACTER, attemptedApprovalChange:integer, clampedApprovalChange:integer, newApproval:integer)
---@alias OsirisApprovalRatingChangedCallback fun(ratingOwner:CHARACTER, ratedEntity:CHARACTER, newApproval:integer)
---@alias OsirisArmedTrapUsedCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisArmorSetChangedCallback fun(character:CHARACTER, eArmorSet:ARMOURSET)
---@alias OsirisAttachedToPartyGroupCallback fun(character:CHARACTER)
---@alias OsirisAttackedByCallback fun(defender:GUIDSTRING, attackerOwner:GUIDSTRING, attacker2:GUIDSTRING, damageType:string, damageAmount:integer, damageCause:string, storyActionID:integer)
---@alias OsirisAttemptedDisarmCallback fun(disarmableItem:ITEM, character:CHARACTER, itemUsedToDisarm:ITEM, bool:integer)
---@alias OsirisAutomatedDialogEndedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisAutomatedDialogForceStoppingCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisAutomatedDialogRequestFailedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisAutomatedDialogStartedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisBackgroundGoalFailedCallback fun(character:CHARACTER, goal:GUIDSTRING)
---@alias OsirisBackgroundGoalRewardedCallback fun(character:CHARACTER, goal:GUIDSTRING)
---@alias OsirisBaseFactionChangedCallback fun(target:CHARACTER, oldFaction:FACTION, newFaction:FACTION)
---@alias OsirisCameraReachedNodeCallback fun(spline:SPLINE, character:CHARACTER, event:string, index:integer, last:integer)
---@alias OsirisCanBeLootedCapabilityChangedCallback fun(lootingTarget:GUIDSTRING, canBeLooted:integer)
---@alias OsirisCastSpellCallback fun(caster:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisCastSpellFailedCallback fun(caster:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisCastedSpellCallback fun(caster:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisChangeAppearanceCancelledCallback fun(character:CHARACTER)
---@alias OsirisChangeAppearanceCompletedCallback fun(character:CHARACTER)
---@alias OsirisCharacterCreationFinishedCallback fun()
---@alias OsirisCharacterCreationStartedCallback fun()
---@alias OsirisCharacterDisarmedCallback fun(character:CHARACTER, item:ITEM, slotName:EQUIPMENTSLOTNAME)
---@alias OsirisCharacterJoinedPartyCallback fun(character:CHARACTER)
---@alias OsirisCharacterLeftPartyCallback fun(character:CHARACTER)
---@alias OsirisCharacterLoadedInPresetCallback fun(character:CHARACTER)
---@alias OsirisCharacterLootedCharacterCallback fun(player:CHARACTER, lootedCharacter:CHARACTER)
---@alias OsirisCharacterMadePlayerCallback fun(character:CHARACTER)
---@alias OsirisCharacterMoveFailedUseJumpCallback fun(character:CHARACTER)
---@alias OsirisCharacterMoveToAndTalkFailedCallback fun(character:CHARACTER, target:GUIDSTRING, moveID:string, failureReason:string)
---@alias OsirisCharacterMoveToAndTalkRequestDialogCallback fun(character:CHARACTER, target:GUIDSTRING, dialog:DIALOGRESOURCE, moveID:string)
---@alias OsirisCharacterMoveToCancelledCallback fun(character:CHARACTER, moveID:integer)
---@alias OsirisCharacterOnCrimeSensibleActionNotificationCallback fun(character:CHARACTER, crimeRegion:string, crimeID:integer, priortiyName:string, primaryDialog:DIALOGRESOURCE, criminal1:CHARACTER, criminal2:CHARACTER, criminal3:CHARACTER, criminal4:CHARACTER, isPrimary:integer)
---@alias OsirisCharacterPickpocketFailedCallback fun(player:CHARACTER, npc:CHARACTER)
---@alias OsirisCharacterPickpocketSuccessCallback fun(player:CHARACTER, npc:CHARACTER, item:ITEM, itemTemplate:GUIDSTRING, amount:integer, goldValue:integer)
---@alias OsirisCharacterReservedUserIDChangedCallback fun(character:CHARACTER, oldUserID:integer, newUserID:integer)
---@alias OsirisCharacterSelectedAsBestUnavailableFallbackLeadCallback fun(character:CHARACTER, crimeRegion:string, unavailableForCrimeID:integer, busyCrimeID:integer)
---@alias OsirisCharacterSelectedClimbOnCallback fun(character:CHARACTER)
---@alias OsirisCharacterSelectedForUserCallback fun(character:CHARACTER, userID:integer)
---@alias OsirisCharacterStoleItemCallback fun(character:CHARACTER, item:ITEM, itemRootTemplate:GUIDSTRING, x:number, y:number, z:number, oldOwner:CHARACTER, srcContainer:ITEM, amount:integer, goldValue:integer)
---@alias OsirisCharacterTagEventCallback fun(character:CHARACTER, tag:TAG, event:string)
---@alias OsirisClosedCallback fun(item:ITEM)
---@alias OsirisCombatEndedCallback fun(combatGuid:GUIDSTRING)
---@alias OsirisCombatPausedCallback fun(combatGuid:GUIDSTRING)
---@alias OsirisCombatResumedCallback fun(combatGuid:GUIDSTRING)
---@alias OsirisCombatRoundStartedCallback fun(combatGuid:GUIDSTRING, round:integer)
---@alias OsirisCombatStartedCallback fun(combatGuid:GUIDSTRING)
---@alias OsirisCombinedCallback fun(item1:ITEM, item2:ITEM, item3:ITEM, item4:ITEM, item5:ITEM, character:CHARACTER, newItem:ITEM)
---@alias OsirisCompanionSelectedForUserCallback fun(character:CHARACTER, userID:integer)
---@alias OsirisCreditsEndedCallback fun()
---@alias OsirisCrimeDisabledCallback fun(character:CHARACTER, crime:string)
---@alias OsirisCrimeEnabledCallback fun(character:CHARACTER, crime:string)
---@alias OsirisCrimeIsRegisteredCallback fun(victim:CHARACTER, crimeType:string, crimeID:integer, evidence:GUIDSTRING, criminal1:CHARACTER, criminal2:CHARACTER, criminal3:CHARACTER, criminal4:CHARACTER)
---@alias OsirisCrimeProcessingStartedCallback fun(crimeID:integer, actedOnImmediately:integer)
---@alias OsirisCriticalHitByCallback fun(defender:CHARACTER, attackOwner:CHARACTER, attacker:CHARACTER, storyActionID:integer)
---@alias OsirisCustomBookUIClosedCallback fun(character:CHARACTER, bookName:string)
---@alias OsirisDLCUpdatedCallback fun(dlc:DLC, userID:integer, installed:integer)
---@alias OsirisDeactivatedCallback fun(object:GUIDSTRING)
---@alias OsirisDeathSaveStableCallback fun(character:CHARACTER)
---@alias OsirisDeathTypeChangedCallback fun(entity:GUIDSTRING, newDeathType:DEATHTYPE)
---@alias OsirisDestroyedByCallback fun(item:ITEM, destroyer:CHARACTER, destroyerOwner:CHARACTER, storyActionID:integer)
---@alias OsirisDestroyingByCallback fun(item:ITEM, destroyer:CHARACTER, destroyerOwner:CHARACTER, storyActionID:integer)
---@alias OsirisDetachedFromPartyGroupCallback fun(character:CHARACTER)
---@alias OsirisDialogActorJoinFailedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer, actor:GUIDSTRING)
---@alias OsirisDialogActorJoinedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer, actor:GUIDSTRING, speakerIndex:integer)
---@alias OsirisDialogActorLeftCallback fun(dialog:DIALOGRESOURCE, instanceID:integer, actor:GUIDSTRING, instanceEnded:integer)
---@alias OsirisDialogAttackRequestedCallback fun(target:CHARACTER, player:CHARACTER)
---@alias OsirisDialogEndedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisDialogForceStoppingCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisDialogRequestFailedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisDialogRollResultCallback fun(character:CHARACTER, success:integer, dialog:DIALOGRESOURCE, isDetectThoughts:integer, criticality:CRITICALITYTYPE)
---@alias OsirisDialogStartRequestedCallback fun(target:GUIDSTRING, player:GUIDSTRING)
---@alias OsirisDialogStartedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisDialogueCapabilityChangedCallback fun(character:CHARACTER, isEnabled:integer)
---@alias OsirisDiedCallback fun(character:CHARACTER)
---@alias OsirisDifficultyChangedCallback fun(difficultyLevel:integer)
---@alias OsirisDisappearOutOfSightToCancelledCallback fun(character:CHARACTER, moveID:integer)
---@alias OsirisDonatedCallback fun(donatedObject:ITEM, fromObject:GUIDSTRING, toObject:GUIDSTRING, donatedObjectValue:integer)
---@alias OsirisDoorTemplateClosingCallback fun(itemTemplate:ITEMROOT, item2:ITEM, character:CHARACTER)
---@alias OsirisDownedChangedCallback fun(character:CHARACTER, isDowned:integer)
---@alias OsirisDroppedByCallback fun(object:GUIDSTRING, mover:CHARACTER)
---@alias OsirisDualEntityEventCallback fun(object1:GUIDSTRING, object2:GUIDSTRING, event:string)
---@alias OsirisDyingCallback fun(character:CHARACTER)
---@alias OsirisEndTheDayRequestedCallback fun(character:CHARACTER)
---@alias OsirisEnterCombatFailedCallback fun(opponentLeft:GUIDSTRING, opponentRight:GUIDSTRING)
---@alias OsirisEnteredChasmCallback fun(object:GUIDSTRING, cause:GUIDSTRING, chasm:GUIDSTRING, fallbackPosX:number, fallbackPosY:number, fallbackPosZ:number)
---@alias OsirisEnteredCombatCallback fun(object:GUIDSTRING, combatGuid:GUIDSTRING)
---@alias OsirisEnteredForceTurnBasedCallback fun(object:GUIDSTRING)
---@alias OsirisEnteredLevelCallback fun(object:GUIDSTRING, objectRootTemplate:ROOT, level:string)
---@alias OsirisEnteredSharedForceTurnBasedCallback fun(object:GUIDSTRING, zoneId:GUIDSTRING)
---@alias OsirisEnteredTriggerCallback fun(character:CHARACTER, trigger:TRIGGER)
---@alias OsirisEntityEventCallback fun(object:GUIDSTRING, event:string)
---@alias OsirisEquipFailedCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisEquippedCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisEscortGroupLeaderChangedCallback fun(oldLeader:GUIDSTRING, newLeader:GUIDSTRING, group:string)
---@alias OsirisFailedToLoadItemInPresetCallback fun(character:CHARACTER, originalItem:ITEM, level:string, newItem:ITEM)
---@alias OsirisFallingCallback fun(entity:GUIDSTRING, cause:GUIDSTRING)
---@alias OsirisFellCallback fun(entity:GUIDSTRING, cause:GUIDSTRING)
---@alias OsirisFlagClearedCallback fun(flag:FLAG, speaker:GUIDSTRING, dialogInstance:integer)
---@alias OsirisFlagLoadedInPresetEventCallback fun(object:GUIDSTRING, flag:FLAG)
---@alias OsirisFlagSetCallback fun(flag:FLAG, speaker:GUIDSTRING, dialogInstance:integer)
---@alias OsirisFleeFromCombatCallback fun(participant:GUIDSTRING, combatGuid:GUIDSTRING)
---@alias OsirisFollowerCantUseItemCallback fun(character:CHARACTER)
---@alias OsirisForceDismissCompanionCallback fun(companion:CHARACTER)
---@alias OsirisForceMoveEndedCallback fun(source:GUIDSTRING, target:GUIDSTRING, storyActionID:integer)
---@alias OsirisForceMoveStartedCallback fun(source:GUIDSTRING, target:GUIDSTRING, storyActionID:integer)
---@alias OsirisGainedControlCallback fun(target:CHARACTER)
---@alias OsirisGameBookInterfaceClosedCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisGameModeStartedCallback fun(gameMode:string, isEditorMode:integer, isStoryReload:integer)
---@alias OsirisGameOptionCallback fun(key:string, value:string)
---@alias OsirisGoldChangedCallback fun(inventoryHolder:GUIDSTRING, changeAmount:integer)
---@alias OsirisGotUpCallback fun(target:CHARACTER)
---@alias OsirisHappyWithDealCallback fun(character:CHARACTER, trader:CHARACTER, characterValue:integer, traderValue:integer)
---@alias OsirisHenchmanAbortedCallback fun(player:CHARACTER)
---@alias OsirisHenchmanSelectedCallback fun(player:CHARACTER, hireling:CHARACTER)
---@alias OsirisHitProxyCallback fun(proxy:GUIDSTRING, target:GUIDSTRING, attackerOwner:GUIDSTRING, attacker2:GUIDSTRING, storyActionID:integer)
---@alias OsirisHitpointsChangedCallback fun(entity:GUIDSTRING, percentage:number)
---@alias OsirisInstanceDialogChangedCallback fun(instanceID:integer, oldDialog:DIALOGRESOURCE, newDialog:DIALOGRESOURCE, oldDialogStopping:integer)
---@alias OsirisInteractionCapabilityChangedCallback fun(character:CHARACTER, isEnabled:integer)
---@alias OsirisInteractionFallbackCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisInventoryBoundChangedCallback fun(item:ITEM, isBoundToInventory:integer)
---@alias OsirisInventorySharingChangedCallback fun(character:CHARACTER, sharingEnabled:integer)
---@alias OsirisItemEnteredTriggerCallback fun(item:ITEM, trigger:TRIGGER, mover:GUIDSTRING)
---@alias OsirisItemLeftTriggerCallback fun(item:ITEM, trigger:TRIGGER, mover:GUIDSTRING)
---@alias OsirisItemTeleportedCallback fun(target:ITEM, oldX:number, oldY:number, oldZ:number, newX:number, newY:number, newZ:number)
---@alias OsirisKilledByCallback fun(defender:CHARACTER, attackOwner:GUIDSTRING, attacker:GUIDSTRING, storyActionID:integer)
---@alias OsirisLearnedSpellCallback fun(character:CHARACTER, spell:string)
---@alias OsirisLeftCombatCallback fun(object:GUIDSTRING, combatGuid:GUIDSTRING)
---@alias OsirisLeftForceTurnBasedCallback fun(object:GUIDSTRING)
---@alias OsirisLeftLevelCallback fun(object:GUIDSTRING, level:string)
---@alias OsirisLeftTriggerCallback fun(character:CHARACTER, trigger:TRIGGER)
---@alias OsirisLevelGameplayReadyCallback fun(levelName:string, isEditorMode:integer)
---@alias OsirisLevelGameplayStartedCallback fun(levelName:string, isEditorMode:integer)
---@alias OsirisLevelLoadedCallback fun(newLevel:string)
---@alias OsirisLevelTemplateLoadedCallback fun(levelTemplate:LEVELTEMPLATE)
---@alias OsirisLevelUnloadingCallback fun(level:string)
---@alias OsirisLeveledUpCallback fun(character:CHARACTER)
---@alias OsirisLongRestCancelledCallback fun()
---@alias OsirisLongRestFinishedCallback fun()
---@alias OsirisLongRestStartFailedCallback fun()
---@alias OsirisLongRestStartedCallback fun()
---@alias OsirisLostSightOfCallback fun(character:CHARACTER, targetCharacter:CHARACTER)
---@alias OsirisMainPerformerStartedCallback fun(character:CHARACTER, event:string)
---@alias OsirisMessageBoxChoiceClosedCallback fun(character:CHARACTER, message:string, resultChoice:string)
---@alias OsirisMessageBoxClosedCallback fun(character:CHARACTER, message:string)
---@alias OsirisMessageBoxYesNoClosedCallback fun(character:CHARACTER, message:string, result:integer)
---@alias OsirisMissedByCallback fun(defender:CHARACTER, attackOwner:CHARACTER, attacker:CHARACTER, storyActionID:integer)
---@alias OsirisModuleLoadedinSavegameCallback fun(name:string, major:integer, minor:integer, revision:integer, build:integer)
---@alias OsirisMoveCapabilityChangedCallback fun(character:CHARACTER, isEnabled:integer)
---@alias OsirisMovedCallback fun(item:ITEM)
---@alias OsirisMovedByCallback fun(movedEntity:GUIDSTRING, character:CHARACTER)
---@alias OsirisMovedFromToCallback fun(movedObject:GUIDSTRING, fromObject:GUIDSTRING, toObject:GUIDSTRING, isTrade:integer)
---@alias OsirisMovieFinishedCallback fun(movieName:string)
---@alias OsirisMoviePlaylistFinishedCallback fun(movieName:string)
---@alias OsirisNestedDialogPlayedCallback fun(dialog:DIALOGRESOURCE, instanceID:integer)
---@alias OsirisObjectAvailableLevelChangedCallback fun(character:CHARACTER, oldLevel:integer, newLevel:integer)
---@alias OsirisObjectTimerFinishedCallback fun(object:GUIDSTRING, timer:string)
---@alias OsirisObjectTransformedCallback fun(object:GUIDSTRING, toTemplate:GUIDSTRING)
---@alias OsirisObscuredStateChangedCallback fun(object:GUIDSTRING, obscuredState:string)
---@alias OsirisOnCrimeConfrontationDoneCallback fun(crimeID:integer, investigator:CHARACTER, wasLead:integer, criminal1:CHARACTER, criminal2:CHARACTER, criminal3:CHARACTER, criminal4:CHARACTER)
---@alias OsirisOnCrimeInvestigatorSwitchedStateCallback fun(crimeID:integer, investigator:CHARACTER, fromState:string, toState:string)
---@alias OsirisOnCrimeMergedWithCallback fun(oldCrimeID:integer, newCrimeID:integer)
---@alias OsirisOnCrimeRemovedCallback fun(crimeID:integer, victim:CHARACTER, criminal1:CHARACTER, criminal2:CHARACTER, criminal3:CHARACTER, criminal4:CHARACTER)
---@alias OsirisOnCrimeResetInterrogationForCriminalCallback fun(crimeID:integer, criminal:CHARACTER)
---@alias OsirisOnCrimeResolvedCallback fun(crimeID:integer, victim:CHARACTER, criminal1:CHARACTER, criminal2:CHARACTER, criminal3:CHARACTER, criminal4:CHARACTER)
---@alias OsirisOnCriminalMergedWithCrimeCallback fun(crimeID:integer, criminal:CHARACTER)
---@alias OsirisOnShutdownCallback fun(isEditorMode:integer)
---@alias OsirisOnStartCarryingCallback fun(carriedObject:GUIDSTRING, carriedObjectTemplate:ROOT, carrier:GUIDSTRING, storyActionID:integer, pickupPosX:number, pickupPosY:number, pickupPosZ:number)
---@alias OsirisOnStoryOverrideCallback fun(target:CHARACTER)
---@alias OsirisOnThrownCallback fun(thrownObject:GUIDSTRING, thrownObjectTemplate:ROOT, thrower:GUIDSTRING, storyActionID:integer, throwPosX:number, throwPosY:number, throwPosZ:number)
---@alias OsirisOpenedCallback fun(item:ITEM)
---@alias OsirisPartyPresetLoadedCallback fun(partyPreset:string, levelName:string)
---@alias OsirisPickupFailedCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisPingRequestedCallback fun(character:CHARACTER)
---@alias OsirisPlatformDestroyedCallback fun(object:GUIDSTRING)
---@alias OsirisPlatformMovementCanceledCallback fun(object:GUIDSTRING, eventId:string)
---@alias OsirisPlatformMovementFinishedCallback fun(object:GUIDSTRING, eventId:string)
---@alias OsirisPreMovedByCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisPuzzleUIClosedCallback fun(character:CHARACTER, uIInstance:string, type:integer)
---@alias OsirisPuzzleUIUsedCallback fun(character:CHARACTER, uIInstance:string, type:integer, command:string, elementId:integer)
---@alias OsirisQuestAcceptedCallback fun(character:CHARACTER, questID:string)
---@alias OsirisQuestClosedCallback fun(questID:string)
---@alias OsirisQuestUpdateUnlockedCallback fun(character:CHARACTER, topLevelQuestID:string, stateID:string)
---@alias OsirisQueuePurgedCallback fun(object:GUIDSTRING)
---@alias OsirisRandomCastProcessedCallback fun(caster:GUIDSTRING, storyActionID:integer, spellID:string, rollResult:integer, randomCastDC:integer)
---@alias OsirisReactionInterruptActionNeededCallback fun(object:GUIDSTRING)
---@alias OsirisReactionInterruptAddedCallback fun(character:CHARACTER, reactionInterruptName:string)
---@alias OsirisReactionInterruptUsedCallback fun(object:GUIDSTRING, reactionInterruptPrototypeId:string, isAutoTriggered:integer)
---@alias OsirisReadyCheckFailedCallback fun(id:string)
---@alias OsirisReadyCheckPassedCallback fun(id:string)
---@alias OsirisRelationChangedCallback fun(sourceFaction:FACTION, targetFaction:FACTION, newRelation:integer, permanent:integer)
---@alias OsirisRemovedFromCallback fun(object:GUIDSTRING, inventoryHolder:GUIDSTRING)
---@alias OsirisReposeAddedCallback fun(entity:GUIDSTRING, onEntity:GUIDSTRING)
---@alias OsirisReposeRemovedCallback fun(entity:GUIDSTRING, onEntity:GUIDSTRING)
---@alias OsirisRequestCanCombineCallback fun(character:CHARACTER, item1:ITEM, item2:ITEM, item3:ITEM, item4:ITEM, item5:ITEM, requestID:integer)
---@alias OsirisRequestCanDisarmTrapCallback fun(character:CHARACTER, item:ITEM, requestID:integer)
---@alias OsirisRequestCanLockpickCallback fun(character:CHARACTER, item:ITEM, requestID:integer)
---@alias OsirisRequestCanLootCallback fun(looter:CHARACTER, target:CHARACTER)
---@alias OsirisRequestCanMoveCallback fun(character:CHARACTER, item:ITEM, requestID:integer)
---@alias OsirisRequestCanPickupCallback fun(character:CHARACTER, object:GUIDSTRING, requestID:integer)
---@alias OsirisRequestCanUseCallback fun(character:CHARACTER, item:ITEM, requestID:integer)
---@alias OsirisRequestEndTheDayFailCallback fun()
---@alias OsirisRequestEndTheDaySuccessCallback fun()
---@alias OsirisRequestGatherAtCampFailCallback fun(character:CHARACTER)
---@alias OsirisRequestGatherAtCampSuccessCallback fun(character:CHARACTER)
---@alias OsirisRequestPickpocketCallback fun(player:CHARACTER, npc:CHARACTER)
---@alias OsirisRequestTradeCallback fun(character:CHARACTER, trader:CHARACTER, tradeMode:TRADEMODE, itemsTagFilter:string)
---@alias OsirisRespecCancelledCallback fun(character:CHARACTER)
---@alias OsirisRespecCompletedCallback fun(character:CHARACTER)
---@alias OsirisRestorePartyFinishedCallback fun()
---@alias OsirisResurrectedCallback fun(character:CHARACTER)
---@alias OsirisRollResultCallback fun(eventName:string, roller:CHARACTER, rollSubject:GUIDSTRING, resultType:integer, isActiveRoll:integer, criticality:CRITICALITYTYPE)
---@alias OsirisRulesetModifierChangedBoolCallback fun(modifier:RULESETMODIFIER, old:integer, new:integer)
---@alias OsirisRulesetModifierChangedFloatCallback fun(modifier:RULESETMODIFIER, old:number, new:number)
---@alias OsirisRulesetModifierChangedIntCallback fun(modifier:RULESETMODIFIER, old:integer, new:integer)
---@alias OsirisRulesetModifierChangedStringCallback fun(modifier:RULESETMODIFIER, old:string, new:string)
---@alias OsirisSafeRomanceOptionChangedCallback fun(userID:integer, state:integer)
---@alias OsirisSavegameLoadStartedCallback fun()
---@alias OsirisSavegameLoadedCallback fun()
---@alias OsirisSawCallback fun(character:CHARACTER, targetCharacter:CHARACTER, targetWasSneaking:integer)
---@alias OsirisScatteredAtCallback fun(item:ITEM, x:number, y:number, z:number)
---@alias OsirisScreenFadeClearedCallback fun(userID:integer, fadeID:string)
---@alias OsirisScreenFadeDoneCallback fun(userID:integer, fadeID:string)
---@alias OsirisShapeshiftChangedCallback fun(character:CHARACTER, race:string, gender:string, shapeshiftStatus:string)
---@alias OsirisShapeshiftedHitpointsChangedCallback fun(entity:GUIDSTRING, percentage:number)
---@alias OsirisShareInitiativeCallback fun(object:GUIDSTRING)
---@alias OsirisShortRestCapableCallback fun(character:CHARACTER, capable:integer)
---@alias OsirisShortRestProcessingCallback fun(character:CHARACTER)
---@alias OsirisShortRestedCallback fun(character:CHARACTER)
---@alias OsirisStackedWithCallback fun(item:ITEM, stackedWithItem:ITEM)
---@alias OsirisStartAttackCallback fun(defender:GUIDSTRING, attackOwner:CHARACTER, attacker:GUIDSTRING, storyActionID:integer)
---@alias OsirisStartAttackPositionCallback fun(x:number, y:number, z:number, attackOwner:CHARACTER, attacker:GUIDSTRING, storyActionID:integer)
---@alias OsirisStartedDisarmingTrapCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisStartedFleeingCallback fun(character:CHARACTER)
---@alias OsirisStartedLockpickingCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisStartedPreviewingSpellCallback fun(caster:GUIDSTRING, spell:string, isMostPowerful:integer, hasMultipleLevels:integer)
---@alias OsirisStatusAppliedCallback fun(object:GUIDSTRING, status:string, causee:GUIDSTRING, storyActionID:integer)
---@alias OsirisStatusAttemptCallback fun(object:GUIDSTRING, status:string, causee:GUIDSTRING, storyActionID:integer)
---@alias OsirisStatusAttemptFailedCallback fun(object:GUIDSTRING, status:string, causee:GUIDSTRING, storyActionID:integer)
---@alias OsirisStatusRemovedCallback fun(object:GUIDSTRING, status:string, causee:GUIDSTRING, applyStoryActionID:integer)
---@alias OsirisStatusTagClearedCallback fun(target:GUIDSTRING, tag:TAG, sourceOwner:GUIDSTRING, source2:GUIDSTRING, storyActionID:integer)
---@alias OsirisStatusTagSetCallback fun(target:GUIDSTRING, tag:TAG, sourceOwner:GUIDSTRING, source2:GUIDSTRING, storyActionID:integer)
---@alias OsirisStoppedCombiningCallback fun(character:CHARACTER, item1:ITEM, item2:ITEM, item3:ITEM, item4:ITEM, item5:ITEM)
---@alias OsirisStoppedDisarmingTrapCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisStoppedLockpickingCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisStoppedSneakingCallback fun(character:CHARACTER)
---@alias OsirisSubQuestUpdateUnlockedCallback fun(character:CHARACTER, subQuestID:string, stateID:string)
---@alias OsirisSupplyTemplateSpentCallback fun(templateId:GUIDSTRING, amount:integer)
---@alias OsirisSwarmAIGroupJoinedCallback fun(object:GUIDSTRING, group:string)
---@alias OsirisSwarmAIGroupLeftCallback fun(object:GUIDSTRING, group:string)
---@alias OsirisSwitchedCombatCallback fun(object:GUIDSTRING, oldCombatGuid:GUIDSTRING, newCombatGuid:GUIDSTRING)
---@alias OsirisTadpolePowerAssignedCallback fun(character:CHARACTER, power:string)
---@alias OsirisTagClearedCallback fun(target:GUIDSTRING, tag:TAG)
---@alias OsirisTagEventCallback fun(tag:TAG, event:string)
---@alias OsirisTagSetCallback fun(target:GUIDSTRING, tag:TAG)
---@alias OsirisTeleportToFleeWaypointCallback fun(character:CHARACTER, trigger:TRIGGER)
---@alias OsirisTeleportToFromCampCallback fun(character:CHARACTER)
---@alias OsirisTeleportToWaypointCallback fun(character:CHARACTER, trigger:TRIGGER)
---@alias OsirisTeleportedCallback fun(target:CHARACTER, cause:CHARACTER, oldX:number, oldY:number, oldZ:number, newX:number, newY:number, newZ:number, spell:string)
---@alias OsirisTeleportedFromCampCallback fun(character:CHARACTER)
---@alias OsirisTeleportedToCampCallback fun(character:CHARACTER)
---@alias OsirisTemplateAddedToCallback fun(objectTemplate:ROOT, object2:GUIDSTRING, inventoryHolder:GUIDSTRING, addType:string)
---@alias OsirisTemplateDestroyedByCallback fun(itemTemplate:ITEMROOT, item2:ITEM, destroyer:CHARACTER, destroyerOwner:CHARACTER, storyActionID:integer)
---@alias OsirisTemplateEnteredTriggerCallback fun(itemTemplate:ITEMROOT, item2:ITEM, trigger:TRIGGER, owner:CHARACTER, mover:GUIDSTRING)
---@alias OsirisTemplateEquippedCallback fun(itemTemplate:ITEMROOT, character:CHARACTER)
---@alias OsirisTemplateKilledByCallback fun(characterTemplate:CHARACTERROOT, defender:CHARACTER, attackOwner:GUIDSTRING, attacker:GUIDSTRING, storyActionID:integer)
---@alias OsirisTemplateLeftTriggerCallback fun(itemTemplate:ITEMROOT, item2:ITEM, trigger:TRIGGER, owner:CHARACTER, mover:GUIDSTRING)
---@alias OsirisTemplateOpeningCallback fun(itemTemplate:ITEMROOT, item2:ITEM, character:CHARACTER)
---@alias OsirisTemplateRemovedFromCallback fun(objectTemplate:ROOT, object2:GUIDSTRING, inventoryHolder:GUIDSTRING)
---@alias OsirisTemplateUnequippedCallback fun(itemTemplate:ITEMROOT, character:CHARACTER)
---@alias OsirisTemplateUseFinishedCallback fun(character:CHARACTER, itemTemplate:ITEMROOT, item2:ITEM, sucess:integer)
---@alias OsirisTemplateUseStartedCallback fun(character:CHARACTER, itemTemplate:ITEMROOT, item2:ITEM)
---@alias OsirisTemplatesCombinedCallback fun(template1:ITEMROOT, template2:ITEMROOT, template3:ITEMROOT, template4:ITEMROOT, template5:ITEMROOT, character:CHARACTER, newItem:ITEM)
---@alias OsirisTemporaryHostileRelationRemovedCallback fun(enemy:CHARACTER, sourceFaction:FACTION, targetFaction:FACTION)
---@alias OsirisTemporaryHostileRelationRequestHandledCallback fun(character1:CHARACTER, character2:CHARACTER, success:integer)
---@alias OsirisTextEventCallback fun(event:string)
---@alias OsirisTimelineScreenFadeStartedCallback fun(userID:integer, dialogInstanceId:integer, dialog2:DIALOGRESOURCE)
---@alias OsirisTimerFinishedCallback fun(timer:string)
---@alias OsirisTradeEndsCallback fun(character:CHARACTER, trader:CHARACTER)
---@alias OsirisTradeGenerationEndedCallback fun(trader:CHARACTER)
---@alias OsirisTradeGenerationStartedCallback fun(trader:CHARACTER)
---@alias OsirisTurnEndedCallback fun(object:GUIDSTRING)
---@alias OsirisTurnStartedCallback fun(object:GUIDSTRING)
---@alias OsirisTutorialBoxClosedCallback fun(character:CHARACTER, message:string)
---@alias OsirisTutorialClosedCallback fun(userId:integer, entryId:GUIDSTRING)
---@alias OsirisTutorialEventCallback fun(entity:CHARACTER, event:TUTORIALEVENT)
---@alias OsirisUnequipFailedCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisUnequippedCallback fun(item:ITEM, character:CHARACTER)
---@alias OsirisUnlockedCallback fun(item:ITEM, character:CHARACTER, key:ITEM)
---@alias OsirisUnlockedRecipeCallback fun(character:CHARACTER, recipe:string)
---@alias OsirisUseFinishedCallback fun(character:CHARACTER, item:ITEM, sucess:integer)
---@alias OsirisUseStartedCallback fun(character:CHARACTER, item:ITEM)
---@alias OsirisUserAvatarCreatedCallback fun(userID:integer, avatar:CHARACTER, daisy:CHARACTER)
---@alias OsirisUserCampChestChangedCallback fun(userID:integer, chest:ITEM)
---@alias OsirisUserCharacterLongRestedCallback fun(character:CHARACTER, isFullRest:integer)
---@alias OsirisUserConnectedCallback fun(userID:integer, userName:string, userProfileID:string)
---@alias OsirisUserDisconnectedCallback fun(userID:integer, userName:string, userProfileID:string)
---@alias OsirisUserEventCallback fun(userID:integer, userEvent:string)
---@alias OsirisUserMakeWarCallback fun(sourceUserID:integer, targetUserID:integer, war:integer)
---@alias OsirisUsingSpellCallback fun(caster:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisUsingSpellAtPositionCallback fun(caster:GUIDSTRING, x:number, y:number, z:number, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisUsingSpellInTriggerCallback fun(caster:GUIDSTRING, spell:string, spellType:string, spellElement:string, trigger:TRIGGER, storyActionID:integer)
---@alias OsirisUsingSpellOnTargetCallback fun(caster:GUIDSTRING, target:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisUsingSpellOnZoneWithTargetCallback fun(caster:GUIDSTRING, target:GUIDSTRING, spell:string, spellType:string, spellElement:string, storyActionID:integer)
---@alias OsirisVoiceBarkEndedCallback fun(bark:VOICEBARKRESOURCE, instanceID:integer)
---@alias OsirisVoiceBarkFailedCallback fun(bark:VOICEBARKRESOURCE)
---@alias OsirisVoiceBarkStartedCallback fun(bark:VOICEBARKRESOURCE, instanceID:integer)
---@alias OsirisWentOnStageCallback fun(object:GUIDSTRING, isOnStageNow:integer)

-- #endregion

---@alias OsirisEventType "before" | "after" | "beforeDelete" | "afterDelete"

---@class Ext_Osiris
---@field RegisterListener fun(id:string, arity:integer, eventType:OsirisEventType, callback:function):integer
---@field UnregisterListener fun(subscriberId:integer)
---@field RegisterListener fun(id:"Activated", arity:1, eventType:OsirisEventType, callback:OsirisActivatedCallback):integer
---@field RegisterListener fun(id:"ActorSpeakerIndexChanged", arity:4, eventType:OsirisEventType, callback:OsirisActorSpeakerIndexChangedCallback):integer
---@field RegisterListener fun(id:"AddedTo", arity:3, eventType:OsirisEventType, callback:OsirisAddedToCallback):integer
---@field RegisterListener fun(id:"AllLoadedFlagsInPresetReceivedEvent", arity:0, eventType:OsirisEventType, callback:OsirisAllLoadedFlagsInPresetReceivedEventCallback):integer
---@field RegisterListener fun(id:"AnimationEvent", arity:3, eventType:OsirisEventType, callback:OsirisAnimationEventCallback):integer
---@field RegisterListener fun(id:"AppearTeleportFailed", arity:2, eventType:OsirisEventType, callback:OsirisAppearTeleportFailedCallback):integer
---@field RegisterListener fun(id:"ApprovalRatingChangeAttempt", arity:5, eventType:OsirisEventType, callback:OsirisApprovalRatingChangeAttemptCallback):integer
---@field RegisterListener fun(id:"ApprovalRatingChanged", arity:3, eventType:OsirisEventType, callback:OsirisApprovalRatingChangedCallback):integer
---@field RegisterListener fun(id:"ArmedTrapUsed", arity:2, eventType:OsirisEventType, callback:OsirisArmedTrapUsedCallback):integer
---@field RegisterListener fun(id:"ArmorSetChanged", arity:2, eventType:OsirisEventType, callback:OsirisArmorSetChangedCallback):integer
---@field RegisterListener fun(id:"AttachedToPartyGroup", arity:1, eventType:OsirisEventType, callback:OsirisAttachedToPartyGroupCallback):integer
---@field RegisterListener fun(id:"AttackedBy", arity:7, eventType:OsirisEventType, callback:OsirisAttackedByCallback):integer
---@field RegisterListener fun(id:"AttemptedDisarm", arity:4, eventType:OsirisEventType, callback:OsirisAttemptedDisarmCallback):integer
---@field RegisterListener fun(id:"AutomatedDialogEnded", arity:2, eventType:OsirisEventType, callback:OsirisAutomatedDialogEndedCallback):integer
---@field RegisterListener fun(id:"AutomatedDialogForceStopping", arity:2, eventType:OsirisEventType, callback:OsirisAutomatedDialogForceStoppingCallback):integer
---@field RegisterListener fun(id:"AutomatedDialogRequestFailed", arity:2, eventType:OsirisEventType, callback:OsirisAutomatedDialogRequestFailedCallback):integer
---@field RegisterListener fun(id:"AutomatedDialogStarted", arity:2, eventType:OsirisEventType, callback:OsirisAutomatedDialogStartedCallback):integer
---@field RegisterListener fun(id:"BackgroundGoalFailed", arity:2, eventType:OsirisEventType, callback:OsirisBackgroundGoalFailedCallback):integer
---@field RegisterListener fun(id:"BackgroundGoalRewarded", arity:2, eventType:OsirisEventType, callback:OsirisBackgroundGoalRewardedCallback):integer
---@field RegisterListener fun(id:"BaseFactionChanged", arity:3, eventType:OsirisEventType, callback:OsirisBaseFactionChangedCallback):integer
---@field RegisterListener fun(id:"CameraReachedNode", arity:5, eventType:OsirisEventType, callback:OsirisCameraReachedNodeCallback):integer
---@field RegisterListener fun(id:"CanBeLootedCapabilityChanged", arity:2, eventType:OsirisEventType, callback:OsirisCanBeLootedCapabilityChangedCallback):integer
---@field RegisterListener fun(id:"CastSpell", arity:5, eventType:OsirisEventType, callback:OsirisCastSpellCallback):integer
---@field RegisterListener fun(id:"CastSpellFailed", arity:5, eventType:OsirisEventType, callback:OsirisCastSpellFailedCallback):integer
---@field RegisterListener fun(id:"CastedSpell", arity:5, eventType:OsirisEventType, callback:OsirisCastedSpellCallback):integer
---@field RegisterListener fun(id:"ChangeAppearanceCancelled", arity:1, eventType:OsirisEventType, callback:OsirisChangeAppearanceCancelledCallback):integer
---@field RegisterListener fun(id:"ChangeAppearanceCompleted", arity:1, eventType:OsirisEventType, callback:OsirisChangeAppearanceCompletedCallback):integer
---@field RegisterListener fun(id:"CharacterCreationFinished", arity:0, eventType:OsirisEventType, callback:OsirisCharacterCreationFinishedCallback):integer
---@field RegisterListener fun(id:"CharacterCreationStarted", arity:0, eventType:OsirisEventType, callback:OsirisCharacterCreationStartedCallback):integer
---@field RegisterListener fun(id:"CharacterDisarmed", arity:3, eventType:OsirisEventType, callback:OsirisCharacterDisarmedCallback):integer
---@field RegisterListener fun(id:"CharacterJoinedParty", arity:1, eventType:OsirisEventType, callback:OsirisCharacterJoinedPartyCallback):integer
---@field RegisterListener fun(id:"CharacterLeftParty", arity:1, eventType:OsirisEventType, callback:OsirisCharacterLeftPartyCallback):integer
---@field RegisterListener fun(id:"CharacterLoadedInPreset", arity:1, eventType:OsirisEventType, callback:OsirisCharacterLoadedInPresetCallback):integer
---@field RegisterListener fun(id:"CharacterLootedCharacter", arity:2, eventType:OsirisEventType, callback:OsirisCharacterLootedCharacterCallback):integer
---@field RegisterListener fun(id:"CharacterMadePlayer", arity:1, eventType:OsirisEventType, callback:OsirisCharacterMadePlayerCallback):integer
---@field RegisterListener fun(id:"CharacterMoveFailedUseJump", arity:1, eventType:OsirisEventType, callback:OsirisCharacterMoveFailedUseJumpCallback):integer
---@field RegisterListener fun(id:"CharacterMoveToAndTalkFailed", arity:4, eventType:OsirisEventType, callback:OsirisCharacterMoveToAndTalkFailedCallback):integer
---@field RegisterListener fun(id:"CharacterMoveToAndTalkRequestDialog", arity:4, eventType:OsirisEventType, callback:OsirisCharacterMoveToAndTalkRequestDialogCallback):integer
---@field RegisterListener fun(id:"CharacterMoveToCancelled", arity:2, eventType:OsirisEventType, callback:OsirisCharacterMoveToCancelledCallback):integer
---@field RegisterListener fun(id:"CharacterOnCrimeSensibleActionNotification", arity:10, eventType:OsirisEventType, callback:OsirisCharacterOnCrimeSensibleActionNotificationCallback):integer
---@field RegisterListener fun(id:"CharacterPickpocketFailed", arity:2, eventType:OsirisEventType, callback:OsirisCharacterPickpocketFailedCallback):integer
---@field RegisterListener fun(id:"CharacterPickpocketSuccess", arity:6, eventType:OsirisEventType, callback:OsirisCharacterPickpocketSuccessCallback):integer
---@field RegisterListener fun(id:"CharacterReservedUserIDChanged", arity:3, eventType:OsirisEventType, callback:OsirisCharacterReservedUserIDChangedCallback):integer
---@field RegisterListener fun(id:"CharacterSelectedAsBestUnavailableFallbackLead", arity:4, eventType:OsirisEventType, callback:OsirisCharacterSelectedAsBestUnavailableFallbackLeadCallback):integer
---@field RegisterListener fun(id:"CharacterSelectedClimbOn", arity:1, eventType:OsirisEventType, callback:OsirisCharacterSelectedClimbOnCallback):integer
---@field RegisterListener fun(id:"CharacterSelectedForUser", arity:2, eventType:OsirisEventType, callback:OsirisCharacterSelectedForUserCallback):integer
---@field RegisterListener fun(id:"CharacterStoleItem", arity:10, eventType:OsirisEventType, callback:OsirisCharacterStoleItemCallback):integer
---@field RegisterListener fun(id:"CharacterTagEvent", arity:3, eventType:OsirisEventType, callback:OsirisCharacterTagEventCallback):integer
---@field RegisterListener fun(id:"Closed", arity:1, eventType:OsirisEventType, callback:OsirisClosedCallback):integer
---@field RegisterListener fun(id:"CombatEnded", arity:1, eventType:OsirisEventType, callback:OsirisCombatEndedCallback):integer
---@field RegisterListener fun(id:"CombatPaused", arity:1, eventType:OsirisEventType, callback:OsirisCombatPausedCallback):integer
---@field RegisterListener fun(id:"CombatResumed", arity:1, eventType:OsirisEventType, callback:OsirisCombatResumedCallback):integer
---@field RegisterListener fun(id:"CombatRoundStarted", arity:2, eventType:OsirisEventType, callback:OsirisCombatRoundStartedCallback):integer
---@field RegisterListener fun(id:"CombatStarted", arity:1, eventType:OsirisEventType, callback:OsirisCombatStartedCallback):integer
---@field RegisterListener fun(id:"Combined", arity:7, eventType:OsirisEventType, callback:OsirisCombinedCallback):integer
---@field RegisterListener fun(id:"CompanionSelectedForUser", arity:2, eventType:OsirisEventType, callback:OsirisCompanionSelectedForUserCallback):integer
---@field RegisterListener fun(id:"CreditsEnded", arity:0, eventType:OsirisEventType, callback:OsirisCreditsEndedCallback):integer
---@field RegisterListener fun(id:"CrimeDisabled", arity:2, eventType:OsirisEventType, callback:OsirisCrimeDisabledCallback):integer
---@field RegisterListener fun(id:"CrimeEnabled", arity:2, eventType:OsirisEventType, callback:OsirisCrimeEnabledCallback):integer
---@field RegisterListener fun(id:"CrimeIsRegistered", arity:8, eventType:OsirisEventType, callback:OsirisCrimeIsRegisteredCallback):integer
---@field RegisterListener fun(id:"CrimeProcessingStarted", arity:2, eventType:OsirisEventType, callback:OsirisCrimeProcessingStartedCallback):integer
---@field RegisterListener fun(id:"CriticalHitBy", arity:4, eventType:OsirisEventType, callback:OsirisCriticalHitByCallback):integer
---@field RegisterListener fun(id:"CustomBookUIClosed", arity:2, eventType:OsirisEventType, callback:OsirisCustomBookUIClosedCallback):integer
---@field RegisterListener fun(id:"DLCUpdated", arity:3, eventType:OsirisEventType, callback:OsirisDLCUpdatedCallback):integer
---@field RegisterListener fun(id:"Deactivated", arity:1, eventType:OsirisEventType, callback:OsirisDeactivatedCallback):integer
---@field RegisterListener fun(id:"DeathSaveStable", arity:1, eventType:OsirisEventType, callback:OsirisDeathSaveStableCallback):integer
---@field RegisterListener fun(id:"DeathTypeChanged", arity:2, eventType:OsirisEventType, callback:OsirisDeathTypeChangedCallback):integer
---@field RegisterListener fun(id:"DestroyedBy", arity:4, eventType:OsirisEventType, callback:OsirisDestroyedByCallback):integer
---@field RegisterListener fun(id:"DestroyingBy", arity:4, eventType:OsirisEventType, callback:OsirisDestroyingByCallback):integer
---@field RegisterListener fun(id:"DetachedFromPartyGroup", arity:1, eventType:OsirisEventType, callback:OsirisDetachedFromPartyGroupCallback):integer
---@field RegisterListener fun(id:"DialogActorJoinFailed", arity:3, eventType:OsirisEventType, callback:OsirisDialogActorJoinFailedCallback):integer
---@field RegisterListener fun(id:"DialogActorJoined", arity:4, eventType:OsirisEventType, callback:OsirisDialogActorJoinedCallback):integer
---@field RegisterListener fun(id:"DialogActorLeft", arity:4, eventType:OsirisEventType, callback:OsirisDialogActorLeftCallback):integer
---@field RegisterListener fun(id:"DialogAttackRequested", arity:2, eventType:OsirisEventType, callback:OsirisDialogAttackRequestedCallback):integer
---@field RegisterListener fun(id:"DialogEnded", arity:2, eventType:OsirisEventType, callback:OsirisDialogEndedCallback):integer
---@field RegisterListener fun(id:"DialogForceStopping", arity:2, eventType:OsirisEventType, callback:OsirisDialogForceStoppingCallback):integer
---@field RegisterListener fun(id:"DialogRequestFailed", arity:2, eventType:OsirisEventType, callback:OsirisDialogRequestFailedCallback):integer
---@field RegisterListener fun(id:"DialogRollResult", arity:5, eventType:OsirisEventType, callback:OsirisDialogRollResultCallback):integer
---@field RegisterListener fun(id:"DialogStartRequested", arity:2, eventType:OsirisEventType, callback:OsirisDialogStartRequestedCallback):integer
---@field RegisterListener fun(id:"DialogStarted", arity:2, eventType:OsirisEventType, callback:OsirisDialogStartedCallback):integer
---@field RegisterListener fun(id:"DialogueCapabilityChanged", arity:2, eventType:OsirisEventType, callback:OsirisDialogueCapabilityChangedCallback):integer
---@field RegisterListener fun(id:"Died", arity:1, eventType:OsirisEventType, callback:OsirisDiedCallback):integer
---@field RegisterListener fun(id:"DifficultyChanged", arity:1, eventType:OsirisEventType, callback:OsirisDifficultyChangedCallback):integer
---@field RegisterListener fun(id:"DisappearOutOfSightToCancelled", arity:2, eventType:OsirisEventType, callback:OsirisDisappearOutOfSightToCancelledCallback):integer
---@field RegisterListener fun(id:"Donated", arity:4, eventType:OsirisEventType, callback:OsirisDonatedCallback):integer
---@field RegisterListener fun(id:"DoorTemplateClosing", arity:3, eventType:OsirisEventType, callback:OsirisDoorTemplateClosingCallback):integer
---@field RegisterListener fun(id:"DownedChanged", arity:2, eventType:OsirisEventType, callback:OsirisDownedChangedCallback):integer
---@field RegisterListener fun(id:"DroppedBy", arity:2, eventType:OsirisEventType, callback:OsirisDroppedByCallback):integer
---@field RegisterListener fun(id:"DualEntityEvent", arity:3, eventType:OsirisEventType, callback:OsirisDualEntityEventCallback):integer
---@field RegisterListener fun(id:"Dying", arity:1, eventType:OsirisEventType, callback:OsirisDyingCallback):integer
---@field RegisterListener fun(id:"EndTheDayRequested", arity:1, eventType:OsirisEventType, callback:OsirisEndTheDayRequestedCallback):integer
---@field RegisterListener fun(id:"EnterCombatFailed", arity:2, eventType:OsirisEventType, callback:OsirisEnterCombatFailedCallback):integer
---@field RegisterListener fun(id:"EnteredChasm", arity:6, eventType:OsirisEventType, callback:OsirisEnteredChasmCallback):integer
---@field RegisterListener fun(id:"EnteredCombat", arity:2, eventType:OsirisEventType, callback:OsirisEnteredCombatCallback):integer
---@field RegisterListener fun(id:"EnteredForceTurnBased", arity:1, eventType:OsirisEventType, callback:OsirisEnteredForceTurnBasedCallback):integer
---@field RegisterListener fun(id:"EnteredLevel", arity:3, eventType:OsirisEventType, callback:OsirisEnteredLevelCallback):integer
---@field RegisterListener fun(id:"EnteredSharedForceTurnBased", arity:2, eventType:OsirisEventType, callback:OsirisEnteredSharedForceTurnBasedCallback):integer
---@field RegisterListener fun(id:"EnteredTrigger", arity:2, eventType:OsirisEventType, callback:OsirisEnteredTriggerCallback):integer
---@field RegisterListener fun(id:"EntityEvent", arity:2, eventType:OsirisEventType, callback:OsirisEntityEventCallback):integer
---@field RegisterListener fun(id:"EquipFailed", arity:2, eventType:OsirisEventType, callback:OsirisEquipFailedCallback):integer
---@field RegisterListener fun(id:"Equipped", arity:2, eventType:OsirisEventType, callback:OsirisEquippedCallback):integer
---@field RegisterListener fun(id:"EscortGroupLeaderChanged", arity:3, eventType:OsirisEventType, callback:OsirisEscortGroupLeaderChangedCallback):integer
---@field RegisterListener fun(id:"FailedToLoadItemInPreset", arity:4, eventType:OsirisEventType, callback:OsirisFailedToLoadItemInPresetCallback):integer
---@field RegisterListener fun(id:"Falling", arity:2, eventType:OsirisEventType, callback:OsirisFallingCallback):integer
---@field RegisterListener fun(id:"Fell", arity:2, eventType:OsirisEventType, callback:OsirisFellCallback):integer
---@field RegisterListener fun(id:"FlagCleared", arity:3, eventType:OsirisEventType, callback:OsirisFlagClearedCallback):integer
---@field RegisterListener fun(id:"FlagLoadedInPresetEvent", arity:2, eventType:OsirisEventType, callback:OsirisFlagLoadedInPresetEventCallback):integer
---@field RegisterListener fun(id:"FlagSet", arity:3, eventType:OsirisEventType, callback:OsirisFlagSetCallback):integer
---@field RegisterListener fun(id:"FleeFromCombat", arity:2, eventType:OsirisEventType, callback:OsirisFleeFromCombatCallback):integer
---@field RegisterListener fun(id:"FollowerCantUseItem", arity:1, eventType:OsirisEventType, callback:OsirisFollowerCantUseItemCallback):integer
---@field RegisterListener fun(id:"ForceDismissCompanion", arity:1, eventType:OsirisEventType, callback:OsirisForceDismissCompanionCallback):integer
---@field RegisterListener fun(id:"ForceMoveEnded", arity:3, eventType:OsirisEventType, callback:OsirisForceMoveEndedCallback):integer
---@field RegisterListener fun(id:"ForceMoveStarted", arity:3, eventType:OsirisEventType, callback:OsirisForceMoveStartedCallback):integer
---@field RegisterListener fun(id:"GainedControl", arity:1, eventType:OsirisEventType, callback:OsirisGainedControlCallback):integer
---@field RegisterListener fun(id:"GameBookInterfaceClosed", arity:2, eventType:OsirisEventType, callback:OsirisGameBookInterfaceClosedCallback):integer
---@field RegisterListener fun(id:"GameModeStarted", arity:3, eventType:OsirisEventType, callback:OsirisGameModeStartedCallback):integer
---@field RegisterListener fun(id:"GameOption", arity:2, eventType:OsirisEventType, callback:OsirisGameOptionCallback):integer
---@field RegisterListener fun(id:"GoldChanged", arity:2, eventType:OsirisEventType, callback:OsirisGoldChangedCallback):integer
---@field RegisterListener fun(id:"GotUp", arity:1, eventType:OsirisEventType, callback:OsirisGotUpCallback):integer
---@field RegisterListener fun(id:"HappyWithDeal", arity:4, eventType:OsirisEventType, callback:OsirisHappyWithDealCallback):integer
---@field RegisterListener fun(id:"HenchmanAborted", arity:1, eventType:OsirisEventType, callback:OsirisHenchmanAbortedCallback):integer
---@field RegisterListener fun(id:"HenchmanSelected", arity:2, eventType:OsirisEventType, callback:OsirisHenchmanSelectedCallback):integer
---@field RegisterListener fun(id:"HitProxy", arity:5, eventType:OsirisEventType, callback:OsirisHitProxyCallback):integer
---@field RegisterListener fun(id:"HitpointsChanged", arity:2, eventType:OsirisEventType, callback:OsirisHitpointsChangedCallback):integer
---@field RegisterListener fun(id:"InstanceDialogChanged", arity:4, eventType:OsirisEventType, callback:OsirisInstanceDialogChangedCallback):integer
---@field RegisterListener fun(id:"InteractionCapabilityChanged", arity:2, eventType:OsirisEventType, callback:OsirisInteractionCapabilityChangedCallback):integer
---@field RegisterListener fun(id:"InteractionFallback", arity:2, eventType:OsirisEventType, callback:OsirisInteractionFallbackCallback):integer
---@field RegisterListener fun(id:"InventoryBoundChanged", arity:2, eventType:OsirisEventType, callback:OsirisInventoryBoundChangedCallback):integer
---@field RegisterListener fun(id:"InventorySharingChanged", arity:2, eventType:OsirisEventType, callback:OsirisInventorySharingChangedCallback):integer
---@field RegisterListener fun(id:"ItemEnteredTrigger", arity:3, eventType:OsirisEventType, callback:OsirisItemEnteredTriggerCallback):integer
---@field RegisterListener fun(id:"ItemLeftTrigger", arity:3, eventType:OsirisEventType, callback:OsirisItemLeftTriggerCallback):integer
---@field RegisterListener fun(id:"ItemTeleported", arity:7, eventType:OsirisEventType, callback:OsirisItemTeleportedCallback):integer
---@field RegisterListener fun(id:"KilledBy", arity:4, eventType:OsirisEventType, callback:OsirisKilledByCallback):integer
---@field RegisterListener fun(id:"LearnedSpell", arity:2, eventType:OsirisEventType, callback:OsirisLearnedSpellCallback):integer
---@field RegisterListener fun(id:"LeftCombat", arity:2, eventType:OsirisEventType, callback:OsirisLeftCombatCallback):integer
---@field RegisterListener fun(id:"LeftForceTurnBased", arity:1, eventType:OsirisEventType, callback:OsirisLeftForceTurnBasedCallback):integer
---@field RegisterListener fun(id:"LeftLevel", arity:2, eventType:OsirisEventType, callback:OsirisLeftLevelCallback):integer
---@field RegisterListener fun(id:"LeftTrigger", arity:2, eventType:OsirisEventType, callback:OsirisLeftTriggerCallback):integer
---@field RegisterListener fun(id:"LevelGameplayReady", arity:2, eventType:OsirisEventType, callback:OsirisLevelGameplayReadyCallback):integer
---@field RegisterListener fun(id:"LevelGameplayStarted", arity:2, eventType:OsirisEventType, callback:OsirisLevelGameplayStartedCallback):integer
---@field RegisterListener fun(id:"LevelLoaded", arity:1, eventType:OsirisEventType, callback:OsirisLevelLoadedCallback):integer
---@field RegisterListener fun(id:"LevelTemplateLoaded", arity:1, eventType:OsirisEventType, callback:OsirisLevelTemplateLoadedCallback):integer
---@field RegisterListener fun(id:"LevelUnloading", arity:1, eventType:OsirisEventType, callback:OsirisLevelUnloadingCallback):integer
---@field RegisterListener fun(id:"LeveledUp", arity:1, eventType:OsirisEventType, callback:OsirisLeveledUpCallback):integer
---@field RegisterListener fun(id:"LongRestCancelled", arity:0, eventType:OsirisEventType, callback:OsirisLongRestCancelledCallback):integer
---@field RegisterListener fun(id:"LongRestFinished", arity:0, eventType:OsirisEventType, callback:OsirisLongRestFinishedCallback):integer
---@field RegisterListener fun(id:"LongRestStartFailed", arity:0, eventType:OsirisEventType, callback:OsirisLongRestStartFailedCallback):integer
---@field RegisterListener fun(id:"LongRestStarted", arity:0, eventType:OsirisEventType, callback:OsirisLongRestStartedCallback):integer
---@field RegisterListener fun(id:"LostSightOf", arity:2, eventType:OsirisEventType, callback:OsirisLostSightOfCallback):integer
---@field RegisterListener fun(id:"MainPerformerStarted", arity:2, eventType:OsirisEventType, callback:OsirisMainPerformerStartedCallback):integer
---@field RegisterListener fun(id:"MessageBoxChoiceClosed", arity:3, eventType:OsirisEventType, callback:OsirisMessageBoxChoiceClosedCallback):integer
---@field RegisterListener fun(id:"MessageBoxClosed", arity:2, eventType:OsirisEventType, callback:OsirisMessageBoxClosedCallback):integer
---@field RegisterListener fun(id:"MessageBoxYesNoClosed", arity:3, eventType:OsirisEventType, callback:OsirisMessageBoxYesNoClosedCallback):integer
---@field RegisterListener fun(id:"MissedBy", arity:4, eventType:OsirisEventType, callback:OsirisMissedByCallback):integer
---@field RegisterListener fun(id:"ModuleLoadedinSavegame", arity:5, eventType:OsirisEventType, callback:OsirisModuleLoadedinSavegameCallback):integer
---@field RegisterListener fun(id:"MoveCapabilityChanged", arity:2, eventType:OsirisEventType, callback:OsirisMoveCapabilityChangedCallback):integer
---@field RegisterListener fun(id:"Moved", arity:1, eventType:OsirisEventType, callback:OsirisMovedCallback):integer
---@field RegisterListener fun(id:"MovedBy", arity:2, eventType:OsirisEventType, callback:OsirisMovedByCallback):integer
---@field RegisterListener fun(id:"MovedFromTo", arity:4, eventType:OsirisEventType, callback:OsirisMovedFromToCallback):integer
---@field RegisterListener fun(id:"MovieFinished", arity:1, eventType:OsirisEventType, callback:OsirisMovieFinishedCallback):integer
---@field RegisterListener fun(id:"MoviePlaylistFinished", arity:1, eventType:OsirisEventType, callback:OsirisMoviePlaylistFinishedCallback):integer
---@field RegisterListener fun(id:"NestedDialogPlayed", arity:2, eventType:OsirisEventType, callback:OsirisNestedDialogPlayedCallback):integer
---@field RegisterListener fun(id:"ObjectAvailableLevelChanged", arity:3, eventType:OsirisEventType, callback:OsirisObjectAvailableLevelChangedCallback):integer
---@field RegisterListener fun(id:"ObjectTimerFinished", arity:2, eventType:OsirisEventType, callback:OsirisObjectTimerFinishedCallback):integer
---@field RegisterListener fun(id:"ObjectTransformed", arity:2, eventType:OsirisEventType, callback:OsirisObjectTransformedCallback):integer
---@field RegisterListener fun(id:"ObscuredStateChanged", arity:2, eventType:OsirisEventType, callback:OsirisObscuredStateChangedCallback):integer
---@field RegisterListener fun(id:"OnCrimeConfrontationDone", arity:7, eventType:OsirisEventType, callback:OsirisOnCrimeConfrontationDoneCallback):integer
---@field RegisterListener fun(id:"OnCrimeInvestigatorSwitchedState", arity:4, eventType:OsirisEventType, callback:OsirisOnCrimeInvestigatorSwitchedStateCallback):integer
---@field RegisterListener fun(id:"OnCrimeMergedWith", arity:2, eventType:OsirisEventType, callback:OsirisOnCrimeMergedWithCallback):integer
---@field RegisterListener fun(id:"OnCrimeRemoved", arity:6, eventType:OsirisEventType, callback:OsirisOnCrimeRemovedCallback):integer
---@field RegisterListener fun(id:"OnCrimeResetInterrogationForCriminal", arity:2, eventType:OsirisEventType, callback:OsirisOnCrimeResetInterrogationForCriminalCallback):integer
---@field RegisterListener fun(id:"OnCrimeResolved", arity:6, eventType:OsirisEventType, callback:OsirisOnCrimeResolvedCallback):integer
---@field RegisterListener fun(id:"OnCriminalMergedWithCrime", arity:2, eventType:OsirisEventType, callback:OsirisOnCriminalMergedWithCrimeCallback):integer
---@field RegisterListener fun(id:"OnShutdown", arity:1, eventType:OsirisEventType, callback:OsirisOnShutdownCallback):integer
---@field RegisterListener fun(id:"OnStartCarrying", arity:7, eventType:OsirisEventType, callback:OsirisOnStartCarryingCallback):integer
---@field RegisterListener fun(id:"OnStoryOverride", arity:1, eventType:OsirisEventType, callback:OsirisOnStoryOverrideCallback):integer
---@field RegisterListener fun(id:"OnThrown", arity:7, eventType:OsirisEventType, callback:OsirisOnThrownCallback):integer
---@field RegisterListener fun(id:"Opened", arity:1, eventType:OsirisEventType, callback:OsirisOpenedCallback):integer
---@field RegisterListener fun(id:"PartyPresetLoaded", arity:2, eventType:OsirisEventType, callback:OsirisPartyPresetLoadedCallback):integer
---@field RegisterListener fun(id:"PickupFailed", arity:2, eventType:OsirisEventType, callback:OsirisPickupFailedCallback):integer
---@field RegisterListener fun(id:"PingRequested", arity:1, eventType:OsirisEventType, callback:OsirisPingRequestedCallback):integer
---@field RegisterListener fun(id:"PlatformDestroyed", arity:1, eventType:OsirisEventType, callback:OsirisPlatformDestroyedCallback):integer
---@field RegisterListener fun(id:"PlatformMovementCanceled", arity:2, eventType:OsirisEventType, callback:OsirisPlatformMovementCanceledCallback):integer
---@field RegisterListener fun(id:"PlatformMovementFinished", arity:2, eventType:OsirisEventType, callback:OsirisPlatformMovementFinishedCallback):integer
---@field RegisterListener fun(id:"PreMovedBy", arity:2, eventType:OsirisEventType, callback:OsirisPreMovedByCallback):integer
---@field RegisterListener fun(id:"PuzzleUIClosed", arity:3, eventType:OsirisEventType, callback:OsirisPuzzleUIClosedCallback):integer
---@field RegisterListener fun(id:"PuzzleUIUsed", arity:5, eventType:OsirisEventType, callback:OsirisPuzzleUIUsedCallback):integer
---@field RegisterListener fun(id:"QuestAccepted", arity:2, eventType:OsirisEventType, callback:OsirisQuestAcceptedCallback):integer
---@field RegisterListener fun(id:"QuestClosed", arity:1, eventType:OsirisEventType, callback:OsirisQuestClosedCallback):integer
---@field RegisterListener fun(id:"QuestUpdateUnlocked", arity:3, eventType:OsirisEventType, callback:OsirisQuestUpdateUnlockedCallback):integer
---@field RegisterListener fun(id:"QueuePurged", arity:1, eventType:OsirisEventType, callback:OsirisQueuePurgedCallback):integer
---@field RegisterListener fun(id:"RandomCastProcessed", arity:5, eventType:OsirisEventType, callback:OsirisRandomCastProcessedCallback):integer
---@field RegisterListener fun(id:"ReactionInterruptActionNeeded", arity:1, eventType:OsirisEventType, callback:OsirisReactionInterruptActionNeededCallback):integer
---@field RegisterListener fun(id:"ReactionInterruptAdded", arity:2, eventType:OsirisEventType, callback:OsirisReactionInterruptAddedCallback):integer
---@field RegisterListener fun(id:"ReactionInterruptUsed", arity:3, eventType:OsirisEventType, callback:OsirisReactionInterruptUsedCallback):integer
---@field RegisterListener fun(id:"ReadyCheckFailed", arity:1, eventType:OsirisEventType, callback:OsirisReadyCheckFailedCallback):integer
---@field RegisterListener fun(id:"ReadyCheckPassed", arity:1, eventType:OsirisEventType, callback:OsirisReadyCheckPassedCallback):integer
---@field RegisterListener fun(id:"RelationChanged", arity:4, eventType:OsirisEventType, callback:OsirisRelationChangedCallback):integer
---@field RegisterListener fun(id:"RemovedFrom", arity:2, eventType:OsirisEventType, callback:OsirisRemovedFromCallback):integer
---@field RegisterListener fun(id:"ReposeAdded", arity:2, eventType:OsirisEventType, callback:OsirisReposeAddedCallback):integer
---@field RegisterListener fun(id:"ReposeRemoved", arity:2, eventType:OsirisEventType, callback:OsirisReposeRemovedCallback):integer
---@field RegisterListener fun(id:"RequestCanCombine", arity:7, eventType:OsirisEventType, callback:OsirisRequestCanCombineCallback):integer
---@field RegisterListener fun(id:"RequestCanDisarmTrap", arity:3, eventType:OsirisEventType, callback:OsirisRequestCanDisarmTrapCallback):integer
---@field RegisterListener fun(id:"RequestCanLockpick", arity:3, eventType:OsirisEventType, callback:OsirisRequestCanLockpickCallback):integer
---@field RegisterListener fun(id:"RequestCanLoot", arity:2, eventType:OsirisEventType, callback:OsirisRequestCanLootCallback):integer
---@field RegisterListener fun(id:"RequestCanMove", arity:3, eventType:OsirisEventType, callback:OsirisRequestCanMoveCallback):integer
---@field RegisterListener fun(id:"RequestCanPickup", arity:3, eventType:OsirisEventType, callback:OsirisRequestCanPickupCallback):integer
---@field RegisterListener fun(id:"RequestCanUse", arity:3, eventType:OsirisEventType, callback:OsirisRequestCanUseCallback):integer
---@field RegisterListener fun(id:"RequestEndTheDayFail", arity:0, eventType:OsirisEventType, callback:OsirisRequestEndTheDayFailCallback):integer
---@field RegisterListener fun(id:"RequestEndTheDaySuccess", arity:0, eventType:OsirisEventType, callback:OsirisRequestEndTheDaySuccessCallback):integer
---@field RegisterListener fun(id:"RequestGatherAtCampFail", arity:1, eventType:OsirisEventType, callback:OsirisRequestGatherAtCampFailCallback):integer
---@field RegisterListener fun(id:"RequestGatherAtCampSuccess", arity:1, eventType:OsirisEventType, callback:OsirisRequestGatherAtCampSuccessCallback):integer
---@field RegisterListener fun(id:"RequestPickpocket", arity:2, eventType:OsirisEventType, callback:OsirisRequestPickpocketCallback):integer
---@field RegisterListener fun(id:"RequestTrade", arity:4, eventType:OsirisEventType, callback:OsirisRequestTradeCallback):integer
---@field RegisterListener fun(id:"RespecCancelled", arity:1, eventType:OsirisEventType, callback:OsirisRespecCancelledCallback):integer
---@field RegisterListener fun(id:"RespecCompleted", arity:1, eventType:OsirisEventType, callback:OsirisRespecCompletedCallback):integer
---@field RegisterListener fun(id:"RestorePartyFinished", arity:0, eventType:OsirisEventType, callback:OsirisRestorePartyFinishedCallback):integer
---@field RegisterListener fun(id:"Resurrected", arity:1, eventType:OsirisEventType, callback:OsirisResurrectedCallback):integer
---@field RegisterListener fun(id:"RollResult", arity:6, eventType:OsirisEventType, callback:OsirisRollResultCallback):integer
---@field RegisterListener fun(id:"RulesetModifierChangedBool", arity:3, eventType:OsirisEventType, callback:OsirisRulesetModifierChangedBoolCallback):integer
---@field RegisterListener fun(id:"RulesetModifierChangedFloat", arity:3, eventType:OsirisEventType, callback:OsirisRulesetModifierChangedFloatCallback):integer
---@field RegisterListener fun(id:"RulesetModifierChangedInt", arity:3, eventType:OsirisEventType, callback:OsirisRulesetModifierChangedIntCallback):integer
---@field RegisterListener fun(id:"RulesetModifierChangedString", arity:3, eventType:OsirisEventType, callback:OsirisRulesetModifierChangedStringCallback):integer
---@field RegisterListener fun(id:"SafeRomanceOptionChanged", arity:2, eventType:OsirisEventType, callback:OsirisSafeRomanceOptionChangedCallback):integer
---@field RegisterListener fun(id:"SavegameLoadStarted", arity:0, eventType:OsirisEventType, callback:OsirisSavegameLoadStartedCallback):integer
---@field RegisterListener fun(id:"SavegameLoaded", arity:0, eventType:OsirisEventType, callback:OsirisSavegameLoadedCallback):integer
---@field RegisterListener fun(id:"Saw", arity:3, eventType:OsirisEventType, callback:OsirisSawCallback):integer
---@field RegisterListener fun(id:"ScatteredAt", arity:4, eventType:OsirisEventType, callback:OsirisScatteredAtCallback):integer
---@field RegisterListener fun(id:"ScreenFadeCleared", arity:2, eventType:OsirisEventType, callback:OsirisScreenFadeClearedCallback):integer
---@field RegisterListener fun(id:"ScreenFadeDone", arity:2, eventType:OsirisEventType, callback:OsirisScreenFadeDoneCallback):integer
---@field RegisterListener fun(id:"ShapeshiftChanged", arity:4, eventType:OsirisEventType, callback:OsirisShapeshiftChangedCallback):integer
---@field RegisterListener fun(id:"ShapeshiftedHitpointsChanged", arity:2, eventType:OsirisEventType, callback:OsirisShapeshiftedHitpointsChangedCallback):integer
---@field RegisterListener fun(id:"ShareInitiative", arity:1, eventType:OsirisEventType, callback:OsirisShareInitiativeCallback):integer
---@field RegisterListener fun(id:"ShortRestCapable", arity:2, eventType:OsirisEventType, callback:OsirisShortRestCapableCallback):integer
---@field RegisterListener fun(id:"ShortRestProcessing", arity:1, eventType:OsirisEventType, callback:OsirisShortRestProcessingCallback):integer
---@field RegisterListener fun(id:"ShortRested", arity:1, eventType:OsirisEventType, callback:OsirisShortRestedCallback):integer
---@field RegisterListener fun(id:"StackedWith", arity:2, eventType:OsirisEventType, callback:OsirisStackedWithCallback):integer
---@field RegisterListener fun(id:"StartAttack", arity:4, eventType:OsirisEventType, callback:OsirisStartAttackCallback):integer
---@field RegisterListener fun(id:"StartAttackPosition", arity:6, eventType:OsirisEventType, callback:OsirisStartAttackPositionCallback):integer
---@field RegisterListener fun(id:"StartedDisarmingTrap", arity:2, eventType:OsirisEventType, callback:OsirisStartedDisarmingTrapCallback):integer
---@field RegisterListener fun(id:"StartedFleeing", arity:1, eventType:OsirisEventType, callback:OsirisStartedFleeingCallback):integer
---@field RegisterListener fun(id:"StartedLockpicking", arity:2, eventType:OsirisEventType, callback:OsirisStartedLockpickingCallback):integer
---@field RegisterListener fun(id:"StartedPreviewingSpell", arity:4, eventType:OsirisEventType, callback:OsirisStartedPreviewingSpellCallback):integer
---@field RegisterListener fun(id:"StatusApplied", arity:4, eventType:OsirisEventType, callback:OsirisStatusAppliedCallback):integer
---@field RegisterListener fun(id:"StatusAttempt", arity:4, eventType:OsirisEventType, callback:OsirisStatusAttemptCallback):integer
---@field RegisterListener fun(id:"StatusAttemptFailed", arity:4, eventType:OsirisEventType, callback:OsirisStatusAttemptFailedCallback):integer
---@field RegisterListener fun(id:"StatusRemoved", arity:4, eventType:OsirisEventType, callback:OsirisStatusRemovedCallback):integer
---@field RegisterListener fun(id:"StatusTagCleared", arity:5, eventType:OsirisEventType, callback:OsirisStatusTagClearedCallback):integer
---@field RegisterListener fun(id:"StatusTagSet", arity:5, eventType:OsirisEventType, callback:OsirisStatusTagSetCallback):integer
---@field RegisterListener fun(id:"StoppedCombining", arity:6, eventType:OsirisEventType, callback:OsirisStoppedCombiningCallback):integer
---@field RegisterListener fun(id:"StoppedDisarmingTrap", arity:2, eventType:OsirisEventType, callback:OsirisStoppedDisarmingTrapCallback):integer
---@field RegisterListener fun(id:"StoppedLockpicking", arity:2, eventType:OsirisEventType, callback:OsirisStoppedLockpickingCallback):integer
---@field RegisterListener fun(id:"StoppedSneaking", arity:1, eventType:OsirisEventType, callback:OsirisStoppedSneakingCallback):integer
---@field RegisterListener fun(id:"SubQuestUpdateUnlocked", arity:3, eventType:OsirisEventType, callback:OsirisSubQuestUpdateUnlockedCallback):integer
---@field RegisterListener fun(id:"SupplyTemplateSpent", arity:2, eventType:OsirisEventType, callback:OsirisSupplyTemplateSpentCallback):integer
---@field RegisterListener fun(id:"SwarmAIGroupJoined", arity:2, eventType:OsirisEventType, callback:OsirisSwarmAIGroupJoinedCallback):integer
---@field RegisterListener fun(id:"SwarmAIGroupLeft", arity:2, eventType:OsirisEventType, callback:OsirisSwarmAIGroupLeftCallback):integer
---@field RegisterListener fun(id:"SwitchedCombat", arity:3, eventType:OsirisEventType, callback:OsirisSwitchedCombatCallback):integer
---@field RegisterListener fun(id:"TadpolePowerAssigned", arity:2, eventType:OsirisEventType, callback:OsirisTadpolePowerAssignedCallback):integer
---@field RegisterListener fun(id:"TagCleared", arity:2, eventType:OsirisEventType, callback:OsirisTagClearedCallback):integer
---@field RegisterListener fun(id:"TagEvent", arity:2, eventType:OsirisEventType, callback:OsirisTagEventCallback):integer
---@field RegisterListener fun(id:"TagSet", arity:2, eventType:OsirisEventType, callback:OsirisTagSetCallback):integer
---@field RegisterListener fun(id:"TeleportToFleeWaypoint", arity:2, eventType:OsirisEventType, callback:OsirisTeleportToFleeWaypointCallback):integer
---@field RegisterListener fun(id:"TeleportToFromCamp", arity:1, eventType:OsirisEventType, callback:OsirisTeleportToFromCampCallback):integer
---@field RegisterListener fun(id:"TeleportToWaypoint", arity:2, eventType:OsirisEventType, callback:OsirisTeleportToWaypointCallback):integer
---@field RegisterListener fun(id:"Teleported", arity:9, eventType:OsirisEventType, callback:OsirisTeleportedCallback):integer
---@field RegisterListener fun(id:"TeleportedFromCamp", arity:1, eventType:OsirisEventType, callback:OsirisTeleportedFromCampCallback):integer
---@field RegisterListener fun(id:"TeleportedToCamp", arity:1, eventType:OsirisEventType, callback:OsirisTeleportedToCampCallback):integer
---@field RegisterListener fun(id:"TemplateAddedTo", arity:4, eventType:OsirisEventType, callback:OsirisTemplateAddedToCallback):integer
---@field RegisterListener fun(id:"TemplateDestroyedBy", arity:5, eventType:OsirisEventType, callback:OsirisTemplateDestroyedByCallback):integer
---@field RegisterListener fun(id:"TemplateEnteredTrigger", arity:5, eventType:OsirisEventType, callback:OsirisTemplateEnteredTriggerCallback):integer
---@field RegisterListener fun(id:"TemplateEquipped", arity:2, eventType:OsirisEventType, callback:OsirisTemplateEquippedCallback):integer
---@field RegisterListener fun(id:"TemplateKilledBy", arity:5, eventType:OsirisEventType, callback:OsirisTemplateKilledByCallback):integer
---@field RegisterListener fun(id:"TemplateLeftTrigger", arity:5, eventType:OsirisEventType, callback:OsirisTemplateLeftTriggerCallback):integer
---@field RegisterListener fun(id:"TemplateOpening", arity:3, eventType:OsirisEventType, callback:OsirisTemplateOpeningCallback):integer
---@field RegisterListener fun(id:"TemplateRemovedFrom", arity:3, eventType:OsirisEventType, callback:OsirisTemplateRemovedFromCallback):integer
---@field RegisterListener fun(id:"TemplateUnequipped", arity:2, eventType:OsirisEventType, callback:OsirisTemplateUnequippedCallback):integer
---@field RegisterListener fun(id:"TemplateUseFinished", arity:4, eventType:OsirisEventType, callback:OsirisTemplateUseFinishedCallback):integer
---@field RegisterListener fun(id:"TemplateUseStarted", arity:3, eventType:OsirisEventType, callback:OsirisTemplateUseStartedCallback):integer
---@field RegisterListener fun(id:"TemplatesCombined", arity:7, eventType:OsirisEventType, callback:OsirisTemplatesCombinedCallback):integer
---@field RegisterListener fun(id:"TemporaryHostileRelationRemoved", arity:3, eventType:OsirisEventType, callback:OsirisTemporaryHostileRelationRemovedCallback):integer
---@field RegisterListener fun(id:"TemporaryHostileRelationRequestHandled", arity:3, eventType:OsirisEventType, callback:OsirisTemporaryHostileRelationRequestHandledCallback):integer
---@field RegisterListener fun(id:"TextEvent", arity:1, eventType:OsirisEventType, callback:OsirisTextEventCallback):integer
---@field RegisterListener fun(id:"TimelineScreenFadeStarted", arity:3, eventType:OsirisEventType, callback:OsirisTimelineScreenFadeStartedCallback):integer
---@field RegisterListener fun(id:"TimerFinished", arity:1, eventType:OsirisEventType, callback:OsirisTimerFinishedCallback):integer
---@field RegisterListener fun(id:"TradeEnds", arity:2, eventType:OsirisEventType, callback:OsirisTradeEndsCallback):integer
---@field RegisterListener fun(id:"TradeGenerationEnded", arity:1, eventType:OsirisEventType, callback:OsirisTradeGenerationEndedCallback):integer
---@field RegisterListener fun(id:"TradeGenerationStarted", arity:1, eventType:OsirisEventType, callback:OsirisTradeGenerationStartedCallback):integer
---@field RegisterListener fun(id:"TurnEnded", arity:1, eventType:OsirisEventType, callback:OsirisTurnEndedCallback):integer
---@field RegisterListener fun(id:"TurnStarted", arity:1, eventType:OsirisEventType, callback:OsirisTurnStartedCallback):integer
---@field RegisterListener fun(id:"TutorialBoxClosed", arity:2, eventType:OsirisEventType, callback:OsirisTutorialBoxClosedCallback):integer
---@field RegisterListener fun(id:"TutorialClosed", arity:2, eventType:OsirisEventType, callback:OsirisTutorialClosedCallback):integer
---@field RegisterListener fun(id:"TutorialEvent", arity:2, eventType:OsirisEventType, callback:OsirisTutorialEventCallback):integer
---@field RegisterListener fun(id:"UnequipFailed", arity:2, eventType:OsirisEventType, callback:OsirisUnequipFailedCallback):integer
---@field RegisterListener fun(id:"Unequipped", arity:2, eventType:OsirisEventType, callback:OsirisUnequippedCallback):integer
---@field RegisterListener fun(id:"Unlocked", arity:3, eventType:OsirisEventType, callback:OsirisUnlockedCallback):integer
---@field RegisterListener fun(id:"UnlockedRecipe", arity:2, eventType:OsirisEventType, callback:OsirisUnlockedRecipeCallback):integer
---@field RegisterListener fun(id:"UseFinished", arity:3, eventType:OsirisEventType, callback:OsirisUseFinishedCallback):integer
---@field RegisterListener fun(id:"UseStarted", arity:2, eventType:OsirisEventType, callback:OsirisUseStartedCallback):integer
---@field RegisterListener fun(id:"UserAvatarCreated", arity:3, eventType:OsirisEventType, callback:OsirisUserAvatarCreatedCallback):integer
---@field RegisterListener fun(id:"UserCampChestChanged", arity:2, eventType:OsirisEventType, callback:OsirisUserCampChestChangedCallback):integer
---@field RegisterListener fun(id:"UserCharacterLongRested", arity:2, eventType:OsirisEventType, callback:OsirisUserCharacterLongRestedCallback):integer
---@field RegisterListener fun(id:"UserConnected", arity:3, eventType:OsirisEventType, callback:OsirisUserConnectedCallback):integer
---@field RegisterListener fun(id:"UserDisconnected", arity:3, eventType:OsirisEventType, callback:OsirisUserDisconnectedCallback):integer
---@field RegisterListener fun(id:"UserEvent", arity:2, eventType:OsirisEventType, callback:OsirisUserEventCallback):integer
---@field RegisterListener fun(id:"UserMakeWar", arity:3, eventType:OsirisEventType, callback:OsirisUserMakeWarCallback):integer
---@field RegisterListener fun(id:"UsingSpell", arity:5, eventType:OsirisEventType, callback:OsirisUsingSpellCallback):integer
---@field RegisterListener fun(id:"UsingSpellAtPosition", arity:8, eventType:OsirisEventType, callback:OsirisUsingSpellAtPositionCallback):integer
---@field RegisterListener fun(id:"UsingSpellInTrigger", arity:6, eventType:OsirisEventType, callback:OsirisUsingSpellInTriggerCallback):integer
---@field RegisterListener fun(id:"UsingSpellOnTarget", arity:6, eventType:OsirisEventType, callback:OsirisUsingSpellOnTargetCallback):integer
---@field RegisterListener fun(id:"UsingSpellOnZoneWithTarget", arity:6, eventType:OsirisEventType, callback:OsirisUsingSpellOnZoneWithTargetCallback):integer
---@field RegisterListener fun(id:"VoiceBarkEnded", arity:2, eventType:OsirisEventType, callback:OsirisVoiceBarkEndedCallback):integer
---@field RegisterListener fun(id:"VoiceBarkFailed", arity:1, eventType:OsirisEventType, callback:OsirisVoiceBarkFailedCallback):integer
---@field RegisterListener fun(id:"VoiceBarkStarted", arity:2, eventType:OsirisEventType, callback:OsirisVoiceBarkStartedCallback):integer
---@field RegisterListener fun(id:"WentOnStage", arity:2, eventType:OsirisEventType, callback:OsirisWentOnStageCallback):integer
Ext.Osiris = {}

function _C()
	return Ext.Entity.Get(Osi.GetHostCharacter())
end

function _W()
	return Ext.Entity.Get(Osi.GetEquippedWeapon(Osi.GetHostCharacter()) or "00000000-0000-0000-0000-000000000000")
end

_P = Ext.Utils.Print
