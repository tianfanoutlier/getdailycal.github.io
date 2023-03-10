                                <!DOCTYPE html>
<html>
<title>Helpful things to do for the day </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>


 <ul>
  <a href="calculator.html">scientific_calculator</a></li>
  <a href="timeadjust.html">Feb2023Time_remind</a></li>
  <a href="2024.html">countdown2024</a></li>
  <a href="timeschedule.html">timeschedule</a></li>
  <a href="summary.html">SummaryFieldNotes</a></li>
  <a href="todoclock.html">Time,ToDoList</a></li>
  
</ul>
</div>

<h1> Opensource watermark </h1>
<p> Direction instructions: Control Print, B and W print mode, Select: Fit to page or fit to printable area option. </p>

<div class="w3-main" style="margin-left:200px">
<div class="w3-teal">
  <button class="w3-button w3-teal w3-xlarge w3-hide-large" onclick="w3_open()">&#9776;</button>
  <div class="w3-container">
    <h1>Calendar Today</h1>
  </div>
</div>

<div class="w3-container">

</div>
  <html>

<div class="container">
  <div class="curr-month"><b>november</b></div>
  <div class="all-days">
    <ul>
      <li>sun</li>
      <li>mon</li>
      <li>tue</li>
      <li>wed</li>
      <li>thu</li>
      <li>fri</li>
      <li>sat</li>
    </ul>
  </div>
  <div class="all-date">
    <ul>
    </ul>
  </div>
</div>

</html>

<style>
body {
  background-color: #white;

}
 
* {
  margin: 0px;
  padding: 0px;
}
 
.container {
  margin: 0 auto;
  height: 487px;
  width: 421px;
  background-color: #000;
  box-shadow: 0 10px 20px 5px rgba(0, 0, 0, 0.2);
  font-family: "Raleway", sans-serif;
  text-transform: uppercase;
}
 
.curr-month {
  width: 100%;
  height: 80px;
  background-image: linear-gradient(to top, #3498db 70px, #02548b 70px);
  color: #fff;
  font-size: 40px;
  text-align: center;
  line-height: 80px;
}
 
.all-days {
  width: 100%;
  height: 40px;
  background-color: #fff;
  float: left;
}
 
ul {
  list-style: none;
  display: block;
  height: 30px;
  width: 421px;
  margin: 0 auto;
  float: left;
}
 
ul li {
  float: left;
  width: 60px;
  text-align: center;
  /*padding:10px 0px;*/
 
  line-height: 41px;
}
 
.all-date {
  width: 100%;
  height: 305px;
  float: left;
}
 
.all-date li {
  height: 60px;
  width: 59px;
  line-height: 60px;
  border-top: 1px solid #fff;
  border-left: 1px solid #fff;
  background-color: #ccc;
}
 
.b-bottom {
  border-bottom: 1px solid #fff;
}
 
.b-right {
  border-right: 1px solid #fff;
}
 
.all-date li.monthdate:hover {
  background-color: #02548b;
  color: #fff;
}
 
</style>

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>

<script>
var curDate = new Date().getDate();
var curMonth = new Date().getMonth();
var curYear = new Date().getFullYear();
var startDay = new Date(curYear, curMonth, 1).getDay();
var months = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];
var noofdays = [
  "31",
  "29",
  "31",
  "30",
  "31",
  "30",
  "31",
  "31",
  "30",
  "31",
  "30",
  "31"
];
var prevMonth = noofdays[curMonth - 1];
if (curMonth == 11) {
  prevMonth = noofdays[0];
} else if (curMonth == 0) {
  prevMonth = noofdays[11];
}
var totalDays = noofdays[curMonth];
var counter = 0;
var precounter = prevMonth - (startDay - 1);
var rightbox = 6;
var flag = true;
 
jQuery(".curr-month b").text(months[curMonth]);
for (var i = 0; i < 42; i++) {
  if (i >= startDay) {
    counter++;
    if (counter > totalDays) {
      counter = 1;
      flag = false;
    }
    if (flag == true) {
      jQuery(".all-date ul").append(
        '<li class="monthdate">' + counter + "</li>"
      );
    } else {
      jQuery(".all-date ul").append(
        '<li style="opacity:.8">' + counter + "</li>"
      );
    }
  } else {
    jQuery(".all-date ul").append(
      '<li style="opacity:.8">' + precounter + "</li>"
    );
    precounter++;
  }
 
  if (i == rightbox) {
    jQuery(jQuery(".all-date ul li")[rightbox]).addClass("b-right");
    rightbox = rightbox + 7;
  }
 
  if (i > 34) {
    jQuery(jQuery(".all-date ul li")[i]).addClass("b-bottom");
  }
 
  if (
    jQuery(jQuery(".all-date ul li")[i]).text() == curDate &&
    jQuery(jQuery(".all-date ul li")[i]).css("opacity") == 1
  ) {
    jQuery(jQuery(".all-date ul li")[i]).css({
      "background-color": "#02548b",
      color: "#fff"
    });
  }
}
 
</script> 
</div>

<script>
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>
     
     
     

<!DOCTYPE html>
<html>
<head>
<style>
.grid-container {
  display: grid;
  column-gap: 10px;
  grid-template-columns: auto auto auto auto;
  background-color: #white;
  padding: 10px;
}

.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 30px;
  text-align: left;
}
</style>
</head>
<body>


<h3>Daily schedule Summary</h3>

  <div class="grid-container">
  <div class="grid-item">summary notes
  <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#800000">7
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#B22222" >8
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>
 
  <div class="grid-item" style="background-color:#FFA500" >9
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#F0E68C" >10
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#FAFAD2" >11
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>
  
  <div class="grid-item"style="background-color:#FFFFF0" >12
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#F5F5F5" >13 (1pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#F8F8FF"  >14 (2pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

  <div class="grid-item"  style="background-color:#FFF8DC" >15 (3pm)
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#FFDEAD"   >16 (4pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item"  style="background-color:#DEB887" >17 (5pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>
  
  <div class="grid-item"style="background-color:#A9A9A9" >18 (6pm)
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#708090">19 (7pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>

    <div class="grid-item" style="background-color:#696969">20 (8pm)
       <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>
  
  <div class="grid-item" style="background-color:#2F4F4F" >21 (9pm)
     <style type="text/css">
    option.red {background-color: #cc0000; font-weight: bold; font-size: 12px;}
    option.yellow {background-color: #B0BF1A;}
     option.blue {background-color: #89CFF0;}
      option.purple {background-color: #B284BE;}
    </style>

    <select name=colors>
    <option class="red" value= "../morning/">urgent </option>
    <option class="yellow" value= "../noon">thinking </option>
    <option class="#89CFF0" value= "../noon">doing </option>
    <option class="purple" value= "../night">relaxing </option>
    </select>
  <form action="//www.html.am/html-codes/textboxes/submitted.cfm">
<textarea name="myTextBox" cols="23" rows="6">
</textarea>
<br />
  </div>
     
     
</body>
</html>
