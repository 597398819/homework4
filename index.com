<!DOCTYPE html><html class=''>
<head><script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/anon/pen/dvNwBp" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <title>JOUR2106 Data Visualization for News</title>

<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<style class="cp-pen-styles">@import url("https://fonts.googleapis.com/css?family=PT+Sans");
::selection {
  background: #272838;
}

* {
  margin: 0;
  padding: 0;
  font-family: "PT Sans", sans-serif;
  text-align: center;
  text-decoration: none;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -ms-box-sizing: border-box;
  box-sizing: border-box;
}

img {
  max-width: 100%;
}

html, body {
  height: 100%;
}

body {
  background: linear-gradient(to right, #E75A7C, #141B41);
}

.wrapper {
  max-width: 600px;
  position: relative;
  background: linear-gradient(to left, #306BAC, #141B41);
  color: #fff;
  margin: 0 auto;
  margin-top: 30px;
  padding: 30px;
  border-radius: 20px;
  box-shadow: 0px 0px 80px 1px #212129;
}
.wrapper .image-wrapper img {
  width: 225px;
  border-radius: 50%;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.wrapper .name {
  font-size: 2.2em;
  font-family:black;
}
.wrapper .description {
  color: #A1A2AD;
  text-transform: uppercase;
  margin-top: 10px;
}
.wrapper .social-media a i {
  color: #fff;
  font-size: 2em;
  margin-left: 10px;
  margin-top: 10px;
  padding: 15px;
  transition: 300ms;
}
.wrapper .social-media a i:hover {
  color: #A1A2AD;
  transition: 300ms;
}
.wrapper .follow {
  background: #fff;
  color: #212129;
  text-transform: uppercase;
  font-size: 1.2em;
  letter-spacing: 0.1em;
  padding: 10px 45px;
  border-radius: 30px;
  transition: 300ms;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.wrapper .follow:hover {
  background: #212129;
  color: #fff;
  transition: 300ms;
}
.wrapper .follow .fa-twitter {
  margin-right: 5px;
  margin-top: 15px;
}
</style></head><body>
<div class="wrapper">
   <div class="image-wrapper">
      <img src="//http://pic0.mofang.com/2016/1101/20161101014258581.jpg" alt="Alex Tkachov" />
      <h1 class="name"> 部落冲突第一英雄</h1>
        <p class="description">顶级部落 | 解锁英雄 |满级防御 </p>
      <ul class="social-media">
         <a href="https://twitter.com/clashofclans"><i class="fa fa-instagram" target="_blank"></i></a>
         <a href="https://twitter.com/clashofclans"><i class="fa fa-behance" target="_blank"></i></a>
         <a href="https://twitter.com/clashofclans" target="_blank"><i class="fa fa-codepen"></i></a>
      </ul>
      <a href="https://twitter.com/clashofclans" target="_blank" class="follow"><i class="fa fa-twitter"></i>Follow</a>
   </div>
</div>
  <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>你离最强王者有多远？</h1>

                <h2> 计算你的奖杯数 </h2>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="amount">部落战获胜次数</label>
                            <input class="form-control" type="text" id="amount" value="3">
                            <label for="unit">单次获得奖杯</label>
                            <input class="form-control" type="text" id="unit" value="20">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <button class="btn btn-primary" id="calculate">一键获得</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="total">奖杯总数:</label>
                            <input class="form-control" type="text" id="total">
                        </div>
                    </div>
                </div>
                <script>
                    $(function() { 
                        $('#calculate').click(function() { 
                            var amount = $('#amount').val();
                            var unit = $('#unit').val();
                            var total = amount * unit;
                            $('#total').val(total);
                        });
                    }); 
                </script>
                
 
 
 <div class="wrapper">
 
     <p class="description">Join today and lead your Clan to Victory!</p>
</div>

</body></html>