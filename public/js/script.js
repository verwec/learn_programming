$(function() {

  $('textarea').keypress(function (e) {
  if (e.which == 13) {
    var input = $('textarea').val()
    formLogic.sendCommand(input);
  }
});

});

var formLogic = {
  sendCommand: function(command){
    $.ajax('/challenge/1',{
      type: 'PUT',
      data: command,
      dataType: 'json',
      success: function(result){
        $('#instructions').html(result.instructions)
        oldContent = $('textarea').val();
        $('textarea').val(oldContent + "\n" + result.output )

      }
  })
  }
}
