
const fs = require('fs');
const { Liquid } = require('liquidjs');
const engine = new Liquid({ cache: true });

// ========= General Template =========

const pathTemplate = './templates';
const pathGenerated = {
    stats: ['./FF14 Astrologian/Public/FF14 Astrologian/Stats/Generated/Data', '.txt'],
    khn: ['./FF14 Astrologian/Scripts/thoth/helpers', '.khn'],
};
const generated = { stats: {}, khn: {} };
const submit = (category, target, content) => {
    generated[category][target] = generated[category][target] || [];
    generated[category][target].push(content);
};
const stats = (target, content) => submit('stats', target, content);
const khn = (target, content) => submit('khn', target, content);

// ========= Helpers =========

const arcanas = ['Balance', 'Bole', 'Arrow', 'Ewer', 'Spear', 'Spire'];
const royalRoads = ['Potency', 'Duration', 'Area'];
const arcanaSpellTypes = ['Target', 'Target', 'Target', 'Shout'];

const spellArcanaPlay = []
const spellArcanaPlaySpread = []
const statusArcana = []
arcanas.forEach((arcana, i) => {
    spellArcanaPlay.push(`${arcanaSpellTypes[0]}_EK_FF14_Play_The${arcana}`);
    spellArcanaPlaySpread.push(`${arcanaSpellTypes[0]}_EK_FF14_PlaySpread_The${arcana}`);
    statusArcana.push(`EK_FF14_ARCANA_THE_${arcana.toUpperCase()}`);
    royalRoads.forEach((royalRoad, j) => {
        spellArcanaPlay.push(`${arcanaSpellTypes[j+1]}_EK_FF14_Play_The${arcana}_${royalRoad}`);
        spellArcanaPlaySpread.push(`${arcanaSpellTypes[j+1]}_EK_FF14_PlaySpread_The${arcana}_${royalRoad}`);
        statusArcana.push(`EK_FF14_ARCANA_THE_${arcana.toUpperCase()}_${royalRoad.toUpperCase()}`);
    });
});

const statusAspected = {
    benefic: {
        diurnal: [
            'EK_FF14_ASPECTED_BENEFIC_DIURNAL',
            ...Array.from({ length: 7 }).map((_, i) => `EK_FF14_ASPECTED_BENEFIC_${i+3}_DIURNAL`),
        ],
        diurnalNeutral: [
            'EK_FF14_ASPECTED_BENEFIC_DIURNAL_NEUTRAL',
            ...Array.from({ length: 7 }).map((_, i) => `EK_FF14_ASPECTED_BENEFIC_${i+3}_DIURNAL_NEUTRAL`),
        ],
        nocturnal: [
            'EK_FF14_ASPECTED_BENEFIC_NOCTURNAL',
            ...Array.from({ length: 7 }).map((_, i) => `EK_FF14_ASPECTED_BENEFIC_${i+3}_NOCTURNAL`),
        ],
        nocturnalNeutral: [
            'EK_FF14_ASPECTED_BENEFIC_NOCTURNAL_NEUTRAL',
            ...Array.from({ length: 7 }).map((_, i) => `EK_FF14_ASPECTED_BENEFIC_${i+3}_NOCTURNAL_NEUTRAL`),
        ],
    },
    helios: {
        diurnal: [
            'EK_FF14_ASPECTED_HELIOS_DIURNAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_ASPECTED_HELIOS_${i+5}_DIURNAL`),
        ],
        diurnalNeutral: [
            'EK_FF14_ASPECTED_HELIOS_DIURNAL_NEUTRAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_ASPECTED_HELIOS_${i+5}_DIURNAL_NEUTRAL`),
        ],
        nocturnal: [
            'EK_FF14_ASPECTED_HELIOS_NOCTURNAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_ASPECTED_HELIOS_${i+5}_NOCTURNAL`),
        ],
        nocturnalNeutral: [
            'EK_FF14_ASPECTED_HELIOS_NOCTURNAL_NEUTRAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_ASPECTED_HELIOS_${i+5}_NOCTURNAL_NEUTRAL`),
        ],
    },
    heliosConjunction: {
        diurnal: [
            'EK_FF14_HELIOS_CONJUNCTION_DIURNAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_HELIOS_CONJUNCTION_${i+5}_DIURNAL`),
        ],
        diurnalNeutral: [
            'EK_FF14_HELIOS_CONJUNCTION_DIURNAL_NEUTRAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_HELIOS_CONJUNCTION_${i+5}_DIURNAL_NEUTRAL`),
        ],
        nocturnal: [
            'EK_FF14_HELIOS_CONJUNCTION_NOCTURNAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_HELIOS_CONJUNCTION_${i+5}_NOCTURNAL`),
        ],
        nocturnalNeutral: [
            'EK_FF14_HELIOS_CONJUNCTION_NOCTURNAL_NEUTRAL',
            ...Array.from({ length: 5 }).map((_, i) => `EK_FF14_HELIOS_CONJUNCTION_${i+5}_NOCTURNAL_NEUTRAL`),
        ],
    },
};

