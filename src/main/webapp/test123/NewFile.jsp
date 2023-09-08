<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <button>클릭하자.</button>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        $("button").click(function () {
          var data = {
            b_no: ["8771701765"], // 실제 존재하는 사업자 번호
          };

          let serviceKey ="ZVcb67P2t8L1VjTSji3q618upDdjuw8JOjyBV5gqQvzw2uMCzIysJ2Uhr%2FLwveHjrnfEVY1q0aD2gRpbaS5WvA%3D%3D";
          $.ajax({
            url:
              "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=" +
              serviceKey,
            type: "POST",
            data: JSON.stringify(data),
            dataType: "JSON",
            contentType: "application/json",
            accept: "application/json",
            success: function (result) {
              console.log("결과:: ", result);
            },
            error: function (error) {
              console.log("에러: ", error);
            },
          });
        });
      });
    </script>
<script>

</script>
  </body>
</html>