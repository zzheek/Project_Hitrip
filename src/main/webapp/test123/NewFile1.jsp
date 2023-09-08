<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
$( '#reg3' ).keyup (function () {
    var charLimit = $(this).attr("maxlength");

    var reg1 = $("#reg1").val();
    var reg2 = $("#reg2").val();
    var reg3 = $("#reg3").val();

    var bs_num = reg1 + "" + reg2 + "" + reg3;

    if (this.value.length == "5") {

            check = {}

            new Promise( (succ, fail)=>{
                var data = { "b_no": [""+bs_num+""] }; 

                $.ajax({
                url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey={KEY VALUE}",  // serviceKey 값을 xxxxxx에 입력
                type: "POST",
                data: JSON.stringify(data), 
                dataType: "JSON",
                contentType: "application/json",
                accept: "application/json",
                success: function(result) {

                    check.code = result.data[0].b_stt_cd;
                    check.b_no = result.data[0].b_no;
                    succ(result);

                },
                fail: function(result) {
                    fail(error);                                    
                }
            });


            }).then((arg) =>{   

                $.ajax({
                    url: '/bbs/ajax.bsnum_check.php',
                    type: 'post',
                    data: { bs_num: bs_num },
                    success: function(result) {

                        $("#bs_result").css("display","block");

                             if(result > 0) {

                                if(ori = bs_num) {
                                $("#bs_result").val("기존에 등록하신 사업자번호와 동일합니다.");
                                $("#bs_result").css("color", "#999");

                                } else {
                                $("#bs_result").val("이미 가입한 사업자번호입니다.");
                                $("#bs_result").css("color", "red");
                                }

                            } else {
                                if(check.code == "01") {
                                    $("#bs_result").val("정상적인 사업자번호입니다.");
                                    $("#bs_result").css("color", "green");

                                } else if(check.code == "02" || check.code == "03") {
                                    $("#bs_result").val("휴/폐업한 사업자번호입니다.");
                                    $("#bs_result").css("color", "red");
                                    
                                } else {
                                    $("#bs_result").val("등록되지 않은 사업자번호입니다.");
                                    $("#bs_result").css("color", "red");
                                }  
                            }  

                    }                                              
                });

            }); //then end


    }

});
</script>
</body>
</html>