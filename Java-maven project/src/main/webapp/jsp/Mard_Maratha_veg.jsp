<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
  li {
    float: left;
  }

  ul {
    margin: 0;
    padding: 0;
    list-style-type: none;
    overflow: hidden;
    background-color: #444;
  }

  .active {
    background-color: #04AA6D;
  }

  li a:hover:not(.active) {
    background-color: #111;
  }

  li a {
    color: white;
    text-align: center;
    display: block;
    padding: 14px 16px;
    text-decoration: none;
  }

  .container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 1.5em;
  }

  .menu {
    font-family: 'Inter', sans-serif;
    font-size: 14px;
  }

  .menu-group-heading {
    margin: 0;
    padding-bottom: 1em;
    border-bottom: 2px solid #ccc;
  }

  .rests{
display:grid;
grid-template-columns:repeat(3, 1fr);
padding:30px 20px;
grid-column-gap:20px;
grid-row-gap:30px;
}

.rest img{
width:47%;
height:130px;
object-fit:cover;
cursor:pointer;
transition:0.2s ease;
margin-left: 60px;
}

.rest img:hover{
transform:scale(1.04);
}

.rest h4{
    margin-left: 134px;
}
.rest h3{
  margin-left: 134px;
}
.rest button{
padding:5px 30px;
bolder:none;
outline:none;
background-color:gray;
color:white;
cursor:pointer;
border-radius:4px;
display:block;
margin:0 auto;
transition:0.2s all;
    margin-left: 79px;
}

.rest button:hover{
transform:scale(1.04);
}

  .add-button {
    margin-top: 20px;
    border-radius: 5px;
    background-color:#ccc;
  }
  
  .rest{
  }
  .card{
  display:flex;
  justify-content:center;
  align-items:center;
  height:100%;
  padding:100px;
  }
  .cartb{
  width:2%;
  padding:5px 30px;
  }
  
  .box{
    background: #fff;
    width: 186px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 10px;
    margin: 20px 0;
    border-radius: 5px;
    border: 1px solid #c6c6c6;
    box-shadow: 2px 2px 8px rgba(0,0,0,0.5);
    margin-left: 53px;

  }
  .box label{
    margin-right: 15px;
  }
  .box .button{
    width: 37px;
    height: 37px;
    border: 1px solid #c6c6c6;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 22px;
    cursor: pointer;
  }
  .box .button:active{
    background: #ccc;
  }

  .box input{
    width: 60px;
    padding: 5px 10px;
    border: 1px solid #c6c6c6;
    border-radius: 5px;
  }
</style>
</head>
<body>
<center>
  <h2 style="background-color:red">Nasta Food Ordering App<h2>
</center>
<ul>
  <li><a href="main.html">Home</a></li>
  <li><a href="news.asp">News</a></li>
  <li><a href="contact.asp">Contact</a></li>
  <li><a href="about.asp">About</a></li>
  <li style="float:right"><a href="signIn.html">Sign In</a></li>
  <li style="float:right"><a href="registration.html">Register</a></li>
</ul>
<form method = "post" action="http://localhost:8080/Javafooddelivery/Menu">
<section class="rests">
<div class="rest">
<a href="menu1.html" style="text-decoration:none;">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL3G-HiqRDq6lP1PNyDI7iNa_4U90Ec4DEYQ&usqp=CAU" >
</a>
<h4>Tandalachi Bhakari with Bharli Wangi</h4>
<h3>150 Rs.</h3>
<input type="hidden" name = "pro_1" value = "150">
<input type="hidden" name = "name_1" value = "Tandalachi Bhakari with Bharli Wangi">
<div class="box">
  <label for = "name"></label>
  <div class="dec button">-</div>
  <input type="text" name="qty_1" id="1" value="0" class="input-filed">
  <div class="inc button">+</div>
</div>
</div>

