$(function(){
  console.log("hahahahaha")
  
});



google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([ //グラフデータの指定
        ['Task', 'Hours per Day'],
        ['残り時間',     11],
        ['経過時間',    7]
    ]);
    var options = { //オプションの指定
        pieSliceText: 'label',
        title: 'Test Chart'
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart')); //グラフを表示させる要素の指定
    chart.draw(data, options);
    
    

    }



