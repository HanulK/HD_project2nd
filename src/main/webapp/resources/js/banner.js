$(function () {
    // 변수지정
        var slides = $('.slideshow img'), 
            slideCount = slides.length, 
            currentIndex = 0; 

            slides.eq(currentIndex).fadeIn();			
			
		var timer = undefined;  //타이머의 값을 undefined(지정되어 있지 않다)라고 지정합니다.
			
		if (timer == undefined) { //타이머의 값이 undefined이면 showNextslide를 3.5s 마다 실행하라고 합니다.
			timer = setInterval(showNextSlide, 3500);
		}         

            function showNextSlide(){

              var nextIndex = (currentIndex + 1) % slideCount;

              slides.eq(currentIndex).fadeOut();
              slides.eq(nextIndex).fadeIn();
              currentIndex = nextIndex;

              console.log(currentIndex);

            }

            function timeron(){
			if (!timer) { //타이머의 값이 undefined이면 showNextslide를 3.5s 마다 실행하라고 합니다.
				timer = setInterval(showNextSlide, 3500);
			  } 
            }
            function timeroff(){
			  if (timer) { //타이머의 값이 있으면 즉 setInterval(showNextSlide, 3500)값이 있으면 클리어하고 값을 다시 undefined로 저장.
				clearInterval(timer);
				timer = undefined;				
			  }	
            }

            slides.mouseenter(function(){
              timeroff();
            })
            .mouseleave(function(){
              timeron();
            })


});