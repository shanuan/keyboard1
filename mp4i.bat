rem v1.2.45
del index.html
 
echo ^<!DOCTYPE html^>^<html^>												>>index.html 
echo ^<head^>																>>index.html 
echo ^<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"^>		>>index.html 

echo ^<title^>index														>>index.html 
echo ^</title^>																>>index.html 
echo ^</head^>																>>index.html 
echo ^<body^> >>index.html 

echo ^<div id = "id_div_mp4_files" ^>										>>index.html

setlocal ENABLEDELAYEDEXPANSION
call set /a x = 0
for /F "delims="  %%a in ('dir /b *.mp4') do (	
	call set /a x = !x! + 1
	echo !x!:%%a,															>>index.html
)
@echo off  
echo ^</div^>																>>index.html

echo ^<script src="https://littleflute.github.io/vc6/XdHtml/blclass.js" ^>^</script^>	>>index.html
 
echo ^<script^>  >>index.html

echo function _blPlayerClass(){																>>index.html
echo    var ui = blo0.blDiv(document.body,"id_div_ui","ui::v0.2.1","brown");				>>index.html
echo    ui.b = blo0.blBtn(ui,ui.id+"b","b",blColor[1]); 									>>index.html
echo    ui.d0 = blo0.blDiv(ui,ui.id+"d0","d0",blColor[0]); 									>>index.html
echo    ui.b.onclick = function(_div){return function(){_on_off_div(this,_div);}}(ui.d0);	>>index.html
echo    ui.b.click(); ui.b.click(); 														>>index.html

echo	blo0.blLink(ui.d0,ui.d0.id+"prj","____prj____","https://github.com/shanuan/keyboard1","gray");													>>index.html
echo	blo0.blLink(ui.d0,ui.d0.id+"edit","__index.html*__","https://github.com/shanuan/keyboard1/edit/master/index.html","lightblue");					>>index.html
echo	blo0.blLink(ui.d0,ui.d0.id+"mp4i","__mp4i.bat__","mp4i.bat","lightblue");					>>index.html
echo	blo0.blLink(ui.d0,ui.d0.id+"mp4iedit","__mp4i.bat*__","https://github.com/shanuan/keyboard1/edit/master/mp4i.bat","lightblue");					>>index.html
echo	blo0.blLink(ui.d0,ui.d0.id+"player","player.html","player.html","lightblue");					>>index.html

echo    ui.d1 = blo0.blDiv(ui,ui.id+"d1","d1",blColor[3]); 									>>index.html
echo    ui.d2 = blo0.blDiv(ui,ui.id+"d2","d2",blColor[4]);									>>index.html
echo    var s = '^<video id="id_video_player" width="720" height="480"^>';					>>index.html
echo    s += '^<source src=';																				>>index.html
echo    s += QueryString.f?QueryString.f:"VID_20171124_113722.mp4";											>>index.html
echo    s += ' type="video/mp4"^>';																			>>index.html
echo    s += 'Your browser does not support HTML5 video. ^</video^>'; 										>>index.html

echo    this.blr_1 = function(b,d){																			>>index.html
echo      if(^^!b.n) {																						>>index.html
echo    	b.n = 1;																						>>index.html
echo    	b.isPlaying = 0;																				>>index.html
echo    	oPlayer = document.getElementById("id_video_player"); 											>>index.html
echo    	b.style.width = "100%";											>>index.html
echo    	b.style.height = "50px";											>>index.html
echo    	b.style.backgroundColor = "green";											>>index.html
echo    	b.style.fontSize = "24px";											>>index.html
echo    	b.innerHTML = '^<i class="fa fa-play"^>^</i^>';											>>index.html
echo    	oPlayer.style.width = "100%";											>>index.html
echo      }											>>index.html
echo      else{											>>index.html
echo        if(b.isPlaying==1){											>>index.html
echo            oPlayer.pause();											>>index.html
echo    		b.isPlaying = 0;											>>index.html
echo    		b.innerHTML = '^<i class="fa fa-play"^>^</i^>';											>>index.html
echo    	}											>>index.html
echo        else{ 											>>index.html
echo            oPlayer.play();											>>index.html
echo            b.isPlaying = 1;											>>index.html
echo            b.innerHTML = '^<i class="fa fa-pause"^>^</i^>';											>>index.html
echo        }											>>index.html
echo    }											>>index.html
echo  }											>>index.html
echo  ui.d2.innerHTML = s; 																			>>index.html
echo  blo0.blShowObj2Div(ui.d1,this);																>>index.html
echo  var btn = bl$("blr_1");	if(^^!btn.n){btn.click();} 											>>index.html

echo }																						>>index.html
echo var p = new _blPlayerClass; 															>>index.html

echo ^</script^> >>index.html
echo ^</body^> >>index.html
