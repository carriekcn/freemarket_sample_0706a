$(function() {
  $fileField = $('.new_file')

  $(document).on('change', $fileField, function(evt) {
    var files = evt.target.files;
    var previewarea = document.getElementsByClassName('previewfield');
    var previewareacount = previewarea.length;
    if (files !== null && files !== undefined && previewareacount+files.length <= 10)
      { for (var i = 0, f; f = files[i]; i++) 

      $("#new_image_form_edit").attr('onClick',next_click);

      var next_input=`<input type="file" multiple="true" name="item_images[image][]" id="new_file${counter}" class="new_file" style="display:none">`
      $('.image-uproading').append(next_input);

      if (previewareacount+files.length >= 10)
        {$('#new_image_form_edit').hide();}
      else if(previewareacount+files.length >= 5)
        {$('#new_image_form_edit').height(100);}
      else
        {$('#new_image_form_edit').height(160);}

      var dataget= $('#new_image_form_edit').attr('data-count');
      var next_input_id= Number(dataget)+1;
      $('#new_image_form_edit').attr('data-count',next_input_id);
    }
  })
})