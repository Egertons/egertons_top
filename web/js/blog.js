function realSysTime(clock){
    var now=new Date();
    var year=now.getFullYear();
    var month=now.getMonth();
    var date=now.getDate();
    var day=now.getDay();
    var hour=now.getHours();
    var minu=now.getMinutes();
    var sec=now.getSeconds();
    if(Number(sec)<10){
        sec="0"+sec.toString();
    }
    month=month+1;
    var arr_week=["日曜日","月曜日","火曜日","水曜日","木曜日","金曜日","土曜日"];
    var week=arr_week[day];
    var time=year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minu+":"+sec; //组合系统时间
    clock.innerHTML=time;
}
window.onload=function(){
    window.setInterval("realSysTime(clock)",1000);
}



