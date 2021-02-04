$(document).on('turbolinks:load', ()=> {

  // var id = $('month_select').attr('id');
  $(function() {
  

//     const html = ` <a href="/index/index">
//     <i class="icon-home"></i>Home
// </a>`;

//     return html;

    //セレクトボックスが切り替わったら発動
    $('[name=budget_d]').change(function() {
      var val = $('[name=budget_d]').val();
      //選択したvalue値を変数に格納
      // var val = $(this).id();
      console.log(val);
      if ( val == 1) { 
      //選択したvalue値をp要素に出力
      $('.tempereture').append('<a href="/temperaturas/:id/one" <i class="icon-home"></i>Home</a>');}
    });
    });
  });
