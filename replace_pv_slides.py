from pathlib import Path

path = Path('index.html')
text = path.read_text(encoding='utf-8')
start = '      <div class="slider-pages">'
end = '      <div class="page-dots">'
si = text.find(start)
ei = text.find(end, si)
if si == -1 or ei == -1:
    raise ValueError('Markers not found')

combos = [
    ('v1', 'v2'),
    ('v3', 'v4'),
    ('v1', 'v3'),
    ('v2', 'v4'),
    ('v1', 'v4'),
    ('v2', 'v3'),
    ('v4', 'v1'),
    ('v3', 'v2'),
    ('v2', 'v4'),
]

cards = {
    'v1': ('🌤', 'product.tag.mono', 'product.name.pv400m', 'PV-400M 单晶组件', '400 Wp', '49.2 V', '10.3 A'),
    'v2': ('☀️', 'product.tag.bifacial', 'product.name.pv550d', 'PV-550D 双面组件', '550 Wp', '53.6 V', '13.8 A'),
    'v3': ('🔋', 'product.tag.poly', 'product.name.pv330p', 'PV-330P 多晶组件', '330 Wp', '45.8 V', '9.6 A'),
    'v4': ('🌞', 'product.tag.topcon', 'product.name.pv700t', 'PV-700T 旗舰组件', '700 Wp', '63.2 V', '15.2 A'),
}

new = start + '\n'
for i, (a, b) in enumerate(combos):
    cls = 'slide on' if i == 0 else 'slide'
    new += f'        <div class="{cls}">\n'
    for key in (a, b):
        icon, tag, name_key, name_text, power, voltage, current = cards[key]
        new += f'          <div class="pcard" onclick="openM(\'{key}\')">\n'
        new += f'            <div class="pcard-img">{icon}<div class="pcard-glow"></div></div>\n'
        new += '            <div class="pcard-body">\n'
        new += f'              <div class="pcard-tag" data-i18n="{tag}">{name_text.split()[1]}</div>\n'
        new += f'              <div class="pcard-name" data-i18n="{name_key}">{name_text}</div>\n'
        new += '              <div class="pcard-params">\n'
        new += f'                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">{power}</span></div>\n'
        new += f'                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">{voltage}</span></div>\n'
        new += f'                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">{current}</span></div>\n'
        new += '              </div>\n'
        new += '              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>\n'
        new += '            </div>\n'
        new += '          </div>\n'
    new += '        </div>\n'
new += '      '

text = text[:si] + new + text[ei:]
path.write_text(text, encoding='utf-8')
print('updated')
