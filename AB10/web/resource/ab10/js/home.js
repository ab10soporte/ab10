function pac() {

    $.ajax({
        url: "imgload.htm", 
        type: 'GET', 
        cache: false, 
        dataType: 'html',
        deforeSend: function (){
            
        },
        success: function(response) {
            $("#dinamic-div").html(response)            
        },
        error: function(jqXHR, exception){
            
        }
    })
}

function loadET() {
    alert("test");
    $.ajax({
        url: "eurotest.htm", 
        type: 'GET', 
        cache: false, 
        dataType: 'html',
        deforeSend: function (){
            $(".loadgif").html('<div class="loading"></div>');
        },
        success: function(response) {
            $("#dinamic-div").html(response)            
        },
        error: function(jqXHR, exception){
            
        }
    })
}