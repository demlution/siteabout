   $(function(){


    window.map = new BMap.Map("map_canvas");  
    map.centerAndZoom(new BMap.Point(121.316646,31.149515),13);
    map.enableScrollWheelZoom();
    var opts = {type: BMap.NavigationControl.BMAP_NAVIGATION_CONTROL_SMALL}
    map.addControl(new BMap.NavigationControl(opts));

    var stCtrl = new BMap.PanoramaControl();  
    stCtrl.setOffset(new BMap.Size(20, 20));  
    map.addControl(stCtrl);

     window.bounds = new BMap.Bounds();
window.points = [];
     
      point = new BMap.Point(121.316576,31.149126)
       var marker1 = new BMap.Marker(point);
       map.addOverlay(marker1);

    var licontent="<b>上海担路网络科技有限公司</b><br>";  
       licontent+="<span><strong>地址：</strong>上海市九杜路349号立同商务大厦</span><br>";  
       licontent+="<span class=\"input\"><strong></strong><input class=\"outset\" type=\"text\" name=\"origin\" value=\"\" placeholder=\"出发点\"/><input class=\"outset-but\" type=\"button\" value=\"公交\" onclick=\"gotobaidu(1)\" /><input class=\"outset-but\" type=\"button\" value=\"驾车\"  onclick=\"gotobaidu(2)\"/><a class=\"gotob\" href=\"url=\"http://api.map.baidu.com/direction?destination=latlng:"+marker1.getPosition().lat+","+marker1.getPosition().lng+"|name:上海担路网络科技有限公司"+"®ion=上海市"+"&output=html\" target=\"_blank\"></a></span>";  
       var hiddeninput="<input type=\"hidden\" value=\""+'上海市'+"\" name=\"region\" /><input type=\"hidden\" value=\"html\" name=\"output\" /><input type=\"hidden\" value=\"driving\" name=\"mode\" /><input type=\"hidden\" value=\"latlng:"+marker1.getPosition().lat+","+marker1.getPosition().lng+"|name:上海担路网络科技有限公司"+"\" name=\"destination\" />";  
      var content1 ="<form id=\"gotobaiduform\" action=\"http://api.map.baidu.com/direction\" target=\"_blank\" method=\"get\">" + licontent +hiddeninput+"</form>";   
       var opts1 = { width: 300 };  

      var  infoWindow1 = new BMap.InfoWindow(content1, opts1);
      map.openInfoWindow(infoWindow1, point);

      marker1.addEventListener("click", function(){
	  this.openInfoWindow(infoWindow1);
      });

       bounds.extend(point);
points.push(point);
     

map.setViewport(points);


    
    
  
window. gotobaidu = function(type)  
{  
    if($.trim($("input[name=origin]").val())=="")  
    {  
        alert("请输入起点！");  
        return;  
    }else{  
        if(type==1)  
        {  
            $("input[name=mode]").val("transit");  
            $("#gotobaiduform")[0].submit();  
        }else if(type==2)  
        {      
            $("input[name=mode]").val("driving");          
            $("#gotobaiduform")[0].submit();  
        }  
    }  
}  

   })