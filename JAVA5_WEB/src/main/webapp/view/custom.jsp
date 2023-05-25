<ul class="pagination pagination-list mt-4" ng-if="1 <pages.length"
    style="font-size: 20px;">
    <li style="margin: 0 2px; width: 48px;height:
        42px;background-color:#eeeeee;color:
        #2a6496;
        font-family:
        Helvetica Neue;line-height:
        28.5714px;border: 1px solid #696868;
        margin:
        0px 0px 0px -1px;
        padding:
        6px 12px;
        text-align:
        center;" ng-if="boundaryLinks" ng-class="{ disabled : pagination.current
        == 1 }">
        <a href="" ng-click="setCurrent(1)">&laquo;</a>
    </li>
    <li style="margin: 0 2px; width: 48px;height:
        42px;background-color:#eeeeee;color:
        #2a6496;
        font-family:
        Helvetica Neue;line-height:
        28.5714px;border: 1px solid #696868;
        margin:
        0px 0px 0px -1px;
        padding:
        6px 12px;
        text-align:
        center;" ng-if="directionLinks" ng-class="{ disabled :
        pagination.current == 1 }" class="ng-scope">
        <a href="" ng-click="setCurrent(pagination.current - 1)"
            class="ng-binding">‹</a>
    </li>
    <li style="margin: 0 2px; width: 48px;height:
        42px;background-color:#eeeeee;color:#2a6496;font-family:Helvetica
        Neue;line-height:28.5714px;border: 1px solid #696868;
        margin:
        0px 0px 0px -1px;
        padding:
        6px 12px;
        text-align:
        center;" ng-repeat="pageNumber in pages track by $index" ng-class="{
        active : pagination.current == pageNumber, disabled : pageNumber ==
        '...' }">
        <a href="" ng-click="setCurrent(pageNumber)">{{ pageNumber }}</a>
    </li>
    <li style="margin: 0 2px; width: 48px;height:
        42px;background-color:#eeeeee;color:
        #2a6496;
        font-family:
        Helvetica Neue;line-height:
        28.5714px;border: 1px solid #696868;
        margin:
        0px 0px 0px -1px;
        padding:
        6px 12px;
        text-align:
        center;" ng-if="directionLinks" ng-class="{ disabled :
        pagination.current == pagination.last }" class="ng-scope">
        <a href="" ng-click="setCurrent(pagination.current + 1)"
            class="ng-binding">›</a>
    </li>
    <li style="margin: 0 2px; width: 48px;height:
        42px;background-color:#eeeeee;color:
        #2a6496;
        font-family:
        Helvetica Neue;line-height:
        28.5714px;border: 1px solid #696868;
        margin:
        0px 0px 0px -1px;
        padding:
        6px 12px;
        text-align:
        center;" ng-if="boundaryLinks" ng-class="{ disabled : pagination.current
        == pagination.last }">
        <a href="" ng-click="setCurrent(pagination.last)">&raquo;</a>
    </li>
</ul>