//索引运动动画
  var toRightImg1=null;
  var toRightImg2=null;
  var toLeftWord1=null;
  var toLeftWord2=null;
  var toGray=null;

$$('.index-nav-body-item').addEvent('mouseenter',function(){
  
    toRightImg1=this.getElement('div[class="item-pic"]');
    toRightImg2=this.getElement('div[class="item-pic2"]');
    toLeftWord1=this.getElement('div[class="item-info"]');
    toLeftWord2=this.getElement('div[class="item-info2"]');
    toGray=this.getElement('div[class*="index-nav-body-bg"]');

    startMove(toRightImg1,102,300);
    startMove(toRightImg2,-100,102);
    startMove(toLeftWord1,66,-175);
    startMove(toLeftWord2,300,66);  
    startOpacity(toGray,0,1)   

})


$$('.index-nav-body-item').addEvent('mouseleave',function(){
  toRightImg1=this.getElement('div[class="item-pic"]');
  toRightImg2=this.getElement('div[class="item-pic2"]');
  toLeftWord1=this.getElement('div[class="item-info"]');
  toLeftWord2=this.getElement('div[class="item-info2"]');
  toGray=this.getElement('div[class*="index-nav-body-bg"]');

      startMove(toRightImg1,300,102);
    startMove(toRightImg2,102,-100);
    startMove(toLeftWord1,-175,66);
    startMove(toLeftWord2,66,300);  
    startOpacity(toGray,1,0)   
})

  function startMove(obj,start,end){
    obj.set('morph', {duration: 400,link: "ignore",transition: Fx.Transitions.Sine.easeOut});
    obj.morph({'left': [start,end],});
  }
 function startOpacity(obj,start,end){
    obj.set('morph', {duration: 400,link: "ignore",transition: Fx.Transitions.Sine.easeOut});
    obj.morph({'opacity': [start,end],});
  }
