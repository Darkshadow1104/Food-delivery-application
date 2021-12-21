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
<img src="https://images.creativemarket.com/0.1.0/ps/4444876/1820/1213/m1/fpnw/wm1/n3kyni0zs5mhwyrflwnkgz0gxoimjttg3jo0x3fqrsyxnxpt2b349xe8qg4zqc0p-.jpg?1526222755&s=1cfaf2009e92c9d885fa4bd952cf4da9" >
</a>
<h4>Strawberry</h4>
<h3>80 Rs.</h3>
<input type="hidden" name = "pro_1" value = "80">
<input type="hidden" name = "name_1" value = "Strawberry">
<div class="box">
  <label for = "name"></label>
  <div class="dec button">-</div>
  <input type="text" name="qty_1" id="1" value="0" class="input-filed">
  <div class="inc button">+</div>
</div>
</div>

<div class="rest">
  <a href="menu1.html" style="text-decoration:none;">
  <img src="https://ketopots.com/wp-content/uploads/2019/05/5a-keto-chocolate-ice-cream-square.jpg" >
  </a>
  <h4>Chocolate</h4>
  <h3>80Rs.</h3>
  <input type="hidden" name = "pro_2" value = "80">
  <input type="hidden" name = "name_2" value = "Chocolate">
  <div class="box">
    <label for="name"></label>
    <div class="dec button">-</div>
    <input type="text" name="qty_2" id="1" value="0" class="input-filed">
    <div class="inc button">+</div>
  </div>
  </div>

  <div class="rest">
    <a href="menu1.html" style="text-decoration:none;">
    <img src= "https://www.sharmispassions.com/wp-content/uploads/2017/05/MangoIcecream1.jpg">
    </a>
    <h4>Mango</h4>
    <h3>90Rs.</h3>
    <input type="hidden" name = "pro_3" value = "90">
    <input type="hidden" name = "name_3" value = "Mango">
    <div class="box">
      <label for="name"></label>
      <div class="dec button">-</div>
      <input type="text" name="qty_3" id="1" value="0" class="input-filed">
      <div class="inc button">+</div>
    </div>
    </div>

    <div class="rest">
      <a href="menu1.html" style="text-decoration:none;">
      <img src="https://thumbs.dreamstime.com/b/bowl-artisanal-cranberry-ice-cream-homemade-cranberry-ice-cream-mint-sprig-wooden-bowl-white-table-selective-114496743.jpg" >
      </a>
      <h4>Cranberry</h4>
      <h3>90Rs.</h3>
      <input type="hidden" name = "pro_4" value = "90">
      <input type="hidden" name = "name_4" value = "Cranberry">
      <div class="box">
        <label for="name"></label>
        <div class="dec button">-</div>
        <input type="text" name="qty_4" id="1" value="0" class="input-filed">
        <div class="inc button">+</div>
      </div>
      </div>

      <div class="rest">
        <a href="menu1.html" style="text-decoration:none;">
        <img src="https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/i1jupfcllskv1akjhmkg" >
        </a>
        <h4>Anjeer Badam</h4>
        <h3>100Rs.</h3>
        <input type="hidden" name = "pro_5" value = "100">
        <input type="hidden" name = "name_5" value = "Anjeer Badam">
        <div class="box">
          <label for="name"></label>
          <div class="dec button">-</div>
          <input type="text" name="qty_5" id="1" value="0" class="input-filed">
          <div class="inc button">+</div>
        </div>
        </div>

        <div class="rest">
          <a href="menu1.html" style="text-decoration:none;">
          <img src="data:image/jpeg;base64,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" >
          </a>
          <h4>Kesar Badam</h4>
          <h3>100Rs.</h3>
          <input type="hidden" name = "pro_6" value = "100">
          <input type="hidden" name = "name_6" value = "Kesar Badam">
          <div class="box">
            <label for="name"></label>
            <div class="dec button">-</div>
            <input type="text" name="qty_6" id="1" value="0" class="input-filed">
            <div class="inc button">+</div>
          </div>
          </div>

          <div class="rest">
            <a href="menu1.html" style="text-decoration:none;">
            <img src="https://www.cookwithmanali.com/wp-content/uploads/2020/08/Kaju-Kishmish-Ice-Cream.jpg" >
            </a>
            <h4>Roasted Kaju</h4>
            <h3>100Rs.</h3>
            <input type="hidden" name = "pro_7" value = "100">
            <input type="hidden" name = "name_7" value = "Roasted Kaju">
            <div class="box">
              <label for="name"></label>
              <div class="dec button">-</div>
              <input type="text" name="qty_7" id="1" value="0" class="input-filed">
              <div class="inc button">+</div>
            </div>
            </div>

            <div class="rest">
              <a href="menu1.html" style="text-decoration:none;">
              <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR39JKR6vVTNyTibRb-zeSkjE0e4ipR8KuRDQ&usqp=CAU" >
              </a>
              <h4>Coffee Walnut</h4>
              <h3>100Rs.</h3>
              <input type="hidden" name = "pro_8" value = "100">
               <input type="hidden" name = "name_8" value = "Coffee Walnut">
              <div class="box">
                <label for="name"></label>
                <div class="dec button">-</div>
                <input type="text" name="qty_8" id="1" value="0" class="input-filed">
                <div class="inc button">+</div>
              </div>
              </div>

              <div class="rest">
                <a href="menu1.html" style="text-decoration:none;">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTni9qeyjAHdhzNeXwhNZe4macg-1kKZJJHNg&usqp=CAU" >
                </a>
                <h4>Butter Scotch</h4>
                <h3>80Rs.</h3>
                <input type="hidden" name = "pro_9" value = "80">
                <input type="hidden" name = "name_9" value = "Butter Scotch">
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