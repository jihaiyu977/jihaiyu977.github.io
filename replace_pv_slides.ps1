$path = Join-Path $PWD 'index.html'
$text = [System.IO.File]::ReadAllText($path)
$pvsMarker = '  <div id="tp-pvs" class="tp">'
$startMarker = '      <div class="slider-pages">'
$endMarker = '      <div class="page-dots">'
$pvsIndex = $text.IndexOf($pvsMarker)
if ($pvsIndex -lt 0) { throw 'PV section not found' }
$si = $text.IndexOf($startMarker, $pvsIndex)
$ei = $text.IndexOf($endMarker, $si)
if ($si -lt 0 -or $ei -lt 0) { throw 'Markers not found' }
$replacement = @'
      <div class="slider-pages">
        <div class="slide on">
          <div class="pcard" onclick="openM('v1')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.mono">单晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv400m">PV-400M 单晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">400 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">49.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">10.3 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v2')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.bifacial">双面双玻组件</div>
              <div class="pcard-name" data-i18n="product.name.pv550d">PV-550D 双面组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">550 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">53.6 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">13.8 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="pcard" onclick="openM('v3')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.poly">多晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv330p">PV-330P 多晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">330 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">45.8 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">9.6 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v4')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.topcon">TOPCon N型大板</div>
              <div class="pcard-name" data-i18n="product.name.pv700t">PV-700T 旗舰组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">700 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">63.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">15.2 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="pcard" onclick="openM('v1')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.mono">单晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv400m">PV-400M 单晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">400 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">49.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">10.3 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v3')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.poly">多晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv330p">PV-330P 多晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">330 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">45.8 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">9.6 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="pcard" onclick="openM('v2')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.bifacial">双面双玻组件</div>
              <div class="pcard-name" data-i18n="product.name.pv550d">PV-550D 双面组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">550 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">53.6 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">13.8 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v4')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.topcon">TOPCon N型大板</div>
              <div class="pcard-name" data-i18n="product.name.pv700t">PV-700T 旗舰组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">700 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">63.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">15.2 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="pcard" onclick="openM('v1')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.mono">单晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv400m">PV-400M 单晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">400 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">49.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">10.3 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v2')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.bifacial">双面双玻组件</div>
              <div class="pcard-name" data-i18n="product.name.pv550d">PV-550D 双面组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">550 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">53.6 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">13.8 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
        <div class="slide">
          <div class="pcard" onclick="openM('v3')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.poly">多晶硅组件</div>
              <div class="pcard-name" data-i18n="product.name.pv330p">PV-330P 多晶组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">330 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">45.8 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">9.6 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
          <div class="pcard" onclick="openM('v4')">
            <div class="pcard-img">??<div class="pcard-glow"></div></div>
            <div class="pcard-body">
              <div class="pcard-tag" data-i18n="product.tag.topcon">TOPCon N型大板</div>
              <div class="pcard-name" data-i18n="product.name.pv700t">PV-700T 旗舰组件</div>
              <div class="pcard-params">
                <div class="prow"><span class="pk">光伏板功率</span><span class="pv">700 Wp</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.openVoltage">开路电压</span><span class="pv">63.2 V</span></div>
                <div class="prow"><span class="pk" data-i18n="product.param.shortCircuitCurrent">短路电流</span><span class="pv">15.2 A</span></div>
              </div>
              <div class="pcard-more" data-i18n="product.viewDetails">查看详细参数</div>
            </div>
          </div>
        </div>
      </div>
