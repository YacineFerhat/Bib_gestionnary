$(document).ready(function(){
    //OpenModal
    $('#OpenModal').click(function(){
        $("#ModalToOpen").css({
            'display' : 'block'
        });        
    });
    $('#CloseModal').click(function(){
        $('#ModalToOpen').css({
            'display' : 'none'
        });
    });
 
});
