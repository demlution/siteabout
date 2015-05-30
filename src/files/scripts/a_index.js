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

    startMove(toRightImg1,77,250);
    startMove(toRightImg2,-100,77);
    startMove(toLeftWord1,41,-175);
    startMove(toLeftWord2,250,41);  
    startOpacity(toGray,0,1)   

})


$$('.index-nav-body-item').addEvent('mouseleave',function(){
  toRightImg1=this.getElement('div[class="item-pic"]');
  toRightImg2=this.getElement('div[class="item-pic2"]');
  toLeftWord1=this.getElement('div[class="item-info"]');
  toLeftWord2=this.getElement('div[class="item-info2"]');
  toGray=this.getElement('div[class*="index-nav-body-bg"]');

      startMove(toRightImg1,250,77);
    startMove(toRightImg2,77,-100);
    startMove(toLeftWord1,-175,41);
    startMove(toLeftWord2,41,250);  
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
