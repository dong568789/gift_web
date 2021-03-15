<div>
    <style type="text/css">/*底部导航*/ .tab{ width: 100%; position: fixed; bottom: 0; left: 0; font-size: 0; background-color: #fff; padding: 5px 0; z-index: 10; } .tab1{ display: inline-block; vertical-align: middle; width: 25%; text-align: center; } .tabImg{ width: 27px; height: 27px; } .tabTxt{ width: 100%; margin-top: 5px; font-size: 12px; color: #666666; } .tabTxt1{ width: 100%; margin-top: 2px; font-size: 12px; color: #FF2741; }</style>
    <ul class="tab">
        <li class="tab1">
            <a href="<{url('/')}>" target="_parent">
                <img class="tabImg" src="/static/web/images/falme<{if $_navAct == 'home'}>1<{/if}>.png" _rp="true" _rp_category="底部导航" _rp_action="购物节">
                <p class="tabTxt<{if $_navAct == 'home'}>1<{/if}>">购物节</p></a>
        </li>
        <li class="tab1">
            <a href="<{url('integral')}>.html" target="_parent">
                <img class="tabImg" src="/static/web/images/inter<{if $_navAct == 'integral'}>1<{/if}>.png" _rp="true" _rp_category="底部导航" _rp_action="积分中心">
                <p class="tabTxt<{if $_navAct == 'integral'}>1<{/if}>">积分中心</p></a>
        </li>
        <li class="tab1">
            <a href="<{url('search')}>.html" target="_parent">
                <img class="tabImg" src="/static/web/images/myorder<{if $_navAct == 'search'}>1<{/if}>.png" _rp="true" _rp_category="底部导航" _rp_action="我的订单">
                <p class="tabTxt<{if $_navAct == 'search'}>1<{/if}>">我的订单</p></a>
        </li>
        <li class="tab1">
            <a href="<{url('member')}>.html" target="_parent">
                <img class="tabImg" src="/static/web/images/logs<{if $_navAct == 'member'}>1<{/if}>.png" _rp="true" _rp_category="底部导航" _rp_action="个人中心">
                <p class="tabTxt<{if $_navAct == 'member'}>1<{/if}>">个人中心</p></a>
        </li>
    </ul>
</div>
