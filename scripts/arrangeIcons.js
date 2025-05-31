
const fs = require('fs');

const paths = {
    controller: {
        src: './ui/icons_skill/144',
        dest: './FF14 Astrologian/Public/Game/GUI/Assets/ControllerUIIcons/skills_png',
    },
    tooltip: {
        src: './ui/icons_skill/380',
        dest: './FF14 Astrologian/Public/Game/GUI/Assets/Tooltips/Icons',
    },
};

const prefix = 'Icon_EK_FF14_AST_F_';
const arrange = ({src, dest}) => {
    fs.readdirSync(src).forEach(file => {
        const basename = file.split('.')[0];
        const ext = file.split('.')[1];
        if (ext.toLowerCase() !== 'dds') return;
        const oldPath = `${src}/${file}`;
        const newPath = `${dest}/${prefix}${basename}.DDS`;
        fs.copyFileSync(oldPath, newPath);
    });
};

Object.values(paths).forEach(arrange);
