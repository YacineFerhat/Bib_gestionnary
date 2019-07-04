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
    $('#OpenModalModify').click(function(){
        $("#ModalToModify").css({
            'display' : 'block'
        });        
    });
    $('#CloseModalModify').click(function(){
        $('#ModalToModify').css({
            'display' : 'none'
        });
    });
});
