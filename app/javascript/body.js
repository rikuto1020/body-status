$(document).on('turbolinks:load', ()=> {

  // var id = $('month_select').attr('id');
  $(function() {
  

    // const html = ` <%= line_chart @data_9.temperatura_data, width: "800px", height: "500px" %>`;

    // return html;

    //セレクトボックスが切り替わったら発動
    $('.month_select').change(function() {
  
      //選択したvalue値を変数に格納
      // var val = $(this).id();
  
      //選択したvalue値をp要素に出力
      $('.tempereture').append('= line_chart @data_9.temperatura_data, width: "800px", height: "500px" ');


    });
    });
  });
