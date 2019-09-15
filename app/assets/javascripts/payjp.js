document.addEventListener(
  "turbolinks: load", (e) => {
    Payjp.setPublicKey("pk_test_98ad4859a218ca5987a9e1c6");
    const btn = document.getElementById('token_submit');
    btn.addEventListener("click", (e) => {
      e.preventDefault();

      const card = {
        card_no: document.getElementById("card_number").value,
        security_code: document.getElementById("cvc").value,
        card_exp_mm: document.getElementById("card_exp_mm").value,
        card_exp_yy: document.getElementById("card_exp_yy").value
      };

      Payjp.coreateToken(card, (status, response) => {
        if (status === 200) {
          $("#card_number").removeAttr("name");
          $("#cvc").removeAttr("name");
          $("#card_exp_mm").removeAttr("name");
          $("#card_exp_yy").removeAttr("name");
          $("#card_token").append(
            $('<input type="hidden" name="payjp-token">').val(response.id)
          );
          document.inputForm.submit();
          alert("登録が完了しました");
        } else {
          alert("カード情報が正しくありません");
        }
      });
    });
  },
  false
);