// 时间膨胀可以影响的状态
const statusTimeDilationTarget = [
    ...statusArcana,
    'EK_FF14_LUCID_DREAMING',
    'EK_FF14_SURECAST',
    'EK_FF14_LIGHTSPEED',
    'EK_FF14_COLLECTIVE_UNCONSCIOUS_DIURNAL',
    'EK_FF14_COLLECTIVE_UNCONSCIOUS_NOCTURNAL',
    'EK_FF14_DIVINATION',
    ...statusAspected.benefic.diurnal, ...statusAspected.benefic.diurnalNeutral,
    ...statusAspected.helios.diurnal, ...statusAspected.helios.diurnalNeutral,
    ...statusAspected.heliosConjunction.diurnal, ...statusAspected.heliosConjunction.diurnalNeutral,
];
const timeDilationOnApplyTotalFunctors = statusTimeDilationTarget.map((status) =>
    `IF(HasStatus('${status}',context.Target,context.Source)):SetStatusDuration(${status},1,Add)`
).reduce((acc, cur) => {
    if (acc[acc.length-1].join(';').length <= 3800) {
        acc[acc.length-1].push(cur);
    } else {
        acc.push([cur]);
    }
    return acc;
}, [[]]).map((arr) => arr.join(';'));

// ========= Khn =========

khn('common', engine.renderFileSync(`${pathTemplate}/common.khn`, {
    checkArcanaPlay: spellArcanaPlay.map((spell) => `SpellId('${spell}')`).join('\n         | '),
    checkArcanaPlaySpread: spellArcanaPlaySpread.map((spell) => `SpellId('${spell}')`).join('\n         | '),
    statusTimeDilationTarget: statusTimeDilationTarget.map((status) => `'${status}'`).join(',\n        '),
}));

// ========= Stats =========

const makeSpell = ({
    txt, fromLevel, toLevel,
}, scopeGenerators) => {
    fromLevel = fromLevel || 1;
    toLevel = toLevel || 9;
    return Array.from({ length: toLevel - fromLevel + 1 }, (_, i) => {
        const power = i + fromLevel;
        const context = { power };
        Object.entries(scopeGenerators).forEach(([key, generator]) => context[key] = generator(power));
        return engine.renderFileSync(`${pathTemplate}/${txt}${i>0?'Upcast':''}.txt`, context);
    }).join('\n');
};

// Arcana
[
    'continue', 'play', 'exaltation',
    'draw', 'royalRoad', 'spread', 'redraw', 'minorArcana', 'sleeveDraw',
    'playBalance', 'playBole', 'playArrow', 'playEwer', 'playSpear', 'playSpire',
].forEach((section) => {
    stats('Arcana', fs.readFileSync(`${pathTemplate}/arcana/${section}.txt`));
});
stats('Arcana', makeSpell({ txt: 'arcana/astrodyne' }, { cost: p => `${p*4}` }));

// Common
stats('Astrologian', engine.renderFileSync(`${pathTemplate}/common.txt`, {
    timeDilation: {
        onApplyFunctors: timeDilationOnApplyTotalFunctors.map(
            (_, index) => `ApplyStatus(EK_FF14_TIME_DILATION_${index},100,0)`
        ).join(';'),
        subStatuses: timeDilationOnApplyTotalFunctors.map((functors, index) =>
            engine.renderFileSync(`${pathTemplate}/timeDilation.txt`, { index, functors })
        ).join('\n'),
    },
    collectiveUnconscious: {
        directRadius: 18, directDuration: 3,
        auraRadius: 9, auraDuration: 3,
        diurnal: '1d4',
        nocturnal: '1d4',
    },
    divination: {
        turns: 3,
        extraDamage: '1d4',
        oracleTurns: 5,
        oraclePotency: '20d8',
    },
    earthlyStar: {
        turns1: 1, turns2: 1, turnsTotal: 2,
        radius: 9,
        healing1: 'LevelMapValue(EK_FF14_EarthlyStarHealing1)',
        healing2: 'LevelMapValue(EK_FF14_EarthlyStarHealing2)',
        damage1: 'LevelMapValue(EK_FF14_EarthlyStarDamage1)',
        damage2: 'LevelMapValue(EK_FF14_EarthlyStarDamage2)',
    },
    neutralSect: {
        turns: 3,
        turnsSuntouched: 3,
        radiusSunSign: 18,
        turnsSunSign: 2,
    },
    celestialIntersection: {
        turns: 3,
        diurnal: '1d4',
        nocturnal: '1d4',
    },
    horoscope: {
        radius1: 9, radius2: 18,
        turns1: 1, turns2: 3,
        healing1: 'LevelMapValue(EK_FF14_HoroscopeHealing1)',
        healing2: 'LevelMapValue(EK_FF14_HoroscopeHealing2)',
    },
    macrocosmos: {
        radius1: 18, radius2: 18,
        turns: 2,
        healingBase: 'LevelMapValue(EK_FF14_MacrocosmosHealing)',
    },
    limitBreaker: {
        celestialRiver: {
            areaRadius: 9,
            turns: 3,
            damageBonusPerTurn: '2', attackRollPerTurn: '1',
        },
        astralStasis: {
            areaRadius: 18,
        }
    },
}));

