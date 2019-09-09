$(function() {
  $fileField = $('.new_file')

  $(document).on('change', $fileField, function(evt) {
    var files = evt.target.files;
    var previewarea = document.getElementsByClassName('previewfield');
    var previewareacount = previewarea.length;
    if (files !== null && files !== undefined && previewareacount+files.length <= 10)
      { for (var i = 0, f; f = files[i]; i++) {
        if (!f.type.match('image.*')) {
          continue;}

        var reader = new FileReader();

        reader.onload = (function(theFile) {
          return function(e) {
            var div = document.createElement('div');
            div.className = 'previewfield';
            div.innerHTML = ['<img class="itempreview" src="', e.target.result,
                              '" data-file="', escape(theFile.name), '"/>'].join('');
            div.insertAdjacentHTML('beforeend', '<div class="up_view"><div class="up_view__cover"><a  class="up_edit">編集</a></div><a href=""  class="up_del">削除</a></div>');
            var reference = document.querySelector('.dropping');
            document.getElementById('new_images').insertBefore(div, reference);
            };
          })(f);

        reader.readAsDataURL(f);
        }

      var counter=document.getElementsByName('item_images[image][]').length+1;
      var next_click=`$("#new_file${counter}").click()`;

      $("#new_image_form").attr('onClick',next_click);

      var next_input=`<input type="file" multiple="true" name="item_images[image][]" id="new_file${counter}" class="new_file" style="display:none">`
      $('.image-uproading').append(next_input);

      if (previewareacount+files.length >= 10)
        {$('#new_image_form').hide();}
      else if(previewareacount+files.length >= 5)
        {$('#new_image_form').height(100);}
      else
        {$('#new_image_form').height(200);}

      var dataget= $('#new_image_form').attr('data-count');
      var next_input_id= Number(dataget)+1;
      $('#new_image_form').attr('data-count',next_input_id);
    }
  })
})

