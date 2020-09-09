<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <div style="font-weight: bold;" id="quiz-time-left"></div>
    <script>
        var total_seconds=60*5;
    var c_minutes = parseInt(total_seconds/60);
    var c_seconds = parseInt(total_seconds%60);
    function checktime(){
        document.getElementById("quiz-time-left").innerHTML
        ='Time Left: '+ c_minutes + 'minutes' + c_seconds+'seconds';
        if(total_seconds<=0){
            setTimeout('document.quiz.submit()',1);
        }
        else{
            total_seconds=total_seconds-1;
            c_minutes=parseInt(total_seconds/60);
            c_seconds=parseInt(total_seconds%60);
            setTimeout("checktime()",1000);
        }
    }
    setTimeout("checktime()",1000);
        </script>
</head>

<body>
    
</body>
</html>