// Combust
stats('Astrologian', engine.renderFileSync(`${pathTemplate}/combust.txt`, {
    damage1: 'LevelMapValue(D8Cantrip)', turns1: 3,
    damage2: 'LevelMapValue(D10Cantrip)', turns2: 4,
    damage3: 'LevelMapValue(D12Cantrip)', turns3: 5,
}));

// Malefic
const ctxMalefic = {
    functors: power => {
        const types = [
            "Bludgeoning", "Piercing", "Slashing",
            "Cold", "Fire", "Lightning", "Thunder",
            "Acid", "Poison",
            "Radiant", "Necrotic",
            "Force", "Psychic",
        ];
        const functors = {};
        ["malefic2", "malefic3", "malefic4", "fallMalefic"].forEach((name, i) => {
            const malefic = i+2;
            const damage = [
                p => `${2*p}`,
                p => `${p}d4`,
                p => `${p}d6`,
                p => `${p}d8`,
            ][i](power);
            functors[name] = {}
            functors[name].success = types.map((type, j) => {
                const dt = j+1;
                return `IF(MaleficMatch(${malefic},${dt})):DealDamage(${damage},${type},Magical)`
            }).join(';');
            functors[name].fail = types.map((type, j) => {
                const dt = j+1;
                return `IF(MaleficMatch(${malefic},${dt})):DealDamage((${damage})/2,${type},Magical)`
            }).join(';');
        });
        return functors;
    },
    damage1: p => `${2+p}d8`, damage1Upcast: p => `1d8`,
    damage2: p => `${2*p}`, damage2Upcast: p => `2`,
    damage3: p => `${p}d4`, damage3Upcast: p => `1d4`,
    damage4: p => `${p}d6`, damage4Upcast: p => `1d6`,
    damage5: p => `${p}d8`, damage5Upcast: p => `1d8`,
};
stats('Astrologian', makeSpell({ txt: 'malefic/malefic' }, ctxMalefic));
stats('Astrologian', makeSpell({ txt: 'malefic/maleficII' }, ctxMalefic));
stats('Astrologian', makeSpell({ txt: 'malefic/maleficIII' }, ctxMalefic));
stats('Astrologian', makeSpell({ txt: 'malefic/maleficIV' }, ctxMalefic));
stats('Astrologian', makeSpell({ txt: 'malefic/fallMalefic' }, ctxMalefic));

// Gravity
stats('Astrologian', makeSpell({ txt: 'gravity/gravity', fromLevel: 3 }, {
    potency1: p => `${p}d6`, potency1Upcast: p => `1d6`,
    potency2: p => `${p-1}d6`, potency2Upcast: p => `1d6`,
}));
stats('Astrologian', makeSpell({ txt: 'gravity/gravityII', fromLevel: 3 }, {
    potency1: p => `${p-1}d6`, potency1Upcast: p => `1d6`,
    potency2: p => `${p-1}d6`, potency2Upcast: p => `1d6`,
    potency3: p => `${p-2}d4`, potency3Upcast: p => `1d6`,
}));

