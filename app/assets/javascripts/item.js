$(document).on('turbolinks:load', function() {

// 価格
  $(function () {
    $(document).on('keyup', '#item_price', function () {
      calcProfit();
    });
  });

  $(document).on('turbolinks:load', function () {
    calcProfit();
  });

  function calcProfit() {
    let input = $("#item_price").val() / 1;

    if (input < 300 || input > 9999999) {
      $("#item_commission").text("-");
      $("#item_profit").text("-");
      return false;
    }

    let charge = parseInt(input / 10);
    if (charge) {
      $("#item_commission").text("¥" + charge.toLocaleString());

      let profit = input - charge;
      $("#item_profit").text("¥" + profit.toLocaleString());
    }
  }
});
