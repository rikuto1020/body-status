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
      $('.java-text').remove()
      console.log(val);
      if ( val == 1) { 
      //選択したvalue値をp要素に出力
      $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/one" <i class="java-text"></i>1月の体温記録を見る</a>');}

      if ( val == 2) { 
        //選択したvalue値をp要素に出力
        $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/two" <i class="java-text"></i>２月の体温記録を見る</a>');}

      if ( val == 3) { 
        //選択したvalue値をp要素に出力
        $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/three" <i class="java-text"></i>３月の体温記録を見る</a>');}

      if ( val == 4) { 
        //選択したvalue値をp要素に出力
        $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/four" <i class="java-text"></i>４月の体温記録を見る</a>');}

      if ( val == 5) { 
        //選択したvalue値をp要素に出力
        $('.tempereture').append('<a href=/groups/:group_id/temperaturas/:id/five" <i class="java-text"></i>５月の体温記録を見る</a>');}

      if ( val == 6) { 
        //選択したvalue値をp要素に出力
        $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/six" <i class="java-text"></i>６月の体温記録を見る</a>');}

        if ( val == 7) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/seven" <i class="java-text"></i>７月の体温記録を見る</a>');}

        if ( val == 8) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/eight" <i class="java-text"></i>８月の体温記録を見る</a>');}

        if ( val == 9) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/nine" <i class="java-text"></i>９月の体温記録を見る</a>');}

        if ( val == 10) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/ten" <i class="java-text"></i>１０月の体温記録を見る</a>');}

        if ( val == 11) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href="/groups/:group_id/temperaturas/:id/eleven" <i class="java-text"></i>１１月の体温記録を見る</a>');}

        if ( val == 12) { 
          //選択したvalue値をp要素に出力
          $('.tempereture').append('<a href=" /groups/:group_id/temperaturas/:id/twelve" <i class="java-text"></i>１２月の体温記録を見る</a>');}

    });
    });
  });
