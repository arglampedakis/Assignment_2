/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
                $('#searchInput').on("keyup", callRest);
                $('#searchButton').on("click", callRest);

            });

            function callRest() {
                var userinput = $('#searchInput').val();
                var url = "searchTrainerByName/" + userinput;

                $.ajax({
                    url: url
                }).then(function (data) {
//                    $('#results').html(data.e)
                });
            }
            
            function sendRequest(){
                var nameLike = $('#searchInput').val()
                var url2 = "searchTrainerByName/" + userinput;
                $.ajax({
                    url: url2
                });
                
            }