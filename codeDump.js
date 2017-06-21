$(document).ready(function() {
  console.log("jQuery ready");

        // $( window ).load(function() {
            // showModalDiv();
        // })

        function showModalDiv() {
            console.log("== showModalDiv ==");
            setTimeout($('#primeModal'), 3000);
            $('#exit').on('click', function() {
                console.log('== click:exit ==');
                hideModalDiv();
            })
        }

        function hideModalDiv(){
          console.log("== hideModalDiv ==");
          $('#primeModal').css('display', 'none');
        }
        //
        // function activateModalExit(){
        //     console.log("== exitModalDiv ==");
        //     $('#submit').on('click', function(){
        //         console.log('== click:submit --');
        //         exitModal();
        //     });
        // }
        //
        // function exitModal() {
        //     console.log("== exitModal ==");
        //     $('#primeModal').css("display", "none");
            // $().off(function functionName() {
            //
            // })
            // window.removeEventListener("load", showModalDiv);
        // }

    showModalDiv();
    // activateModalExit();

}); // CLOSE jQuery