<div class="rest">
  <a href="menu1.html" style="text-decoration:none;">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcGivL-gbFzyjf1xTAu5lPwToyNaECmLyLuQ&usqp=CAU">
  </a>
  <h4>Puri with Dalimbi Usal</h4>
  <h3>100Rs.</h3>
  <input type="hidden" name = "pro_2" value = "100">
  <input type="hidden" name = "name_2" value = "Puri with Dalimbi Usal">
  <div class="box">
    <label for="name"></label>
    <div class="dec button">-</div>
    <input type="text" name="qty_2" id="1" value="0" class="input-filed">
    <div class="inc button">+</div>
  </div>
  </div>

  <div class="rest">
    <a href="menu1.html" style="text-decoration:none;">
    <img src="https://kitchenmai.com/wp-content/uploads/2020/05/masale_bhaat_blog-e1589470474679.jpg" >
    </a>
    <h4>Masale Bhat</h4>
    <h3>100Rs.</h3>
    <input type="hidden" name = "pro_3" value = "100">
    <input type="hidden" name = "name_3" value = "Masale Bhat">
    <div class="box">
      <label for="name"></label>
      <div class="dec button">-</div>
      <input type="text" name="qty_3" id="1" value="0" class="input-filed">
      <div class="inc button">+</div>
    </div>
    </div>

    <div class="rest">
      <a href="menu1.html" style="text-decoration:none;">
      <img src="https://masalachilli.com/wp-content/uploads/2018/12/Takatli-Palak-Chi-Bhaji-FG-1024x683.jpg" >
      </a>
      <h4>Takatli Palak Bhaji</h4>
      <h3>90Rs.</h3>
      <input type="hidden" name = "pro_4" value = "90">
      <input type="hidden" name = "name_4" value = "Takatli Palak Bhaji">
      <div class="box">
        <label for="name"></label>
        <div class="dec button">-</div>
        <input type="text" name="qty_4" id="1" value="0" class="input-filed">
        <div class="inc button">+</div>
      </div>
      </div>

      <div class="rest">
        <a href="menu1.html" style="text-decoration:none;">
        <img src="https://myfamilyrecipes.kunkalienkar.com/wp-content/uploads/2018/12/Olya-Valachi-Usal.jpg" >
        </a>
        <h4>Dalimbi Usal</h4>
        <h3>90Rs.</h3>
        <input type="hidden" name = "pro_5" value = "90">
        <input type="hidden" name = "name_5" value = "Dalimbi Usal">
        <div class="box">
          <label for="name"></label>
          <div class="dec button">-</div>
          <input type="text" name="qty_5" id="1" value="0" class="input-filed">
          <div class="inc button">+</div>
        </div>
        </div>

        <div class="rest">
          <a href="menu1.html" style="text-decoration:none;">
          <img src="https://www.spiceupthecurry.com/wp-content/uploads/2019/06/poori-bhaji-recipe-12.jpg" >
          </a>
          <h4>Puri with Batata bhaji</h4>
          <h3>90Rs.</h3>
          <input type="hidden" name = "pro_6" value = "90">
          <input type="hidden" name = "name_6" value = "Puri with Batata bhaji">
          <div class="box">
            <label for="name"></label>
            <div class="dec button">-</div>
            <input type="text" name="qty_6" id="1" value="0" class="input-filed">
            <div class="inc button">+</div>
          </div>
          </div>

          <div class="rest">
            <a href="menu1.html" style="text-decoration:none;">
            <img src="https://www.vegrecipesofindia.com/wp-content/uploads/2015/06/bharli-bhendi-stuffed-okra.jpg" >
            </a>
            <h4>Bharli Bhendi</h4>
            <h3>90Rs.</h3>
            <input type="hidden" name = "pro_7" value = "90">
            <input type="hidden" name = "name_7" value = "Bharli Bhendi">
            <div class="box">
              <label for="name"></label>
              <div class="dec button">-</div>
              <input type="text" name="qty_7" id="1" value="0" class="input-filed">
              <div class="inc button">+</div>
            </div>
            </div>

            <div class="rest">
              <a href="menu1.html" style="text-decoration:none;">
              <img src="https://curlytales.com/wp-content/uploads/2017/07/main-1280x720.png" >
              </a>
              <h4>Maratha Veg Thali</h4>
              <h3>200Rs.</h3>
              <input type="hidden" name = "pro_8" value = "200">
              <input type="hidden" name = "name_8" value = "Maratha Veg Thali"> 
              <div class="box">
                <label for="name"></label>
                <div class="dec button">-</div>
                <input type="text" name="qty_8" id="1" value="0" class="input-filed">
                <div class="inc button">+</div>
              </div>
              </div>

              <div class="rest">
                <a href="menu1.html" style="text-decoration:none;">
                <img src="https://www.whiskaffair.com/wp-content/uploads/2020/10/Thecha-2-3.jpg" >
                </a>
                <h4>Mirchi Thecha</h4>
                <h3>90Rs.</h3>
                <input type="hidden" name = "pro_9" value = "90">
                <input type="hidden" name = "name_9" value = "Mirchi Thecha">
                <div class="box">
                  <label for="name"></label>
                  <div class="dec button">-</div>
                  <input type="text" name="qty_9" id="1" value="0" class="input-filed">
                  <div class="inc button">+</div>
                </div>
                </div>          
</section>
<input type="submit" value = "Proceed to pay" style="background: red; text-decoration: none;align-items: center;padding: 10px 20px;color:white;    margin-left: 535px;">





<script>
  var incBut=document.getElementsByClassName('inc');
  var decBut=document.getElementsByClassName('dec');

  for(var i=0;i<incBut.length;i++){
   var but=incBut[i];
   but.addEventListener('click',function(event){
     var butCli=event.target;
    // console.log(buttonClicked);
    var inside=butCli.parentElement.children[2];
    var Bigvalue=inside.value;
    var naya=parseInt(Bigvalue) +1;

    inside.value=naya;

   })
  }

  for(var i=0;i<decBut.length;i++){
    var but=decBut[i];
    but.addEventListener('click',function(event){
      var butCli=event.target;
     // console.log(buttonClicked);
     var inside=butCli.parentElement.children[2];
     var Bigvalue=inside.value;
     var naya=parseInt(Bigvalue) -1;
     if(naya>=0){
    	 inside.value=naya;
 
     }
     else{
    	 inside.value=0;
       alert('Please select the quantity')
     }
    })
   }
</script>
</form>
</body>
</html>