// Esuna
stats('Astrologian', makeSpell({ txt: 'esuna/esuna' }, {
    scriptingStatus: p => {
        if (p == 1) return 'EK_FF14_ESUNA_SCRIPTING1';
        if (p == 2) return 'EK_FF14_ESUNA_SCRIPTING2';
        return 'EK_FF14_ESUNA_SCRIPTING3';
    },
    description: p => {
        if (p == 1) return 'h8a04f040gcf1fg47b2g855dg72d533f79cc6';
        if (p == 2) return 'ha71def43gc9f0g490cgbb9cg91e7a55e00b4';
        return 'h8d78ab2bgaa49g4ea2g8eebg27da8e57e0c8';
    },
    targetConditions: p => {
        if (p == 1) return ['Poisoned', 'Disease', 'Paralyzed', 'Blinded'].map(status => `HasStatus('SG_${status}')`).join(' or ');
        if (p == 2) return ['Poisoned', 'Disease', 'Paralyzed', 'Blinded', 'Cursed'].map(status => `HasStatus('SG_${status}')`).join(' or ');
        return ['Poisoned', 'Disease', 'Paralyzed', 'Blinded', 'Charmed', 'Petrified', 'Cursed', 'Stunned'].map(status => `HasStatus('SG_${status}')`).join(' or ');
    },
}));

// Benefic
stats('Astrologian', makeSpell({ txt: 'benefic/benefic' }, {
    potency: p => `${p}d6+SpellCastingAbilityModifier`, potencyUpcast: p => `1d6`,
}));
stats('Astrologian', makeSpell({ txt: 'benefic/beneficII' }, {
    potency: p => `${p}d10+SpellCastingAbilityModifier`, potencyUpcast: p => `1d10`,
}));

// Aspected Benefic
stats('Astrologian', makeSpell({ txt: 'aspectedBenefic/aspectedBenefic', fromLevel: 2 }, {
    potency: p => `${p}d4+SpellCastingAbilityModifier`, potencyUpcast: p => `1d4`,
    diurnal: p => `${p}d4`, diurnalUpcast: p => `1d4`, diurnalTurns: p => 3,
    nocturnal: p => p*6-2, nocturnalUpcast: p => 6, nocturnalTurns: p => 10,
}));

// Helios
stats('Astrologian', makeSpell({ txt: 'helios/helios', fromLevel: 2 }, {
    potency: p => `${p}d4+SpellCastingAbilityModifier`, potencyUpcast: p => `1d4`,
}));

// Aspected Helios, Helios Conjunction
stats('Astrologian', makeSpell({ txt: 'aspectedHelios/aspectedHelios', fromLevel: 4 }, {
    potency: p => `${p-2}d4+SpellCastingAbilityModifier`, potencyUpcast: p => `1d4`,
    diurnal: p => `${p-2}d4`, diurnalUpcast: p => `1d4`, diurnalTurns: p => 3,
    nocturnal: p => p*6-14, nocturnalUpcast: p => 6, nocturnalTurns: p => 10,
}));
stats('Astrologian', makeSpell({ txt: 'aspectedHelios/heliosConjunction', fromLevel: 4 }, {
    potency: p => `${p-1}d4+SpellCastingAbilityModifier`, potencyUpcast: p => `1d4`,
    diurnal: p => `${p-1}d4`, diurnalUpcast: p => `1d4`, diurnalTurns: p => 3,
    nocturnal: p => p*6-8, nocturnalUpcast: p => 6, nocturnalTurns: p => 10,
}));

// Ascend
stats('Astrologian', makeSpell({ txt: 'ascend/ascend', fromLevel: 2 }, {}));

// ========= Write =========

Object.entries(generated).forEach(([category, sections]) => {
    Object.entries(sections).forEach(([target, content]) => {
        const dir = pathGenerated[category][0];
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir, { recursive: true });
        }
        fs.writeFileSync(`${dir}/${target}${pathGenerated[category][1]}`, content.join(''));
    });
});

// ========= Icon Atlas =========

const icons = require('./data/icons.json');
const iconAtlasContext = {
    iconSize: 64,
    textureSize: 1024,
    path: 'Assets/Textures/Icons/Icons_Astrologian.DDS',
    uuid: 'd8ac69f3-f166-4f6c-9382-f07e477f944f',
};
iconAtlasContext.iconCount = iconAtlasContext.textureSize / iconAtlasContext.iconSize;
iconAtlasContext.iconUVList = Object.entries(icons).map(([nameKey, { x, y }]) =>
    engine.renderFileSync(`${pathTemplate}/atlasIconUV.xml`, {
        nameKey,
        u1: x / iconAtlasContext.iconCount,
        u2: (x + 1) / iconAtlasContext.iconCount,
        v1: y / iconAtlasContext.iconCount,
        v2: (y + 1) / iconAtlasContext.iconCount,
    })).join('');
    
const iconAtlas = engine.renderFileSync(`${pathTemplate}/atlasLayout.xml`, iconAtlasContext);
fs.writeFileSync('./FF14 Astrologian/Public/FF14 Astrologian/GUI/Icons_Astrologian.lsx', iconAtlas);
