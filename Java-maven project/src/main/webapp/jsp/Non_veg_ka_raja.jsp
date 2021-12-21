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
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM4SHvPBAyK5YwTZvLxpUjSBxUfiut4PtIfQ&usqp=CAU" >
</a>
<h4>Butter Chicken</h4>
<h3>200 Rs.</h3>
<input type="hidden" name = "pro_1" value = "200">
<input type="hidden" name = "name_1" value = "Butter Chicken">
<div class="box">
  <label for = "name"></label>
  <div class="dec button">-</div>
  <input type="text" name="qty_1" id="1" value="0" class="input-filed">
  <div class="inc button">+</div>
</div>
</div>

<div class="rest">
  <a href="menu1.html" style="text-decoration:none;">
  <img src="https://kfoods.com/images1/newrecipeicon/chicken-handi_10645.jpg" >
  </a>
  <h4>Chicken Handi</h4>
  <h3>200Rs.</h3>
  <input type="hidden" name = "pro_2" value = "200">
  <input type="hidden" name = "name_2" value = "Chicken Handi">
  <div class="box">
    <label for="name"></label>
    <div class="dec button">-</div>
    <input type="text" name="qty_2" id="1" value="0" class="input-filed">
    <div class="inc button">+</div>
  </div>
  </div>

  <div class="rest">
    <a href="menu1.html" style="text-decoration:none;">
    <img src="data:image/jpeg;base64,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" >
    </a>
    <h4>Chicken Angara</h4>
    <h3>220Rs.</h3>
    <input type="hidden" name = "pro_3" value = "220">
    <input type="hidden" name = "name_3" value = "Chicken Angara">
    <div class="box">
      <label for="name"></label>
      <div class="dec button">-</div>
      <input type="text" name="qty_3" id="1" value="0" class="input-filed">
      <div class="inc button">+</div>
    </div>
    </div>

    <div class="rest">
      <a href="menu1.html" style="text-decoration:none;">
      <img src="https://www.ndtv.com/cooks/images/chicken.seekh.jpg" >
      </a>
      <h4>Chicken Seekh Kabab</h4>
      <h3>150Rs.</h3>
      <input type="hidden" name = "pro_4" value = "150">
      <input type="hidden" name = "name_4" value = "Chicken Seekh Kabab">
      <div class="box">
        <label for="name"></label>
        <div class="dec button">-</div>
        <input type="text" name="qty_4" id="1" value="0" class="input-filed">
        <div class="inc button">+</div>
      </div>
      </div>

      <div class="rest">
        <a href="menu1.html" style="text-decoration:none;">
        <img src="https://www.indianhealthyrecipes.com/wp-content/uploads/2018/07/malai-kofta-recipe.jpg" >
        </a>
        <h4>Chicken Malai Kofta</h4>
        <h3>220Rs.</h3>
        <input type="hidden" name = "pro_5" value = "220">
        <input type="hidden" name = "name_5" value = "Chicken Malai Kofta">
        <div class="box">
          <label for="name"></label>
          <div class="dec button">-</div>
          <input type="text" name="qty_5" id="1" value="0" class="input-filed">
          <div class="inc button">+</div>
        </div>
        </div>

        <div class="rest">
          <a href="menu1.html" style="text-decoration:none;">
          <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chicken-tandori-1526595014.jpg" >
          </a>
          <h4>Chicken Tandoori</h4>
          <h3>250Rs.</h3>
          <input type="hidden" name = "pro_6" value = "250">
          <input type="hidden" name = "name_6" value = "Chicken Tandoori">
          <div class="box">
            <label for="name"></label>
            <div class="dec button">-</div>
            <input type="text" name="qty_6" id="1" value="0" class="input-filed">
            <div class="inc button">+</div>
          </div>
          </div>

          <div class="rest">
            <a href="menu1.html" style="text-decoration:none;">
            <img src="https://static.toiimg.com/thumb/53222175.cms?imgsize=288245&width=800&height=800" >
            </a>
            <h4>Chicken Lollipop</h4>
            <h3>150Rs.</h3>
            <input type="hidden" name = "pro_7" value = "150">
            <input type="hidden" name = "name_7" value = "Chicken Lollipop">
            <div class="box">
              <label for="name"></label>
              <div class="dec button">-</div>
              <input type="text" name="qty_7" id="1" value="0" class="input-filed">
              <div class="inc button">+</div>
            </div>
            </div>

            <div class="rest">
              <a href="menu1.html" style="text-decoration:none;">
              <img src="https://www.whiskaffair.com/wp-content/uploads/2017/11/Chicken-Tikka-Masala-5.jpg" >
              </a>
              <h4>Chicken Tikka Masala</h4>
              <h3>220Rs.</h3>
              <input type="hidden" name = "pro_8" value = "220">
              <input type="hidden" name = "name_8" value = "Chicken Tikka Masala">
              <div class="box">
                <label for="name"></label>
                <div class="dec button">-</div>
                <input type="text" name="qty_8" id="1" value="0" class="input-filed">
                <div class="inc button">+</div>
              </div>
              </div>

              <div class="rest">
                <a href="menu1.html" style="text-decoration:none;">
                <img src="data:image/jpeg;base64,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" >
                </a>
                <h4>Chicken Do Payaza</h4>
                <h3>200Rs.</h3>
                <input type="hidden" name = "pro_9" value = "200">
                <input type="hidden" name = "name_9" value = "Chicken Do Payaza">
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