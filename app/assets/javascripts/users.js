$(function(){
  console.log("hahahahaha")
  console.log(gon.time1)
  console.log(gon.time2)
  
  
  $(function() {
    countDown();
  });
 
 

  });


  


google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([ //グラフデータの指定
        ['Task', 'Hours per Day'],
        ['残り時間',     gon.time6],
        ['勤務時間',     gon.time5],
        ['通勤時間',     gon.time4],
        ['睡眠時間',     gon.time3],
        ['経過人生',    gon.time1]
    ]);
    var options = { //オプションの指定
        pieSliceText: 'label',
        title: 'あなたの残りの人生'
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart')); //グラフを表示させる要素の指定
    chart.draw(data, options);

   
    };





function countDown() {
    
    
    $("#TimeLeft").text(gon.time2);
    gon.time2 = gon.time2 - 1
    setTimeout('countDown()', 1000);
    
}; 