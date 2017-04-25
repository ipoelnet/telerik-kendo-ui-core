<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/listbox/api/read" var="readUrl" />
<demo:header />

<div class="demo-section k-content wide">
    <kendo:listBox name="listbox1" dataTextField="productName" dataValueField="productID" connectWith="#listbox2">
       <kendo:dataSource pageSize="10">
            <kendo:dataSource-transport>
            <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options,type) { 	                		
	                		return JSON.stringify(options);	                		
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json"/>
            </kendo:dataSource-transport>
        </kendo:dataSource>    
    </kendo:listBox>
    <kendo:listBox name="listbox2" dataTextField="productName" dataValueField="productID">
    	<kendo:dataSource data="${selected}"></kendo:dataSource>
    </kendo:listBox>
</div>

<div class="demo-section box wide">
    <div class="box-col">
        <h4>Transfer items</h4>
        <ul class="options">
            <li>
                <button id="transfer" class="k-button">Transfer</button>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Reorder items</h4>
        <ul class="options">
            <li>
                <button id="reorder" class="k-button">Reorder</button>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Enable / Disable items</h4>
        <ul class="options">
            <li>
                <button id="enable" class="k-button">Enable</button>
                <button id="disable" class="k-button">Disable</button>
            </li>
        </ul>
    </div>
</div>

<script>
    $(document).ready(function () {
    	$("#transfer").click(function () {
            var listbox1 = $("#listbox1").data("kendoListBox");
            var listbox2 = $("#listbox2").data("kendoListBox");
            if (!listbox1.wrapper.find(".k-item:first").hasClass("k-state-disabled")) {
                if (listbox1.select().length > 0) { //Transfer selected item
                    listbox2.add(listbox1.dataItem(listbox1.select()));
                    listbox1.remove(listbox1.select());
                }
                else { //Transfer first item if there is no selection
                    listbox2.add(listbox1.dataItem($(".k-item:first")));
                    listbox1.remove($(".k-item:first"));
                }
            }
        });

        $("#reorder").click(function () {
            var listbox1 = $("#listbox1").data("kendoListBox");
            if (!listbox1.wrapper.find(".k-item:first").hasClass("k-state-disabled")) {
                if (listbox1.select().length > 0) { //Move selected item at the end
                    listbox1.reorder(listbox1.select(), listbox1.items().length - 1);
                }
                else { //Move the fisrt item at the end if there is no selection
                    listbox1.reorder(".k-item:first", listbox1.items().length - 1);
                }
            }
        });

        $("#enable").click(function () {
            $("#listbox1").data("kendoListBox").enable(".k-item", true);
        });

        $("#disable").click(function () {
            $("#listbox1").data("kendoListBox").enable(".k-item", false);
        });        
    });
</script>

<style>
    #example .demo-section {
        max-width: none;
        width: 515px;
    }

    #example .k-listbox {
        width: 255px;
        height: 310px;
    }

        #example .k-listbox:first-child {
            margin-right: 1px;
        }
</style>
            
<demo:footer />